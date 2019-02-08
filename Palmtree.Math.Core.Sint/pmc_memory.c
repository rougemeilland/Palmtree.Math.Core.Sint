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
#include "pmc_sint_internal.h"
#include "pmc_inline_func.h"


#pragma region プラットフォーム固有の定義
#ifdef _M_IX86
#define	DEFAULT_MEMORY_DATA (0xcccccccc)
#elif defined(_M_X64)
#define	DEFAULT_MEMORY_DATA (0xcccccccccccccccc)
#else
#error unknown platform
#endif
#pragma endregion


#pragma region 静的変数の定義
HANDLE hLocalHeap;
NUMBER_HEADER number_zero;
NUMBER_HEADER number_one;
NUMBER_HEADER number_minus_one;
#pragma endregion


__inline static void ClearNumberHeader(NUMBER_HEADER* p)
{
#ifdef _M_IX64
    if (sizeof(*p) == sizeof(_UINT64_T) * 3)
    {
        _UINT64_T* __p = (_UINT64_T*)p;
        __p[0] = 0;
        __p[1] = 0;
        __p[2] = 0;
    }
    else
    {
#endif
        if (sizeof(*p) == sizeof(_UINT32_T) * 4)
        {
            _UINT32_T* __p = (_UINT32_T*)p;
            __p[0] = 0;
            __p[1] = 0;
            __p[2] = 0;
            __p[3] = 0;
        }
#ifdef _M_IX64
        else if (sizeof(*p) % sizeof(_UINT64_T) == 0)
            _ZERO_MEMORY_64((_UINT64_T*)p, sizeof(*p) / sizeof(_UINT64_T));
#endif
        else if (sizeof(*p) % sizeof(_UINT32_T) == 0)
            _ZERO_MEMORY_32((_UINT32_T*)p, sizeof(*p) / sizeof(_UINT32_T));
        else if (sizeof(*p) % sizeof(_UINT16_T) == 0)
            _ZERO_MEMORY_16((_UINT16_T*)p, sizeof(*p) / sizeof(_UINT16_T));
        else
            _ZERO_MEMORY_BYTE(p, sizeof(*p));
#ifdef _M_IX64
    }
#endif
}

__inline static void FillNumberHeader(NUMBER_HEADER* p)
{
#ifdef _M_IX64
    if (sizeof(*p) == sizeof(_UINT64_T) * 3)
    {
        _UINT64_T* __p = (_UINT64_T*)p;
        __p[0] = DEFAULT_MEMORY_DATA;
        __p[1] = DEFAULT_MEMORY_DATA;
        __p[2] = DEFAULT_MEMORY_DATA;
    }
    else
    {
#endif
        if (sizeof(*p) == sizeof(_UINT32_T) * 4)
        {
            _UINT32_T* __p = (_UINT32_T*)p;
            __p[0] = (_UINT32_T)DEFAULT_MEMORY_DATA;
            __p[1] = (_UINT32_T)DEFAULT_MEMORY_DATA;
            __p[2] = (_UINT32_T)DEFAULT_MEMORY_DATA;
            __p[3] = (_UINT32_T)DEFAULT_MEMORY_DATA;
        }
#ifdef _M_IX64
        else if (sizeof(*p) % sizeof(_UINT64_T) == 0)
            _FILL_MEMORY_64((_UINT64_T*)p, DEFAULT_MEMORY_DATA, sizeof(*p) / sizeof(_UINT64_T));
#endif
        else if (sizeof(*p) % sizeof(_UINT32_T) == 0)
            _FILL_MEMORY_32((_UINT32_T*)p, (_UINT32_T)DEFAULT_MEMORY_DATA, sizeof(*p) / sizeof(_UINT32_T));
        else if (sizeof(*p) % sizeof(_UINT16_T) == 0)
            _FILL_MEMORY_16((_UINT16_T*)p, (_UINT16_T)DEFAULT_MEMORY_DATA, sizeof(*p) / sizeof(_UINT16_T));
        else
            _FILL_MEMORY_BYTE(p, (unsigned char)DEFAULT_MEMORY_DATA, sizeof(*p));
#ifdef _M_IX64
    }
#endif
}

static PMC_STATUS_CODE InitializeNumber(NUMBER_HEADER* p, char sign, PMC_HANDLE_UINT abs)
{
    PMC_STATUS_CODE result;
    ClearNumberHeader(p);
    p->SIGNATURE1 = PMC_SIGNATURE;
    p->SIGNATURE2 = PMC_SINT_SIGNATURE;
    p->SIGN = sign;
    p->ABS = abs;

    PMC_NUMBER_TYPE_CODE type;
    if ((result = ep_uint.GetNumberType_X(abs, &type)) != PMC_STATUS_OK)
        return (result);
    p->IS_EVEN = (type & PMC_NUMBER_TYPE_IS_EVEN) != 0;
    p->IS_MINUS_ONE = sign < 0 && (type & PMC_NUMBER_TYPE_IS_ONE) != 0;
    p->IS_ONE = sign > 0 && (type & PMC_NUMBER_TYPE_IS_ONE) != 0;
    p->IS_POWER_OF_TWO = sign > 0 && (type & PMC_NUMBER_TYPE_IS_POWER_OF_TWO) != 0;
    p->IS_ZERO = (type & PMC_NUMBER_TYPE_IS_ZERO) != 0;

    if (sign != 0 && p->IS_ZERO)
        return (PMC_STATUS_INTERNAL_ERROR);

    if (sign == 0 && !p->IS_ZERO)
        return (PMC_STATUS_INTERNAL_ERROR);

    return (PMC_STATUS_OK);
}

static void CleanUpNumber(NUMBER_HEADER* p)
{
    ep_uint.Dispose(p->ABS);
}

PMC_STATUS_CODE AttatchNumber(NUMBER_HEADER* p, char sign, PMC_HANDLE_UINT abs)
{
    PMC_STATUS_CODE result = InitializeNumber(p, sign, abs);
    if (result != PMC_STATUS_OK)
        return (result);
    p->IS_STATIC = TRUE;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE AllocateNumber(NUMBER_HEADER** pp, char sign, PMC_HANDLE_UINT abs)
{
    NUMBER_HEADER* p = (NUMBER_HEADER*)HeapAlloc(hLocalHeap, HEAP_ZERO_MEMORY, sizeof(NUMBER_HEADER));
    if (p == NULL)
        return (PMC_STATUS_NOT_ENOUGH_MEMORY);
    PMC_STATUS_CODE result = InitializeNumber(p, sign, abs);
    if (result != PMC_STATUS_OK)
        return (result);
    p->IS_STATIC = FALSE;
    *pp = p;
    return (PMC_STATUS_OK);
}

void DetatchNumber(NUMBER_HEADER* p)
{
    if (p == NULL || !p->IS_STATIC)
        return;
    CleanUpNumber(p);
}

void DeallocateNumber(NUMBER_HEADER* p)
{
    if (p == NULL || p->IS_STATIC)
        return;
    CleanUpNumber(p);
    FillNumberHeader(p);
    HeapFree(hLocalHeap, 0, p);
}

PMC_STATUS_CODE CheckNumber(NUMBER_HEADER* p)
{
    if (p->SIGNATURE1 != PMC_SIGNATURE || p->SIGNATURE2 != PMC_SINT_SIGNATURE)
        return (PMC_STATUS_BAD_BUFFER);
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE DuplicateNumber(NUMBER_HEADER* x, NUMBER_HEADER** op)
{
    if (x->IS_STATIC)
    {
        *op = x;
        return (PMC_STATUS_OK);
    }
    if (x->IS_ZERO)
    {
        *op = &number_zero;
        return (PMC_STATUS_OK);
    }
    if (x->IS_ONE)
    {
        *op = &number_one;
        return (PMC_STATUS_OK);
    }
    if (x->IS_MINUS_ONE)
    {
        *op = &number_minus_one;
        return (PMC_STATUS_OK);
    }
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT new_abs;
    if ((result = ep_uint.Clone_X(x->ABS, &new_abs)) != PMC_STATUS_OK)
        return (result);
    NUMBER_HEADER* o;
    if ((result = AllocateNumber(&o, x->SIGN, new_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(new_abs);
        return (result);
    }
    *op = o;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE Negate_Imp(NUMBER_HEADER* x, NUMBER_HEADER** op)
{
    if (x->IS_ZERO)
    {
        *op = &number_zero;
        return (PMC_STATUS_OK);
    }
    if (x->IS_ONE)
    {
        *op = &number_minus_one;
        return (PMC_STATUS_OK);
    }
    if (x->IS_MINUS_ONE)
    {
        *op = &number_one;
        return (PMC_STATUS_OK);
    }
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT new_abs;
    if ((result = ep_uint.Clone_X(x->ABS, &new_abs)) != PMC_STATUS_OK)
        return (result);
    NUMBER_HEADER* o;
    if ((result = AllocateNumber(&o, -x->SIGN, new_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(new_abs);
        return (result);
    }
    *op = o;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_GetConstantValue_I(PMC_CONSTANT_VALUE_CODE type, PMC_HANDLE_SINT* o)
{
    switch (type)
    {
    case PMC_CONSTANT_ZERO:
        *o = (PMC_HANDLE_SINT)&number_zero;
        return (PMC_STATUS_OK);
    case PMC_CONSTANT_ONE:
        *o = (PMC_HANDLE_SINT)&number_one;
        return (PMC_STATUS_OK);
    case PMC_CONSTANT_MINUS_ONE:
        *o = (PMC_HANDLE_SINT)&number_minus_one;
        return (PMC_STATUS_OK);
    default:
        return (PMC_STATUS_ARGUMENT_ERROR);
    }
}

void __PMC_CALL PMC_Dispose(PMC_HANDLE_SINT p)
{
    NUMBER_HEADER* np = (NUMBER_HEADER*)p;
    DeallocateNumber(np);
    return;
}

PMC_STATUS_CODE Initialize_Memory(void)
{
    PMC_STATUS_CODE result = PMC_STATUS_OK;

    BOOL number_unsigned_zero_ok = TRUE;
    BOOL number_unsigned_one_ok = TRUE;
    BOOL number_zero_ok = TRUE;
    BOOL number_one_ok = TRUE;
    BOOL number_minus_one_ok = TRUE;

    PMC_HANDLE_UINT unsigned_zero = NULL;
    PMC_HANDLE_UINT unsigned_one = NULL;

    if (result == PMC_STATUS_OK)
    {
        if ((result = ep_uint.GetConstantValue_I(PMC_CONSTANT_ZERO, &unsigned_zero)) == PMC_STATUS_OK)
            number_unsigned_zero_ok = TRUE;
    }

    if (result == PMC_STATUS_OK)
    {
        if ((result = ep_uint.GetConstantValue_I(PMC_CONSTANT_ONE, &unsigned_one)) == PMC_STATUS_OK)
            number_unsigned_one_ok = TRUE;
    }

    if (result == PMC_STATUS_OK)
    {
        if ((result = AttatchNumber(&number_zero, 0, unsigned_zero)) == PMC_STATUS_OK)
            number_zero_ok = TRUE;
    }

    if (result == PMC_STATUS_OK)
    {
        if ((result = AttatchNumber(&number_one, 1, unsigned_one)) == PMC_STATUS_OK)
            number_one_ok = TRUE;
    }

    if (result == PMC_STATUS_OK)
    {
        if ((result = AttatchNumber(&number_minus_one, -1, unsigned_one)) == PMC_STATUS_OK)
            number_minus_one_ok = TRUE;
    }

    if (result != PMC_STATUS_OK)
    {
        if (number_zero_ok)
            DetatchNumber(&number_zero);
        if (number_one_ok)
            DetatchNumber(&number_one);
        if (number_minus_one_ok)
            DetatchNumber(&number_minus_one);
    }

    return (result);
}

BOOL AllocateHeapArea()
{
    hLocalHeap = HeapCreate(0, 0x1000, 0);
    if (hLocalHeap == NULL)
        return (FALSE);
    return (TRUE);
}

void DeallocateHeapArea()
{
    if (hLocalHeap != NULL)
    {
        HeapDestroy(hLocalHeap);
        hLocalHeap = NULL;
    }
}

/*
 * END OF FILE
 */