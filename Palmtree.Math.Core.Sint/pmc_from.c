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


PMC_STATUS_CODE From_I_Imp(char x_sign, _UINT32_T x_abs, NUMBER_HEADER** o)
{
    PMC_STATUS_CODE result;
    if (x_sign == 0)
        *o = &number_zero;
    else
    {
        PMC_HANDLE_UINT o_abs;
        if ((result = ep_uint.From_I(x_abs, &o_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(o, x_sign, o_abs)) != PMC_STATUS_OK)
            return (result);
    }
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE From_L_Imp(char x_sign, _UINT64_T x_abs, NUMBER_HEADER** o)
{
    PMC_STATUS_CODE result;
    if (x_sign == 0)
        *o = &number_zero;
    else
    {
        PMC_HANDLE_UINT o_abs;
        if ((result = ep_uint.From_L(x_abs, &o_abs)) != PMC_STATUS_OK)
            return (result);
        if ((result = AllocateNumber(o, x_sign, o_abs)) != PMC_STATUS_OK)
            return (result);
    }
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_From_I(_INT32_T x, PMC_HANDLE_SINT* o)
{
    PMC_STATUS_CODE result;
    if (x == 0)
        *o = (PMC_HANDLE_SINT)&number_zero;
    else
    {
        NUMBER_HEADER* p;
        if (x == 0)
            result = From_I_Imp(0, 0, &p);
        else if (x > 0)
            result = From_I_Imp(1, x, &p);
        else
            result = From_I_Imp(-1, -x, &p);
        if (result != PMC_STATUS_OK)
            return (result);
        *o = (PMC_HANDLE_SINT)p;
    }
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_From_L(_INT64_T x, PMC_HANDLE_SINT* o)
{
    PMC_STATUS_CODE result;
    if (x == 0)
        *o = (PMC_HANDLE_SINT)&number_zero;
    else
    {
        NUMBER_HEADER* p;
        if (x == 0)
            result = From_L_Imp(0, 0, &p);
        else if (x > 0)
            result = From_L_Imp(1, x, &p);
        else
            result = From_L_Imp(-1, -x, &p);
        if (result != PMC_STATUS_OK)
            return (result);
        *o = (PMC_HANDLE_SINT)p;
    }
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */