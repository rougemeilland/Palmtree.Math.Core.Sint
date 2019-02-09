	.file	"pmc_compare.c"
	.text
	.p2align 4,,15
	.globl	_PMC_Compare_I_X@12
	.def	_PMC_Compare_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_I_X@12:
LFB5484:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %esi
	movl	48(%esp), %edi
	movl	52(%esp), %ebx
	testl	%esi, %esi
	je	L11
	testl	%ebx, %ebx
	je	L11
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L1
	movsbl	16(%ebx), %edx
	testl	%edi, %edi
	jg	L18
	je	L16
	movl	%edi, %ecx
	negl	%ecx
	cmpl	$-2147483648, %edi
	movl	$-2147483648, %edi
	cmove	%edi, %ecx
	testb	%dl, %dl
	js	L19
	movl	$-1, (%esi)
L1:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L18:
	.cfi_restore_state
	testb	%dl, %dl
	jle	L20
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+216
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L1
	movl	28(%esp), %edx
L16:
	negl	%edx
	movl	%edx, (%esi)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L20:
	.cfi_restore_state
	movl	$1, (%esi)
	jmp	L1
	.p2align 4,,10
L19:
	leal	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+216
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L1
	movl	28(%esp), %edx
	movl	%edx, (%esi)
	jmp	L1
	.p2align 4,,10
L11:
	movl	$-1, %eax
	jmp	L1
	.cfi_endproc
LFE5484:
	.p2align 4,,15
	.globl	_PMC_Compare_L_X@16
	.def	_PMC_Compare_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Compare_L_X@16:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	92(%esp), %eax
	movl	80(%esp), %esi
	movl	84(%esp), %edi
	movl	88(%esp), %ebx
	testl	%eax, %eax
	je	L31
	testl	%ebx, %ebx
	je	L31
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L21
	cmpl	%esi, %eax
	movl	%eax, %ecx
	movsbl	16(%ebx), %edx
	sbbl	%edi, %ecx
	jl	L37
	movl	%edi, %ebp
	orl	%esi, %ebp
	je	L36
	leal	-2147483648(%edi), %ebp
	movl	$0, 24(%esp)
	orl	%esi, %ebp
	movl	$-2147483648, 28(%esp)
	je	L27
	negl	%esi
	adcl	$0, %edi
	movl	%esi, 24(%esp)
	negl	%edi
	movl	%edi, 28(%esp)
L27:
	testb	%dl, %dl
	js	L29
	movl	92(%esp), %edi
	movl	$-1, (%edi)
L21:
	addl	$60, %esp
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
	ret	$16
	.p2align 4,,10
L37:
	.cfi_restore_state
	testb	%dl, %dl
	jle	L38
	leal	44(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+220
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L21
	movl	44(%esp), %edx
L36:
	movl	92(%esp), %edi
	negl	%edx
	movl	%edx, (%edi)
	addl	$60, %esp
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
	ret	$16
	.p2align 4,,10
L38:
	.cfi_restore_state
	movl	92(%esp), %edi
	movl	$1, (%edi)
	jmp	L21
	.p2align 4,,10
L29:
	leal	44(%esp), %eax
	movl	28(%esp), %edx
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+220
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L21
	movl	44(%esp), %edx
	movl	92(%esp), %edi
	movl	%edx, (%edi)
	jmp	L21
	.p2align 4,,10
L31:
	movl	$-1, %eax
	jmp	L21
	.cfi_endproc
LFE5485:
	.p2align 4,,15
	.globl	_PMC_Compare_UX_X@12
	.def	_PMC_Compare_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_UX_X@12:
LFB5486:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %ebx
	movl	56(%esp), %esi
	testl	%ebx, %ebx
	je	L44
	testl	%esi, %esi
	je	L44
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L39
	movl	48(%esp), %ecx
	movsbl	16(%ebx), %edx
	testb	$1, (%ecx)
	je	L41
	negl	%edx
	movl	%edx, (%esi)
L39:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L41:
	.cfi_restore_state
	testb	%dl, %dl
	jle	L46
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+224
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L39
	movl	28(%esp), %edx
	movl	%edx, (%esi)
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L46:
	.cfi_restore_state
	movl	$1, (%esi)
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L44:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L39
	.cfi_endproc
LFE5486:
	.p2align 4,,15
	.globl	_PMC_Compare_X_I@12
	.def	_PMC_Compare_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_I@12:
LFB5487:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %esi
	movl	48(%esp), %ebx
	testl	%esi, %esi
	je	L59
	testl	%ebx, %ebx
	je	L59
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L47
	movl	52(%esp), %ecx
	movzbl	16(%ebx), %edx
	testl	%ecx, %ecx
	jg	L66
	jne	L53
	testb	%dl, %dl
	je	L61
	jle	L52
L54:
	movl	$1, (%esi)
L47:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L66:
	.cfi_restore_state
	testb	%dl, %dl
	je	L60
	jle	L52
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+216
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L47
	movl	28(%esp), %edx
	movl	%edx, (%esi)
	jmp	L47
	.p2align 4,,10
L53:
	cmpl	$-2147483648, 52(%esp)
	je	L67
	testb	%dl, %dl
	je	L63
	jg	L54
	movl	52(%esp), %eax
	negl	%eax
	jmp	L56
	.p2align 4,,10
L60:
	movl	$-1, %edx
	movl	%edx, (%esi)
L69:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L67:
	.cfi_restore_state
	testb	%dl, %dl
	jne	L68
L63:
	movl	$1, %edx
	movl	%edx, (%esi)
	jmp	L69
	.p2align 4,,10
L61:
	xorl	%edx, %edx
	movl	%edx, (%esi)
	jmp	L69
	.p2align 4,,10
L52:
	movl	$-1, (%esi)
	jmp	L47
	.p2align 4,,10
L68:
	jg	L54
	movl	$-2147483648, %eax
L56:
	leal	28(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+216
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L47
	movl	28(%esp), %edx
	negl	%edx
	movl	%edx, (%esi)
	jmp	L69
	.p2align 4,,10
L59:
	movl	$-1, %eax
	jmp	L47
	.cfi_endproc
LFE5487:
	.p2align 4,,15
	.globl	_PMC_Compare_X_L@16
	.def	_PMC_Compare_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_L@16:
LFB5488:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	76(%esp), %eax
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	testl	%eax, %eax
	je	L82
	testl	%ebx, %ebx
	je	L82
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L70
	cmpl	%esi, %eax
	movl	%eax, %ecx
	movzbl	16(%ebx), %edx
	sbbl	%edi, %ecx
	jl	L89
	movl	%edi, %ebp
	orl	%esi, %ebp
	jne	L76
	testb	%dl, %dl
	je	L84
	jle	L75
L77:
	movl	76(%esp), %edi
	movl	$1, (%edi)
L70:
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
	ret	$16
	.p2align 4,,10
L89:
	.cfi_restore_state
	testb	%dl, %dl
	je	L83
	jle	L75
	leal	28(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+220
	.cfi_def_cfa_offset 48
	subl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L70
	movl	28(%esp), %edx
	movl	76(%esp), %edi
	movl	%edx, (%edi)
	jmp	L70
	.p2align 4,,10
L76:
	leal	-2147483648(%edi), %ebp
	orl	%esi, %ebp
	je	L90
	testb	%dl, %dl
	je	L86
	jg	L77
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	jmp	L79
	.p2align 4,,10
L83:
	movl	$-1, %edx
L88:
	movl	76(%esp), %edi
	movl	%edx, (%edi)
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
	ret	$16
	.p2align 4,,10
L90:
	.cfi_restore_state
	testb	%dl, %dl
	jne	L91
L86:
	movl	$1, %edx
	jmp	L88
	.p2align 4,,10
L84:
	xorl	%edx, %edx
	jmp	L88
	.p2align 4,,10
L75:
	movl	76(%esp), %edi
	movl	$-1, (%edi)
	jmp	L70
	.p2align 4,,10
L91:
	jg	L77
	xorl	%esi, %esi
	movl	$-2147483648, %edi
L79:
	leal	28(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+220
	.cfi_def_cfa_offset 48
	subl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L70
	movl	28(%esp), %edx
	negl	%edx
	jmp	L88
	.p2align 4,,10
L82:
	movl	$-1, %eax
	jmp	L70
	.cfi_endproc
LFE5488:
	.p2align 4,,15
	.globl	_PMC_Compare_X_UX@12
	.def	_PMC_Compare_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_UX@12:
LFB5489:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %esi
	movl	52(%esp), %edi
	movl	48(%esp), %ebx
	testl	%esi, %esi
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L98
	testl	%ebx, %ebx
	je	L98
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L92
	cmpb	$0, 16(%ebx)
	jne	L94
	testb	$1, (%edi)
	je	L95
	movl	$0, (%esi)
L92:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L94:
	.cfi_restore_state
	jle	L95
	testb	$1, (%edi)
	je	L96
	movl	$1, (%esi)
	jmp	L92
	.p2align 4,,10
L95:
	movl	$-1, (%esi)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L96:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+224
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L92
	movl	28(%esp), %edx
	movl	%edx, (%esi)
	jmp	L92
	.p2align 4,,10
L98:
	movl	$-1, %eax
	jmp	L92
	.cfi_endproc
LFE5489:
	.p2align 4,,15
	.globl	_PMC_Compare_X_X@12
	.def	_PMC_Compare_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_X@12:
LFB5490:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %edi
	movl	52(%esp), %esi
	movl	48(%esp), %ebx
	testl	%edi, %edi
	sete	%dl
	testl	%esi, %esi
	sete	%al
	orb	%al, %dl
	jne	L111
	testl	%ebx, %ebx
	je	L111
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	je	L114
L103:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L114:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L103
	cmpb	$0, 16(%ebx)
	movsbl	16(%esi), %edx
	je	L113
	jle	L106
	testb	%dl, %dl
	jle	L115
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	12(%esi), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+224
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L103
	movl	28(%esp), %edx
	movl	%edx, (%edi)
	jmp	L103
	.p2align 4,,10
L106:
	testb	%dl, %dl
	jns	L116
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	12(%esi), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+224
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L103
	movl	28(%esp), %edx
L113:
	negl	%edx
	movl	%edx, (%edi)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L116:
	.cfi_restore_state
	movl	$-1, (%edi)
	jmp	L103
	.p2align 4,,10
L115:
	movl	$1, (%edi)
	jmp	L103
	.p2align 4,,10
L111:
	movl	$-1, %eax
	jmp	L103
	.cfi_endproc
LFE5490:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
