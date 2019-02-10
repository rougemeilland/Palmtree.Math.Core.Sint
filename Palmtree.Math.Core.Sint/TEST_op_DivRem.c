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
void TEST_DivRem_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size)
{
    PMC_HANDLE_SINT v;
    PMC_HANDLE_SINT q;
    PMC_HANDLE_SINT r;
    unsigned char actual_q_buf[256];
    size_t actual_q_buf_size;
    unsigned char actual_r_buf[256];
    size_t actual_r_buf_size;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE v_result;
    PMC_STATUS_CODE q_r_result;
    TEST_Assert(env, FormatTestLabel(L"DivRem_I_X (%d.%d)", no, 1), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_I_X (%d.%d)", no, 2), (q_r_result = ep->DivRem_I_X(u, v, &q, &r)) == desired_return_code, FormatTestMesssage(L"DivRem_I_Xの復帰コードが期待通りではない(%d)", q_r_result));
    if (desired_return_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"DivRem_I_X (%d.%d)", no, 3), (result = ep->ToByteArray(q, actual_q_buf, sizeof(actual_q_buf), &actual_q_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_I_X (%d.%d)", no, 4), (result = ep->ToByteArray(r, actual_r_buf, sizeof(actual_r_buf), &actual_r_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_I_X (%d.%d)", no, 5), _EQUALS_MEMORY(actual_q_buf, actual_q_buf_size, desired_q_buf, desired_q_buf_size) == 0, L"商の値が一致しない");
        TEST_Assert(env, FormatTestLabel(L"DivRem_I_X (%d.%d)", no, 6), _EQUALS_MEMORY(actual_r_buf, actual_r_buf_size, desired_r_buf, desired_r_buf_size) == 0, L"剰余の値が一致しない");
    }
    if (q_r_result == PMC_STATUS_OK)
    {
        ep->Dispose(r);
        ep->Dispose(q);
    }
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
}

void TEST_DivRem_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size)
{
    PMC_HANDLE_SINT v;
    PMC_HANDLE_SINT q;
    PMC_HANDLE_SINT r;
    unsigned char actual_q_buf[256];
    size_t actual_q_buf_size;
    unsigned char actual_r_buf[256];
    size_t actual_r_buf_size;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE v_result;
    PMC_STATUS_CODE q_r_result;
    TEST_Assert(env, FormatTestLabel(L"DivRem_L_X (%d.%d)", no, 1), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_L_X (%d.%d)", no, 2), (q_r_result = ep->DivRem_L_X(u, v, &q, &r)) == desired_return_code, FormatTestMesssage(L"DivRem_L_Xの復帰コードが期待通りではない(%d)", q_r_result));
    if (desired_return_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"DivRem_L_X (%d.%d)", no, 3), (result = ep->ToByteArray(q, actual_q_buf, sizeof(actual_q_buf), &actual_q_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_L_X (%d.%d)", no, 4), (result = ep->ToByteArray(r, actual_r_buf, sizeof(actual_r_buf), &actual_r_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_L_X (%d.%d)", no, 5), _EQUALS_MEMORY(actual_q_buf, actual_q_buf_size, desired_q_buf, desired_q_buf_size) == 0, L"商の値が一致しない");
        TEST_Assert(env, FormatTestLabel(L"DivRem_L_X (%d.%d)", no, 6), _EQUALS_MEMORY(actual_r_buf, actual_r_buf_size, desired_r_buf, desired_r_buf_size) == 0, L"剰余の値が一致しない");
    }
    if (q_r_result == PMC_STATUS_OK)
    {
        ep->Dispose(r);
        ep->Dispose(q);
    }
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
}

void TEST_DivRem_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size)
{
    PMC_HANDLE_UINT u;
    PMC_HANDLE_SINT v;
    PMC_HANDLE_SINT q;
    PMC_HANDLE_UINT r;
    unsigned char actual_q_buf[256];
    size_t actual_q_buf_size;
    unsigned char actual_r_buf[256];
    size_t actual_r_buf_size;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE v_result;
    PMC_STATUS_CODE q_r_result;
    TEST_Assert(env, FormatTestLabel(L"DivRem_UX_X (%d.%d)", no, 1), (u_result = ep->UINT_ENTRY_POINTS.FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_UX_X (%d.%d)", no, 2), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_UX_X (%d.%d)", no, 3), (q_r_result = ep->DivRem_UX_X(u, v, &q, &r)) == desired_return_code, FormatTestMesssage(L"DivRem_UX_Xの復帰コードが期待通りではない(%d)", q_r_result));
    if (desired_return_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"DivRem_UX_X (%d.%d)", no, 4), (result = ep->ToByteArray(q, actual_q_buf, sizeof(actual_q_buf), &actual_q_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_UX_X (%d.%d)", no, 5), (result = ep->UINT_ENTRY_POINTS.ToByteArray(r, actual_r_buf, sizeof(actual_r_buf), &actual_r_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_UX_X (%d.%d)", no, 6), _EQUALS_MEMORY(actual_q_buf, actual_q_buf_size, desired_q_buf, desired_q_buf_size) == 0, L"商の値が一致しない");
        TEST_Assert(env, FormatTestLabel(L"DivRem_UX_X (%d.%d)", no, 7), _EQUALS_MEMORY(actual_r_buf, actual_r_buf_size, desired_r_buf, desired_r_buf_size) == 0, L"剰余の値が一致しない");
    }
    if (q_r_result == PMC_STATUS_OK)
    {
        ep->Dispose(q);
        ep->UINT_ENTRY_POINTS.Dispose(r);
    }
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
    if (u_result == PMC_STATUS_OK)
        ep->UINT_ENTRY_POINTS.Dispose(u);
}

void TEST_DivRem_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, __int32 desired_r)
{
    PMC_HANDLE_SINT u;
    PMC_HANDLE_SINT q;
    unsigned char actual_q_buf[256];
    size_t actual_q_buf_size;
    __int32 actual_r;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE q_result;
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_I (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_I (%d.%d)", no, 2), (q_result = ep->DivRem_X_I(u, v, &q, &actual_r)) == desired_return_code, FormatTestMesssage(L"DivRem_X_Iの復帰コードが期待通りではない(%d)", q_result));
    if (desired_return_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_I (%d.%d)", no, 3), (result = ep->ToByteArray(q, actual_q_buf, sizeof(actual_q_buf), &actual_q_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_I (%d.%d)", no, 4), _EQUALS_MEMORY(actual_q_buf, actual_q_buf_size, desired_q_buf, desired_q_buf_size) == 0, L"商の値が一致しない");
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_I (%d.%d)", no, 5), actual_r == desired_r, L"剰余の値が一致しない");
    }
    if (q_result == PMC_STATUS_OK)
        ep->Dispose(q);
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}

void TEST_DivRem_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, __int64 desired_r)
{
    PMC_HANDLE_SINT u;
    PMC_HANDLE_SINT q;
    unsigned char actual_q_buf[256];
    size_t actual_q_buf_size;
    __int64 actual_r;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE q_result;
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_L (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_L (%d.%d)", no, 2), (q_result = ep->DivRem_X_L(u, v, &q, &actual_r)) == desired_return_code, FormatTestMesssage(L"DivRem_X_Lの復帰コードが期待通りではない(%d)", q_result));
    if (desired_return_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_L (%d.%d)", no, 3), (result = ep->ToByteArray(q, actual_q_buf, sizeof(actual_q_buf), &actual_q_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_L (%d.%d)", no, 4), _EQUALS_MEMORY(actual_q_buf, actual_q_buf_size, desired_q_buf, desired_q_buf_size) == 0, L"商の値が一致しない");
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_L (%d.%d)", no, 5), actual_r == desired_r, L"剰余の値が一致しない");
    }
    if (q_result == PMC_STATUS_OK)
        ep->Dispose(q);
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}

void TEST_DivRem_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size)
{
    PMC_HANDLE_SINT u;
    PMC_HANDLE_UINT v;
    PMC_HANDLE_SINT q;
    PMC_HANDLE_SINT r;
    unsigned char actual_q_buf[256];
    size_t actual_q_buf_size;
    unsigned char actual_r_buf[256];
    size_t actual_r_buf_size;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE v_result;
    PMC_STATUS_CODE q_r_result;
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_UX (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_UX (%d.%d)", no, 2), (v_result = ep->UINT_ENTRY_POINTS.FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_UX (%d.%d)", no, 3), (q_r_result = ep->DivRem_X_UX(u, v, &q, &r)) == desired_return_code, FormatTestMesssage(L"DivRem_X_UXの復帰コードが期待通りではない(%d)", q_r_result));
    if (desired_return_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_UX (%d.%d)", no, 4), (result = ep->ToByteArray(q, actual_q_buf, sizeof(actual_q_buf), &actual_q_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_UX (%d.%d)", no, 5), (result = ep->ToByteArray(r, actual_r_buf, sizeof(actual_r_buf), &actual_r_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_UX (%d.%d)", no, 6), _EQUALS_MEMORY(actual_q_buf, actual_q_buf_size, desired_q_buf, desired_q_buf_size) == 0, L"商の値が一致しない");
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_UX (%d.%d)", no, 7), _EQUALS_MEMORY(actual_r_buf, actual_r_buf_size, desired_r_buf, desired_r_buf_size) == 0, L"剰余の値が一致しない");
    }
    if (q_r_result == PMC_STATUS_OK)
    {
        ep->Dispose(q);
        ep->Dispose(r);
    }
    if (v_result == PMC_STATUS_OK)
        ep->UINT_ENTRY_POINTS.Dispose(v);
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}

void TEST_DivRem_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size)
{
    PMC_HANDLE_SINT u;
    PMC_HANDLE_SINT v;
    PMC_HANDLE_SINT q;
    PMC_HANDLE_SINT r;
    unsigned char actual_q_buf[256];
    size_t actual_q_buf_size;
    unsigned char actual_r_buf[256];
    size_t actual_r_buf_size;
    PMC_STATUS_CODE result;
    PMC_STATUS_CODE u_result;
    PMC_STATUS_CODE v_result;
    PMC_STATUS_CODE q_r_result;
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_X (%d.%d)", no, 1), (u_result = ep->FromByteArray(u_buf, u_buf_size, &u)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", u_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_X (%d.%d)", no, 2), (v_result = ep->FromByteArray(v_buf, v_buf_size, &v)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", v_result));
    TEST_Assert(env, FormatTestLabel(L"DivRem_X_X (%d.%d)", no, 3), (q_r_result = ep->DivRem_X_X(u, v, &q, &r)) == desired_return_code, FormatTestMesssage(L"DivRem_X_Xの復帰コードが期待通りではない(%d)", q_r_result));
    if (desired_return_code == PMC_STATUS_OK)
    {
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_X (%d.%d)", no, 4), (result = ep->ToByteArray(q, actual_q_buf, sizeof(actual_q_buf), &actual_q_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_X (%d.%d)", no, 5), (result = ep->ToByteArray(r, actual_r_buf, sizeof(actual_r_buf), &actual_r_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_X (%d.%d)", no, 6), _EQUALS_MEMORY(actual_q_buf, actual_q_buf_size, desired_q_buf, desired_q_buf_size) == 0, L"商の値が一致しない");
        TEST_Assert(env, FormatTestLabel(L"DivRem_X_X (%d.%d)", no, 7), _EQUALS_MEMORY(actual_r_buf, actual_r_buf_size, desired_r_buf, desired_r_buf_size) == 0, L"剰余の値が一致しない");
    }
    if (q_r_result == PMC_STATUS_OK)
    {
        ep->Dispose(q);
        ep->Dispose(r);
    }
    if (v_result == PMC_STATUS_OK)
        ep->Dispose(v);
    if (u_result == PMC_STATUS_OK)
        ep->Dispose(u);
}
#endif


/*
 * END OF FILE
 */