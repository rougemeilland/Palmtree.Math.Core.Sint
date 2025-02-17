; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27026.1 

	TITLE	Z:\Sources\Lunor\Repos\rougemeilland\Palmtree.Math.Core.Sint\Palmtree.Math.Core.Sint\pmc_bytes.c
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
__B76D73AB_pmc_bytes@c DB 01H
msvcjmc	ENDS
PUBLIC	_PMC_FromByteArray@12
PUBLIC	_PMC_ToByteArray@16
PUBLIC	__JustMyCode_Default
EXTRN	_AllocateNumber:PROC
EXTRN	_CheckNumber:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	_ep_uint:BYTE
EXTRN	___security_cookie:DWORD
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
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
; File z:\sources\lunor\repos\rougemeilland\palmtree.math.core.sint\palmtree.math.core.sint\pmc_bytes.c
;	COMDAT _PMC_ToByteArray@16
_TEXT	SEGMENT
_result$ = -20						; size = 4
_np$ = -8						; size = 4
_p$ = 8							; size = 4
_buffer$ = 12						; size = 4
_buffer_size$ = 16					; size = 4
_count$ = 20						; size = 4
_PMC_ToByteArray@16 PROC				; COMDAT

; 54   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __B76D73AB_pmc_bytes@c
	call	@__CheckForDebuggerJustMyCode@4

; 55   :     if (p == NULL)

	cmp	DWORD PTR _p$[ebp], 0
	jne	SHORT $LN2@PMC_ToByte

; 56   :         return (PMC_STATUS_ARGUMENT_ERROR);

	or	eax, -1
	jmp	SHORT $LN1@PMC_ToByte
$LN2@PMC_ToByte:

; 57   :     NUMBER_HEADER* np = (NUMBER_HEADER*)p;

	mov	eax, DWORD PTR _p$[ebp]
	mov	DWORD PTR _np$[ebp], eax

; 58   :     PMC_STATUS_CODE result;
; 59   :     if ((result = CheckNumber(np)) != PMC_STATUS_OK)

	mov	eax, DWORD PTR _np$[ebp]
	push	eax
	call	_CheckNumber
	add	esp, 4
	mov	DWORD PTR _result$[ebp], eax
	cmp	DWORD PTR _result$[ebp], 0
	je	SHORT $LN3@PMC_ToByte

; 60   :         return (result);

	mov	eax, DWORD PTR _result$[ebp]
	jmp	SHORT $LN1@PMC_ToByte
$LN3@PMC_ToByte:

; 61   :     if ((result = ep_uint.ToByteArrayForSINT(np->SIGN, np->ABS, buffer, buffer_size, count)) != PMC_STATUS_OK)

	mov	esi, esp
	mov	eax, DWORD PTR _count$[ebp]
	push	eax
	mov	ecx, DWORD PTR _buffer_size$[ebp]
	push	ecx
	mov	edx, DWORD PTR _buffer$[ebp]
	push	edx
	mov	eax, DWORD PTR _np$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	push	ecx
	mov	edx, DWORD PTR _np$[ebp]
	movzx	eax, BYTE PTR [edx+16]
	push	eax
	call	DWORD PTR _ep_uint+276
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _result$[ebp], eax
	cmp	DWORD PTR _result$[ebp], 0
	je	SHORT $LN4@PMC_ToByte

; 62   :         return (result);

	mov	eax, DWORD PTR _result$[ebp]
	jmp	SHORT $LN1@PMC_ToByte
$LN4@PMC_ToByte:

; 63   :     return (PMC_STATUS_OK);

	xor	eax, eax
$LN1@PMC_ToByte:

; 64   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_PMC_ToByteArray@16 ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File z:\sources\lunor\repos\rougemeilland\palmtree.math.core.sint\palmtree.math.core.sint\pmc_bytes.c
;	COMDAT _PMC_FromByteArray@12
_TEXT	SEGMENT
_no$ = -48						; size = 4
_o_abs$ = -36						; size = 4
_o_sign$ = -21						; size = 1
_result$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_buffer$ = 8						; size = 4
_count$ = 12						; size = 4
_o$ = 16						; size = 4
_PMC_FromByteArray@12 PROC				; COMDAT

; 31   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	ecx, OFFSET __B76D73AB_pmc_bytes@c
	call	@__CheckForDebuggerJustMyCode@4

; 32   :     PMC_STATUS_CODE result;
; 33   :     if (buffer == NULL)

	cmp	DWORD PTR _buffer$[ebp], 0
	jne	SHORT $LN2@PMC_FromBy

; 34   :         return (PMC_STATUS_ARGUMENT_ERROR);

	or	eax, -1
	jmp	$LN1@PMC_FromBy
$LN2@PMC_FromBy:

; 35   :     if (o == NULL)

	cmp	DWORD PTR _o$[ebp], 0
	jne	SHORT $LN3@PMC_FromBy

; 36   :         return (PMC_STATUS_ARGUMENT_ERROR);

	or	eax, -1
	jmp	SHORT $LN1@PMC_FromBy
$LN3@PMC_FromBy:

; 37   :     if (count < 1)

	cmp	DWORD PTR _count$[ebp], 1
	jae	SHORT $LN4@PMC_FromBy

; 38   :         return (PMC_STATUS_ARGUMENT_ERROR);

	or	eax, -1
	jmp	SHORT $LN1@PMC_FromBy
$LN4@PMC_FromBy:

; 39   :     char o_sign;
; 40   :     PMC_HANDLE_UINT o_abs;
; 41   :     if ((result = ep_uint.FromByteArrayForSINT(buffer, count, &o_sign, &o_abs)) != PMC_STATUS_OK)

	mov	esi, esp
	lea	eax, DWORD PTR _o_abs$[ebp]
	push	eax
	lea	ecx, DWORD PTR _o_sign$[ebp]
	push	ecx
	mov	edx, DWORD PTR _count$[ebp]
	push	edx
	mov	eax, DWORD PTR _buffer$[ebp]
	push	eax
	call	DWORD PTR _ep_uint+272
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _result$[ebp], eax
	cmp	DWORD PTR _result$[ebp], 0
	je	SHORT $LN5@PMC_FromBy

; 42   :         return (result);

	mov	eax, DWORD PTR _result$[ebp]
	jmp	SHORT $LN1@PMC_FromBy
$LN5@PMC_FromBy:

; 43   :     NUMBER_HEADER* no;
; 44   :     if ((result = AllocateNumber(&no, o_sign, o_abs)) != PMC_STATUS_OK)

	mov	eax, DWORD PTR _o_abs$[ebp]
	push	eax
	movzx	ecx, BYTE PTR _o_sign$[ebp]
	push	ecx
	lea	edx, DWORD PTR _no$[ebp]
	push	edx
	call	_AllocateNumber
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _result$[ebp], eax
	cmp	DWORD PTR _result$[ebp], 0
	je	SHORT $LN6@PMC_FromBy

; 45   :     {
; 46   :         ep_uint.Dispose(o_abs);

	mov	esi, esp
	mov	eax, DWORD PTR _o_abs$[ebp]
	push	eax
	call	DWORD PTR _ep_uint+16
	cmp	esi, esp
	call	__RTC_CheckEsp

; 47   :         return (result);

	mov	eax, DWORD PTR _result$[ebp]
	jmp	SHORT $LN1@PMC_FromBy
$LN6@PMC_FromBy:

; 48   :     }
; 49   :     *o = (PMC_HANDLE_SINT)no;

	mov	eax, DWORD PTR _o$[ebp]
	mov	ecx, DWORD PTR _no$[ebp]
	mov	DWORD PTR [eax], ecx

; 50   :     return (PMC_STATUS_OK);

	xor	eax, eax
$LN1@PMC_FromBy:

; 51   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN12@PMC_FromBy
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 244				; 000000f4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
$LN12@PMC_FromBy:
	DD	3
	DD	$LN11@PMC_FromBy
$LN11@PMC_FromBy:
	DD	-21					; ffffffebH
	DD	1
	DD	$LN8@PMC_FromBy
	DD	-36					; ffffffdcH
	DD	4
	DD	$LN9@PMC_FromBy
	DD	-48					; ffffffd0H
	DD	4
	DD	$LN10@PMC_FromBy
$LN10@PMC_FromBy:
	DB	110					; 0000006eH
	DB	111					; 0000006fH
	DB	0
$LN9@PMC_FromBy:
	DB	111					; 0000006fH
	DB	95					; 0000005fH
	DB	97					; 00000061H
	DB	98					; 00000062H
	DB	115					; 00000073H
	DB	0
$LN8@PMC_FromBy:
	DB	111					; 0000006fH
	DB	95					; 0000005fH
	DB	115					; 00000073H
	DB	105					; 00000069H
	DB	103					; 00000067H
	DB	110					; 0000006eH
	DB	0
_PMC_FromByteArray@12 ENDP
_TEXT	ENDS
END
