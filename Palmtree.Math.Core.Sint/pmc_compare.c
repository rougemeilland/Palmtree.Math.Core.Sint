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


static PMC_STATUS_CODE CompareU_X_I_Imp(char sign, PMC_HANDLE_UINT u, _INT32_T v, _INT32_T* w)
{
    PMC_STATUS_CODE result;
    _INT32_T temp_w;
    if ((result = ep_uint.Compare_X_I(u, v, &temp_w)) != PMC_STATUS_OK)
        return (result);
    if (sign > 0)
        *w = temp_w;
#ifdef _DEBUG
    else if (sign == 0)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    else
        *w = -temp_w;
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE CompareU_X_L_Imp(char sign, PMC_HANDLE_UINT u, _INT64_T v, _INT32_T* w)
{
    PMC_STATUS_CODE result;
    _INT32_T temp_w;
    if ((result = ep_uint.Compare_X_L(u, v, &temp_w)) != PMC_STATUS_OK)
        return (result);
    if (sign > 0)
        *w = temp_w;
#ifdef _DEBUG
    else if (sign == 0)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    else
        *w = -temp_w;
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE CompareU_X_X_Imp(char sign, PMC_HANDLE_UINT u, PMC_HANDLE_UINT v, _INT32_T* w)
{
    PMC_STATUS_CODE result;
    _INT32_T temp_w;
    if ((result = ep_uint.Compare_X_X(u, v, &temp_w)) != PMC_STATUS_OK)
        return (result);
    if (sign > 0)
        *w = temp_w;
#ifdef _DEBUG
    else if (sign == 0)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    else
        *w = -temp_w;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Compare_I_X(_INT32_T u, PMC_HANDLE_SINT v, _INT32_T* w)
{
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    char u_sign;
    _UINT32_T u_abs = GET_ABS_32(u, &u_sign);
    if (u_sign == 0)
    {
        // u == 0 の場合

        // v の符号の反対を返す
        *w = - nv->SIGN;
    }
    else if (u_sign > 0)
    {
        // u > 0 の場合

        if (nv->SIGN <= 0)
        {
            // v <= 0 の場合

            // 1 を返す
            *w = 1;
        }
        else
        {
            // v > 0 の場合

            // abs(u) と abs(v) の比較結果を返す
            if ((result = CompareU_X_I_Imp(-1, nv->ABS, u_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (nv->SIGN >= 0)
        {
            // v >= 0 の場合

            // -1 を返す
            *w = -1;
        }
        else
        {
            // v < 0 の場合

            // -abs(u) と -abs(v) の比較結果を返す
            if ((result = CompareU_X_I_Imp(1, nv->ABS, u_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
#ifdef _DEBUG
    if (*w != 0 && *w != 1 && *w != -1)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Compare_L_X(_INT64_T u, PMC_HANDLE_SINT v, _INT32_T* w)
{
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    char u_sign;
    _UINT64_T u_abs = GET_ABS_64(u, &u_sign);
    if (u_sign == 0)
    {
        // u == 0 の場合

        // v の符号の反対を返す
        *w = - nv->SIGN;
    }
    else if (u_sign > 0)
    {
        // u > 0 の場合

        if (nv->SIGN <= 0)
        {
            // v <= 0 の場合

            // 1 を返す
            *w = 1;
        }
        else
        {
            // v > 0 の場合

            // abs(u) と abs(v) の比較結果を返す
            if ((result = CompareU_X_L_Imp(-1, nv->ABS, u_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (nv->SIGN >= 0)
        {
            // v == 0 の場合

            // -1 を返す
            *w = -1;
        }
        else
        {
            // v < 0 の場合

            // -abs(u) と -abs(v) の比較結果を返す
            if ((result = CompareU_X_L_Imp(1, nv->ABS, u_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
#ifdef _DEBUG
    if (*w != 0 && *w != 1 && *w != -1)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Compare_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, _INT32_T* w)
{
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    if (u->FLAGS.IS_ZERO)
    {
        // u == 0 の場合

        // v の符号の反対を返す
        *w = -nv->SIGN;
    }
    else
    {
        // u > 0 の場合

        if (nv->SIGN <= 0)
        {
            // v == 0 の場合

            // 1 を返す
            *w = 1;
        }
        else
        {
            // v > 0 の場合

            // abs(u) と abs(v) の比較結果を返す
            if ((result = CompareU_X_X_Imp(1, u, nv->ABS, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
#ifdef _DEBUG
    if (*w != 0 && *w != 1 && *w != -1)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_I(PMC_HANDLE_SINT u, _INT32_T v, _INT32_T* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    char v_sign;
    _UINT32_T v_abs = GET_ABS_32(v, &v_sign);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        // v の符号の反対を返す
        *w = -v_sign;
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 の場合

        if (v_sign <= 0)
        {
            // v == 0 の場合

            // 1 を返す
            *w = 1;
        }
        else
        {
            // v > 0 の場合

            // abs(u) と abs(v) の比較結果を返す
            if ((result = CompareU_X_I_Imp(1, nu->ABS, v_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (v_sign >= 0)
        {
            // v == 0 の場合

            // -1 を返す
            *w = -1;
        }
        else
        {
            // v < 0 の場合

            // -abs(u) と -abs(v) の比較結果を返す
            if ((result = CompareU_X_I_Imp(-1, nu->ABS, v_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
#ifdef _DEBUG
    if (*w != 0 && *w != 1 && *w != -1)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_L(PMC_HANDLE_SINT u, _INT64_T v, _INT32_T* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    char v_sign;
    _UINT64_T v_abs = GET_ABS_64(v, &v_sign);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        // v の符号の反対を返す
        *w = -v_sign;
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 の場合

        if (v_sign <= 0)
        {
            // v == 0 の場合

            // 1 を返す
            *w = 1;
        }
        else
        {
            // v > 0 の場合

            // abs(u) と abs(v) の比較結果を返す
            if ((result = CompareU_X_L_Imp(1, nu->ABS, v_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (v_sign >= 0)
        {
            // v == 0 の場合

            // -1 を返す
            *w = -1;
        }
        else
        {
            // v < 0 の場合

            // -abs(u) と -abs(v) の比較結果を返す
            if ((result = CompareU_X_L_Imp(-1, nu->ABS, v_abs, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
#ifdef _DEBUG
    if (*w != 0 && *w != 1 && *w != -1)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, _INT32_T* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        if (v->FLAGS.IS_ZERO)
        {
            // v == 0 の場合

            // 0 を返す
            *w = 0;
        }
        else
        {
            // v > 0 の場合

            // -1 を返す
            *w = -1;
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 の場合

        if (v->FLAGS.IS_ZERO)
        {
            // v == 0 の場合

            // 1 を返す
            *w = 1;
        }
        else
        {
            // v > 0 の場合

            // abs(u) と abs(v) の比較結果を返す
            if ((result = CompareU_X_X_Imp(1, nu->ABS, v, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        // -1 を返す
        *w = -1;
    }
#ifdef _DEBUG
    if (*w != 0 && *w != 1 && *w != -1)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, _INT32_T* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        // v の符号の反対を返す
        *w = -nv->SIGN;
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 の場合

        if (nv->SIGN <= 0)
        {
            // v == 0 の場合

            // 1 を返す
            *w = 1;
        }
        else
        {
            // v > 0 の場合

            // abs(u) と abs(v) の比較結果を返す
            if ((result = CompareU_X_X_Imp(1, nu->ABS, nv->ABS, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (nv->SIGN >= 0)
        {
            // v == 0 の場合

            // -1 を返す
            *w = -1;
        }
        else
        {
            // v < 0 の場合

            // -abs(u) と -abs(v) の比較結果を返す
            if ((result = CompareU_X_X_Imp(-1, nu->ABS, nv->ABS, w)) != PMC_STATUS_OK)
                return (result);
        }
    }
#ifdef _DEBUG
    if (*w != 0 && *w != 1 && *w != -1)
        return (PMC_STATUS_INTERNAL_ERROR);
#endif
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */