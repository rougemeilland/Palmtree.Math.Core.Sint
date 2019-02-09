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
#include "pmc.h"
#include "pmc_sint_debug.h"


#ifdef _DEBUG
void TEST_Compare_I_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w)
{
    PMC_HANDLE_SINT v;
    __int32 actual_w;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE v_result;
    TEST_Assert(env, FormatTestLabel(L"Compare_I_X (%d.%d)", no, 1), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_I_X (%d.%d)", no, 2), (result = ep->Compare_I_X(u, v, &actual_w)) == PMC_STATUS_OK, FormatTestMesssage(L"Compare_I_Xの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Compare_I_X (%d.%d)", no, 3), actual_w == desired_w, L"データの内容が一致しない");
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
}

void TEST_Compare_L_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w)
{
    PMC_HANDLE_SINT v;
    __int32 actual_w;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE v_result;
    TEST_Assert(env, FormatTestLabel(L"Compare_L_X (%d.%d)", no, 1), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_L_X (%d.%d)", no, 2), (result = ep->Compare_L_X(u, v, &actual_w)) == PMC_STATUS_OK, FormatTestMesssage(L"Compare_L_Xの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Compare_I_X (%d.%d)", no, 3), actual_w == desired_w, L"データの内容が一致しない");
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
}

void TEST_Compare_UX_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w)
{
    PMC_HANDLE_UINT u;
    PMC_HANDLE_SINT v;
    __int32 actual_w;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE v_result;
    TEST_Assert(env, FormatTestLabel(L"Compare_UX_X (%d.%d)", no, 1), (u_result = ep->UINT_ENTRY_POINTS.FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_UX_X (%d.%d)", no, 2), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_UX_X (%d.%d)", no, 3), (result = ep->Compare_UX_X(u, v, &actual_w)) == PMC_STATUS_OK, FormatTestMesssage(L"Compare_UX_Xの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Compare_UX_X (%d.%d)", no, 4), actual_w == desired_w, L"データの内容が一致しない");
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
    if (u_result == PMC_STATUS_OK)
        ep->UINT_ENTRY_POINTS.Dispose(u);
}

void TEST_Compare_X_I(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, __int32 desired_w)
{
    PMC_HANDLE_SINT u;
    __int32 actual_w;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    TEST_Assert(env, FormatTestLabel(L"Compare_X_I (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_I (%d.%d)", no, 2), (result = ep->Compare_X_I(u, v, &actual_w)) == PMC_STATUS_OK, FormatTestMesssage(L"Compare_X_Iの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_I (%d.%d)", no, 3), actual_w == desired_w, L"データの内容が一致しない");
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}

void TEST_Compare_X_L(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, __int32 desired_w)
{
    PMC_HANDLE_SINT u;
    __int32 actual_w;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    TEST_Assert(env, FormatTestLabel(L"Compare_X_L (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_L (%d.%d)", no, 2), (result = ep->Compare_X_L(u, v, &actual_w)) == PMC_STATUS_OK, FormatTestMesssage(L"Compare_X_Lの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_L (%d.%d)", no, 3), actual_w == desired_w, L"データの内容が一致しない");
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}

void TEST_Compare_X_UX(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w)
{
    PMC_HANDLE_SINT u;
    PMC_HANDLE_UINT v;
    __int32 actual_w;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE v_result;
    TEST_Assert(env, FormatTestLabel(L"Compare_X_UX (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_UX (%d.%d)", no, 2), (v_result = ep->UINT_ENTRY_POINTS.FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_UX (%d.%d)", no, 3), (result = ep->Compare_X_UX(u, v, &actual_w)) == PMC_STATUS_OK, FormatTestMesssage(L"Compare_X_UXの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_UX (%d.%d)", no, 4), actual_w == desired_w, L"データの内容が一致しない");
    if (v_result == PMC_STATUS_OK)
        ep->UINT_ENTRY_POINTS.Dispose(v);
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}

void TEST_Compare_X_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w)
{
    PMC_HANDLE_SINT u;
    PMC_HANDLE_SINT v;
    __int32 actual_w;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE v_result;
    TEST_Assert(env, FormatTestLabel(L"Compare_X_X (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_X (%d.%d)", no, 2), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_X (%d.%d)", no, 3), (result = ep->Compare_X_X(u, v, &actual_w)) == PMC_STATUS_OK, FormatTestMesssage(L"Compare_X_Xの復帰コードが期待通りではない(%d)", result));
    TEST_Assert(env, FormatTestLabel(L"Compare_X_X (%d.%d)", no, 4), actual_w == desired_w, L"データの内容が一致しない");
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}
#endif


/*
 * END OF FILE
 */
