	.file	"pmc_divrem.c"
	.text
	.p2align 4,,15
	.globl	PMC_DivRem_I_X
	.def	PMC_DivRem_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_DivRem_I_X
PMC_DivRem_I_X:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testq	%rdx, %rdx
	movl	%ecx, %edi
	movq	%rdx, %rbx
	movq	%r8, %r13
	movq	%r9, %rbp
	je	.L20
	testq	%r9, %r9
	je	.L20
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L1
	testl	%edi, %edi
	movzbl	24(%rbx), %r12d
	jg	.L30
	je	.L31
	cmpl	$-2147483648, %edi
	je	.L32
	negl	%edi
	testb	%r12b, %r12b
	movl	%edi, %ecx
	je	.L24
.L8:
	testq	%r13, %r13
	movl	$-1, %edi
	jne	.L33
.L18:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	60(%rsp), %r9
	xorl	%r8d, %r8d
	movq	16(%rbx), %rdx
	call	*232(%rax)
	testl	%eax, %eax
	jne	.L15
	movl	60(%rsp), %edx
	leaq	72(%rsp), %r8
	movq	$0, 64(%rsp)
	testl	%edx, %edx
	cmove	%eax, %edi
	movsbl	%dil, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	jne	.L15
	movq	72(%rsp), %rax
	jmp	.L10
	.p2align 4,,10
.L31:
	testb	%r12b, %r12b
	je	.L24
	movq	.refptr.number_zero(%rip), %rax
	testq	%r13, %r13
	movq	%rax, %rdx
	je	.L10
.L9:
	movq	%rdx, 0(%r13)
.L10:
	movq	%rax, 0(%rbp)
.L1:
	movl	%esi, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L30:
	testb	%r12b, %r12b
	je	.L24
	testq	%r13, %r13
	movl	%edi, %ecx
	movl	$1, %edi
	je	.L18
.L17:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	60(%rsp), %r9
	movq	16(%rbx), %rdx
	leaq	56(%rsp), %r8
	call	*232(%rax)
	testl	%eax, %eax
	jne	.L15
	movl	56(%rsp), %edx
	leaq	64(%rsp), %r8
	xorl	%ebx, %ebx
	testl	%edx, %edx
	cmove	%ebx, %r12d
	movsbl	%r12b, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	jne	.L15
	movl	60(%rsp), %edx
	leaq	72(%rsp), %r8
	testl	%edx, %edx
	cmove	%ebx, %edi
	movsbl	%dil, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	jne	.L34
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rax
	jmp	.L9
	.p2align 4,,10
.L34:
	movq	64(%rsp), %rcx
	movl	%eax, 44(%rsp)
	call	DeallocateNumber
	movl	44(%rsp), %eax
.L15:
	movl	%eax, %esi
	movl	%esi, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L33:
	negl	%r12d
	movl	$-1, %edi
	jmp	.L17
	.p2align 4,,10
.L32:
	testb	%r12b, %r12b
	je	.L24
	movl	%edi, %ecx
	jmp	.L8
	.p2align 4,,10
.L20:
	movl	$-1, %esi
	jmp	.L1
.L24:
	movl	$-3, %esi
	jmp	.L1
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_DivRem_L_X
	.def	PMC_DivRem_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_DivRem_L_X
PMC_DivRem_L_X:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movq	%r8, %r13
	movq	%r9, %rbp
	je	.L54
	testq	%r9, %r9
	je	.L54
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L35
	testq	%rdi, %rdi
	movzbl	24(%rbx), %r12d
	jg	.L63
	je	.L64
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdi
	je	.L65
	negq	%rdi
	testb	%r12b, %r12b
	movq	%rdi, %rcx
	je	.L58
.L42:
	testq	%r13, %r13
	movl	$-1, %edi
	jne	.L66
.L52:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	72(%rsp), %r9
	xorl	%r8d, %r8d
	movq	16(%rbx), %rdx
	call	*240(%rax)
	testl	%eax, %eax
	jne	.L49
	movq	72(%rsp), %rdx
	leaq	56(%rsp), %r8
	movq	$0, 48(%rsp)
	testq	%rdx, %rdx
	cmove	%eax, %edi
	movsbl	%dil, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	jne	.L49
	movq	56(%rsp), %rax
	jmp	.L44
	.p2align 4,,10
.L64:
	testb	%r12b, %r12b
	je	.L58
	movq	.refptr.number_zero(%rip), %rax
	testq	%r13, %r13
	movq	%rax, %rdx
	je	.L44
.L43:
	movq	%rdx, 0(%r13)
.L44:
	movq	%rax, 0(%rbp)
.L35:
	movl	%esi, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L63:
	testb	%r12b, %r12b
	je	.L58
	testq	%r13, %r13
	movq	%rdi, %rcx
	movl	$1, %edi
	je	.L52
.L51:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	72(%rsp), %r9
	movq	16(%rbx), %rdx
	leaq	64(%rsp), %r8
	call	*240(%rax)
	testl	%eax, %eax
	jne	.L49
	movq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	cmove	%ebx, %r12d
	movsbl	%r12b, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	jne	.L49
	movq	72(%rsp), %rdx
	leaq	56(%rsp), %r8
	testq	%rdx, %rdx
	cmove	%ebx, %edi
	movsbl	%dil, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	jne	.L67
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	jmp	.L43
	.p2align 4,,10
.L67:
	movq	48(%rsp), %rcx
	movl	%eax, 44(%rsp)
	call	DeallocateNumber
	movl	44(%rsp), %eax
.L49:
	movl	%eax, %esi
	movl	%esi, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L66:
	negl	%r12d
	movl	$-1, %edi
	jmp	.L51
	.p2align 4,,10
.L65:
	testb	%r12b, %r12b
	je	.L58
	movq	%rdi, %rcx
	jmp	.L42
	.p2align 4,,10
.L54:
	movl	$-1, %esi
	jmp	.L35
.L58:
	movl	$-3, %esi
	jmp	.L35
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_DivRem_UX_X
	.def	PMC_DivRem_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_DivRem_UX_X
PMC_DivRem_UX_X:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, %rbx
	testq	%r9, %r9
	movq	%rcx, %rdi
	sete	%dl
	testq	%rbx, %rbx
	movq	%r8, %r14
	sete	%al
	movq	%r9, %r12
	orb	%al, %dl
	jne	.L78
	testq	%rcx, %rcx
	je	.L78
	movq	%rbx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L68
	movzbl	24(%rbx), %r13d
	testb	%r13b, %r13b
	je	.L79
	movzbl	(%rdi), %ebp
	andl	$1, %ebp
	je	.L70
	testq	%r14, %r14
	movq	uint_number_zero(%rip), %rax
	je	.L84
	movq	%rax, (%r12)
	movq	.refptr.number_zero(%rip), %rax
.L77:
	movq	%rax, (%r14)
.L68:
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L70:
	movq	.refptr.ep_uint(%rip), %r15
	testq	%r14, %r14
	movq	%r12, %r9
	movq	16(%rbx), %rdx
	movq	264(%r15), %rax
	je	.L73
	leaq	56(%rsp), %r8
	movq	%rdi, %rcx
	call	*%rax
	testl	%eax, %eax
	jne	.L83
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	testb	$1, (%r8)
	cmovne	%ebp, %r13d
	movsbl	%r13b, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L85
	movq	48(%rsp), %rax
	jmp	.L77
	.p2align 4,,10
.L73:
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	call	*%rax
.L83:
	movl	%eax, %esi
	jmp	.L68
	.p2align 4,,10
.L84:
	movq	%rax, (%r12)
	jmp	.L68
	.p2align 4,,10
.L85:
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%r15)
	movq	(%r12), %rcx
	call	*32(%r15)
	movl	44(%rsp), %eax
	movl	%eax, %esi
	jmp	.L68
	.p2align 4,,10
.L78:
	movl	$-1, %esi
	jmp	.L68
.L79:
	movl	$-3, %esi
	jmp	.L68
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_DivRem_X_I
	.def	PMC_DivRem_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_DivRem_X_I
PMC_DivRem_X_I:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movl	%edx, %edi
	movq	%r8, %r12
	movq	%r9, %rbp
	je	.L102
	testq	%r9, %r9
	je	.L102
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L86
	testl	%edi, %edi
	movl	%edi, %edx
	movl	$1, %r13d
	jg	.L89
	jne	.L109
	movl	$-3, %esi
.L86:
	movl	%esi, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L109:
	negl	%edx
	movl	$-2147483648, %eax
	cmpl	$-2147483648, %edi
	cmove	%eax, %edx
	movl	$-1, %r13d
.L89:
	movzbl	24(%rbx), %edi
	testb	%dil, %dil
	jne	.L90
	testq	%r12, %r12
	je	.L110
	movq	.refptr.number_zero(%rip), %rax
	movl	$0, 0(%rbp)
.L99:
	movq	%rax, (%r12)
	jmp	.L86
	.p2align 4,,10
.L90:
	movq	.refptr.ep_uint(%rip), %r14
	testq	%r12, %r12
	movq	16(%rbx), %rcx
	movq	248(%r14), %rax
	je	.L93
	leaq	60(%rsp), %r9
	movl	%r13d, %r8d
	negl	%r8d
	testb	%dil, %dil
	cmovle	%r8d, %r13d
	leaq	72(%rsp), %r8
	call	*%rax
	testl	%eax, %eax
	jne	.L95
	movq	72(%rsp), %r8
	leaq	64(%rsp), %rcx
	testb	$1, (%r8)
	cmovne	%eax, %r13d
	movsbl	%r13b, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L111
	movl	60(%rsp), %eax
	movl	%eax, %edx
	negl	%edx
	testb	%dil, %dil
	cmovle	%edx, %eax
	movl	%eax, 0(%rbp)
	movq	64(%rsp), %rax
	jmp	.L99
	.p2align 4,,10
.L111:
	movl	%eax, 44(%rsp)
	movq	72(%rsp), %rcx
	call	*32(%r14)
	movl	44(%rsp), %eax
.L95:
	movl	%eax, %esi
	jmp	.L86
	.p2align 4,,10
.L93:
	leaq	72(%rsp), %r9
	xorl	%r8d, %r8d
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L86
	movl	72(%rsp), %eax
	movl	%eax, %edx
	negl	%edx
	testb	%dil, %dil
	cmovle	%edx, %eax
	movl	%eax, 0(%rbp)
	jmp	.L86
	.p2align 4,,10
.L110:
	movl	$0, 0(%rbp)
	jmp	.L86
	.p2align 4,,10
.L102:
	movl	$-1, %esi
	jmp	.L86
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_DivRem_X_L
	.def	PMC_DivRem_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_DivRem_X_L
PMC_DivRem_X_L:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %r12
	movq	%r9, %rbp
	je	.L128
	testq	%r9, %r9
	je	.L128
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L112
	testq	%rdi, %rdi
	movq	%rdi, %rdx
	movl	$1, %r13d
	jg	.L115
	je	.L129
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdi
	je	.L130
	negq	%rdx
	movl	$-1, %r13d
.L115:
	movzbl	24(%rbx), %r14d
	testb	%r14b, %r14b
	jne	.L116
	testq	%r12, %r12
	je	.L134
	movq	.refptr.number_zero(%rip), %rax
	movq	$0, 0(%rbp)
.L125:
	movq	%rax, (%r12)
.L112:
	movl	%esi, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L116:
	movq	.refptr.ep_uint(%rip), %rdi
	testq	%r12, %r12
	movq	16(%rbx), %rcx
	movq	256(%rdi), %rax
	je	.L119
	leaq	72(%rsp), %r9
	movl	%r13d, %r8d
	negl	%r8d
	testb	%r14b, %r14b
	cmovle	%r8d, %r13d
	leaq	64(%rsp), %r8
	call	*%rax
	testl	%eax, %eax
	jne	.L121
	movq	64(%rsp), %r8
	leaq	56(%rsp), %rcx
	testb	$1, (%r8)
	cmovne	%eax, %r13d
	movsbl	%r13b, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L135
	movq	72(%rsp), %rax
	movq	%rax, %rdx
	negq	%rdx
	testb	%r14b, %r14b
	cmovle	%rdx, %rax
	movq	%rax, 0(%rbp)
	movq	56(%rsp), %rax
	jmp	.L125
	.p2align 4,,10
.L129:
	movl	$-3, %esi
	jmp	.L112
	.p2align 4,,10
.L135:
	movl	%eax, 44(%rsp)
	movq	64(%rsp), %rcx
	call	*32(%rdi)
	movl	44(%rsp), %eax
.L121:
	movl	%eax, %esi
	jmp	.L112
	.p2align 4,,10
.L119:
	leaq	72(%rsp), %r9
	xorl	%r8d, %r8d
	call	*%rax
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L112
	movq	72(%rsp), %rax
	movq	%rax, %rdx
	negq	%rdx
	testb	%r14b, %r14b
	cmovle	%rdx, %rax
	movq	%rax, 0(%rbp)
	jmp	.L112
	.p2align 4,,10
.L134:
	movq	$0, 0(%rbp)
	jmp	.L112
	.p2align 4,,10
.L130:
	movl	$-1, %r13d
	jmp	.L115
	.p2align 4,,10
.L128:
	movl	$-1, %esi
	jmp	.L112
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_DivRem_X_UX
	.def	PMC_DivRem_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_DivRem_X_UX
PMC_DivRem_X_UX:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r9, %r9
	movq	%rcx, %rbx
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %r15
	sete	%al
	movq	%r9, %r12
	orb	%al, %dl
	jne	.L150
	testq	%rcx, %rcx
	je	.L150
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L136
	movzbl	(%rdi), %ebp
	andl	$1, %ebp
	jne	.L151
	movsbl	24(%rbx), %r13d
	testb	%r13b, %r13b
	jne	.L138
	movq	.refptr.number_zero(%rip), %rax
	testq	%r15, %r15
	movq	%rax, %rdx
	je	.L140
.L139:
	movq	%rdx, (%r15)
.L140:
	movq	%rax, (%r12)
.L136:
	movl	%esi, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L138:
	movq	.refptr.ep_uint(%rip), %r14
	leaq	72(%rsp), %r9
	testq	%r15, %r15
	movq	16(%rbx), %rcx
	movq	264(%r14), %rax
	je	.L141
	leaq	64(%rsp), %r8
	movq	%rdi, %rdx
	call	*%rax
	testl	%eax, %eax
	jne	.L147
	movq	64(%rsp), %r8
	leaq	48(%rsp), %rcx
	movsbl	%bpl, %edx
	testb	$1, (%r8)
	cmove	%r13d, %edx
	call	AllocateNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L159
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	testb	$1, (%r8)
	cmovne	%ebp, %r13d
	movsbl	%r13b, %edx
	call	AllocateNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L160
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	jmp	.L139
	.p2align 4,,10
.L141:
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
	call	*%rax
	testl	%eax, %eax
	jne	.L147
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	movq	$0, 48(%rsp)
	testb	$1, (%r8)
	cmovne	%ebp, %r13d
	movsbl	%r13b, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L149
	movl	%eax, 44(%rsp)
	movq	72(%rsp), %rcx
	call	*32(%r14)
	movl	44(%rsp), %eax
	.p2align 4,,10
.L147:
	movl	%eax, %esi
	jmp	.L136
	.p2align 4,,10
.L159:
	movq	64(%rsp), %rcx
	movl	%ebx, %esi
	call	*32(%r14)
	movq	72(%rsp), %rcx
	call	*32(%r14)
	jmp	.L136
	.p2align 4,,10
.L149:
	movq	56(%rsp), %rax
	jmp	.L140
	.p2align 4,,10
.L160:
	movq	64(%rsp), %rcx
	movl	%ebx, %esi
	call	*32(%r14)
	movq	72(%rsp), %rcx
	call	*32(%r14)
	movq	48(%rsp), %rcx
	call	DeallocateNumber
	jmp	.L136
	.p2align 4,,10
.L150:
	movl	$-1, %esi
	jmp	.L136
.L151:
	movl	$-3, %esi
	jmp	.L136
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_DivRem_X_X
	.def	PMC_DivRem_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_DivRem_X_X
PMC_DivRem_X_X:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r9, %r9
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %r12
	sete	%al
	movq	%r9, %rbp
	orb	%al, %dl
	jne	.L176
	testq	%rcx, %rcx
	je	.L176
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L186
.L161:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L186:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L161
	movzbl	(%rdi), %r13d
	andl	$1, %r13d
	jne	.L177
	movzbl	24(%rsi), %r14d
	testb	%r14b, %r14b
	jne	.L163
	movq	.refptr.number_zero(%rip), %rax
	testq	%r12, %r12
	movq	%rax, %rdx
	je	.L165
.L164:
	movq	%rdx, (%r12)
.L165:
	movq	%rax, 0(%rbp)
	jmp	.L161
	.p2align 4,,10
.L163:
	movq	.refptr.ep_uint(%rip), %r15
	testq	%r12, %r12
	movq	16(%rdi), %rdx
	movq	16(%rsi), %rcx
	movq	264(%r15), %rax
	je	.L166
	movzbl	24(%rdi), %esi
	leaq	72(%rsp), %r9
	movl	%esi, %r8d
	negl	%r8d
	testb	%r14b, %r14b
	cmovle	%r8d, %esi
	leaq	64(%rsp), %r8
	call	*%rax
	testl	%eax, %eax
	jne	.L173
	movq	64(%rsp), %r8
	leaq	48(%rsp), %rcx
	testb	$1, (%r8)
	cmovne	%r13d, %esi
	movsbl	%sil, %edx
	call	AllocateNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L187
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	testb	$1, (%r8)
	cmovne	%r13d, %r14d
	movsbl	%r14b, %edx
	call	AllocateNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L188
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	jmp	.L164
	.p2align 4,,10
.L189:
	movl	%eax, 44(%rsp)
	movq	72(%rsp), %rcx
	call	*32(%r15)
	movl	44(%rsp), %eax
	.p2align 4,,10
.L173:
	movl	%eax, %ebx
	jmp	.L161
	.p2align 4,,10
.L187:
	movq	64(%rsp), %rcx
	movl	%esi, %ebx
	call	*32(%r15)
	movq	72(%rsp), %rcx
	call	*32(%r15)
	jmp	.L161
	.p2align 4,,10
.L166:
	leaq	72(%rsp), %r9
	xorl	%r8d, %r8d
	call	*%rax
	testl	%eax, %eax
	jne	.L173
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	movq	$0, 48(%rsp)
	testb	$1, (%r8)
	cmovne	%r13d, %r14d
	movsbl	%r14b, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L189
	movq	56(%rsp), %rax
	jmp	.L165
	.p2align 4,,10
.L176:
	movl	$-1, %ebx
	jmp	.L161
	.p2align 4,,10
.L188:
	movq	64(%rsp), %rcx
	movl	%esi, %ebx
	call	*32(%r15)
	movq	72(%rsp), %rcx
	call	*32(%r15)
	movq	48(%rsp), %rcx
	call	DeallocateNumber
	jmp	.L161
.L177:
	movl	$-3, %ebx
	jmp	.L161
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.def	From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	DeallocateNumber;	.scl	2;	.type	32;	.endef
	.def	From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
	.section	.rdata$.refptr.number_zero, "dr"
	.globl	.refptr.number_zero
	.linkonce	discard
.refptr.number_zero:
	.quad	number_zero
