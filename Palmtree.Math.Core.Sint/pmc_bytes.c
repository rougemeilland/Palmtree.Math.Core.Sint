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


PMC_STATUS_CODE __PMC_CALL PMC_FromByteArray(unsigned char* buffer, size_t count, PMC_HANDLE_SINT* o)
{
    PMC_STATUS_CODE result;
    if (buffer == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (o == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    if (count < 1)
        return (PMC_STATUS_ARGUMENT_ERROR);
    char o_sign;
    PMC_HANDLE_UINT o_abs;
    if ((result = ep_uint.FromByteArrayForSINT(buffer, count, &o_sign, &o_abs)) != PMC_STATUS_OK)
        return (result);
    NUMBER_HEADER* no;
    if ((result = AllocateNumber(&no, o_sign, o_abs)) != PMC_STATUS_OK)
    {
        ep_uint.Dispose(o_abs);
        return (result);
    }
    *o = (PMC_HANDLE_SINT)no;
    return (PMC_STATUS_OK);
}

PMC_STATUS_CODE __PMC_CALL PMC_ToByteArray(PMC_HANDLE_SINT p, unsigned char* buffer, size_t buffer_size, size_t *count)
{
    if (p == NULL)
        return (PMC_STATUS_ARGUMENT_ERROR);
    NUMBER_HEADER* np = (NUMBER_HEADER*)p;
    PMC_STATUS_CODE result;
    if ((result = CheckNumber(np)) != PMC_STATUS_OK)
        return (result);
    if ((result = ep_uint.ToByteArrayForSINT(np->SIGN, np->ABS, buffer, buffer_size, count)) != PMC_STATUS_OK)
        return (result);
    return (PMC_STATUS_OK);
}


/*
 * END OF FILE
 */