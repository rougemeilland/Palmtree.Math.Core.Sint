	.file	"pmc_memory.c"
	.text
	.p2align 4,,15
	.def	_InitializeNumber;	.scl	3;	.type	32;	.endef
_InitializeNumber:
LFB5483:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	$5, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	xorl	%eax, %eax
	subl	$44, %esp
	.cfi_def_cfa_offset 64
/APP
 # 1463 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosl
 # 0 "" 2
/NO_APP
	movl	%esi, %eax
	movl	$1231244656, (%ebx)
	movb	%al, 12(%ebx)
	leal	28(%esp), %eax
	movl	$1951287667, 4(%ebx)
	movl	%edx, 8(%ebx)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L1
	movl	28(%esp), %ecx
	movzbl	16(%ebx), %edi
	movl	%ecx, %edx
	andl	$-17, %edi
	shrl	$3, %edx
	andl	$1, %edx
	sall	$4, %edx
	orl	%edi, %edx
	movl	%edx, %ebp
	movb	%dl, 16(%ebx)
	movl	%esi, %edx
	testb	%dl, %dl
	js	L25
	movl	%ebp, %edi
	andl	$-9, %edi
	movl	%edi, %edx
	movb	%dl, 16(%ebx)
	movl	%esi, %edx
	testb	%dl, %dl
	je	L6
	movl	%ebp, %edx
	orl	$4, %edi
	movl	%ecx, %esi
	andl	$-13, %edx
	testb	$2, %cl
	cmovne	%edi, %edx
	andl	$1, %esi
	andl	$16, %ecx
	movb	%dl, 16(%ebx)
	je	L26
	orl	$32, %edx
	addl	%esi, %esi
	andl	$-3, %edx
	orl	%esi, %edx
	movb	%dl, 16(%ebx)
	testb	$2, 16(%ebx)
	jne	L15
L1:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L25:
	.cfi_restore_state
	movl	%ebp, %esi
	movl	%ebp, %edx
	orl	$8, %esi
	andl	$-9, %edx
	testb	$2, %cl
	cmovne	%esi, %edx
	andl	$1, %ecx
	leal	(%ecx,%ecx), %esi
	movl	%edx, %ecx
	andl	$-39, %ecx
	orl	%esi, %ecx
	movb	%cl, 16(%ebx)
L10:
	testb	$2, 16(%ebx)
	je	L1
L15:
	movl	$-256, %eax
	jmp	L1
	.p2align 4,,10
L6:
	andl	$1, %ecx
	movl	%ebp, %edx
	addl	%ecx, %ecx
	andl	$-47, %edx
	orl	%edx, %ecx
	movb	%cl, 16(%ebx)
	andl	$2, %ecx
	je	L15
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L26:
	.cfi_restore_state
	addl	%esi, %esi
	andl	$-35, %edx
	orl	%esi, %edx
	movb	%dl, 16(%ebx)
	jmp	L10
	.cfi_endproc
LFE5483:
	.p2align 4,,15
	.def	_DetatchNumber.part.1;	.scl	3;	.type	32;	.endef
_DetatchNumber.part.1:
LFB5498:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5498:
	.p2align 4,,15
	.def	_DeallocateNumber.part.2;	.scl	3;	.type	32;	.endef
_DeallocateNumber.part.2:
LFB5499:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	%ebx, %edi
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 28
	movl	$5, %ecx
	movl	$-858993460, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
/APP
 # 1463 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosl
 # 0 "" 2
/NO_APP
	movl	_hLocalHeap, %eax
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__HeapFree@12
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5499:
	.p2align 4,,15
	.globl	_AttatchNumber
	.def	_AttatchNumber;	.scl	2;	.type	32;	.endef
_AttatchNumber:
LFB5485:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movsbl	20(%esp), %edx
	movl	24(%esp), %ecx
	movl	%ebx, %eax
	call	_InitializeNumber
	testl	%eax, %eax
	jne	L31
	orb	$1, 16(%ebx)
L31:
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5485:
	.p2align 4,,15
	.globl	_AllocateNumber
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
_AllocateNumber:
LFB5486:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	_hLocalHeap, %eax
	movl	36(%esp), %esi
	movl	$20, 8(%esp)
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__HeapAlloc@12
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	L36
	movl	%eax, %ebx
	movl	40(%esp), %ecx
	movl	%esi, %eax
	movsbl	%al, %edx
	movl	%ebx, %eax
	call	_InitializeNumber
	testl	%eax, %eax
	jne	L34
	movl	32(%esp), %edx
	andb	$-2, 16(%ebx)
	movl	%ebx, (%edx)
L34:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L36:
	.cfi_restore_state
	movl	$-5, %eax
	jmp	L34
	.cfi_endproc
LFE5486:
	.p2align 4,,15
	.globl	_DetatchNumber
	.def	_DetatchNumber;	.scl	2;	.type	32;	.endef
_DetatchNumber:
LFB5487:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L38
	testb	$1, 16(%eax)
	je	L38
	jmp	_DetatchNumber.part.1
	.p2align 4,,10
L38:
	ret
	.cfi_endproc
LFE5487:
	.p2align 4,,15
	.globl	_DeallocateNumber
	.def	_DeallocateNumber;	.scl	2;	.type	32;	.endef
_DeallocateNumber:
LFB5488:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L46
	testb	$1, 16(%eax)
	jne	L46
	jmp	_DeallocateNumber.part.2
	.p2align 4,,10
L46:
	ret
	.cfi_endproc
LFE5488:
	.p2align 4,,15
	.globl	_CheckNumber
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
_CheckNumber:
LFB5489:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpl	$1231244656, (%eax)
	jne	L53
	cmpl	$1951287667, 4(%eax)
	movl	$0, %edx
	movl	$-257, %eax
	cmove	%edx, %eax
	ret
	.p2align 4,,10
L53:
	movl	$-257, %eax
	ret
	.cfi_endproc
LFE5489:
	.p2align 4,,15
	.globl	_DuplicateNumber
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
_DuplicateNumber:
LFB5490:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movzbl	16(%ebx), %eax
	testb	$1, %al
	jne	L63
	testb	$2, %al
	jne	L64
	testb	$4, %al
	jne	L65
	testb	$8, %al
	jne	L66
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L55
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movsbl	12(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	jne	L67
	movl	44(%esp), %edx
	movl	68(%esp), %ecx
	movl	%edx, (%ecx)
	jmp	L55
	.p2align 4,,10
L64:
	movl	68(%esp), %eax
	movl	$_number_zero, (%eax)
	xorl	%eax, %eax
L55:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L63:
	.cfi_restore_state
	movl	68(%esp), %eax
	movl	%ebx, (%eax)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L66:
	.cfi_restore_state
	movl	68(%esp), %eax
	movl	$_number_minus_one, (%eax)
	xorl	%eax, %eax
	jmp	L55
	.p2align 4,,10
L65:
	movl	68(%esp), %eax
	movl	$_number_one, (%eax)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L67:
	.cfi_restore_state
	movl	40(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	jmp	L55
	.cfi_endproc
LFE5490:
	.p2align 4,,15
	.globl	_Negate_Imp
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
_Negate_Imp:
LFB5491:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movzbl	16(%ebx), %eax
	testb	$2, %al
	jne	L75
	testb	$4, %al
	jne	L76
	testb	$8, %al
	jne	L77
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L68
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movzbl	12(%ebx), %eax
	negl	%eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	jne	L78
	movl	44(%esp), %edx
	movl	68(%esp), %ecx
	movl	%edx, (%ecx)
	jmp	L68
	.p2align 4,,10
L76:
	movl	68(%esp), %eax
	movl	$_number_minus_one, (%eax)
	xorl	%eax, %eax
L68:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L75:
	.cfi_restore_state
	movl	68(%esp), %eax
	movl	$_number_zero, (%eax)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L77:
	.cfi_restore_state
	movl	68(%esp), %eax
	movl	$_number_one, (%eax)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L78:
	.cfi_restore_state
	movl	40(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	jmp	L68
	.cfi_endproc
LFE5491:
	.p2align 4,,15
	.globl	_PMC_GetConstantValue_I@8
	.def	_PMC_GetConstantValue_I@8;	.scl	2;	.type	32;	.endef
_PMC_GetConstantValue_I@8:
LFB5492:
	.cfi_startproc
	movl	4(%esp), %edx
	cmpl	$2, %edx
	je	L80
	cmpl	$3, %edx
	je	L81
	movl	$-1, %eax
	cmpl	$1, %edx
	je	L84
	ret	$8
	.p2align 4,,10
L80:
	movl	8(%esp), %eax
	movl	$_number_one, (%eax)
	xorl	%eax, %eax
	ret	$8
	.p2align 4,,10
L84:
	movl	8(%esp), %eax
	movl	$_number_zero, (%eax)
	xorl	%eax, %eax
	ret	$8
	.p2align 4,,10
L81:
	movl	8(%esp), %eax
	movl	$_number_minus_one, (%eax)
	xorl	%eax, %eax
	ret	$8
	.cfi_endproc
LFE5492:
	.p2align 4,,15
	.globl	_PMC_Dispose@4
	.def	_PMC_Dispose@4;	.scl	2;	.type	32;	.endef
_PMC_Dispose@4:
LFB5493:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L85
	testb	$1, 16(%eax)
	jne	L85
	call	_DeallocateNumber.part.2
L85:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
LFE5493:
	.p2align 4,,15
	.globl	_Initialize_Memory
	.def	_Initialize_Memory;	.scl	2;	.type	32;	.endef
_Initialize_Memory:
LFB5494:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	leal	24(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_ep_uint+24
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L108
L92:
	testb	$1, _number_zero+16
	je	L95
	movl	$_number_zero, %eax
	call	_DetatchNumber.part.1
L95:
	testb	$1, _number_one+16
	je	L94
	movl	$_number_one, %eax
	call	_DetatchNumber.part.1
L94:
	testb	$1, _number_minus_one+16
	je	L91
	movl	$_number_minus_one, %eax
	call	_DetatchNumber.part.1
L91:
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L108:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	$2, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+24
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	movl	24(%esp), %ecx
	xorl	%edx, %edx
	movl	$_number_zero, %eax
	call	_InitializeNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	movl	28(%esp), %ecx
	movl	$1, %edx
	movl	$_number_one, %eax
	orb	$1, _number_zero+16
	call	_InitializeNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	movl	28(%esp), %ecx
	movl	$-1, %edx
	movl	$_number_minus_one, %eax
	orb	$1, _number_one+16
	call	_InitializeNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	orb	$1, _number_minus_one+16
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5494:
	.p2align 4,,15
	.globl	_AllocateHeapArea
	.def	_AllocateHeapArea;	.scl	2;	.type	32;	.endef
_AllocateHeapArea:
LFB5495:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$0, 8(%esp)
	movl	$4096, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__HeapCreate@12
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	%eax, _hLocalHeap
	setne	%al
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE5495:
	.p2align 4,,15
	.globl	_DeallocateHeapArea
	.def	_DeallocateHeapArea;	.scl	2;	.type	32;	.endef
_DeallocateHeapArea:
LFB5496:
	.cfi_startproc
	movl	_hLocalHeap, %eax
	testl	%eax, %eax
	je	L117
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, (%esp)
	call	*__imp__HeapDestroy@4
	.cfi_def_cfa_offset 28
	movl	$0, _hLocalHeap
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L117:
	ret
	.cfi_endproc
LFE5496:
	.comm	_number_minus_one, 20, 2
	.comm	_number_one, 20, 2
	.comm	_number_zero, 20, 2
	.comm	_hLocalHeap, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
