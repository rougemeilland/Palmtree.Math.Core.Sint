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
	call	*_ep_uint+104
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
	call	*_ep_uint+108
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
	call	*_ep_uint+112
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
	movzbl	16(%ebx), %eax
	testb	%al, %al
	je	L26
	movl	12(%ebx), %edx
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
	movsbl	16(%ebx), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L26
	leal	28(%esp), %ecx
	movl	12(%ebx), %edx
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
	movzbl	16(%ebx), %eax
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
	movsbl	16(%ebx), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L46
	movl	12(%ebx), %edx
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
	movl	12(%ebx), %edx
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
	movl	68(%esp), %ebx
	movl	64(%esp), %edi
	testl	%ebp, %ebp
	sete	%dl
	testl	%ebx, %ebx
	sete	%al
	orb	%al, %dl
	jne	L66
	testl	%edi, %edi
	je	L66
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L63
	testb	$1, (%edi)
	jne	L67
	movsbl	16(%ebx), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L72
L65:
	movl	%edx, 0(%ebp)
L63:
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
L67:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L65
	.p2align 4,,10
L72:
	leal	28(%esp), %ecx
	movl	12(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	call	_MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	L69
	movl	28(%esp), %edx
	jmp	L65
	.p2align 4,,10
L69:
	movl	%eax, %esi
	jmp	L63
	.p2align 4,,10
L66:
	movl	$-1, %esi
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
	je	L80
	testl	%edi, %edi
	je	L80
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L73
	movl	52(%esp), %edx
	movzbl	16(%ebx), %eax
	testl	%edx, %edx
	jg	L94
	je	L86
	cmpl	$-2147483648, 52(%esp)
	je	L95
	testb	%al, %al
	je	L86
	movl	52(%esp), %ecx
	negl	%ecx
	testb	%al, %al
	jle	L87
L93:
	movl	$-1, %eax
	jmp	L78
	.p2align 4,,10
L89:
	movl	%eax, %esi
L73:
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
L94:
	.cfi_restore_state
	testb	%al, %al
	je	L86
	movl	52(%esp), %ecx
	movl	$1, %eax
	jle	L93
L78:
	movl	12(%ebx), %edx
	leal	28(%esp), %ebx
	movl	%ebx, (%esp)
	call	_MultiplyU_X_I_Imp
	testl	%eax, %eax
	jne	L89
	movl	28(%esp), %eax
	movl	%eax, (%edi)
L97:
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
	jne	L96
	.p2align 4,,10
L86:
	movl	$_number_zero, %eax
	movl	%eax, (%edi)
	jmp	L97
	.p2align 4,,10
L96:
	movl	$-1, %eax
	movl	$-2147483648, %ecx
	jg	L78
L87:
	movl	$1, %eax
	jmp	L78
	.p2align 4,,10
L80:
	movl	$-1, %esi
	jmp	L73
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
	je	L105
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L105
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L98
	cmpl	%esi, %ebx
	movl	%ebx, %edx
	movzbl	16(%ebp), %eax
	sbbl	%edi, %edx
	jl	L119
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L111
	leal	-2147483648(%edi), %ecx
	orl	%esi, %ecx
	je	L120
	testb	%al, %al
	je	L111
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	testb	%al, %al
	jle	L112
L118:
	movl	$-1, %eax
	jmp	L103
	.p2align 4,,10
L119:
	testb	%al, %al
	jne	L121
L111:
	movl	$_number_zero, %eax
L101:
	movl	76(%esp), %edi
	movl	%eax, (%edi)
L98:
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
L121:
	.cfi_restore_state
	movl	$1, %eax
	jle	L118
L103:
	leal	28(%esp), %ecx
	movl	12(%ebp), %edx
	movl	%esi, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	call	_MultiplyU_X_L_Imp
	testl	%eax, %eax
	jne	L114
	movl	28(%esp), %eax
	jmp	L101
	.p2align 4,,10
L120:
	testb	%al, %al
	je	L111
	movl	$-1, %eax
	movl	$0, %esi
	movl	$-2147483648, %edi
	jg	L103
L112:
	movl	$1, %eax
	jmp	L103
	.p2align 4,,10
L114:
	movl	%eax, %ebx
	jmp	L98
	.p2align 4,,10
L105:
	movl	$-1, %ebx
	jmp	L98
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
	movl	72(%esp), %edi
	movl	68(%esp), %ebp
	movl	64(%esp), %ebx
	testl	%edi, %edi
	sete	%dl
	testl	%ebp, %ebp
	sete	%al
	orb	%al, %dl
	jne	L125
	testl	%ebx, %ebx
	je	L125
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L122
	movsbl	16(%ebx), %eax
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L130
L124:
	movl	%edx, (%edi)
L122:
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
L130:
	.cfi_restore_state
	testb	$1, 0(%ebp)
	jne	L124
	leal	28(%esp), %ecx
	movl	12(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%ebp, %ecx
	call	_MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	L128
	movl	28(%esp), %edx
	jmp	L124
	.p2align 4,,10
L128:
	movl	%eax, %esi
	jmp	L122
	.p2align 4,,10
L125:
	movl	$-1, %esi
	jmp	L122
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
	jne	L135
	testl	%esi, %esi
	je	L135
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L147
L131:
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
L147:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L131
	cmpb	$0, 16(%esi)
	je	L136
	movsbl	16(%edi), %eax
	movl	$_number_zero, %edx
	jle	L134
	testb	%al, %al
	jne	L148
L133:
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
L136:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L133
	.p2align 4,,10
L134:
	testb	%al, %al
	je	L133
	negl	%eax
	movl	12(%edi), %ecx
	movl	12(%esi), %edx
	movsbl	%al, %eax
L146:
	leal	28(%esp), %esi
	movl	%esi, (%esp)
	call	_MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	L140
	movl	28(%esp), %edx
	jmp	L133
	.p2align 4,,10
L148:
	movl	12(%edi), %ecx
	movl	12(%esi), %edx
	jmp	L146
	.p2align 4,,10
L135:
	movl	$-1, %ebx
	jmp	L131
	.p2align 4,,10
L140:
	movl	%eax, %ebx
	jmp	L131
	.cfi_endproc
LFE5490:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
