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
#include "pmc_sint_debug.h"


#ifdef _DEBUG
void TEST_Negate_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*x_buf, size_t x_buf_size, unsigned char*desired_o_buf, size_t desired_o_buf_size)
{
    PMC_HANDLE_SINT x;
    PMC_HANDLE_SINT o;
    unsigned char actual_o_buf[256];
    size_t actual_o_buf_size;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE x_result;
    PMC_STATUS_CODE o_result;
    TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 1), (x_result = ep->FromByteArray(x_buf, x_buf_size, &x)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", x_result));
    TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 2), (o_result = ep->Negate_X(x, &o)) == PMC_STATUS_OK, FormatTestMesssage(L"Negate_Xの復帰コードが期待通りではない(%d)", o_result));
    TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 3), (result = ep->ToByteArray(o, actual_o_buf, sizeof(actual_o_buf), &actual_o_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 4), _EQUALS_MEMORY(actual_o_buf, actual_o_buf_size, desired_o_buf, desired_o_buf_size) == 0, L"データの内容が一致しない");
    if (o_result == PMC_STATUS_OK)
        ep->Dispose(o);
    if (x_result == PMC_STATUS_OK)
        ep->Dispose(x);
}
#endif


/*
 * END OF FILE
 */