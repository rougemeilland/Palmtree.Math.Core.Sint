	.file	"pmc_memory.c"
	.text
	.p2align 4,,15
	.def	_InitializeNumber;	.scl	3;	.type	32;	.endef
_InitializeNumber:
LFB5483:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$0, (%eax)
	movzbl	(%eax), %ebx
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	andl	$-9, %ebx
	movb	%dl, 16(%eax)
	movzbl	(%ecx), %esi
	movl	%ecx, 12(%eax)
	leal	(%esi,%esi), %ecx
	movl	$1231244656, 4(%eax)
	andl	$8, %ecx
	movl	$1951287667, 8(%eax)
	orl	%ebx, %ecx
	movb	%cl, (%eax)
	movl	%ecx, %ebx
	testb	%dl, %dl
	js	L25
	andl	$-5, %ebx
	movb	%bl, (%eax)
	testb	%dl, %dl
	je	L5
	movl	%ebx, %edx
	movl	%ecx, %ebx
	movl	%esi, %ecx
	orl	$2, %edx
	andl	$-7, %ebx
	testl	$2, %esi
	cmovne	%edx, %ebx
	andl	$1, %ecx
	andl	$8, %esi
	movb	%bl, (%eax)
	je	L26
	orl	$16, %ebx
	andl	$-2, %ebx
	orl	%ecx, %ebx
	movb	%bl, (%eax)
L10:
	testb	$1, (%eax)
	jne	L15
L8:
	xorl	%eax, %eax
L1:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L26:
	.cfi_restore_state
	andl	$-18, %ebx
	orl	%ecx, %ebx
	movb	%bl, (%eax)
	jmp	L10
L5:
	movl	%esi, %edx
	andl	$-24, %ecx
	andl	$1, %edx
	orl	%edx, %ecx
	movb	%cl, (%eax)
	andl	$1, %ecx
	jne	L8
L15:
	movl	$-256, %eax
	jmp	L1
	.p2align 4,,10
L25:
	orl	$4, %ebx
	andl	$-5, %ecx
	testl	$2, %esi
	movl	%esi, %edx
	cmove	%ecx, %ebx
	andl	$1, %edx
	andl	$-20, %ebx
	orl	%ebx, %edx
	movb	%dl, (%eax)
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
	movl	12(%eax), %eax
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
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 28
	movl	_hLocalHeap, %eax
	movl	$-858993460, (%ebx)
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$-858993460, 4(%ebx)
	movl	$-858993460, 8(%ebx)
	movl	$-858993460, 12(%ebx)
	movl	$-858993460, 16(%ebx)
	movl	$-858993460, 20(%ebx)
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__HeapFree@12
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
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
	movl	8(%esp), %ebx
	movsbl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	%ebx, %eax
	call	_InitializeNumber
	testl	%eax, %eax
	jne	L31
	orb	$1, 20(%ebx)
L31:
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
	movl	$24, 8(%esp)
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
	andb	$-2, 20(%ebx)
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
	testb	$1, 20(%eax)
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
	testb	$1, 20(%eax)
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
	cmpl	$1231244656, 4(%eax)
	jne	L53
	cmpl	$1951287667, 8(%eax)
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
	testb	$1, 20(%ebx)
	jne	L63
	movzbl	(%ebx), %eax
	testb	$1, %al
	jne	L64
	testb	$2, %al
	jne	L65
	testb	$4, %al
	jne	L66
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+40
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L55
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movsbl	16(%ebx), %eax
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
	movzbl	(%ebx), %eax
	testb	$1, %al
	jne	L75
	testb	$2, %al
	jne	L76
	testb	$4, %al
	jne	L77
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+40
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L68
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movzbl	16(%ebx), %eax
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
	testb	$1, 20(%eax)
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
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	$_uint_number_zero, 4(%esp)
	movl	$1, (%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L108
L92:
	testb	$1, _number_zero+20
	je	L95
	movl	$_number_zero, %eax
	call	_DetatchNumber.part.1
L95:
	testb	$1, _number_one+20
	je	L94
	movl	$_number_one, %eax
	call	_DetatchNumber.part.1
L94:
	testb	$1, _number_minus_one+20
	je	L91
	movl	$_number_minus_one, %eax
	call	_DetatchNumber.part.1
L91:
	addl	$24, %esp
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
	movl	$_uint_number_one, 4(%esp)
	movl	$2, (%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	movl	_uint_number_zero, %ecx
	xorl	%edx, %edx
	movl	$_number_zero, %eax
	call	_InitializeNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	movl	_uint_number_one, %ecx
	movl	$1, %edx
	movl	$_number_one, %eax
	orb	$1, _number_zero+20
	call	_InitializeNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	movl	_uint_number_one, %ecx
	movl	$-1, %edx
	movl	$_number_minus_one, %eax
	orb	$1, _number_one+20
	call	_InitializeNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L92
	orb	$1, _number_minus_one+20
	addl	$24, %esp
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
	.comm	_number_minus_one, 24, 2
	.comm	_number_one, 24, 2
	.comm	_number_zero, 24, 2
	.comm	_hLocalHeap, 4, 2
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
