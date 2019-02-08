	.file	"pmc_multiply.c"
	.text
	.p2align 4,,15
	.def	MultiplyU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	MultiplyU_X_I_Imp
MultiplyU_X_I_Imp:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rsi
	movl	%ecx, %ebx
	movq	%r9, %rdi
	movq	%rdx, %rcx
	movl	%r8d, %edx
	leaq	56(%rsp), %r8
	call	*224(%rsi)
	testl	%eax, %eax
	je	.L7
.L1:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L7:
	movq	56(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rdi, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L1
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	MultiplyU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	MultiplyU_X_L_Imp
MultiplyU_X_L_Imp:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rsi
	movl	%ecx, %ebx
	movq	%r9, %rdi
	movq	%rdx, %rcx
	movq	%r8, %rdx
	leaq	56(%rsp), %r8
	call	*232(%rsi)
	testl	%eax, %eax
	je	.L13
.L8:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L13:
	movq	56(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rdi, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L8
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	MultiplyU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	MultiplyU_X_X_Imp
MultiplyU_X_X_Imp:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rsi
	movl	%ecx, %ebx
	movq	%r9, %rdi
	movq	%rdx, %rcx
	movq	%r8, %rdx
	leaq	56(%rsp), %r8
	call	*240(%rsi)
	testl	%eax, %eax
	je	.L19
.L14:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L19:
	movq	56(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rdi, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L14
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Multiply_I_X
	.def	PMC_Multiply_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Multiply_I_X
PMC_Multiply_I_X:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testq	%r8, %r8
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L26
	testq	%rdx, %rdx
	je	.L26
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L20
	testl	%ebp, %ebp
	jg	.L38
	je	.L28
	movzbl	16(%rbx), %ecx
	movl	%ebp, %r8d
	movl	$-2147483648, %eax
	negl	%r8d
	cmpl	$-2147483648, %ebp
	cmove	%eax, %r8d
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	je	.L23
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	negl	%ecx
	movsbl	%cl, %ecx
	call	MultiplyU_X_I_Imp
	testl	%eax, %eax
	jne	.L32
.L37:
	movq	40(%rsp), %rax
	.p2align 4,,10
.L23:
	movq	%rax, (%rdi)
.L20:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L38:
	movsbl	16(%rbx), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	je	.L23
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	call	MultiplyU_X_I_Imp
	testl	%eax, %eax
	je	.L37
.L32:
	movl	%eax, %esi
	jmp	.L20
	.p2align 4,,10
.L28:
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, (%rdi)
	jmp	.L20
	.p2align 4,,10
.L26:
	movl	$-1, %esi
	jmp	.L20
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Multiply_L_X
	.def	PMC_Multiply_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Multiply_L_X
PMC_Multiply_L_X:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L45
	testq	%rdx, %rdx
	je	.L45
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L39
	testq	%rbp, %rbp
	jg	.L57
	je	.L47
	movzbl	16(%rbx), %ecx
	movq	%rbp, %r8
	movabsq	$-9223372036854775808, %rax
	negq	%r8
	cmpq	%rax, %rbp
	movq	.refptr.number_zero(%rip), %rax
	cmove	%rbp, %r8
	testb	%cl, %cl
	je	.L42
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	negl	%ecx
	movsbl	%cl, %ecx
	call	MultiplyU_X_L_Imp
	testl	%eax, %eax
	jne	.L51
.L56:
	movq	40(%rsp), %rax
	.p2align 4,,10
.L42:
	movq	%rax, (%rdi)
.L39:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L57:
	movsbl	16(%rbx), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	je	.L42
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	call	MultiplyU_X_L_Imp
	testl	%eax, %eax
	je	.L56
.L51:
	movl	%eax, %esi
	jmp	.L39
	.p2align 4,,10
.L47:
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, (%rdi)
	jmp	.L39
	.p2align 4,,10
.L45:
	movl	$-1, %esi
	jmp	.L39
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Multiply_UX_X
	.def	PMC_Multiply_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Multiply_UX_X
PMC_Multiply_UX_X:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %rsi
	testq	%r8, %r8
	movq	%rcx, %rdi
	sete	%dl
	testq	%rsi, %rsi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L61
	testq	%rcx, %rcx
	je	.L61
	movq	%rsi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L66
.L58:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L66:
	leaq	39(%rsp), %rdx
	movq	%rdi, %rcx
	call	IsZero_UINT
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L58
	cmpb	$0, 39(%rsp)
	jne	.L62
	movsbl	16(%rsi), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	jne	.L67
.L60:
	movq	%rax, 0(%rbp)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L62:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L60
	.p2align 4,,10
.L67:
	movq	8(%rsi), %rdx
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	call	MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	.L64
	movq	40(%rsp), %rax
	jmp	.L60
	.p2align 4,,10
.L64:
	movl	%eax, %ebx
	jmp	.L58
	.p2align 4,,10
.L61:
	movl	$-1, %ebx
	jmp	.L58
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Multiply_X_I
	.def	PMC_Multiply_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Multiply_X_I
PMC_Multiply_X_I:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%r8, %rdi
	je	.L75
	testq	%r8, %r8
	je	.L75
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L68
	testl	%ebp, %ebp
	movzbl	16(%rbx), %eax
	jg	.L88
	je	.L81
	cmpl	$-2147483648, %ebp
	je	.L89
	testb	%al, %al
	je	.L81
	negl	%ebp
	testb	%al, %al
	jle	.L82
.L87:
	movl	$-1, %ecx
	jmp	.L73
	.p2align 4,,10
.L88:
	testb	%al, %al
	jne	.L90
.L81:
	movq	.refptr.number_zero(%rip), %rax
.L71:
	movq	%rax, (%rdi)
.L68:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L90:
	movl	$1, %ecx
	jle	.L87
.L73:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	call	MultiplyU_X_I_Imp
	testl	%eax, %eax
	jne	.L84
	movq	40(%rsp), %rax
	jmp	.L71
	.p2align 4,,10
.L89:
	testb	%al, %al
	je	.L81
	movl	$-1, %ecx
	jg	.L73
.L82:
	movl	$1, %ecx
	jmp	.L73
	.p2align 4,,10
.L84:
	movl	%eax, %esi
	jmp	.L68
	.p2align 4,,10
.L75:
	movl	$-1, %esi
	jmp	.L68
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Multiply_X_L
	.def	PMC_Multiply_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Multiply_X_L
PMC_Multiply_X_L:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r8, %rdi
	je	.L98
	testq	%r8, %r8
	je	.L98
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L91
	testq	%rbp, %rbp
	movzbl	16(%rbx), %eax
	jg	.L111
	je	.L104
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rbp
	je	.L112
	testb	%al, %al
	je	.L104
	negq	%rbp
	testb	%al, %al
	jle	.L105
.L110:
	movl	$-1, %ecx
	jmp	.L96
	.p2align 4,,10
.L111:
	testb	%al, %al
	jne	.L113
.L104:
	movq	.refptr.number_zero(%rip), %rax
.L94:
	movq	%rax, (%rdi)
.L91:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L113:
	movl	$1, %ecx
	jle	.L110
.L96:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	call	MultiplyU_X_L_Imp
	testl	%eax, %eax
	jne	.L107
	movq	40(%rsp), %rax
	jmp	.L94
	.p2align 4,,10
.L112:
	testb	%al, %al
	je	.L104
	movl	$-1, %ecx
	jg	.L96
.L105:
	movl	$1, %ecx
	jmp	.L96
	.p2align 4,,10
.L107:
	movl	%eax, %esi
	jmp	.L91
	.p2align 4,,10
.L98:
	movl	$-1, %esi
	jmp	.L91
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Multiply_X_UX
	.def	PMC_Multiply_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Multiply_X_UX
PMC_Multiply_X_UX:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L117
	testq	%rcx, %rcx
	je	.L117
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L121
.L114:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L121:
	leaq	39(%rsp), %rdx
	movq	%rdi, %rcx
	call	IsZero_UINT
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L114
	movsbl	16(%rsi), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	je	.L116
	cmpb	$0, 39(%rsp)
	jne	.L116
	movq	8(%rsi), %rdx
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	call	MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	.L120
	movq	40(%rsp), %rax
.L116:
	movq	%rax, 0(%rbp)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L120:
	movl	%eax, %ebx
	jmp	.L114
	.p2align 4,,10
.L117:
	movl	$-1, %ebx
	jmp	.L114
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Multiply_X_X
	.def	PMC_Multiply_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Multiply_X_X
PMC_Multiply_X_X:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L126
	testq	%rcx, %rcx
	je	.L126
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L137
.L122:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L137:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L122
	cmpb	$0, 16(%rsi)
	je	.L127
	movsbl	16(%rdi), %ecx
	movq	.refptr.number_zero(%rip), %rax
	jle	.L125
	testb	%cl, %cl
	jne	.L138
.L124:
	movq	%rax, 0(%rbp)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L127:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L124
	.p2align 4,,10
.L125:
	testb	%cl, %cl
	je	.L124
	movq	8(%rsi), %rdx
	negl	%ecx
	movsbl	%cl, %ecx
.L136:
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	call	MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	.L131
	movq	40(%rsp), %rax
	jmp	.L124
	.p2align 4,,10
.L138:
	movq	8(%rsi), %rdx
	jmp	.L136
	.p2align 4,,10
.L126:
	movl	$-1, %ebx
	jmp	.L122
	.p2align 4,,10
.L131:
	movl	%eax, %ebx
	jmp	.L122
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.def	IsZero_UINT;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.number_zero, "dr"
	.globl	.refptr.number_zero
	.linkonce	discard
.refptr.number_zero:
	.quad	number_zero
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
