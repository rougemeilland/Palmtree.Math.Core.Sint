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
void TEST_ParseX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, wchar_t* str, unsigned int styles, PMC_STATUS_CODE desired_result_code, unsigned char* desired_buf, size_t desired_buf_size)
{
    PMC_HANDLE_SINT x;
    static unsigned char actual_buf[256];
    static size_t actual_buf_size;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE x_result;
    PMC_NUMBER_FORMAT_OPTION opt;
    lstrcpyW(opt.GroupSeparator, L",");
    lstrcpyW(opt.GroupSizes, L"3");
    lstrcpyW(opt.DecimalSeparator, L".");
    opt.DecimalDigits = 2;
    lstrcpyW(opt.PositiveSign, L"+");
    lstrcpyW(opt.NegativeSign, L"-");
    TEST_Assert(env, FormatTestLabel(L"ParseX (%d.%d)", no, 1), (x_result = ep->TryParse(str, styles, &opt, &x)) == desired_result_code, FormatTestMesssage(L"TryParseの復帰コードが期待通りではない(%d)", x_result));
    if (desired_result_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"ParseX (%d.%d)", no, 2), (result = ep->ToByteArray(x, actual_buf, sizeof(actual_buf), &actual_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"PMC_ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"ParseX (%d.%d)", no, 3), _EQUALS_MEMORY(actual_buf, actual_buf_size, desired_buf, desired_buf_size) == 0, L"データの内容が一致しない");
    }
    if (x_result == PMC_STATUS_OK)
        ep->Dispose(x);
}
#endif


/*
 * END OF FILE
 */