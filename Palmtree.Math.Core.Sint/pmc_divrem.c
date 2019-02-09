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


PMC_STATUS_CODE __PMC_CALL PMC_DivRem_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT*r)
{
    // 大抵の場合は q と r の精度は _INT32_T で問題ないが、オーバーフローしてしまうケースが存在するため、PMC_HANDLE_SINT 型とする
    // 例: u == -2147483648, v == -1 の場合、q = 2147483648, r = 0 となるが 2147483648 は _INT32_Tでは表現できない。
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (r == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    NUMBER_HEADER* nq;
    NUMBER_HEADER* nr;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    char u_sign;
    _UINT32_T u_abs = GET_ABS_32(u, &u_sign);
    if (nv->SIGN == 0)
    {
        // v == 0 の場合

        // エラーを返す
        return (PMC_STATUS_DIVISION_BY_ZERO);
    }
    if (u_sign == 0)
    {
        // u == 0 の場合

        nq = q != NULL ? &number_zero : NULL;
        nr = &number_zero;
    }
    else
    {
        // u != 0 の場合

        if (q != NULL)
        {
            char q_sign = u_sign > 0 ? nv->SIGN : -nv->SIGN;
            char r_sign = u_sign;
            _UINT32_T q_abs;
            _UINT32_T r_abs;
            if ((result = ep_uint.DivRem_I_X(u_abs, nv->ABS, &q_abs, &r_abs)) != PMC_STATUS_OK)
                return (result);
            if ((result = From_I_Imp(q_abs == 0 ? 0 : q_sign, q_abs, &nq)) != PMC_STATUS_OK)
                return (result);
            if ((result = From_I_Imp(r_abs == 0 ? 0 : r_sign, r_abs, &nr)) != PMC_STATUS_OK)
            {
                DeallocateNumber(nq);
                return (result);
            }
        }
        else
        {
            char r_sign = u_sign;
            _UINT32_T r_abs;
            if ((result = ep_uint.DivRem_I_X(u_abs, nv->ABS, NULL, &r_abs)) != PMC_STATUS_OK)
                return (result);
            nq = NULL;
            if ((result = From_I_Imp(r_abs == 0 ? 0 : r_sign, r_abs, &nr)) != PMC_STATUS_OK)
                return (result);
        }
    }
    if (q != NULL)
        *q = (PMC_HANDLE_SINT)nq;
    *r = (PMC_HANDLE_SINT)nr;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_DivRem_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT* r)
{
    // 大抵の場合は q と r の精度は _INT32_T で問題ないが、オーバーフローしてしまうケースが存在するため、PMC_HANDLE_SINT 型とする
    // 例: u == -9223372036854775808, v == -1 の場合、q = 9223372036854775808, r = 0 となるが 9223372036854775808 は _INT64_Tでは表現できない。
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (r == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    NUMBER_HEADER* nq;
    NUMBER_HEADER* nr;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    char u_sign;
    _UINT64_T u_abs = GET_ABS_64(u, &u_sign);
    if (nv->SIGN == 0)
    {
        // v == 0 の場合

        // エラーを返す
        return (PMC_STATUS_DIVISION_BY_ZERO);
    }
    if (u_sign == 0)
    {
        // u == 0 の場合

        nq = q != NULL ? &number_zero : NULL;
        nr = &number_zero;
    }
    else
    {
        // u != 0 の場合

        if (q != NULL)
        {
            char q_sign = u_sign > 0 ? nv->SIGN : -nv->SIGN;
            char r_sign = u_sign;
            _UINT64_T q_abs;
            _UINT64_T r_abs;
            if ((result = ep_uint.DivRem_L_X(u_abs, nv->ABS, &q_abs, &r_abs)) != PMC_STATUS_OK)
                return (result);
            if ((result = From_L_Imp(q_abs == 0 ? 0 : q_sign, q_abs, &nq)) != PMC_STATUS_OK)
                return (result);
            if ((result = From_L_Imp(r_abs == 0 ? 0 :  r_sign, r_abs, &nr)) != PMC_STATUS_OK)
            {
                DeallocateNumber(nq);
                return (result);
            }
        }
        else
        {
            char r_sign = u_sign;
            _UINT64_T r_abs;
            if ((result = ep_uint.DivRem_L_X(u_abs, nv->ABS, NULL, &r_abs)) != PMC_STATUS_OK)
                return (result);
            nq = NULL;
            if ((result = From_L_Imp(r_abs == 0 ? 0 : r_sign, r_abs, &nr)) != PMC_STATUS_OK)
                return (result);
        }
    }
    if (q != NULL)
        *q = (PMC_HANDLE_SINT)nq;
    *r = (PMC_HANDLE_SINT)nr;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_DivRem_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_UINT* r)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (r == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    NUMBER_HEADER* nq;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    if (nv->SIGN == 0)
    {
        // v == 0 の場合

        // エラーを返す
        return (PMC_STATUS_DIVISION_BY_ZERO);
    }
    if (u->FLAGS.IS_ZERO)
    {
        // u == 0 の場合

        nq = q != NULL ? nq = &number_zero : NULL;
        *r = uint_number_zero;
    }
    else
    {
        // u != 0 の場合

        if (q != NULL)
        {
            char q_sign = nv->SIGN;
            PMC_HANDLE_UINT q_abs;
            if ((result = ep_uint.DivRem_X_X(u, nv->ABS, &q_abs, r)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nq, q_abs->FLAGS.IS_ZERO ? 0 : q_sign, q_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(q_abs);
                ep_uint.Dispose(*r);
                return (result);
            }
        }
        else
        {
            if ((result = ep_uint.DivRem_X_X(u, nv->ABS, NULL, r)) != PMC_STATUS_OK)
                return (result);
            nq = NULL;
        }
    }
    if (q != NULL)
        *q = (PMC_HANDLE_SINT)nq;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* q, _INT32_T* r)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (r == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nq;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    char v_sign;
    _UINT32_T v_abs = GET_ABS_32(v, &v_sign);
    if (v_sign == 0)
    {
        // v == 0 の場合

        // エラーを返す
        return (PMC_STATUS_DIVISION_BY_ZERO);
    }
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        nq = q != NULL ? nq = &number_zero : NULL;
        *r = 0;
    }
    else
    {
        // u != 0 の場合

        if (q != NULL)
        {
            char q_sign = nu->SIGN > 0 ? v_sign : -v_sign;
            char r_sign = nu->SIGN;
            PMC_HANDLE_UINT q_abs;
            _UINT32_T r_abs;
            if ((result = ep_uint.DivRem_X_I(nu->ABS, v_abs, &q_abs, &r_abs)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nq, q_abs->FLAGS.IS_ZERO ? 0 : q_sign, q_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(q_abs);
                return (result);
            }
            *r = r_sign > 0 ? (_INT32_T)r_abs : -(_INT32_T)r_abs;
        }
        else
        {
            char r_sign = nu->SIGN;
            _UINT32_T r_abs;
            if ((result = ep_uint.DivRem_X_I(nu->ABS, v_abs, NULL, &r_abs)) != PMC_STATUS_OK)
                return (result);
            nq = NULL;
            *r = r_sign > 0 ? (_INT32_T)r_abs : -(_INT32_T)r_abs;
        }
    }
    if (q != NULL)
        *q = (PMC_HANDLE_SINT)nq;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* q, _INT64_T* r)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (r == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nq;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    char v_sign;
    _UINT64_T v_abs = GET_ABS_64(v, &v_sign);
    if (v_sign == 0)
    {
        // v == 0 の場合

        // エラーを返す
        return (PMC_STATUS_DIVISION_BY_ZERO);
    }
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        nq = q != NULL ? nq = &number_zero : NULL;
        *r = 0;
    }
    else
    {
        // u != 0 の場合

        if (q != NULL)
        {
            char q_sign = nu->SIGN > 0 ? v_sign : -v_sign;
            char r_sign = nu->SIGN;
            PMC_HANDLE_UINT q_abs;
            _UINT64_T r_abs;
            if ((result = ep_uint.DivRem_X_L(nu->ABS, v_abs, &q_abs, &r_abs)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nq, q_abs->FLAGS.IS_ZERO ? 0 : q_sign, q_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(q_abs);
                return (result);
            }
            *r = r_sign > 0 ? (_INT64_T)r_abs : -(_INT64_T)r_abs;
        }
        else
        {
            char r_sign = nu->SIGN;
            _UINT64_T r_abs;
            if ((result = ep_uint.DivRem_X_L(nu->ABS, v_abs, NULL, &r_abs)) != PMC_STATUS_OK)
                return (result);
            nq = NULL;
            *r = r_sign > 0 ? (_INT64_T)r_abs : -(_INT64_T)r_abs;
        }
    }
    if (q != NULL)
        *q = (PMC_HANDLE_SINT)nq;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT* r)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (r == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nq;
    NUMBER_HEADER* nr;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    if (v->FLAGS.IS_ZERO)
    {
        // v == 0 の場合

        // エラーを返す
        return (PMC_STATUS_DIVISION_BY_ZERO);
    }
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        nq = q != NULL ? nq = &number_zero : NULL;
        nr = &number_zero;
    }
    else
    {
        // u != 0 の場合

        if (q != NULL)
        {
            char q_sign = nu->SIGN;
            char r_sign = nu->SIGN;
            PMC_HANDLE_UINT q_abs;
            PMC_HANDLE_UINT r_abs;
            if ((result = ep_uint.DivRem_X_X(nu->ABS, v, &q_abs, &r_abs)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nq, q_abs->FLAGS.IS_ZERO ? 0 : q_sign, q_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(q_abs);
                ep_uint.Dispose(r_abs);
                return (result);
            }
            if ((result = AllocateNumber(&nr, r_abs->FLAGS.IS_ZERO ? 0 : r_sign, r_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(q_abs);
                ep_uint.Dispose(r_abs);
                DeallocateNumber(nq);
                return (result);
            }
        }
        else
        {
            char r_sign = nu->SIGN;
            PMC_HANDLE_UINT r_abs;
            if ((result = ep_uint.DivRem_X_X(nu->ABS, v, NULL, &r_abs)) != PMC_STATUS_OK)
                return (result);
            nq = NULL;
            if ((result = AllocateNumber(&nr, r_abs->FLAGS.IS_ZERO ? 0 : r_sign, r_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(r_abs);
                return (result);
            }
        }
    }
    if (q != NULL)
        *q = (PMC_HANDLE_SINT)nq;
    *r = (PMC_HANDLE_SINT)nr;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT* r)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (r == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nu = (NUMBER_HEADER*)u;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    NUMBER_HEADER* nq;
    NUMBER_HEADER* nr;
    if ((result = CheckNumber(nu)) != PMC_STATUS_OK)
        return (result);
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    if (nv->IS_ZERO)
    {
        // v == 0 の場合

        // エラーを返す
        return (PMC_STATUS_DIVISION_BY_ZERO);
    }
    if (nu->SIGN == 0)
    {
        // u == 0 の場合

        nq = q != NULL ? nq = &number_zero : NULL;
        nr = &number_zero;
    }
    else
    {
        // u != 0 の場合

        if (q != NULL)
        {
            char q_sign = nu->SIGN > 0 ? nv->SIGN : -nv->SIGN;
            char r_sign = nu->SIGN;
            PMC_HANDLE_UINT q_abs;
            PMC_HANDLE_UINT r_abs;
            if ((result = ep_uint.DivRem_X_X(nu->ABS, nv->ABS, &q_abs, &r_abs)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nq, q_abs->FLAGS.IS_ZERO ? 0 : q_sign, q_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(q_abs);
                ep_uint.Dispose(r_abs);
                return (result);
            }
            if ((result = AllocateNumber(&nr, r_abs->FLAGS.IS_ZERO ? 0 : r_sign, r_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(q_abs);
                ep_uint.Dispose(r_abs);
                DeallocateNumber(nq);
                return (result);
            }
        }
        else
        {
            char r_sign = nu->SIGN;
            PMC_HANDLE_UINT r_abs;
            if ((result = ep_uint.DivRem_X_X(nu->ABS, nv->ABS, NULL, &r_abs)) != PMC_STATUS_OK)
                return (result);
            nq = NULL;
            if ((result = AllocateNumber(&nr, r_abs->FLAGS.IS_ZERO ? 0 : r_sign, r_abs)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(r_abs);
                return (result);
            }
        }
    }
    if (q != NULL)
        *q = (PMC_HANDLE_SINT)nq;
    *r = (PMC_HANDLE_SINT)nr;
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */