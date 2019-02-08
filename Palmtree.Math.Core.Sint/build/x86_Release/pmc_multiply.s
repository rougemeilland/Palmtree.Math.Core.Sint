	.file	"pmc_multiply.c"
	.text
	.p2align 4,,15
	.def	_MultiplyU_X_I_Imp;	.scl	3;	.type	32;	.endef
_MultiplyU_X_I_Imp:
LFB5481:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	leal	44(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+112
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L8
L1:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L8:
	.cfi_restore_state
	movl	44(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L1
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	addl	$56, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5481:
	.p2align 4,,15
	.def	_MultiplyU_X_L_Imp;	.scl	3;	.type	32;	.endef
_MultiplyU_X_L_Imp:
LFB5482:
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
	movl	%eax, %ebx
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	leal	44(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	call	*_ep_uint+116
	.cfi_def_cfa_offset 48
	subl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L15
L9:
	addl	$48, %esp
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
	ret
	.p2align 4,,10
L15:
	.cfi_restore_state
	movl	44(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L9
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	addl	$48, %esp
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
	ret
	.cfi_endproc
LFE5482:
	.p2align 4,,15
	.def	_MultiplyU_X_X_Imp;	.scl	3;	.type	32;	.endef
_MultiplyU_X_X_Imp:
LFB5483:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	leal	44(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+120
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L22
L16:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L22:
	.cfi_restore_state
	movl	44(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L16
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	addl	$56, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5483:
	.p2align 4,,15
	.globl	_PMC_Multiply_I_X@12
	.def	_PMC_Multiply_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Multiply_I_X@12:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %edi
	movl	64(%esp), %ebp
	movl	68(%esp), %ebx
	testl	%edi, %edi
	je	L29
	testl	%ebx, %ebx
	je	L29
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L23
	testl	%ebp, %ebp
	jg	L42
	je	L31
	movl	%ebp, %eax
	movl	$-2147483648, %ecx
	movl	$_number_zero, %edx
	negl	%eax
	cmpl	$-2147483648, %ebp
	cmovne	%eax, %ecx
	movzbl	12(%ebx), %eax
	testb	%al, %al
	je	L26
	movl	8(%ebx), %edx
	leal	28(%esp), %ebx
	negl	%eax
	movl	%ebx, (%esp)
	movsbl	%al, %eax
	call	_MultiplyU_X_I_Imp
	testl	%eax, %eax
	jne	L35
L41:
	movl	28(%esp), %edx
	.p2align 4,,10
L26:
	movl	%edx, (%edi)
L23:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L42:
	.cfi_restore_state
	movsbl	12(%ebx), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L26
	leal	28(%esp), %ecx
	movl	8(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%ebp, %ecx
	call	_MultiplyU_X_I_Imp
	testl	%eax, %eax
	je	L41
L35:
	movl	%eax, %esi
	jmp	L23
	.p2align 4,,10
L31:
	movl	$_number_zero, %edx
	movl	%edx, (%edi)
	jmp	L23
	.p2align 4,,10
L29:
	movl	$-1, %esi
	jmp	L23
	.cfi_endproc
LFE5484:
	.p2align 4,,15
	.globl	_PMC_Multiply_L_X@16
	.def	_PMC_Multiply_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Multiply_L_X@16:
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
	movl	92(%esp), %ebp
	movl	80(%esp), %esi
	movl	84(%esp), %edi
	movl	88(%esp), %ebx
	testl	%ebp, %ebp
	je	L49
	testl	%ebx, %ebx
	je	L49
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L43
	cmpl	%esi, %eax
	sbbl	%edi, %eax
	jl	L61
	movl	%edi, %edx
	orl	%esi, %edx
	je	L51
	leal	-2147483648(%edi), %edx
	movl	$0, 16(%esp)
	orl	%esi, %edx
	movl	$-2147483648, 20(%esp)
	je	L48
	negl	%esi
	adcl	$0, %edi
	movl	%esi, 16(%esp)
	negl	%edi
	movl	%edi, 20(%esp)
L48:
	movzbl	12(%ebx), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L62
L46:
	movl	%edx, 0(%ebp)
L43:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
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
L61:
	.cfi_restore_state
	movsbl	12(%ebx), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L46
	movl	8(%ebx), %edx
	leal	44(%esp), %ebx
	movl	%esi, (%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ecx, 16(%esp)
	call	_MultiplyU_X_L_Imp
	testl	%eax, %eax
	jne	L55
	movl	44(%esp), %edx
	movl	16(%esp), %ecx
	jmp	L46
	.p2align 4,,10
L51:
	movl	$_number_zero, %edx
	movl	%edx, 0(%ebp)
	jmp	L43
	.p2align 4,,10
L62:
	movl	8(%ebx), %edx
	leal	44(%esp), %ebx
	movl	20(%esp), %esi
	negl	%eax
	movl	%ebx, 8(%esp)
	movl	16(%esp), %ebx
	movsbl	%al, %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 28(%esp)
	call	_MultiplyU_X_L_Imp
	testl	%eax, %eax
	jne	L55
	movl	44(%esp), %edx
	movl	28(%esp), %ecx
	jmp	L46
	.p2align 4,,10
L55:
	movl	%eax, %ecx
	jmp	L43
	.p2align 4,,10
L49:
	movl	$-1, %ecx
	jmp	L43
	.cfi_endproc
LFE5485:
	.p2align 4,,15
	.globl	_PMC_Multiply_UX_X@12
	.def	_PMC_Multiply_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Multiply_UX_X@12:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %ebp
	movl	68(%esp), %esi
	movl	64(%esp), %edi
	testl	%ebp, %ebp
	sete	%dl
	testl	%esi, %esi
	sete	%al
	orb	%al, %dl
	jne	L66
	testl	%edi, %edi
	je	L66
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L72
L63:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L72:
	.cfi_restore_state
	leal	27(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_IsZero_UINT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L63
	cmpb	$0, 27(%esp)
	jne	L67
	movsbl	12(%esi), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L73
L65:
	movl	%edx, 0(%ebp)
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L67:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L65
	.p2align 4,,10
L73:
	leal	28(%esp), %ecx
	movl	8(%esi), %edx
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	call	_MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	L69
	movl	28(%esp), %edx
	jmp	L65
	.p2align 4,,10
L69:
	movl	%eax, %ebx
	jmp	L63
	.p2align 4,,10
L66:
	movl	$-1, %ebx
	jmp	L63
	.cfi_endproc
LFE5486:
	.p2align 4,,15
	.globl	_PMC_Multiply_X_I@12
	.def	_PMC_Multiply_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Multiply_X_I@12:
LFB5487:
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
	movl	48(%esp), %ebx
	movl	56(%esp), %edi
	testl	%ebx, %ebx
	je	L81
	testl	%edi, %edi
	je	L81
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L74
	movl	52(%esp), %edx
	movzbl	12(%ebx), %eax
	testl	%edx, %edx
	jg	L95
	je	L87
	cmpl	$-2147483648, 52(%esp)
	je	L96
	testb	%al, %al
	je	L87
	movl	52(%esp), %ecx
	negl	%ecx
	testb	%al, %al
	jle	L88
L94:
	movl	$-1, %eax
	jmp	L79
	.p2align 4,,10
L90:
	movl	%eax, %esi
L74:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L95:
	.cfi_restore_state
	testb	%al, %al
	je	L87
	movl	52(%esp), %ecx
	movl	$1, %eax
	jle	L94
L79:
	movl	8(%ebx), %edx
	leal	28(%esp), %ebx
	movl	%ebx, (%esp)
	call	_MultiplyU_X_I_Imp
	testl	%eax, %eax
	jne	L90
	movl	28(%esp), %eax
	movl	%eax, (%edi)
L98:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
	testb	%al, %al
	jne	L97
	.p2align 4,,10
L87:
	movl	$_number_zero, %eax
	movl	%eax, (%edi)
	jmp	L98
	.p2align 4,,10
L97:
	movl	$-1, %eax
	movl	$-2147483648, %ecx
	jg	L79
L88:
	movl	$1, %eax
	jmp	L79
	.p2align 4,,10
L81:
	movl	$-1, %esi
	jmp	L74
	.cfi_endproc
LFE5487:
	.p2align 4,,15
	.globl	_PMC_Multiply_X_L@16
	.def	_PMC_Multiply_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Multiply_X_L@16:
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
	movl	64(%esp), %ebp
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	testl	%ebp, %ebp
	je	L106
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L106
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L99
	cmpl	%esi, %ebx
	movl	%ebx, %edx
	movzbl	12(%ebp), %eax
	sbbl	%edi, %edx
	jl	L120
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L112
	leal	-2147483648(%edi), %ecx
	orl	%esi, %ecx
	je	L121
	testb	%al, %al
	je	L112
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	testb	%al, %al
	jle	L113
L119:
	movl	$-1, %eax
	jmp	L104
	.p2align 4,,10
L120:
	testb	%al, %al
	jne	L122
L112:
	movl	$_number_zero, %eax
L102:
	movl	76(%esp), %edi
	movl	%eax, (%edi)
L99:
	addl	$44, %esp
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
L122:
	.cfi_restore_state
	movl	$1, %eax
	jle	L119
L104:
	leal	28(%esp), %ecx
	movl	8(%ebp), %edx
	movl	%esi, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	call	_MultiplyU_X_L_Imp
	testl	%eax, %eax
	jne	L115
	movl	28(%esp), %eax
	jmp	L102
	.p2align 4,,10
L121:
	testb	%al, %al
	je	L112
	movl	$-1, %eax
	movl	$0, %esi
	movl	$-2147483648, %edi
	jg	L104
L113:
	movl	$1, %eax
	jmp	L104
	.p2align 4,,10
L115:
	movl	%eax, %ebx
	jmp	L99
	.p2align 4,,10
L106:
	movl	$-1, %ebx
	jmp	L99
	.cfi_endproc
LFE5488:
	.p2align 4,,15
	.globl	_PMC_Multiply_X_UX@12
	.def	_PMC_Multiply_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Multiply_X_UX@12:
LFB5489:
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
	movl	72(%esp), %ebp
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L126
	testl	%esi, %esi
	je	L126
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L131
L123:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L131:
	.cfi_restore_state
	leal	27(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_IsZero_UINT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L123
	movsbl	12(%esi), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L125
	cmpb	$0, 27(%esp)
	jne	L125
	leal	28(%esp), %ecx
	movl	8(%esi), %edx
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	call	_MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	L129
	movl	28(%esp), %edx
L125:
	movl	%edx, 0(%ebp)
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L129:
	.cfi_restore_state
	movl	%eax, %ebx
	jmp	L123
	.p2align 4,,10
L126:
	movl	$-1, %ebx
	jmp	L123
	.cfi_endproc
LFE5489:
	.p2align 4,,15
	.globl	_PMC_Multiply_X_X@12
	.def	_PMC_Multiply_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Multiply_X_X@12:
LFB5490:
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
	movl	72(%esp), %ebp
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L136
	testl	%esi, %esi
	je	L136
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L148
L132:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L148:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L132
	cmpb	$0, 12(%esi)
	je	L137
	movsbl	12(%edi), %eax
	movl	$_number_zero, %edx
	jle	L135
	testb	%al, %al
	jne	L149
L134:
	movl	%edx, 0(%ebp)
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L137:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L134
	.p2align 4,,10
L135:
	testb	%al, %al
	je	L134
	negl	%eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movsbl	%al, %eax
L147:
	leal	28(%esp), %esi
	movl	%esi, (%esp)
	call	_MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	L141
	movl	28(%esp), %edx
	jmp	L134
	.p2align 4,,10
L149:
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	jmp	L147
	.p2align 4,,10
L136:
	movl	$-1, %ebx
	jmp	L132
	.p2align 4,,10
L141:
	movl	%eax, %ebx
	jmp	L132
	.cfi_endproc
LFE5490:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_IsZero_UINT;	.scl	2;	.type	32;	.endef
