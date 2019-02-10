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
void TEST_From_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 v, unsigned char*buf, size_t buf_size)
{
    PMC_HANDLE_SINT x;
    unsigned char rbuffer[256];
    size_t rlength;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE x_result;
    TEST_Assert(env, FormatTestLabel(L"From_I (%d.%d)", no, 1), (x_result = ep->From_I(v, &x)) == PMC_STATUS_OK, FormatTestMesssage(L"From_Iの復帰コードが期待通りではない(%d)", x_result));
    TEST_Assert(env, FormatTestLabel(L"From_I (%d.%d)", no, 2), (result = ep->ToByteArray(x, rbuffer, sizeof(rbuffer), &rlength)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"From_I (%d.%d)", no, 3), _EQUALS_MEMORY(rbuffer, rlength, buf, buf_size) == 0, L"データの内容が一致しない");
    if (x_result == PMC_STATUS_OK)
        ep->Dispose(x);
}

void TEST_From_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 v, unsigned char*buf, size_t buf_size)
{
    PMC_HANDLE_SINT x;
    unsigned char rbuffer[256];
    size_t rlength;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE x_result;
    TEST_Assert(env, FormatTestLabel(L"From_L (%d.%d)", no, 1), (x_result = ep->From_L(v, &x)) == PMC_STATUS_OK, FormatTestMesssage(L"From_Lの復帰コードが期待通りではない(%d)", x_result));
    TEST_Assert(env, FormatTestLabel(L"From_L (%d.%d)", no, 2), (result = ep->ToByteArray(x, rbuffer, sizeof(rbuffer), &rlength)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"From_L (%d.%d)", no, 3), _EQUALS_MEMORY(rbuffer, rlength, buf, buf_size) == 0, L"データの内容が一致しない");
    if (x_result == PMC_STATUS_OK)
        ep->Dispose(x);
}

void TEST_To_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*buf, size_t buf_size, PMC_STATUS_CODE desired_result_code, __int32 desired_rvalue)
{
    PMC_HANDLE_SINT x;
    __int32 rvalue;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE x_result;
    TEST_Assert(env, FormatTestLabel(L"To_X_I (%d.%d)", no, 1), (x_result = ep->FromByteArray(buf, buf_size, &x)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", x_result));
    TEST_Assert(env, FormatTestLabel(L"To_X_I (%d.%d)", no, 2), (result = ep->To_X_I(x, &rvalue)) == desired_result_code, FormatTestMesssage(L"To_X_Iの復帰コードが期待通りではない(%d)", result));
    if (desired_result_code == PMC_STATUS_OK)
        TEST_Assert(env, FormatTestLabel(L"To_X_I (%d.%d)", no, 3), rvalue == desired_rvalue, L"データの内容が一致しない");
    if (x_result == PMC_STATUS_OK)
        ep->Dispose(x);
}

void TEST_To_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*buf, size_t buf_size, PMC_STATUS_CODE desired_result_code, __int64 desired_rvalue)
{
    PMC_HANDLE_SINT x;
    __int64 rvalue;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE x_result;
    TEST_Assert(env, FormatTestLabel(L"To_X_L (%d.%d)", no, 1), (x_result = ep->FromByteArray(buf, buf_size, &x)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", x_result));
    TEST_Assert(env, FormatTestLabel(L"To_X_L (%d.%d)", no, 2), (result = ep->To_X_L(x, &rvalue)) == desired_result_code, FormatTestMesssage(L"To_X_Iの復帰コードが期待通りではない(%d)", result));
    if (desired_result_code == PMC_STATUS_OK)
        TEST_Assert(env, FormatTestLabel(L"To_X_L (%d.%d)", no, 3), rvalue == desired_rvalue, L"データの内容が一致しない");
    if (x_result == PMC_STATUS_OK)
        ep->Dispose(x);
}
#endif


/*
 * END OF FILE
 */