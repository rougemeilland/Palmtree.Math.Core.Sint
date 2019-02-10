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


#ifndef PMC_UINT_INTERNAL_H
#define PMC_UINT_INTERNAL_H


#include <windows.h>
#include "pmc_sint.h"
#include "pmc_internal.h"


#ifdef __cplusplus
extern "C" {
#endif

#pragma region マクロの定義
#define signof(x)  ((x) > 0 ? 1 : (x) == 0 ? 0 : -1)
#pragma endregion


#pragma region 型の定義
    typedef struct __tag_NUMBER_HEADER
    {
        unsigned        IS_ZERO : 1;              // データが 0 なら TRUE
        unsigned        IS_ONE : 1;               // データが 1 なら TRUE
        unsigned        IS_MINUS_ONE : 1;         // データが -1 なら TRUE
        unsigned        IS_EVEN : 1;              // データが 偶数 なら TRUE
        unsigned        IS_POWER_OF_TWO : 1;      // データが 2 のべき乗なら TRUE

        _UINT32_T       SIGNATURE1;               // テーブルを識別するためのデータ1
        _UINT32_T       SIGNATURE2;               // テーブルを識別するためのデータ2

        PMC_HANDLE_UINT ABS;                      // 数値の絶対値を表すハンドル
        char            SIGN;                     // 数値の符号を表す整数

        unsigned        IS_STATIC : 1;            // 本構造体が静的に割り当てられていて解放不要ならばTRUE
    } NUMBER_HEADER;
#pragma endregion


#pragma region 共用関数/変数の宣言
    // 符号なし多倍長整数演算ライブラリのエントリポイント
    extern PMC_UINT_ENTRY_POINTS ep_uint;

    // 整数 0 のインスタンス
    extern NUMBER_HEADER number_zero;

    // 整数 1 のインスタンス
    extern NUMBER_HEADER number_one;

    // 整数 -1 のインスタンス
    extern NUMBER_HEADER number_minus_one;

    // 符号なし整数 0 のインスタンス
    PMC_HANDLE_UINT uint_number_zero;

    // 符号なし整数 1 のインスタンス
    PMC_HANDLE_UINT uint_number_one;

    // パフォーマンスカウンタ
    extern PMC_STATISTICS_INFO statistics_info;

    extern BOOL AllocateHeapArea();
    extern void DeallocateHeapArea();
    extern PMC_STATUS_CODE AllocateNumber(NUMBER_HEADER** pp, char sign, PMC_HANDLE_UINT abs);
    extern void DeallocateNumber(NUMBER_HEADER* p);
    extern PMC_STATUS_CODE CheckNumber(NUMBER_HEADER* p);
    extern PMC_STATUS_CODE DuplicateNumber(NUMBER_HEADER* x, NUMBER_HEADER** op);
    extern PMC_STATUS_CODE Negate_Imp(NUMBER_HEADER* x, NUMBER_HEADER** o);
    extern PMC_STATUS_CODE From_I_Imp(char x_sign, _UINT32_T x_abs, NUMBER_HEADER** o);
    extern PMC_STATUS_CODE From_L_Imp(char x_sign, _UINT64_T x_abs, NUMBER_HEADER** o);
#pragma endregion


#pragma region 初期化関数の宣言
    extern PMC_STATUS_CODE Initialize_Memory(void);
#pragma endregion


#pragma region エントリポイントに登録される関数の宣言
    extern void __PMC_CALL PMC_GetStatisticsInfo(PMC_STATISTICS_INFO* p);

    extern PMC_STATUS_CODE __PMC_CALL PMC_From_I(_INT32_T x, PMC_HANDLE_SINT* o);
    extern PMC_STATUS_CODE __PMC_CALL PMC_From_L(_INT64_T x, PMC_HANDLE_SINT* o);

    extern void __PMC_CALL PMC_Dispose(PMC_HANDLE_SINT p);

    extern PMC_STATUS_CODE __PMC_CALL PMC_GetConstantValue_I(PMC_CONSTANT_VALUE_CODE type, PMC_HANDLE_SINT* o);

    extern PMC_STATUS_CODE __PMC_CALL PMC_FromByteArray(unsigned char* buffer, size_t count, PMC_HANDLE_SINT* o);
    extern PMC_STATUS_CODE __PMC_CALL PMC_ToByteArray(PMC_HANDLE_SINT p, unsigned char* buffer, size_t buffer_size, size_t *count);

    extern PMC_STATUS_CODE __PMC_CALL PMC_Clone_X(PMC_HANDLE_SINT x, PMC_HANDLE_SINT* o);

    extern PMC_STATUS_CODE __PMC_CALL PMC_To_X_I(PMC_HANDLE_SINT p, _INT32_T* o);
    extern PMC_STATUS_CODE __PMC_CALL PMC_To_X_L(PMC_HANDLE_SINT p, _INT64_T* o);

    extern PMC_STATUS_CODE __PMC_CALL PMC_Negate_X(PMC_HANDLE_SINT x, PMC_HANDLE_SINT* o);

    /*
    extern PMC_STATUS_CODE __PMC_CALL PMC_ToString(PMC_HANDLE_SINT x, wchar_t* buffer, size_t buffer_size, char format, int width, PMC_NUMBER_FORMAT_OPTION* format_option);
    */
    extern PMC_STATUS_CODE __PMC_CALL PMC_TryParse(wchar_t* source, PMC_NUMBER_STYLE_CODE number_styles, PMC_NUMBER_FORMAT_OPTION* format_option, PMC_HANDLE_SINT* o);

    extern PMC_STATUS_CODE __PMC_CALL PMC_Add_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Add_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Add_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Add_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Add_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Add_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Add_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);

    extern PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Subtruct_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);

    extern PMC_STATUS_CODE __PMC_CALL PMC_Multiply_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Multiply_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Multiply_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Multiply_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);

    extern PMC_STATUS_CODE __PMC_CALL PMC_DivRem_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT*r);
    extern PMC_STATUS_CODE __PMC_CALL PMC_DivRem_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT*r);
    extern PMC_STATUS_CODE __PMC_CALL PMC_DivRem_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_UINT* r);
    extern PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* q, _INT32_T* r);
    extern PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* q, _INT64_T* r);
    extern PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT* r);
    extern PMC_STATUS_CODE __PMC_CALL PMC_DivRem_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* q, PMC_HANDLE_SINT* r);

    /*
    extern PMC_STATUS_CODE __PMC_CALL PMC_RightShift_X_I(PMC_HANDLE_SINT p, _UINT32_T n, PMC_HANDLE_SINT* o);

    extern PMC_STATUS_CODE __PMC_CALL PMC_LeftShift_X_I(PMC_HANDLE_SINT p, _UINT32_T n, PMC_HANDLE_SINT* o);

    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseAnd_I_X(_INT32_T u, PMC_HANDLE_SINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseAnd_L_X(_INT64_T u, PMC_HANDLE_SINT v, _INT64_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseAnd_X_I(PMC_HANDLE_SINT u, _INT32_T v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseAnd_X_L(PMC_HANDLE_SINT u, _INT64_T v, _INT64_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseAnd_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);

    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseOr_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseOr_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseOr_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseOr_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_BitwiseOr_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);

    extern PMC_STATUS_CODE __PMC_CALL PMC_ExclusiveOr_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_ExclusiveOr_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_ExclusiveOr_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_ExclusiveOr_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_SINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_ExclusiveOr_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_SINT* w);
    */
    extern PMC_STATUS_CODE __PMC_CALL PMC_Compare_I_X(_INT32_T u, PMC_HANDLE_SINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Compare_L_X(_INT64_T u, PMC_HANDLE_SINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Compare_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_I(PMC_HANDLE_SINT u, _INT32_T v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_L(PMC_HANDLE_SINT u, _INT64_T v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Compare_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, _INT32_T* w);

    extern PMC_STATUS_CODE __PMC_CALL PMC_Equals_I_X(_INT32_T u, PMC_HANDLE_SINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Equals_L_X(_INT64_T u, PMC_HANDLE_SINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Equals_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Equals_X_I(PMC_HANDLE_SINT u, _INT32_T v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Equals_X_L(PMC_HANDLE_SINT u, _INT64_T v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Equals_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, _INT32_T* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_Equals_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, _INT32_T* w);

    extern PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_I_X(_INT32_T u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_L_X(_INT64_T u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_UX_X(PMC_HANDLE_UINT u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_I(PMC_HANDLE_SINT u, _INT32_T v, PMC_HANDLE_UINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_L(PMC_HANDLE_SINT u, _INT64_T v, PMC_HANDLE_UINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_UX(PMC_HANDLE_SINT u, PMC_HANDLE_UINT v, PMC_HANDLE_UINT* w);
    extern PMC_STATUS_CODE __PMC_CALL PMC_GreatestCommonDivisor_X_X(PMC_HANDLE_SINT u, PMC_HANDLE_SINT v, PMC_HANDLE_UINT* w);
#pragma endregion


#pragma region インライン関数の定義
#pragma endregion


#ifdef __cplusplus
}
#endif

#endif /* PMC_UINT_INTERNAL_H */

/*
 * END OF FILE
 */