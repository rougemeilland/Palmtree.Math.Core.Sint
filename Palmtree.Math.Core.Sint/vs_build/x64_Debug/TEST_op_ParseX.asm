; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27026.1 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	uint_number_zero:QWORD
COMM	uint_number_one:QWORD
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
__01E814D2_test_op_parsex@c DB 01H
msvcjmc	ENDS
PUBLIC	TEST_ParseX
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_1DI@IKFBJCFO@?$AAT?$AAr?$AAy?$AAP?$AAa?$AAr?$AAs?$AAe?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@ ; `string'
PUBLIC	??_C@_1BO@HCNCHDIP@?$AAP?$AAa?$AAr?$AAs?$AAe?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd?$AA?$CJ@ ; `string'
PUBLIC	??_C@_1EG@MCOLJMDD@?$AAP?$AAM?$AAC?$AA_?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy@ ; `string'
PUBLIC	??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@ ; `string'
EXTRN	TEST_Assert:PROC
EXTRN	FormatTestLabel:PROC
EXTRN	FormatTestMesssage:PROC
EXTRN	_RTC_CheckStackVars:PROC
EXTRN	_RTC_InitBase:PROC
EXTRN	_RTC_Shutdown:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
EXTRN	__GSHandlerCheck:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	__security_cookie:QWORD
_BSS	SEGMENT
?actual_buf@?1??TEST_ParseX@@9@9 DB 0100H DUP (?)	; `TEST_ParseX'::`2'::actual_buf
?actual_buf_size@?1??TEST_ParseX@@9@9 DQ 01H DUP (?)	; `TEST_ParseX'::`2'::actual_buf_size
_BSS	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$TEST_ParseX DD imagerel $LN11
	DD	imagerel $LN11+583
	DD	imagerel $unwind$TEST_ParseX
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_EQUALS_MEMORY DD imagerel _EQUALS_MEMORY
	DD	imagerel _EQUALS_MEMORY+198
	DD	imagerel $unwind$_EQUALS_MEMORY
pdata	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
_RTC_Shutdown.rtc$TMZ DQ FLAT:_RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
_RTC_InitBase.rtc$IMZ DQ FLAT:_RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT ??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@
CONST	SEGMENT
??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@ DB 0c7H
	DB	'0', 0fcH, '0', 0bfH, '0n0', 085H, 'Q', 0b9H, '[L0', 00H, 'N', 0f4H
	DB	081H, 'W0j0D0', 00H, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_1EG@MCOLJMDD@?$AAP?$AAM?$AAC?$AA_?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy@
CONST	SEGMENT
??_C@_1EG@MCOLJMDD@?$AAP?$AAM?$AAC?$AA_?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy@ DB 'P'
	DB	00H, 'M', 00H, 'C', 00H, '_', 00H, 'T', 00H, 'o', 00H, 'B', 00H
	DB	'y', 00H, 't', 00H, 'e', 00H, 'A', 00H, 'r', 00H, 'r', 00H, 'a'
	DB	00H, 'y', 00H, 'n0', 0a9H, '_0^', 0b3H, '0', 0fcH, '0', 0c9H, '0'
	DB	'L0', 01fH, 'g', 085H, '_', 01aH, 090H, 08aH, '0g0o0j0D0(', 00H
	DB	'%', 00H, 'd', 00H, ')', 00H, 00H, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_1BO@HCNCHDIP@?$AAP?$AAa?$AAr?$AAs?$AAe?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd?$AA?$CJ@
CONST	SEGMENT
??_C@_1BO@HCNCHDIP@?$AAP?$AAa?$AAr?$AAs?$AAe?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd?$AA?$CJ@ DB 'P'
	DB	00H, 'a', 00H, 'r', 00H, 's', 00H, 'e', 00H, 'X', 00H, ' ', 00H
	DB	'(', 00H, '%', 00H, 'd', 00H, '.', 00H, '%', 00H, 'd', 00H, ')'
	DB	00H, 00H, 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_1DI@IKFBJCFO@?$AAT?$AAr?$AAy?$AAP?$AAa?$AAr?$AAs?$AAe?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@
CONST	SEGMENT
??_C@_1DI@IKFBJCFO@?$AAT?$AAr?$AAy?$AAP?$AAa?$AAr?$AAs?$AAe?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@ DB 'T'
	DB	00H, 'r', 00H, 'y', 00H, 'P', 00H, 'a', 00H, 'r', 00H, 's', 00H
	DB	'e', 00H, 'n0', 0a9H, '_0^', 0b3H, '0', 0fcH, '0', 0c9H, '0L0', 01fH
	DB	'g', 085H, '_', 01aH, 090H, 08aH, '0g0o0j0D0(', 00H, '%', 00H, 'd'
	DB	00H, ')', 00H, 00H, 00H			; `string'
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_EQUALS_MEMORY DD 025053901H
	DD	011d2322H
	DD	07016001dH
	DD	05015H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$TEST_ParseX DD 025054a19H
	DD	011d2322H
	DD	070160047H
	DD	05015H
	DD	imagerel __GSHandlerCheck
	DD	0220H
xdata	ENDS
;	COMDAT CONST
CONST	SEGMENT
TEST_ParseX$rtcName$0 DB 078H
	DB	00H
	ORG $+2
TEST_ParseX$rtcName$1 DB 06fH
	DB	070H
	DB	074H
	DB	00H
	ORG $+8
TEST_ParseX$rtcVarDesc DD 090H
	DD	0c0H
	DQ	FLAT:TEST_ParseX$rtcName$1
	DD	028H
	DD	08H
	DQ	FLAT:TEST_ParseX$rtcName$0
	ORG $+96
TEST_ParseX$rtcFrameData DD 02H
	DD	00H
	DQ	FLAT:TEST_ParseX$rtcVarDesc
CONST	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sources\lunor\repos\rougemeilland\palmtree.math.core.sint\palmtree.math.core.sint\pmc_sint_debug.h
;	COMDAT _EQUALS_MEMORY
_TEXT	SEGMENT
buffer1$ = 224
count1$ = 232
buffer2$ = 240
count2$ = 248
_EQUALS_MEMORY PROC					; COMDAT

; 140  : {

	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	push	rdi
	sub	rsp, 232				; 000000e8H
	lea	rbp, QWORD PTR [rsp+32]
	mov	rdi, rsp
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+264]
	lea	rcx, OFFSET FLAT:__059414E1_pmc_sint_debug@h
	call	__CheckForDebuggerJustMyCode

; 141  :     if (count1 != count2)

	mov	rax, QWORD PTR count2$[rbp]
	cmp	QWORD PTR count1$[rbp], rax
	je	SHORT $LN4@EQUALS_MEM

; 142  :         return (-1);

	mov	eax, -1
	jmp	SHORT $LN1@EQUALS_MEM
$LN4@EQUALS_MEM:
$LN2@EQUALS_MEM:

; 143  :     while (count1 > 0)

	cmp	QWORD PTR count1$[rbp], 0
	jbe	SHORT $LN3@EQUALS_MEM

; 144  :     {
; 145  :         if (*buffer1 != *buffer2)

	mov	rax, QWORD PTR buffer1$[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	rcx, QWORD PTR buffer2$[rbp]
	movzx	ecx, BYTE PTR [rcx]
	cmp	eax, ecx
	je	SHORT $LN5@EQUALS_MEM

; 146  :             return (-1);

	mov	eax, -1
	jmp	SHORT $LN1@EQUALS_MEM
$LN5@EQUALS_MEM:

; 147  :         ++buffer1;

	mov	rax, QWORD PTR buffer1$[rbp]
	inc	rax
	mov	QWORD PTR buffer1$[rbp], rax

; 148  :         ++buffer2;

	mov	rax, QWORD PTR buffer2$[rbp]
	inc	rax
	mov	QWORD PTR buffer2$[rbp], rax

; 149  :         --count1;

	mov	rax, QWORD PTR count1$[rbp]
	dec	rax
	mov	QWORD PTR count1$[rbp], rax

; 150  :     }

	jmp	SHORT $LN2@EQUALS_MEM
$LN3@EQUALS_MEM:

; 151  :     return (0);

	xor	eax, eax
$LN1@EQUALS_MEM:

; 152  : }

	lea	rsp, QWORD PTR [rbp+200]
	pop	rdi
	pop	rbp
	ret	0
_EQUALS_MEMORY ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sources\lunor\repos\rougemeilland\palmtree.math.core.sint\palmtree.math.core.sint\test_op_parsex.c
;	COMDAT TEST_ParseX
_TEXT	SEGMENT
x$ = 8
result$ = 36
x_result$ = 68
opt$ = 112
tv144 = 500
tv129 = 500
tv77 = 500
tv86 = 504
tv66 = 504
__$ArrayPad$ = 512
env$ = 560
ep$ = 568
no$ = 576
str$ = 584
styles$ = 592
desired_result_code$ = 600
desired_buf$ = 608
desired_buf_size$ = 616
TEST_ParseX PROC					; COMDAT

; 32   : {

$LN11:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	push	rdi
	sub	rsp, 568				; 00000238H
	lea	rbp, QWORD PTR [rsp+32]
	mov	rdi, rsp
	mov	ecx, 142				; 0000008eH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+600]
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rbp
	mov	QWORD PTR __$ArrayPad$[rbp], rax
	lea	rcx, OFFSET FLAT:__01E814D2_test_op_parsex@c
	call	__CheckForDebuggerJustMyCode

; 33   :     PMC_HANDLE_SINT x;
; 34   :     static unsigned char actual_buf[256];
; 35   :     static size_t actual_buf_size;
; 36   :     PMC_STATUS_CODE result;
; 37   :     PMC_STATUS_CODE x_result;
; 38   :     PMC_NUMBER_FORMAT_INFO opt;
; 39   :     ep->UINT_ENTRY_POINTS.InitializeNumberFormatInfo(&opt);

	lea	rcx, QWORD PTR opt$[rbp]
	mov	rax, QWORD PTR ep$[rbp]
	call	QWORD PTR [rax+88]

; 40   :     TEST_Assert(env, FormatTestLabel(L"ParseX (%d.%d)", no, 1), (x_result = ep->TryParse(str, styles, &opt, &x)) == desired_result_code, FormatTestMesssage(L"TryParseの復帰コードが期待通りではない(%d)", x_result));

	lea	r9, QWORD PTR x$[rbp]
	lea	r8, QWORD PTR opt$[rbp]
	mov	edx, DWORD PTR styles$[rbp]
	mov	rcx, QWORD PTR str$[rbp]
	mov	rax, QWORD PTR ep$[rbp]
	call	QWORD PTR [rax+656]
	mov	DWORD PTR x_result$[rbp], eax
	mov	eax, DWORD PTR desired_result_code$[rbp]
	cmp	DWORD PTR x_result$[rbp], eax
	jne	SHORT $LN5@TEST_Parse
	mov	DWORD PTR tv77[rbp], 1
	jmp	SHORT $LN6@TEST_Parse
$LN5@TEST_Parse:
	mov	DWORD PTR tv77[rbp], 0
$LN6@TEST_Parse:
	mov	edx, DWORD PTR x_result$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_1DI@IKFBJCFO@?$AAT?$AAr?$AAy?$AAP?$AAa?$AAr?$AAs?$AAe?$AAn?$PP?$KJ?$AA0?$PP?$LD?$PP?$PM?$PP?I?$AAL@
	call	FormatTestMesssage
	mov	QWORD PTR tv66[rbp], rax
	mov	r8d, 1
	mov	edx, DWORD PTR no$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_1BO@HCNCHDIP@?$AAP?$AAa?$AAr?$AAs?$AAe?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd?$AA?$CJ@
	call	FormatTestLabel
	mov	rcx, QWORD PTR tv66[rbp]
	mov	r9, rcx
	mov	r8d, DWORD PTR tv77[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR env$[rbp]
	call	TEST_Assert

; 41   :     if (desired_result_code == PMC_STATUS_OK)

	cmp	DWORD PTR desired_result_code$[rbp], 0
	jne	$LN2@TEST_Parse

; 42   :     {
; 43   :         TEST_Assert(env, FormatTestLabel(L"ParseX (%d.%d)", no, 2), (result = ep->ToByteArray(x, actual_buf, sizeof(actual_buf), &actual_buf_size)) == PMC_STATUS_OK, FormatTestMesssage(L"PMC_ToByteArrayの復帰コードが期待通りではない(%d)", result));

	lea	r9, OFFSET FLAT:?actual_buf_size@?1??TEST_ParseX@@9@9
	mov	r8d, 256				; 00000100H
	lea	rdx, OFFSET FLAT:?actual_buf@?1??TEST_ParseX@@9@9
	mov	rcx, QWORD PTR x$[rbp]
	mov	rax, QWORD PTR ep$[rbp]
	call	QWORD PTR [rax+616]
	mov	DWORD PTR result$[rbp], eax
	cmp	DWORD PTR result$[rbp], 0
	jne	SHORT $LN7@TEST_Parse
	mov	DWORD PTR tv129[rbp], 1
	jmp	SHORT $LN8@TEST_Parse
$LN7@TEST_Parse:
	mov	DWORD PTR tv129[rbp], 0
$LN8@TEST_Parse:
	mov	edx, DWORD PTR result$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_1EG@MCOLJMDD@?$AAP?$AAM?$AAC?$AA_?$AAT?$AAo?$AAB?$AAy?$AAt?$AAe?$AAA?$AAr?$AAr?$AAa?$AAy@
	call	FormatTestMesssage
	mov	QWORD PTR tv86[rbp], rax
	mov	r8d, 2
	mov	edx, DWORD PTR no$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_1BO@HCNCHDIP@?$AAP?$AAa?$AAr?$AAs?$AAe?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd?$AA?$CJ@
	call	FormatTestLabel
	mov	rcx, QWORD PTR tv86[rbp]
	mov	r9, rcx
	mov	r8d, DWORD PTR tv129[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR env$[rbp]
	call	TEST_Assert

; 44   :         TEST_Assert(env, FormatTestLabel(L"ParseX (%d.%d)", no, 3), _EQUALS_MEMORY(actual_buf, actual_buf_size, desired_buf, desired_buf_size) == 0, L"データの内容が一致しない");

	mov	r9, QWORD PTR desired_buf_size$[rbp]
	mov	r8, QWORD PTR desired_buf$[rbp]
	mov	rdx, QWORD PTR ?actual_buf_size@?1??TEST_ParseX@@9@9
	lea	rcx, OFFSET FLAT:?actual_buf@?1??TEST_ParseX@@9@9
	call	_EQUALS_MEMORY
	test	eax, eax
	jne	SHORT $LN9@TEST_Parse
	mov	DWORD PTR tv144[rbp], 1
	jmp	SHORT $LN10@TEST_Parse
$LN9@TEST_Parse:
	mov	DWORD PTR tv144[rbp], 0
$LN10@TEST_Parse:
	mov	r8d, 3
	mov	edx, DWORD PTR no$[rbp]
	lea	rcx, OFFSET FLAT:??_C@_1BO@HCNCHDIP@?$AAP?$AAa?$AAr?$AAs?$AAe?$AAX?$AA?5?$AA?$CI?$AA?$CF?$AAd?$AA?4?$AA?$CF?$AAd?$AA?$CJ@
	call	FormatTestLabel
	lea	r9, OFFSET FLAT:??_C@_1BK@CBDJCOBM@?$PP?G?$PP?$PM?$PP?$LP?$AAn?$PP?$IF?$PP?$LJ?$AAL?$AA?$AA?$PP?t?$AAW?$AAj?$AAD@
	mov	r8d, DWORD PTR tv144[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR env$[rbp]
	call	TEST_Assert
$LN2@TEST_Parse:

; 45   :     }
; 46   :     if (x_result == PMC_STATUS_OK)

	cmp	DWORD PTR x_result$[rbp], 0
	jne	SHORT $LN3@TEST_Parse

; 47   :         ep->Dispose(x);

	mov	rcx, QWORD PTR x$[rbp]
	mov	rax, QWORD PTR ep$[rbp]
	call	QWORD PTR [rax+592]
$LN3@TEST_Parse:

; 48   : }

	lea	rcx, QWORD PTR [rbp-32]
	lea	rdx, OFFSET FLAT:TEST_ParseX$rtcFrameData
	call	_RTC_CheckStackVars
	mov	rcx, QWORD PTR __$ArrayPad$[rbp]
	xor	rcx, rbp
	call	__security_check_cookie
	lea	rsp, QWORD PTR [rbp+536]
	pop	rdi
	pop	rbp
	ret	0
TEST_ParseX ENDP
_TEXT	ENDS
END
