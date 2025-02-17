﻿/*
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


#include "pmc_sint_internal.h"


#ifndef PMC_DEBUG_H
#define PMC_DEBUG_H

#ifdef __cplusplus
extern "C" {
#endif


#pragma region 型の定義
typedef struct __tag_PMC_DEBUG_ENVIRONMENT
{
    int (_cdecl * log)(const wchar_t*, ...);
    void (_cdecl * pause)(void);
} PMC_DEBUG_ENVIRONMENT;
#pragma endregion


#pragma region 宣言
#ifdef _DEBUG
extern void TEST_autogenerated_1(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep);
extern void TEST_autogenerated_2(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep);
extern void TEST_Assert(PMC_DEBUG_ENVIRONMENT *env, const wchar_t* test_name, BOOL condition, const wchar_t* reason);
extern wchar_t* FormatTestLabel(const wchar_t* format, int n1, int n2);
extern wchar_t* FormatTestMesssage(const wchar_t* format, PMC_STATUS_CODE return_value);

extern void TEST_Add_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Add_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Add_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Add_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Add_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Add_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Add_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);

extern void TEST_Compare_I_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Compare_L_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Compare_UX_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Compare_X_I(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, __int32 desired_w);
extern void TEST_Compare_X_L(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, __int32 desired_w);
extern void TEST_Compare_X_UX(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Compare_X_X(PMC_DEBUG_ENVIRONMENT* env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w);

extern void TEST_Clone_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*x_buf, size_t x_buf_size, unsigned char*desired_o_buf, size_t desired_o_buf_size);

extern void TEST_DivRem_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_DivRem_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_DivRem_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_DivRem_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, __int32 desired_r);
extern void TEST_DivRem_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, __int64 desired_r);
extern void TEST_DivRem_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_DivRem_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_q_buf, size_t desired_q_buf_size, unsigned char*desired_r_buf, size_t desired_r_buf_size);

extern void TEST_Equals_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Equals_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Equals_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Equals_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, __int32 v, __int32 desired_w);
extern void TEST_Equals_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, __int64 v, __int32 desired_w);
extern void TEST_Equals_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, __int32 desired_w);
extern void TEST_Equals_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, __int32 desired_w);

extern void TEST_From_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 v, unsigned char* buf, size_t buf_size);
extern void TEST_From_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 v, unsigned char* buf, size_t buf_size);

extern void TEST_GreatestCommonDivisor_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_status, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_GreatestCommonDivisor_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_status, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_GreatestCommonDivisor_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_status, unsigned char*desired_w_buf, size_t desired_w_buf_size);
extern void TEST_GreatestCommonDivisor_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, __int32 v, PMC_STATUS_CODE desired_status, unsigned char*desired_w_buf, size_t desired_w_buf_size);
extern void TEST_GreatestCommonDivisor_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, __int64 v, PMC_STATUS_CODE desired_status, unsigned char*desired_w_buf, size_t desired_w_buf_size);
extern void TEST_GreatestCommonDivisor_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_status, unsigned char*desired_w_buf, size_t desired_w_buf_size);
extern void TEST_GreatestCommonDivisor_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_status, unsigned char*desired_w_buf, size_t desired_w_buf_size);

extern void TEST_Multiply_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Multiply_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Multiply_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Multiply_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Multiply_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Multiply_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Multiply_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);

extern void TEST_Negate_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*x_buf, size_t x_buf_size, unsigned char*desired_o_buf, size_t desired_o_buf_size);

extern void TEST_ParseDN1(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, wchar_t* str, unsigned int styles, wchar_t* group_separator, wchar_t* decimal_separator, wchar_t* positive_sign, wchar_t* negative_sign, PMC_STATUS_CODE desired_result_code, unsigned char* desired_buf, size_t desired_buf_size);
extern void TEST_ParseDN2(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, wchar_t* str, unsigned int styles, PMC_STATUS_CODE desired_result_code, unsigned char* desired_buf, size_t desired_buf_size);
extern void TEST_ParseDN3(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, wchar_t* str, unsigned int styles, PMC_STATUS_CODE desired_result_code, unsigned char* desired_buf, size_t desired_buf_size);

extern void TEST_ParseX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, wchar_t* str, unsigned int styles, PMC_STATUS_CODE desired_result_code, unsigned char* desired_buf, size_t desired_buf_size);

extern void TEST_Remainder_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_Remainder_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_Remainder_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_Remainder_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, PMC_STATUS_CODE desired_return_code, __int32 desired_r);
extern void TEST_Remainder_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, PMC_STATUS_CODE desired_return_code, __int64 desired_r);
extern void TEST_Remainder_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_r_buf, size_t desired_r_buf_size);
extern void TEST_Remainder_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char*u_buf, size_t u_buf_size, unsigned char*v_buf, size_t v_buf_size, PMC_STATUS_CODE desired_return_code, unsigned char*desired_r_buf, size_t desired_r_buf_size);

extern void TEST_Subtruct_I_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int32 u, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Subtruct_L_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, __int64 u, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Subtruct_UX_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Subtruct_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int32 v, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Subtruct_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, __int64 v, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Subtruct_X_UX(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);
extern void TEST_Subtruct_X_X(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* u_buf, size_t u_buf_size, unsigned char* v_buf, size_t v_buf_size, unsigned char* desired_w_buf, size_t desired_w_buf_size);

extern void TEST_To_X_I(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* buf, size_t buf_size, PMC_STATUS_CODE desired_result_code, __int32 desired_rvalue);
extern void TEST_To_X_L(PMC_DEBUG_ENVIRONMENT *env, PMC_SINT_ENTRY_POINTS* ep, int no, unsigned char* buf, size_t buf_size, PMC_STATUS_CODE desired_result_code, __int64 desired_rvalue);
#endif
#pragma endregion


#pragma region インライン関数の定義
#ifdef _DEBUG
__inline static int _EQUALS_MEMORY(unsigned char* buffer1, size_t count1, unsigned char* buffer2, size_t count2)
{
    if (count1 != count2)
        return (-1);
    while (count1 > 0)
    {
        if (*buffer1 != *buffer2)
            return (-1);
        ++buffer1;
        ++buffer2;
        --count1;
    }
    return (0);
}
#endif
#pragma endregion


#ifdef __cplusplus
}
#endif

#endif /* PMC_DEBUG_H */

/*
 * END OF FILE
 */