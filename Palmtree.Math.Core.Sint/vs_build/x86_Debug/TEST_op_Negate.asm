; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27026.1 

	TITLE	Z:\Sources\Lunor\Repos\rougemeilland\Palmtree.Math.Core.Sint\Palmtree.Math.Core.Sint\TEST_op_Negate.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	_uint_number_zero:DWORD
COMM	_uint_number_one:DWORD
_DATA	ENDS
msvcjmc	SEGMENT
__7B7A869E_ctype@h DB 01H
__457DD326_basetsd@h DB 01H
__4384A2D9_corecrt_memcpy_s@h DB 01H
__4E51A221_corecrt_wstring@h DB 01H
__2140C079_string@h DB 01H
__1887E595_winnt@h DB 01H
__9FC7C64B_processthreadsapi@h DB 01H
__FA470AEC_memoryapi@h DB 01H
__F37DAFF1_winerror@h DB 01H
__7A450CCC_winbase@h DB 01H
__B4B40122_winioctl@h DB 01H
__86261D59_stralign@h DB 01H
__059414E1_pmc_sint_debug@h DB 01H
__29F644CB_test_op_negate@c DB 01H
msvcjmc	ENDS
PUBLIC	_TEST_Negate_X
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_1EC@NPMCAPKO@?$AAF?$AAr?$AAo?$AAm?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ@ ; `string'
PUBLIC	??_C@_1CC@CMHDHNMP@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd@ ; `string'
PUBLIC	??_C@_1DI@EKCGPGLB@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@ ; `string'
PUBLIC	??_C@_1DO@DOHJEMND@?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ?$AA0?$PP?$LD@ ; `string'
PUBLIC	??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@ ; `string'
EXTRN	_TEST_Assert:PROC
EXTRN	_FormatTestLabel:PROC
EXTRN	_FormatTestMesssage:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT ??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@
CONST	SEGMENT
??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@ DB 0c7H
	DB	'0', 0fcH, '0', 0bfH, '0n0', 085H, 'Q', 0b9H, '[L0', 00H, 'N', 0f4H
	DB	081H, 'W0j0D0', 00H, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_1DO@DOHJEMND@?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ?$AA0?$PP?$LD@
CONST	SEGMENT
??_C@_1DO@DOHJEMND@?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ?$AA0?$PP?$LD@ DB 'T'
	DB	00H, 'o', 00H, 'B', 00H, 'y', 00H, 't', 00H, 'e', 00H, 'A', 00H
	DB	'r', 00H, 'r', 00H, 'a', 00H, 'y', 00H, 'n0', 0a9H, '_0^', 0b3H
	DB	'0', 0fcH, '0', 0c9H, '0L0', 01fH, 'g', 085H, '_', 01aH, 090H, 08aH
	DB	'0g0o0j0D0(', 00H, '%', 00H, 'd', 00H, ')', 00H, 00H, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_1DI@EKCGPGLB@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@
CONST	SEGMENT
??_C@_1DI@EKCGPGLB@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@ DB 'N'
	DB	00H, 'e', 00H, 'g', 00H, 'a', 00H, 't', 00H, 'e', 00H, '_', 00H
	DB	'X', 00H, 'n0', 0a9H, '_0^', 0b3H, '0', 0fcH, '0', 0c9H, '0L0', 01fH
	DB	'g', 085H, '_', 01aH, 090H, 08aH, '0g0o0j0D0(', 00H, '%', 00H, 'd'
	DB	00H, ')', 00H, 00H, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_1CC@CMHDHNMP@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd@
CONST	SEGMENT
??_C@_1CC@CMHDHNMP@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd@ DB 'N'
	DB	00H, 'e', 00H, 'g', 00H, 'a', 00H, 't', 00H, 'e', 00H, '_', 00H
	DB	'X', 00H, ' ', 00H, '(', 00H, '%', 00H, 'd', 00H, '.', 00H, '%'
	DB	00H, 'd', 00H, ')', 00H, 00H, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_1EC@NPMCAPKO@?$AAF?$AAr?$AAo?$AAm?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ@
CONST	SEGMENT
??_C@_1EC@NPMCAPKO@?$AAF?$AAr?$AAo?$AAm?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ@ DB 'F'
	DB	00H, 'r', 00H, 'o', 00H, 'm', 00H, 'B', 00H, 'y', 00H, 't', 00H
	DB	'e', 00H, 'A', 00H, 'r', 00H, 'r', 00H, 'a', 00H, 'y', 00H, 'n'
	DB	'0', 0a9H, '_0^', 0b3H, '0', 0fcH, '0', 0c9H, '0L0', 01fH, 'g', 085H
	DB	'_', 01aH, 090H, 08aH, '0g0o0j0D0(', 00H, '%', 00H, 'd', 00H, ')'
	DB	00H, 00H, 00H				; `string'
CONST	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sources\lunor\repos\rougemeilland\palmtree.math.core.sint\palmtree.math.core.sint\pmc_sint_debug.h
;	COMDAT __EQUALS_MEMORY
_TEXT	SEGMENT
_buffer1$ = 8						; size = 4
_count1$ = 12						; size = 4
_buffer2$ = 16						; size = 4
_count2$ = 20						; size = 4
__EQUALS_MEMORY PROC					; COMDAT

; 140  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __059414E1_pmc_sint_debug@h
	call	@__CheckForDebuggerJustMyCode@4

; 141  :     if (count1 != count2)

	mov	eax, DWORD PTR _count1$[ebp]
	cmp	eax, DWORD PTR _count2$[ebp]
	je	SHORT $LN2@EQUALS_MEM

; 142  :         return (-1);

	or	eax, -1
	jmp	SHORT $LN1@EQUALS_MEM
$LN2@EQUALS_MEM:

; 143  :     while (count1 > 0)

	cmp	DWORD PTR _count1$[ebp], 0
	jbe	SHORT $LN3@EQUALS_MEM

; 144  :     {
; 145  :         if (*buffer1 != *buffer2)

	mov	eax, DWORD PTR _buffer1$[ebp]
	movzx	ecx, BYTE PTR [eax]
	mov	edx, DWORD PTR _buffer2$[ebp]
	movzx	eax, BYTE PTR [edx]
	cmp	ecx, eax
	je	SHORT $LN5@EQUALS_MEM

; 146  :             return (-1);

	or	eax, -1
	jmp	SHORT $LN1@EQUALS_MEM
$LN5@EQUALS_MEM:

; 147  :         ++buffer1;

	mov	eax, DWORD PTR _buffer1$[ebp]
	add	eax, 1
	mov	DWORD PTR _buffer1$[ebp], eax

; 148  :         ++buffer2;

	mov	eax, DWORD PTR _buffer2$[ebp]
	add	eax, 1
	mov	DWORD PTR _buffer2$[ebp], eax

; 149  :         --count1;

	mov	eax, DWORD PTR _count1$[ebp]
	sub	eax, 1
	mov	DWORD PTR _count1$[ebp], eax

; 150  :     }

	jmp	SHORT $LN2@EQUALS_MEM
$LN3@EQUALS_MEM:

; 151  :     return (0);

	xor	eax, eax
$LN1@EQUALS_MEM:

; 152  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__EQUALS_MEMORY ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sources\lunor\repos\rougemeilland\palmtree.math.core.sint\palmtree.math.core.sint\test_op_negate.c
;	COMDAT _TEST_Negate_X
_TEXT	SEGMENT
tv157 = -536						; size = 4
tv142 = -536						; size = 4
tv91 = -536						; size = 4
tv74 = -536						; size = 4
_o_result$ = -336					; size = 4
_x_result$ = -324					; size = 4
_result$ = -312						; size = 4
_actual_o_buf_size$ = -300				; size = 4
_actual_o_buf$ = -288					; size = 256
_o$ = -24						; size = 4
_x$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_env$ = 8						; size = 4
_ep$ = 12						; size = 4
_no$ = 16						; size = 4
_x_buf$ = 20						; size = 4
_x_buf_size$ = 24					; size = 4
_desired_o_buf$ = 28					; size = 4
_desired_o_buf_size$ = 32				; size = 4
_TEST_Negate_X PROC					; COMDAT

; 32   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 536				; 00000218H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-536]
	mov	ecx, 134				; 00000086H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	ecx, OFFSET __29F644CB_test_op_negate@c
	call	@__CheckForDebuggerJustMyCode@4

; 33   :     PMC_HANDLE_SINT x;
; 34   :     PMC_HANDLE_SINT o;
; 35   :     unsigned char actual_o_buf[256];
; 36   :     size_t actual_o_buf_size;
; 37   :     PMC_STATUS_CODE result;
; 38   :     PMC_STATUS_CODE x_result;
; 39   :     PMC_STATUS_CODE o_result;
; 40   :     TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 1), (x_result = ep->FromByteArray(x_buf, x_buf_size, &x)) == PMC_STATUS_OK, FormatTestMesssage(L"FromByteArrayの復帰コードが期待通りではない(%d)", x_result));

	mov	esi, esp
	lea	eax, DWORD PTR _x$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x_buf_size$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x_buf$[ebp]
	push	edx
	mov	eax, DWORD PTR _ep$[ebp]
	mov	ecx, DWORD PTR [eax+304]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _x_result$[ebp], eax
	cmp	DWORD PTR _x_result$[ebp], 0
	jne	SHORT $LN5@TEST_Negat
	mov	DWORD PTR tv74[ebp], 1
	jmp	SHORT $LN6@TEST_Negat
$LN5@TEST_Negat:
	mov	DWORD PTR tv74[ebp], 0
$LN6@TEST_Negat:
	mov	edx, DWORD PTR _x_result$[ebp]
	push	edx
	push	OFFSET ??_C@_1EC@NPMCAPKO@?$AAF?$AAr?$AAo?$AAm?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ@
	call	_FormatTestMesssage
	add	esp, 8
	push	eax
	mov	eax, DWORD PTR tv74[ebp]
	push	eax
	push	1
	mov	ecx, DWORD PTR _no$[ebp]
	push	ecx
	push	OFFSET ??_C@_1CC@CMHDHNMP@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd@
	call	_FormatTestLabel
	add	esp, 12					; 0000000cH
	push	eax
	mov	edx, DWORD PTR _env$[ebp]
	push	edx
	call	_TEST_Assert
	add	esp, 16					; 00000010H

; 41   :     TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 2), (o_result = ep->Negate_X(x, &o)) == PMC_STATUS_OK, FormatTestMesssage(L"Negate_Xの復帰コードが期待通りではない(%d)", o_result));

	mov	esi, esp
	lea	eax, DWORD PTR _o$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ep$[ebp]
	mov	eax, DWORD PTR [edx+324]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _o_result$[ebp], eax
	cmp	DWORD PTR _o_result$[ebp], 0
	jne	SHORT $LN7@TEST_Negat
	mov	DWORD PTR tv91[ebp], 1
	jmp	SHORT $LN8@TEST_Negat
$LN7@TEST_Negat:
	mov	DWORD PTR tv91[ebp], 0
$LN8@TEST_Negat:
	mov	ecx, DWORD PTR _o_result$[ebp]
	push	ecx
	push	OFFSET ??_C@_1DI@EKCGPGLB@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@
	call	_FormatTestMesssage
	add	esp, 8
	push	eax
	mov	edx, DWORD PTR tv91[ebp]
	push	edx
	push	2
	mov	eax, DWORD PTR _no$[ebp]
	push	eax
	push	OFFSET ??_C@_1CC@CMHDHNMP@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd@
	call	_FormatTestLabel
	add	esp, 12					; 0000000cH
	push	eax
	mov	ecx, DWORD PTR _env$[ebp]
	push	ecx
	call	_TEST_Assert
	add	esp, 16					; 00000010H

; 42   :     TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 3), (result = ep->ToByteArray(o, actual_o_buf, sizeof(actual_o_buf), &actual_o_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"ToByteArrayの復帰コードが期待通りではない(%d)", result));

	mov	esi, esp
	lea	eax, DWORD PTR _actual_o_buf_size$[ebp]
	push	eax
	push	256					; 00000100H
	lea	ecx, DWORD PTR _actual_o_buf$[ebp]
	push	ecx
	mov	edx, DWORD PTR _o$[ebp]
	push	edx
	mov	eax, DWORD PTR _ep$[ebp]
	mov	ecx, DWORD PTR [eax+308]
	call	ecx
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _result$[ebp], eax
	cmp	DWORD PTR _result$[ebp], 0
	jne	SHORT $LN9@TEST_Negat
	mov	DWORD PTR tv142[ebp], 1
	jmp	SHORT $LN10@TEST_Negat
$LN9@TEST_Negat:
	mov	DWORD PTR tv142[ebp], 0
$LN10@TEST_Negat:
	mov	edx, DWORD PTR _result$[ebp]
	push	edx
	push	OFFSET ??_C@_1DO@DOHJEMND@?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy?$AAn?$PP?$KJ?$AA0?$PP?$LD@
	call	_FormatTestMesssage
	add	esp, 8
	push	eax
	mov	eax, DWORD PTR tv142[ebp]
	push	eax
	push	3
	mov	ecx, DWORD PTR _no$[ebp]
	push	ecx
	push	OFFSET ??_C@_1CC@CMHDHNMP@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd@
	call	_FormatTestLabel
	add	esp, 12					; 0000000cH
	push	eax
	mov	edx, DWORD PTR _env$[ebp]
	push	edx
	call	_TEST_Assert
	add	esp, 16					; 00000010H

; 43   :     TEST_Assert(env, FormatTestLabel(L"Negate_X (%d.%d)", no, 4), _EQUALS_MEMORY(actual_o_buf, actual_o_buf_size, desired_o_buf, desired_o_buf_size) == 0, L"データの内容が一致しない");

	mov	eax, DWORD PTR _desired_o_buf_size$[ebp]
	push	eax
	mov	ecx, DWORD PTR _desired_o_buf$[ebp]
	push	ecx
	mov	edx, DWORD PTR _actual_o_buf_size$[ebp]
	push	edx
	lea	eax, DWORD PTR _actual_o_buf$[ebp]
	push	eax
	call	__EQUALS_MEMORY
	add	esp, 16					; 00000010H
	test	eax, eax
	jne	SHORT $LN11@TEST_Negat
	mov	DWORD PTR tv157[ebp], 1
	jmp	SHORT $LN12@TEST_Negat
$LN11@TEST_Negat:
	mov	DWORD PTR tv157[ebp], 0
$LN12@TEST_Negat:
	push	OFFSET ??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@
	mov	ecx, DWORD PTR tv157[ebp]
	push	ecx
	push	4
	mov	edx, DWORD PTR _no$[ebp]
	push	edx
	push	OFFSET ??_C@_1CC@CMHDHNMP@?$AAN?$AAe?$AAg?$AAa?$AAt?$AAe?$AA_?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd@
	call	_FormatTestLabel
	add	esp, 12					; 0000000cH
	push	eax
	mov	eax, DWORD PTR _env$[ebp]
	push	eax
	call	_TEST_Assert
	add	esp, 16					; 00000010H

; 44   :     if (o_result == PMC_STATUS_OK)

	cmp	DWORD PTR _o_result$[ebp], 0
	jne	SHORT $LN2@TEST_Negat

; 45   :         ep->Dispose(o);

	mov	esi, esp
	mov	eax, DWORD PTR _o$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ep$[ebp]
	mov	edx, DWORD PTR [ecx+296]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@TEST_Negat:

; 46   :     if (x_result == PMC_STATUS_OK)

	cmp	DWORD PTR _x_result$[ebp], 0
	jne	SHORT $LN1@TEST_Negat

; 47   :         ep->Dispose(x);

	mov	esi, esp
	mov	eax, DWORD PTR _x$[ebp]
	push	eax
	mov	ecx, DWORD PTR _ep$[ebp]
	mov	edx, DWORD PTR [ecx+296]
	call	edx
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@TEST_Negat:

; 48   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN18@TEST_Negat
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 536				; 00000218H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN18@TEST_Negat:
	DD	4
	DD	$LN17@TEST_Negat
$LN17@TEST_Negat:
	DD	-12					; fffffff4H
	DD	4
	DD	$LN13@TEST_Negat
	DD	-24					; ffffffe8H
	DD	4
	DD	$LN14@TEST_Negat
	DD	-288					; fffffee0H
	DD	256					; 00000100H
	DD	$LN15@TEST_Negat
	DD	-300					; fffffed4H
	DD	4
	DD	$LN16@TEST_Negat
$LN16@TEST_Negat:
	DB	97					; 00000061H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	117					; 00000075H
	DB	97					; 00000061H
	DB	108					; 0000006cH
	DB	95					; 0000005fH
	DB	111					; 0000006fH
	DB	95					; 0000005fH
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	95					; 0000005fH
	DB	115					; 00000073H
	DB	105					; 00000069H
	DB	122					; 0000007aH
	DB	101					; 00000065H
	DB	0
$LN15@TEST_Negat:
	DB	97					; 00000061H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	117					; 00000075H
	DB	97					; 00000061H
	DB	108					; 0000006cH
	DB	95					; 0000005fH
	DB	111					; 0000006fH
	DB	95					; 0000005fH
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	0
$LN14@TEST_Negat:
	DB	111					; 0000006fH
	DB	0
$LN13@TEST_Negat:
	DB	120					; 00000078H
	DB	0
_TEST_Negate_X ENDP
_TEXT	ENDS
END
