	.file	"pmc_divrem.c"
	.text
	.p2align 4,,15
	.globl	_PMC_DivRem_I_X@16
	.def	_PMC_DivRem_I_X@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_I_X@16:
LFB5481:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	84(%esp), %ebx
	movl	80(%esp), %edi
	movl	92(%esp), %ebp
	testl	%ebx, %ebx
	je	L20
	testl	%ebp, %ebp
	je	L20
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1
	movzbl	16(%ebx), %edx
	testl	%edi, %edi
	jg	L31
	je	L32
	cmpl	$-2147483648, %edi
	je	L33
	movl	%edi, %eax
	negl	%eax
	testb	%dl, %dl
	je	L24
L8:
	movl	88(%esp), %ecx
	movl	$-1, %edi
	testl	%ecx, %ecx
	jne	L34
L18:
	leal	44(%esp), %edx
	movl	$0, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*_ep_uint+116
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L15
	movl	44(%esp), %eax
	movl	$0, %edx
	movl	$0, 32(%esp)
	testl	%eax, %eax
	movl	%eax, 4(%esp)
	cmove	%edx, %edi
	leal	36(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%edi, %eax
	movsbl	%al, %edi
	movl	%edi, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	jne	L15
	movl	36(%esp), %eax
	jmp	L10
	.p2align 4,,10
L32:
	testb	%dl, %dl
	je	L24
	movl	88(%esp), %ebx
	movl	$_number_zero, %eax
	movl	%eax, %edx
	testl	%ebx, %ebx
	je	L10
L9:
	movl	88(%esp), %ecx
	movl	%edx, (%ecx)
L10:
	movl	%eax, 0(%ebp)
L1:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
	ret	$16
	.p2align 4,,10
L31:
	.cfi_restore_state
	testb	%dl, %dl
	je	L24
	movl	88(%esp), %ecx
	movl	%edi, %eax
	movl	$1, %edi
	testl	%ecx, %ecx
	je	L18
L17:
	leal	44(%esp), %ecx
	movb	%dl, 28(%esp)
	movl	%ecx, 12(%esp)
	leal	40(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	12(%ebx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	*_ep_uint+116
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L15
	movl	40(%esp), %eax
	movsbl	28(%esp), %edx
	xorl	%ebx, %ebx
	leal	32(%esp), %ecx
	movl	%ecx, 8(%esp)
	testl	%eax, %eax
	movl	%eax, 4(%esp)
	cmove	%ebx, %edx
	movl	%edx, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	jne	L15
	movl	44(%esp), %eax
	leal	36(%esp), %edx
	movl	%edx, 8(%esp)
	testl	%eax, %eax
	movl	%eax, 4(%esp)
	cmove	%ebx, %edi
	movl	%edi, %eax
	movsbl	%al, %edi
	movl	%edi, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	jne	L35
	movl	32(%esp), %edx
	movl	36(%esp), %eax
	jmp	L9
	.p2align 4,,10
L35:
	movl	32(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	_DeallocateNumber
	movl	28(%esp), %eax
L15:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%eax, %esi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$16
	.p2align 4,,10
L34:
	.cfi_restore_state
	negl	%edx
	movl	$-1, %edi
	jmp	L17
	.p2align 4,,10
L33:
	testb	%dl, %dl
	je	L24
	movl	$-2147483648, %eax
	jmp	L8
	.p2align 4,,10
L20:
	movl	$-1, %esi
	jmp	L1
L24:
	movl	$-3, %esi
	jmp	L1
	.cfi_endproc
LFE5481:
	.p2align 4,,15
	.globl	_PMC_DivRem_L_X@20
	.def	_PMC_DivRem_L_X@20;	.scl	2;	.type	32;	.endef
_PMC_DivRem_L_X@20:
LFB5482:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	120(%esp), %ebp
	movl	112(%esp), %esi
	movl	116(%esp), %edi
	testl	%ebp, %ebp
	je	L55
	movl	128(%esp), %eax
	testl	%eax, %eax
	je	L55
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L36
	cmpl	%esi, %eax
	movzbl	16(%ebp), %edx
	sbbl	%edi, %eax
	jl	L65
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L66
	leal	-2147483648(%edi), %ecx
	orl	%esi, %ecx
	je	L67
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	testb	%dl, %dl
	je	L59
L43:
	movl	124(%esp), %eax
	testl	%eax, %eax
	jne	L54
	movb	$-1, 40(%esp)
L53:
	leal	72(%esp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	call	*_ep_uint+120
	.cfi_def_cfa_offset 92
	subl	$20, %esp
	.cfi_def_cfa_offset 112
	testl	%eax, %eax
	jne	L50
	movl	76(%esp), %eax
	movl	72(%esp), %edx
	movl	$0, %ecx
	movl	$0, 56(%esp)
	movl	%eax, %edi
	movl	%edx, 4(%esp)
	orl	%edx, %edi
	movzbl	40(%esp), %edi
	movl	%eax, 8(%esp)
	cmove	%ecx, %edi
	movl	%edi, %ecx
	movb	%cl, 40(%esp)
	movsbl	40(%esp), %esi
	leal	60(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	jne	L50
	movl	60(%esp), %eax
	jmp	L45
	.p2align 4,,10
L66:
	testb	%dl, %dl
	je	L59
	movl	124(%esp), %esi
	movl	$_number_zero, %eax
	movl	%eax, %edx
	testl	%esi, %esi
	je	L45
L44:
	movl	124(%esp), %edi
	movl	%edx, (%edi)
L45:
	movl	128(%esp), %edi
	movl	%eax, (%edi)
L36:
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	ret	$20
	.p2align 4,,10
L65:
	.cfi_restore_state
	testb	%dl, %dl
	je	L59
	movl	124(%esp), %ecx
	movb	$1, 40(%esp)
	testl	%ecx, %ecx
	je	L53
L52:
	leal	72(%esp), %eax
	movb	%dl, 47(%esp)
	movl	%eax, 16(%esp)
	leal	64(%esp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	call	*_ep_uint+120
	.cfi_def_cfa_offset 92
	subl	$20, %esp
	.cfi_def_cfa_offset 112
	testl	%eax, %eax
	jne	L50
	movl	68(%esp), %eax
	movl	64(%esp), %ecx
	xorl	%edi, %edi
	leal	56(%esp), %ebp
	movl	%ebp, 12(%esp)
	movl	%eax, %edx
	movl	%ecx, 4(%esp)
	orl	%ecx, %edx
	movsbl	47(%esp), %edx
	movl	%eax, 8(%esp)
	cmove	%edi, %edx
	movl	%edx, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	jne	L50
	movl	76(%esp), %eax
	movl	72(%esp), %edx
	movl	%eax, %ecx
	movl	%edx, 4(%esp)
	orl	%edx, %ecx
	movzbl	40(%esp), %ecx
	movl	%eax, 8(%esp)
	cmove	%edi, %ecx
	movb	%cl, 40(%esp)
	movsbl	40(%esp), %esi
	leal	60(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	jne	L68
	movl	56(%esp), %edx
	movl	60(%esp), %eax
	jmp	L44
	.p2align 4,,10
L68:
	movl	56(%esp), %edx
	movl	%eax, 40(%esp)
	movl	%edx, (%esp)
	call	_DeallocateNumber
	movl	40(%esp), %eax
L50:
	addl	$92, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%eax, %ebx
	movl	%ebx, %eax
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
	ret	$20
	.p2align 4,,10
L54:
	.cfi_restore_state
	negl	%edx
	movb	$-1, 40(%esp)
	jmp	L52
	.p2align 4,,10
L67:
	testb	%dl, %dl
	je	L59
	xorl	%esi, %esi
	movl	$-2147483648, %edi
	jmp	L43
	.p2align 4,,10
L55:
	movl	$-1, %ebx
	jmp	L36
L59:
	movl	$-3, %ebx
	jmp	L36
	.cfi_endproc
LFE5482:
	.p2align 4,,15
	.globl	_PMC_DivRem_UX_X@16
	.def	_PMC_DivRem_UX_X@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_UX_X@16:
LFB5483:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	92(%esp), %ebp
	movl	84(%esp), %ebx
	movl	80(%esp), %edi
	testl	%ebp, %ebp
	sete	%dl
	testl	%ebx, %ebx
	sete	%al
	orb	%al, %dl
	jne	L79
	testl	%edi, %edi
	je	L79
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L69
	movzbl	16(%ebx), %ecx
	testb	%cl, %cl
	je	L80
	movzbl	(%edi), %eax
	andl	$1, %eax
	movb	%al, 24(%esp)
	je	L71
	movl	88(%esp), %ecx
	movl	_uint_number_zero, %eax
	testl	%ecx, %ecx
	je	L87
	movl	%eax, 0(%ebp)
	movl	$_number_zero, %edx
L78:
	movl	88(%esp), %eax
	movl	%edx, (%eax)
L69:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
	ret	$16
	.p2align 4,,10
L71:
	.cfi_restore_state
	movl	88(%esp), %edx
	movl	12(%ebx), %ebx
	movb	%cl, 31(%esp)
	movl	_ep_uint+132, %eax
	movl	%ebp, 12(%esp)
	testl	%edx, %edx
	je	L74
	leal	44(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L86
	movl	44(%esp), %eax
	movzbl	31(%esp), %ecx
	movzbl	24(%esp), %edi
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	cmove	%ecx, %edi
	movl	%eax, (%esp)
	movl	%edi, %ecx
	movsbl	%cl, %ecx
	movl	%ecx, 4(%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L78
	movl	44(%esp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	movl	0(%ebp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	24(%esp), %eax
L86:
	movl	%eax, %esi
L88:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
	ret	$16
	.p2align 4,,10
L74:
	.cfi_restore_state
	movl	$0, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %esi
	jmp	L88
	.p2align 4,,10
L87:
	movl	%eax, 0(%ebp)
	jmp	L69
	.p2align 4,,10
L79:
	movl	$-1, %esi
	jmp	L69
L80:
	movl	$-3, %esi
	jmp	L69
	.cfi_endproc
LFE5483:
	.p2align 4,,15
	.globl	_PMC_DivRem_X_I@16
	.def	_PMC_DivRem_X_I@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_I@16:
LFB5484:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	movl	84(%esp), %edi
	testl	%ebx, %ebx
	je	L105
	movl	92(%esp), %ebp
	testl	%ebp, %ebp
	je	L105
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L89
	testl	%edi, %edi
	jg	L112
	je	L106
	cmpl	$-2147483648, %edi
	je	L107
	movzbl	16(%ebx), %ebp
	movl	%edi, %eax
	movl	$-1, %edi
	negl	%eax
	movl	%ebp, %ecx
	testb	%cl, %cl
	je	L113
	.p2align 4,,10
L93:
	movl	12(%ebx), %ecx
	movl	88(%esp), %ebx
	movl	_ep_uint+124, %edx
	testl	%ebx, %ebx
	je	L96
	movl	%edi, %ebx
	movl	%eax, 4(%esp)
	negl	%ebx
	movl	%ecx, (%esp)
	movb	%bl, 28(%esp)
	movl	%ebp, %ebx
	testb	%bl, %bl
	movzbl	28(%esp), %ebx
	cmovle	%ebx, %edi
	leal	44(%esp), %ebx
	movl	%ebx, 12(%esp)
	leal	40(%esp), %ebx
	movl	%ebx, 8(%esp)
	call	*%edx
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L98
	movl	40(%esp), %eax
	movl	$0, %edx
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	cmovne	%edx, %edi
	movl	%edi, %eax
	movsbl	%al, %edi
	leal	36(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	jne	L114
	movl	44(%esp), %eax
	movl	%ebp, %ecx
	movl	%eax, %edx
	negl	%edx
	testb	%cl, %cl
	movl	92(%esp), %ecx
	cmovle	%edx, %eax
	movl	%eax, (%ecx)
	movl	36(%esp), %eax
	jmp	L102
	.p2align 4,,10
L112:
	movl	%edi, %eax
	movl	$1, %edi
L92:
	movzbl	16(%ebx), %ebp
	movl	%ebp, %ecx
	testb	%cl, %cl
	jne	L93
L113:
	movl	88(%esp), %edi
	testl	%edi, %edi
	je	L115
	movl	92(%esp), %eax
	movl	$0, (%eax)
	movl	$_number_zero, %eax
L102:
	movl	88(%esp), %edx
	movl	%eax, (%edx)
L89:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
	ret	$16
	.p2align 4,,10
L106:
	.cfi_restore_state
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-3, %esi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$16
	.p2align 4,,10
L114:
	.cfi_restore_state
	movl	40(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
L98:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%eax, %esi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$16
	.p2align 4,,10
L96:
	.cfi_restore_state
	leal	44(%esp), %ebx
	movl	$0, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edx
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L89
	movl	44(%esp), %eax
	movl	%ebp, %ecx
	movl	%eax, %edx
	negl	%edx
	testb	%cl, %cl
	movl	92(%esp), %ecx
	cmovle	%edx, %eax
	movl	%eax, (%ecx)
	jmp	L89
	.p2align 4,,10
L115:
	movl	92(%esp), %eax
	movl	$0, (%eax)
	jmp	L89
	.p2align 4,,10
L107:
	movl	$-1, %edi
	movl	$-2147483648, %eax
	jmp	L92
	.p2align 4,,10
L105:
	movl	$-1, %esi
	jmp	L89
	.cfi_endproc
LFE5484:
	.p2align 4,,15
	.globl	_PMC_DivRem_X_L@20
	.def	_PMC_DivRem_X_L@20;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_L@20:
LFB5485:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %esi
	movl	100(%esp), %edi
	movl	104(%esp), %ebp
	testl	%esi, %esi
	je	L132
	movl	112(%esp), %ebx
	testl	%ebx, %ebx
	je	L132
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L116
	cmpl	%edi, %eax
	sbbl	%ebp, %eax
	jl	L139
	movl	%ebp, %edx
	movl	%edi, %eax
	orl	%edi, %edx
	je	L133
	leal	-2147483648(%ebp), %edx
	orl	%edi, %edx
	je	L134
	negl	%eax
	movl	%ebp, %edx
	movzbl	16(%esi), %edi
	movl	$-1, %ebp
	adcl	$0, %edx
	movl	%eax, 40(%esp)
	negl	%edx
	movl	%edi, %ecx
	movl	%edx, 44(%esp)
	testb	%cl, %cl
	je	L140
	.p2align 4,,10
L120:
	movl	_ep_uint+128, %edx
	movl	12(%esi), %esi
	movl	%edx, 36(%esp)
	movl	%edx, %eax
	movl	108(%esp), %edx
	testl	%edx, %edx
	je	L123
	movl	%ebp, %ecx
	movl	%edi, %eax
	movl	40(%esp), %edx
	movl	%esi, (%esp)
	negl	%ecx
	testb	%al, %al
	cmovle	%ecx, %ebp
	leal	56(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	36(%esp), %edx
	movl	%ecx, 16(%esp)
	leal	52(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	44(%esp), %ecx
	movl	%ecx, 8(%esp)
	call	*%edx
	.cfi_def_cfa_offset 76
	subl	$20, %esp
	.cfi_def_cfa_offset 96
	testl	%eax, %eax
	jne	L125
	movl	52(%esp), %eax
	movl	$0, %edx
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	cmovne	%edx, %ebp
	movl	%ebp, %eax
	movsbl	%al, %ebp
	leal	48(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	jne	L141
	movl	%edi, %ecx
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	testb	%cl, %cl
	jg	L128
	negl	%eax
	adcl	$0, %edx
	negl	%edx
L128:
	movl	112(%esp), %ecx
	movl	%eax, (%ecx)
	movl	48(%esp), %eax
	movl	%edx, 4(%ecx)
	jmp	L129
	.p2align 4,,10
L139:
	movl	%edi, 40(%esp)
	movl	%ebp, 44(%esp)
	movl	$1, %ebp
L119:
	movzbl	16(%esi), %edi
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L120
L140:
	movl	108(%esp), %ecx
	testl	%ecx, %ecx
	je	L142
	movl	112(%esp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$_number_zero, %eax
L129:
	movl	108(%esp), %edx
	movl	%eax, (%edx)
L116:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	ret	$20
	.p2align 4,,10
L133:
	.cfi_restore_state
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-3, %ebx
	movl	%ebx, %eax
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
	ret	$20
	.p2align 4,,10
L141:
	.cfi_restore_state
	movl	52(%esp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 92
	subl	$4, %esp
	.cfi_def_cfa_offset 96
	movl	36(%esp), %eax
L125:
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%eax, %ebx
	movl	%ebx, %eax
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
	ret	$20
	.p2align 4,,10
L123:
	.cfi_restore_state
	leal	56(%esp), %ecx
	movl	44(%esp), %ebx
	movl	$0, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	40(%esp), %ecx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 76
	subl	$20, %esp
	.cfi_def_cfa_offset 96
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L116
	movl	%edi, %ecx
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	testb	%cl, %cl
	jle	L143
L131:
	movl	112(%esp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	L116
	.p2align 4,,10
L142:
	movl	112(%esp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	L116
	.p2align 4,,10
L134:
	movl	$-1, %ebp
	movl	$0, 40(%esp)
	movl	$-2147483648, 44(%esp)
	jmp	L119
	.p2align 4,,10
L143:
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	jmp	L131
	.p2align 4,,10
L132:
	movl	$-1, %ebx
	jmp	L116
	.cfi_endproc
LFE5485:
	.p2align 4,,15
	.globl	_PMC_DivRem_X_UX@16
	.def	_PMC_DivRem_X_UX@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_UX@16:
LFB5486:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	92(%esp), %ebp
	movl	84(%esp), %edi
	movl	80(%esp), %ebx
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L158
	testl	%ebx, %ebx
	je	L158
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L144
	movzbl	(%edi), %ebp
	andl	$1, %ebp
	jne	L159
	movzbl	16(%ebx), %edx
	testb	%dl, %dl
	jne	L146
	movl	88(%esp), %edi
	movl	$_number_zero, %edx
	movl	%edx, %eax
	testl	%edi, %edi
	je	L148
L147:
	movl	88(%esp), %ecx
	movl	%eax, (%ecx)
L148:
	movl	92(%esp), %eax
	movl	%edx, (%eax)
L144:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
	ret	$16
	.p2align 4,,10
L146:
	.cfi_restore_state
	movl	12(%ebx), %ecx
	movl	88(%esp), %ebx
	movb	%dl, 28(%esp)
	movl	_ep_uint+132, %eax
	testl	%ebx, %ebx
	leal	44(%esp), %ebx
	movl	%ebx, 12(%esp)
	je	L149
	leal	40(%esp), %ebx
	movl	%edi, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%ecx, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L155
	movl	40(%esp), %ecx
	movzbl	28(%esp), %edx
	movl	%ebp, %eax
	testb	$1, (%ecx)
	movl	%ecx, 8(%esp)
	cmove	%edx, %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	32(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movzbl	28(%esp), %edx
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	L169
	movl	44(%esp), %eax
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	leal	36(%esp), %eax
	cmovne	%ebp, %edx
	movl	%eax, (%esp)
	movsbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_AllocateNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L170
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	jmp	L147
	.p2align 4,,10
L149:
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ecx, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L155
	movl	44(%esp), %eax
	movzbl	28(%esp), %edx
	movl	$0, 32(%esp)
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	leal	36(%esp), %eax
	cmovne	%ebp, %edx
	movl	%eax, (%esp)
	movsbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_AllocateNumber
	movl	36(%esp), %edx
	testl	%eax, %eax
	je	L148
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
L155:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%eax, %esi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$16
	.p2align 4,,10
L169:
	.cfi_restore_state
	movl	40(%esp), %eax
	movl	%ebx, %esi
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	jmp	L144
	.p2align 4,,10
L170:
	movl	40(%esp), %eax
	movl	%ebx, %esi
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_DeallocateNumber
	jmp	L144
	.p2align 4,,10
L158:
	movl	$-1, %esi
	jmp	L144
L159:
	movl	$-3, %esi
	jmp	L144
	.cfi_endproc
LFE5486:
	.p2align 4,,15
	.globl	_PMC_DivRem_X_X@16
	.def	_PMC_DivRem_X_X@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_X@16:
LFB5487:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	92(%esp), %ebx
	movl	84(%esp), %edi
	movl	80(%esp), %esi
	testl	%ebx, %ebx
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L186
	testl	%esi, %esi
	je	L186
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L198
L171:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	ret	$16
	.p2align 4,,10
L198:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L171
	movzbl	(%edi), %eax
	andl	$1, %eax
	movb	%al, 20(%esp)
	jne	L187
	movzbl	16(%esi), %edx
	testb	%dl, %dl
	jne	L173
	movl	88(%esp), %ecx
	movl	$_number_zero, %edx
	movl	%edx, %eax
	testl	%ecx, %ecx
	je	L175
L174:
	movl	88(%esp), %ecx
	movl	%eax, (%ecx)
L175:
	movl	92(%esp), %eax
	movl	%edx, (%eax)
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	ret	$16
	.p2align 4,,10
L173:
	.cfi_restore_state
	movl	12(%edi), %eax
	movl	_ep_uint+132, %ebp
	movl	12(%esi), %ecx
	movl	%eax, 24(%esp)
	movl	88(%esp), %eax
	testl	%eax, %eax
	je	L176
	movzbl	16(%edi), %esi
	movb	%dl, 31(%esp)
	movl	%ecx, (%esp)
	movl	%esi, %eax
	negl	%eax
	testb	%dl, %dl
	movl	%eax, %edi
	movl	24(%esp), %eax
	cmovle	%edi, %esi
	leal	44(%esp), %edi
	movl	%edi, 12(%esp)
	leal	40(%esp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L183
	movl	40(%esp), %eax
	movzbl	20(%esp), %ecx
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	cmovne	%ecx, %esi
	movl	%esi, %eax
	movsbl	%al, %esi
	leal	32(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_AllocateNumber
	movzbl	31(%esp), %edx
	testl	%eax, %eax
	movl	%eax, %esi
	jne	L199
	movl	44(%esp), %eax
	movzbl	20(%esp), %ecx
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	leal	36(%esp), %eax
	cmove	%edx, %ecx
	movl	%eax, (%esp)
	movsbl	%cl, %edx
	movl	%edx, 4(%esp)
	call	_AllocateNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L200
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	jmp	L174
	.p2align 4,,10
L176:
	movl	24(%esp), %eax
	leal	44(%esp), %esi
	movb	%dl, 31(%esp)
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%ebp
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L183
	movl	44(%esp), %eax
	movzbl	31(%esp), %edx
	movl	$0, 32(%esp)
	movzbl	20(%esp), %ecx
	testb	$1, (%eax)
	movl	%eax, 8(%esp)
	leal	36(%esp), %eax
	cmove	%edx, %ecx
	movl	%eax, (%esp)
	movsbl	%cl, %edx
	movl	%edx, 4(%esp)
	call	_AllocateNumber
	movl	36(%esp), %edx
	testl	%eax, %eax
	je	L175
	movl	44(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	20(%esp), %eax
	.p2align 4,,10
L183:
	movl	%eax, %ebx
	jmp	L171
	.p2align 4,,10
L199:
	movl	40(%esp), %eax
	movl	%esi, %ebx
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	jmp	L171
	.p2align 4,,10
L186:
	movl	$-1, %ebx
	jmp	L171
	.p2align 4,,10
L200:
	movl	40(%esp), %eax
	movl	%esi, %ebx
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_DeallocateNumber
	jmp	L171
L187:
	movl	$-3, %ebx
	jmp	L171
	.cfi_endproc
LFE5487:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	_DeallocateNumber;	.scl	2;	.type	32;	.endef
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
