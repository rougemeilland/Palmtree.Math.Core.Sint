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


PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w)
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
    if ((result = ep_uint.GreatestCommonDivisor_I_X(u_abs, nv->ABS, w)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w)
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
    if ((result = ep_uint.GreatestCommonDivisor_L_X(u_abs, nv->ABS, w)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w)
{
    if (u == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (v == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (w == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    PMC_STATUS_CODE result;
    NUMBER_HEADER* nv = (NUMBER_HEADER*)v;
    if ((result = CheckNumber(nv)) != PMC_STATUS_OK)
        return (result);
    if ((result = ep_uint.GreatestCommonDivisor_X_X(u, nv->ABS, w)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_UINT* w)
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
    if ((result = ep_uint.GreatestCommonDivisor_X_I(nu->ABS, v_abs, w)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_UINT* w)
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
    if ((result = ep_uint.GreatestCommonDivisor_X_L(nu->ABS, v_abs, w)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_UINT* w)
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
    if ((result = ep_uint.GreatestCommonDivisor_X_X(nu->ABS, v, w)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w)
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
    if ((result = ep_uint.GreatestCommonDivisor_X_X(nu->ABS, nv->ABS, w)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */