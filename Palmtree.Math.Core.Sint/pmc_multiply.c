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


static PMC_STATUS_CODE MultiplyU_X_I_Imp(char w_sign, PMC_HANDLE_UINT u, _UINT32_T v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT w_abs;
    if ((result = ep_uint.Multiply_X_I(u, v, &w_abs)) != PMC_STATUS_OK)
        return (result);
    if ((result = AllocateNumber(w, w_sign, w_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(w_abs);
        return (result);
    }
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE MultiplyU_X_L_Imp(char w_sign, PMC_HANDLE_UINT u, _UINT64_T v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT w_abs;
    if ((result = ep_uint.Multiply_X_L(u, v, &w_abs)) != PMC_STATUS_OK)
        return (result);
    if ((result = AllocateNumber(w, w_sign, w_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(w_abs);
        return (result);
    }
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE MultiplyU_X_X_Imp(char w_sign, PMC_HANDLE_UINT u, PMC_HANDLE_UINT v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT w_abs;
    if ((result = ep_uint.Multiply_X_X(u, v, &w_abs)) != PMC_STATUS_OK)
        return (result);
    if ((result = AllocateNumber(w, w_sign, w_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(w_abs);
        return (result);
    }
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Multiply_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
{
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    NUMBER_HEADER* nw;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    char u_sign;
    _UINT32_T u_abs = GET_ABS_32(u, &u_sign);
    if (u_sign == 0)
    {
        // u == 0 の場合

        // 0 を返す
        nw = &number_zero;
    }
    else if (u_sign > 0)
    {
        // u > 0 の場合

        if (nv->SIGN == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // abs(u) * v を返す
            if ((result = MultiplyU_X_I_Imp(nv->SIGN, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (nv->SIGN == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // -abs(u) * v を返す
            if ((result = MultiplyU_X_I_Imp(-nv->SIGN, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Multiply_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
{
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    NUMBER_HEADER* nw;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    char u_sign;
    _UINT64_T u_abs = GET_ABS_64(u, &u_sign);
    if (u_sign == 0)
    {
        // u == 0 の場合

        // 0 を返す
        nw = &number_zero;
    }
    else if (u_sign > 0)
    {
        // u > 0 の場合

        if (nv->SIGN == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // abs(u) * v を返す
            if ((result = MultiplyU_X_L_Imp(nv->SIGN, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (nv->SIGN == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // -abs(u) * v を返す
            if ((result = MultiplyU_X_L_Imp(-nv->SIGN, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Multiply_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    NUMBER_HEADER* nw;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    char u_is_zero;
    if ((result = IsZero_UINT(u, &u_is_zero)) != PMC_STATUS_OK)
        return (result);
    if (u_is_zero)
    {
        // u == 0 の場合

        // 0 を返す
        nw = &number_zero;
    }
    else
    {
        // u > 0 の場合

        if (nv->SIGN == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // u != 0 の場合

            // abs(u) * v を返す
            if ((result = MultiplyU_X_X_Imp(nv->SIGN, nv->ABS, u, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nw;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    char v_sign;
    _UINT32_T v_abs = GET_ABS_32(v, &v_sign);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        // 0 を返す
        nw = &number_zero;
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 の場合

        if (v_sign == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // abs(u) * abs(v) を返す
            if ((result = MultiplyU_X_I_Imp(v_sign, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (v_sign == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // -abs(u) * abs(v) を返す
            if ((result = MultiplyU_X_I_Imp(-v_sign, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nw;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    char v_sign;
    _UINT64_T v_abs = GET_ABS_64(v, &v_sign);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        // 0 を返す
        nw = &number_zero;
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 の場合

        if (v_sign == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // abs(u) * abs(v) を返す
            if ((result = MultiplyU_X_L_Imp(v_sign, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (v_sign == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // -abs(u) * abs(v) を返す
            if ((result = MultiplyU_X_L_Imp(-v_sign, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nw;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    char v_is_zero;
    if ((result = IsZero_UINT(v, &v_is_zero)) != PMC_STATUS_OK)
        return (result);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        // 0 を返す
        nw = &number_zero;
    }
    else
    {
        // u != 0 の場合

        if (v_is_zero)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v > 0 の場合

            // u * v を返す
            if ((result = MultiplyU_X_X_Imp(nu->SIGN, nu->ABS, v, &nw)) != PMC_STATUS_OK)
                return (result);
        }

    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
    NUMBER_HEADER* nw;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        // 0 を返す
        nw = &number_zero;
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 の場合

        if (nv->SIGN == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // abs(u) * v を返す
            if ((result = MultiplyU_X_X_Imp(nv->SIGN, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 の場合

        if (nv->SIGN == 0)
        {
            // v == 0 の場合

            // 0 を返す
            nw = &number_zero;
        }
        else
        {
            // v != 0 の場合

            // -abs(u) * v を返す
            if ((result = MultiplyU_X_X_Imp(-nv->SIGN, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */