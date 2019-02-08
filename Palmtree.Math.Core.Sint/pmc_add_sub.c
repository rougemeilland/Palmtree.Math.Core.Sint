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


static PMC_STATUS_CODE AddU_X_I_Imp(char sign, PMC_HANDLE_UINT u, _UINT32_T v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT w_abs;
    if ((result = ep_uint.Add_X_I(u, v, &w_abs)) != PMC_STATUS_OK)
        return (result);
    if ((result = AllocateNumber(w, sign, w_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(w_abs);
        return (result);
    }
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE AddU_X_L_Imp(char sign, PMC_HANDLE_UINT u, _UINT64_T v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT w_abs;
    if ((result = ep_uint.Add_X_L(u, v, &w_abs)) != PMC_STATUS_OK)
        return (result);
    if ((result = AllocateNumber(w, sign, w_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(w_abs);
        return (result);
    }
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE AddU_X_X_Imp(char sign, PMC_HANDLE_UINT u, PMC_HANDLE_UINT v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    PMC_HANDLE_UINT w_abs;
    if ((result = ep_uint.Add_X_X(u, v, &w_abs)) != PMC_STATUS_OK)
        return (result);
    if ((result = AllocateNumber(w, sign, w_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(w_abs);
        return (result);
    }
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE SubtructU_X_I_Imp(char sign, PMC_HANDLE_UINT u, _UINT32_T v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    _INT32_T c;
    if ((result = ep_uint.Compare_X_I(u, v, &c)) != PMC_STATUS_OK)
        return (result);
    if (c > 0)
    {
        // abs(u) > abs(v) ÇÃèÍçá

        // abs(u) - abs(v) Çï‘Ç∑
        PMC_HANDLE_UINT w_abs;
        if ((result = ep_uint.Subtruct_X_I(u, v, &w_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(w, sign, w_abs)) != PMC_STATUS_OK)
        {
            ep_uint.Dispose(w_abs);
            return (result);
        }
    }
    else if (c == 0)
    {
        // abs(u) == abs(v) ÇÃèÍçá

        // 0 Çï‘Ç∑
        *w = &number_zero;
    }
    else
    {
        // abs(u) < abs(v) ÇÃèÍçá

        // - (abs(v) - abs(u)) Çï‘Ç∑
        _UINT32_T t;
        if ((result = ep_uint.Subtruct_I_X(v, u, &t)) != PMC_STATUS_OK)
            return (result);
        PMC_HANDLE_UINT w_abs;
        if ((result = ep_uint.From_I(t, &w_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(w, -sign, w_abs)) != PMC_STATUS_OK)
        {
            ep_uint.Dispose(w_abs);
            return (result);
        }
    }
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE SubtructU_X_L_Imp(char sign, PMC_HANDLE_UINT u, _UINT64_T v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    _INT32_T c;
    if ((result = ep_uint.Compare_X_L(u, v, &c)) != PMC_STATUS_OK)
        return (result);
    if (c > 0)
    {
        // abs(u) > abs(v) ÇÃèÍçá

        // abs(u) - abs(v) Çï‘Ç∑
        PMC_HANDLE_UINT w_abs;
        if ((result = ep_uint.Subtruct_X_L(u, v, &w_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(w, sign, w_abs)) != PMC_STATUS_OK)
        {
            ep_uint.Dispose(w_abs);
            return (result);
        }
    }
    else if (c == 0)
    {
        // abs(u) == abs(v) ÇÃèÍçá

        // 0 Çï‘Ç∑
        *w = &number_zero;
    }
    else
    {
        // abs(u) < abs(v) ÇÃèÍçá

        // - (abs(v) - abs(u)) Çï‘Ç∑
        _UINT64_T t;
        if ((result = ep_uint.Subtruct_L_X(v, u, &t)) != PMC_STATUS_OK)
            return (result);
        PMC_HANDLE_UINT w_abs;
        if ((result = ep_uint.From_L(t, &w_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(w, -sign, w_abs)) != PMC_STATUS_OK)
        {
            ep_uint.Dispose(w_abs);
            return (result);
        }
    }
    return (PMC_STATUS_OK);
}

static PMC_STATUS_CODE SubtructU_X_X_Imp(char sign, PMC_HANDLE_UINT u, PMC_HANDLE_UINT v, NUMBER_HEADER** w)
{
    PMC_STATUS_CODE result;
    _INT32_T c;
    if ((result = ep_uint.Compare_X_X(u, v, &c)) != PMC_STATUS_OK)
        return (result);
    if (c > 0)
    {
        // abs(u) > abs(v) ÇÃèÍçá

        // abs(u) - abs(v) Çï‘Ç∑
        PMC_HANDLE_UINT w_abs;
        if ((result = ep_uint.Subtruct_X_X(u, v, &w_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(w, sign, w_abs)) != PMC_STATUS_OK)
        {
            ep_uint.Dispose(w_abs);
            return (result);
        }
    }
    else if (c == 0)
    {
        // abs(u) == abs(v) ÇÃèÍçá

        // 0 Çï‘Ç∑
        *w = &number_zero;
    }
    else
    {
        // abs(u) < abs(v) ÇÃèÍçá

        // - (abs(v) - abs(u)) Çï‘Ç∑
        PMC_HANDLE_UINT w_abs;
        if ((result = ep_uint.Subtruct_X_X(v, u, &w_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(w, -sign, w_abs)) != PMC_STATUS_OK)
        {
            ep_uint.Dispose(w_abs);
            return (result);
        }
    }
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Add_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // v Çï‘Ç∑
            if ((result = DuplicateNumber(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (u_sign > 0)
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_I_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) + abs(v) Çï‘Ç∑
            if ((result = AddU_X_I_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_I_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_I_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_I_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) - abs(v) Çï‘Ç∑
            if ((result = AddU_X_I_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Add_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // v Çï‘Ç∑
            if ((result = DuplicateNumber(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (u_sign > 0)
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_L_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) + abs(v) Çï‘Ç∑
            if ((result = AddU_X_L_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_L_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_L_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_L_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) - abs(v) Çï‘Ç∑
            if ((result = AddU_X_L_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Add_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
    char u_is_zero;
    if ((result = IsZero_UINT(u, &u_is_zero)) != PMC_STATUS_OK)
        return (result);
    if (u_is_zero)
    {
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // v Çï‘Ç∑
            if ((result = DuplicateNumber(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            PMC_HANDLE_UINT new_u;
            if ((result = ep_uint.Clone_X(u, &new_u)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nw, 1, new_u)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(new_u);
                return (result);
            }
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // u + abs(v) Çï‘Ç∑
            if ((result = AddU_X_X_Imp(1, u, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // u - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_X_Imp(1, u, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Add_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // v Çï‘Ç∑
            if ((result = From_I_Imp(v_sign, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) + abs(v) Çï‘Ç∑
            if ((result = AddU_X_I_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_I_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_I_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) - abs(v) Çï‘Ç∑
            if ((result = AddU_X_I_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Add_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // v Çï‘Ç∑
            if ((result = From_L_Imp(v_sign, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) + abs(v) Çï‘Ç∑
            if ((result = AddU_X_L_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_L_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_L_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) - abs(v) Çï‘Ç∑
            if ((result = AddU_X_L_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Add_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (v_is_zero)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v > 0 ÇÃèÍçá

            // v Çï‘Ç∑
            PMC_HANDLE_UINT new_v;
            if ((result = ep_uint.Clone_X(v, &new_v)) != PMC_STATUS_OK)
                return (result);
            PMC_NUMBER_TYPE_CODE type;
            if ((result = ep_uint.GetNumberType_X(new_v, &type)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nw, 1, new_v)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(new_v);
                return (result);
            }
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (v_is_zero)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v > 0 ÇÃèÍçá

            // abs(u) + v Çï‘Ç∑
            if ((result = AddU_X_X_Imp(1, nu->ABS, v, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (v_is_zero)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) + v Çï‘Ç∑
            if ((result = SubtructU_X_X_Imp(-1, nu->ABS, v, &nw)) != PMC_STATUS_OK)
                return (result);
        }

    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Add_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // v Çï‘Ç∑
            if ((result = DuplicateNumber(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) + abs(v) Çï‘Ç∑
            if ((result = AddU_X_X_Imp(1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_X_Imp(1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = SubtructU_X_X_Imp(-1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) - abs(v) Çï‘Ç∑
            if ((result = AddU_X_X_Imp(-1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // -v Çï‘Ç∑
            if ((result = Negate_Imp(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (u_sign > 0)
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_I_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) - abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_I_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_I_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_I_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_I_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) + abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_I_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // -v Çï‘Ç∑
            if ((result = Negate_Imp(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (u_sign > 0)
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_L_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) - abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_L_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_L_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = From_L_Imp(u_sign, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_L_Imp(-1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) + abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_L_Imp(1, nv->ABS, u_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // -v Çï‘Ç∑
            if ((result = Negate_Imp(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            PMC_HANDLE_UINT new_u;
            if ((result = ep_uint.Clone_X(u, &new_u)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nw, 1, new_u)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(new_u);
                return (result);
            }
        }
        else if (nv->SIGN > 0)
        {
            // u > 0 ÇÃèÍçá

            // u - abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_X_Imp(1, u, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // u < 0 ÇÃèÍçá

            // u + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_X_Imp(1, u, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // -v Çï‘Ç∑
            if ((result = From_I_Imp(-v_sign, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) - abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_I_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_I_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_I_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) + abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_I_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // -v Çï‘Ç∑
            if ((result = From_L_Imp(-v_sign, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) - abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_L_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_L_Imp(1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (v_sign == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (v_sign > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_L_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) + abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_L_Imp(-1, nu->ABS, v_abs, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (v_is_zero)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v > 0 ÇÃèÍçá

            // -v Çï‘Ç∑
            PMC_HANDLE_UINT new_v;
            if ((result = ep_uint.Clone_X(v, &new_v)) != PMC_STATUS_OK)
                return (result);
            if ((result = AllocateNumber(&nw, -1, new_v)) != PMC_STATUS_OK)
            {
                ep_uint.Dispose(new_v);
                return (result);
            }
        }

    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (v_is_zero)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v > 0 ÇÃèÍçá

            // abs(u) - v Çï‘Ç∑
            if ((result = SubtructU_X_X_Imp(1, nu->ABS, v, &nw)) != PMC_STATUS_OK)
                return (result);
        }

    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (v_is_zero)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) - v ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_X_Imp(-1, nu->ABS, v, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w)
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
        // u == 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // 0 Çï‘Ç∑
            nw = &number_zero;
        }
        else
        {
            // v != 0 ÇÃèÍçá

            // -v Çï‘Ç∑
            if ((result = Negate_Imp(nv, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else if (nu->SIGN > 0)
    {
        // u > 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // abs(u) - abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_X_Imp(1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // abs(u) + abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_X_Imp(1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    else
    {
        // u < 0 ÇÃèÍçá

        if (nv->SIGN == 0)
        {
            // v == 0 ÇÃèÍçá

            // u Çï‘Ç∑
            if ((result = DuplicateNumber(nu, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else if (nv->SIGN > 0)
        {
            // v > 0 ÇÃèÍçá

            // - abs(u) - abs(v) ÇåvéZÇ∑ÇÈ
            if ((result = AddU_X_X_Imp(-1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
        else
        {
            // v < 0 ÇÃèÍçá

            // - abs(u) + abs(v) Çï‘Ç∑
            if ((result = SubtructU_X_X_Imp(-1, nu->ABS, nv->ABS, &nw)) != PMC_STATUS_OK)
                return (result);
        }
    }
    *w = (PMC_HANDLE_SINT)nw;
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */