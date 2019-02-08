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


PMC_STATUS_CODE __PMC_CALL PMC_To_X_I(PMC_HANDLE_SINT p, _INT32_T* o)
{
    NUMBER_HEADER* np = (NUMBER_HEADER*)p;
    PMC_STATUS_CODE result;
    if ((result = CheckNumber(np)) != PMC_STATUS_OK)
        return (result);
    char p_sign = np->SIGN;
    _UINT32_T p_abs;
    if ((result = ep_uint.To_X_I(np->ABS, &p_abs)) != PMC_STATUS_OK)
        return (result);
    if (p_sign == 0)
        *o = 0;
    else if (p_sign > 0)
    {
        if (p_abs > 0x7fffffffU)
            return (PMC_STATUS_OVERFLOW);
        *o = (_INT32_T)p_abs;
    }
    else
    {
        if (p_abs > 0x80000000U)
            return (PMC_STATUS_OVERFLOW);
        *o = -(_INT32_T)p_abs;
    }
    return (PMC_STATUS_OK);
}   

PMC_STATUS_CODE __PMC_CALL PMC_To_X_L(PMC_HANDLE_SINT p, _INT64_T* o)
{
    NUMBER_HEADER* np = (NUMBER_HEADER*)p;
    PMC_STATUS_CODE result;
    if ((result = CheckNumber(np)) != PMC_STATUS_OK)
        return (result);
    char p_sign = np->SIGN;
    _UINT64_T p_abs;
    if ((result = ep_uint.To_X_L(np->ABS, &p_abs)) != PMC_STATUS_OK)
        return (result);
    if (p_sign == 0)
        *o = 0;
    else if (p_sign > 0)
    {
        if (p_abs > 0x7fffffffffffffffLU)
            return (PMC_STATUS_OVERFLOW);
        *o = (_INT64_T)p_abs;
    }
    else
    {
        if (p_abs > 0x8000000000000000LU)
            return (PMC_STATUS_OVERFLOW);
        *o = -(_INT64_T)p_abs;
    }
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */