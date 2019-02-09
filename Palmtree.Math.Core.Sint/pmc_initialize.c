/*
 * The MIT License
 *
 * Copyright 2019 Palmtree Software.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */


#include <windows.h>
#include <intrin.h>
#include <immintrin.h>
#include "pmc_sint_internal.h"
#include "pmc_inline_func.h"

#pragma region 静的変数の定義
PMC_UINT_ENTRY_POINTS ep_uint;
static PMC_SINT_ENTRY_POINTS entry_points;
static HANDLE hLib_UINT = NULL;
static PMC_UINT_ENTRY_POINTS* (__PMC_CALL * fp_PMC_UINT_Initialize)(PMC_CONFIGURATION_INFO*);
static BOOL initialized = FALSE;
#pragma endregion


static void CopyUINTEntryPointStructure(PMC_UINT_ENTRY_POINTS* d, PMC_UINT_ENTRY_POINTS* s)
{
#ifdef _M_IX86
    if (sizeof(*s) % sizeof(_UINT64_T) == 0)
        _COPY_MEMORY_32((_UINT32_T*)d, (_UINT32_T*)s, sizeof(*s) / sizeof(_UINT32_T));
    else
        _COPY_MEMORY_BYTE(d, s, sizeof(*s));
#elif defined(_M_IX64)
    if (sizeof(*s) % sizeof(_UINT64_T) == 0)
        _COPY_MEMORY_64((_UINT64_T*)d, (_UINT64_T*)s, sizeof(*s) / sizeof(_UINT64_T));
    else if (sizeof(*s) % sizeof(_UINT64_T) == 0)
        _COPY_MEMORY_32((_UINT32_T*)d, (_UINT32_T*)s, sizeof(*s) / sizeof(_UINT32_T));
    else
        _COPY_MEMORY_BYTE(d, s, sizeof(*s));
#else
#error unknown platform
#endif
}

static void LoadUINTLIbrary()
{
    hLib_UINT = LoadLibraryA("Palmtree.Math.Core.Uint.dll");
    if (hLib_UINT == NULL)
    {
        fp_PMC_UINT_Initialize = NULL;
        return;
    }
    fp_PMC_UINT_Initialize = (void*)GetProcAddress(hLib_UINT, "PMC_UINT_Initialize");
    if (fp_PMC_UINT_Initialize == NULL)
    {
        FreeLibrary(hLib_UINT);
        hLib_UINT = NULL;
        return;
    }
    return;
}

static BOOL SelfCheck()
{
    NUMBER_HEADER nh;
    PMC_HANDLE_SINT handle = (PMC_HANDLE_SINT)&nh;
    _ZERO_MEMORY_BYTE(&nh, sizeof(nh));
    nh.IS_EVEN = TRUE;
    if (!handle->FLAGS.IS_EVEN)
        return (FALSE);
    _ZERO_MEMORY_BYTE(&nh, sizeof(nh));
    nh.IS_MINUS_ONE = TRUE;
    if (!handle->FLAGS.IS_MINUS_ONE)
        return (FALSE);
    _ZERO_MEMORY_BYTE(&nh, sizeof(nh));
    nh.IS_ONE = TRUE;
    if (!handle->FLAGS.IS_ONE)
        return (FALSE);
    _ZERO_MEMORY_BYTE(&nh, sizeof(nh));
    nh.IS_POWER_OF_TWO = TRUE;
    if (!handle->FLAGS.IS_POWER_OF_TWO)
        return (FALSE);
    _ZERO_MEMORY_BYTE(&nh, sizeof(nh));
    nh.IS_ZERO = TRUE;
    if (!handle->FLAGS.IS_ZERO)
        return (FALSE);
    return(TRUE);
}

PMC_EXPORT PMC_SINT_ENTRY_POINTS* __PMC_CALL PMC_SINT_Initialize(PMC_CONFIGURATION_INFO* config)
{
    if (hLib_UINT == NULL)
        LoadUINTLIbrary();
    if (fp_PMC_UINT_Initialize == NULL)
        return (NULL);
    PMC_UINT_ENTRY_POINTS* ep = (*fp_PMC_UINT_Initialize)(config);
    if (ep == NULL)
        return (NULL);

    if (!initialized)
    {
        if (!SelfCheck())
            return (NULL);

        CopyUINTEntryPointStructure(&ep_uint, ep);
        CopyUINTEntryPointStructure(&entry_points.UINT_ENTRY_POINTS, ep);

        if (Initialize_Memory() != PMC_STATUS_OK)
            return (NULL);

        entry_points.GetStatisticsInfo = PMC_GetStatisticsInfo;
        entry_points.From_I = PMC_From_I;
        entry_points.From_L = PMC_From_L;
        entry_points.FromByteArray = PMC_FromByteArray;
        entry_points.Dispose = PMC_Dispose;
        entry_points.To_X_I = PMC_To_X_I;
        entry_points.To_X_L = PMC_To_X_L;
        entry_points.ToByteArray = PMC_ToByteArray;
        /*
        entry_points.ToString = PMC_ToString;
        entry_points.TryParse = PMC_TryParse;
        */
        entry_points.Add_I_X = PMC_Add_I_X;
        entry_points.Add_L_X = PMC_Add_L_X;
        entry_points.Add_UX_X = PMC_Add_UX_X;
        entry_points.Add_X_I = PMC_Add_X_I;
        entry_points.Add_X_L = PMC_Add_X_L;
        entry_points.Add_X_UX = PMC_Add_X_UX;
        entry_points.Add_X_X = PMC_Add_X_X;
        entry_points.Subtruct_I_X = PMC_Subtruct_I_X;
        entry_points.Subtruct_L_X = PMC_Subtruct_L_X;
        entry_points.Subtruct_UX_X = PMC_Subtruct_UX_X;
        entry_points.Subtruct_X_I = PMC_Subtruct_X_I;
        entry_points.Subtruct_X_L = PMC_Subtruct_X_L;
        entry_points.Subtruct_X_UX = PMC_Subtruct_X_UX;
        entry_points.Subtruct_X_X = PMC_Subtruct_X_X;
        entry_points.Multiply_I_X = PMC_Multiply_I_X;
        entry_points.Multiply_L_X = PMC_Multiply_L_X;
        entry_points.Multiply_UX_X = PMC_Multiply_UX_X;
        entry_points.Multiply_X_I = PMC_Multiply_X_I;
        entry_points.Multiply_X_L = PMC_Multiply_X_L;
        entry_points.Multiply_X_UX = PMC_Multiply_X_UX;
        entry_points.Multiply_X_X = PMC_Multiply_X_X;
        entry_points.DivRem_I_X = PMC_DivRem_I_X;
        entry_points.DivRem_L_X = PMC_DivRem_L_X;
        entry_points.DivRem_UX_X = PMC_DivRem_UX_X;
        entry_points.DivRem_X_I = PMC_DivRem_X_I;
        entry_points.DivRem_X_L = PMC_DivRem_X_L;
        entry_points.DivRem_X_UX = PMC_DivRem_X_UX;
        entry_points.DivRem_X_X = PMC_DivRem_X_X;
        /*
        entry_points.RightShift_X_I = PMC_RightShift_X_I;
        entry_points.LeftShift_X_I = PMC_LeftShift_X_I;
        entry_points.BitwiseAnd_I_X = PMC_BitwiseAnd_I_X;
        entry_points.BitwiseAnd_L_X = PMC_BitwiseAnd_L_X;
        entry_points.BitwiseAnd_X_I = PMC_BitwiseAnd_X_I;
        entry_points.BitwiseAnd_X_L = PMC_BitwiseAnd_X_L;
        entry_points.BitwiseAnd_X_X = PMC_BitwiseAnd_X_X;
        entry_points.BitwiseOr_I_X = PMC_BitwiseOr_I_X;
        entry_points.BitwiseOr_L_X = PMC_BitwiseOr_L_X;
        entry_points.BitwiseOr_X_I = PMC_BitwiseOr_X_I;
        entry_points.BitwiseOr_X_L = PMC_BitwiseOr_X_L;
        entry_points.BitwiseOr_X_X = PMC_BitwiseOr_X_X;
        entry_points.ExclusiveOr_I_X = PMC_ExclusiveOr_I_X;
        entry_points.ExclusiveOr_L_X = PMC_ExclusiveOr_L_X;
        entry_points.ExclusiveOr_X_I = PMC_ExclusiveOr_X_I;
        entry_points.ExclusiveOr_X_L = PMC_ExclusiveOr_X_L;
        entry_points.ExclusiveOr_X_X = PMC_ExclusiveOr_X_X;
        */
        entry_points.Compare_I_X = PMC_Compare_I_X;
        entry_points.Compare_L_X = PMC_Compare_L_X;
        entry_points.Compare_UX_X = PMC_Compare_UX_X;
        entry_points.Compare_X_I = PMC_Compare_X_I;
        entry_points.Compare_X_L = PMC_Compare_X_L;
        entry_points.Compare_X_UX = PMC_Compare_X_UX;
        entry_points.Compare_X_X = PMC_Compare_X_X;
        entry_points.Equals_I_X = PMC_Equals_I_X;
        entry_points.Equals_L_X = PMC_Equals_L_X;
        entry_points.Equals_UX_X = PMC_Equals_UX_X;
        entry_points.Equals_X_I = PMC_Equals_X_I;
        entry_points.Equals_X_L = PMC_Equals_X_L;
        entry_points.Equals_X_UX = PMC_Equals_X_UX;
        entry_points.Equals_X_X = PMC_Equals_X_X;
        entry_points.GreatestCommonDivisor_I_X = PMC_GreatestCommonDivisor_I_X;
        entry_points.GreatestCommonDivisor_L_X = PMC_GreatestCommonDivisor_L_X;
        entry_points.GreatestCommonDivisor_UX_X = PMC_GreatestCommonDivisor_UX_X;
        entry_points.GreatestCommonDivisor_X_I = PMC_GreatestCommonDivisor_X_I;
        entry_points.GreatestCommonDivisor_X_L = PMC_GreatestCommonDivisor_X_L;
        entry_points.GreatestCommonDivisor_X_UX = PMC_GreatestCommonDivisor_X_UX;
        entry_points.GreatestCommonDivisor_X_X = PMC_GreatestCommonDivisor_X_X;
        entry_points.GetConstantValue_I = PMC_GetConstantValue_I;
        entry_points.Clone_X = PMC_Clone_X;
        entry_points.Negate_X = PMC_Negate_X;

        initialized = TRUE;
    }

    return (&entry_points);
}


/*
 * END OF FILE
 */