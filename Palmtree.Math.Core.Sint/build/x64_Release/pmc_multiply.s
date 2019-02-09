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
	call	*216(%rsi)
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
	call	*224(%rsi)
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
	call	*232(%rsi)
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
	movzbl	24(%rbx), %ecx
	movl	%ebp, %r8d
	movl	$-2147483648, %eax
	negl	%r8d
	cmpl	$-2147483648, %ebp
	cmove	%eax, %r8d
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	je	.L23
	movq	16(%rbx), %rdx
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
	movsbl	24(%rbx), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	je	.L23
	movq	16(%rbx), %rdx
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
	movzbl	24(%rbx), %ecx
	movq	%rbp, %r8
	movabsq	$-9223372036854775808, %rax
	negq	%r8
	cmpq	%rax, %rbp
	movq	.refptr.number_zero(%rip), %rax
	cmove	%rbp, %r8
	testb	%cl, %cl
	je	.L42
	movq	16(%rbx), %rdx
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
	movsbl	24(%rbx), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	je	.L42
	movq	16(%rbx), %rdx
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
	movq	%rdx, %rbx
	testq	%r8, %r8
	movq	%rcx, %rdi
	sete	%dl
	testq	%rbx, %rbx
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L61
	testq	%rcx, %rcx
	je	.L61
	movq	%rbx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L58
	testb	$1, (%rdi)
	jne	.L62
	movsbl	24(%rbx), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	jne	.L66
.L60:
	movq	%rax, 0(%rbp)
.L58:
	movl	%esi, %eax
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
.L66:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	call	MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	.L64
	movq	40(%rsp), %rax
	jmp	.L60
	.p2align 4,,10
.L64:
	movl	%eax, %esi
	jmp	.L58
	.p2align 4,,10
.L61:
	movl	$-1, %esi
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
	je	.L74
	testq	%r8, %r8
	je	.L74
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L67
	testl	%ebp, %ebp
	movzbl	24(%rbx), %eax
	jg	.L87
	je	.L80
	cmpl	$-2147483648, %ebp
	je	.L88
	testb	%al, %al
	je	.L80
	negl	%ebp
	testb	%al, %al
	jle	.L81
.L86:
	movl	$-1, %ecx
	jmp	.L72
	.p2align 4,,10
.L87:
	testb	%al, %al
	jne	.L89
.L80:
	movq	.refptr.number_zero(%rip), %rax
.L70:
	movq	%rax, (%rdi)
.L67:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L89:
	movl	$1, %ecx
	jle	.L86
.L72:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	call	MultiplyU_X_I_Imp
	testl	%eax, %eax
	jne	.L83
	movq	40(%rsp), %rax
	jmp	.L70
	.p2align 4,,10
.L88:
	testb	%al, %al
	je	.L80
	movl	$-1, %ecx
	jg	.L72
.L81:
	movl	$1, %ecx
	jmp	.L72
	.p2align 4,,10
.L83:
	movl	%eax, %esi
	jmp	.L67
	.p2align 4,,10
.L74:
	movl	$-1, %esi
	jmp	.L67
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
	je	.L97
	testq	%r8, %r8
	je	.L97
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L90
	testq	%rbp, %rbp
	movzbl	24(%rbx), %eax
	jg	.L110
	je	.L103
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rbp
	je	.L111
	testb	%al, %al
	je	.L103
	negq	%rbp
	testb	%al, %al
	jle	.L104
.L109:
	movl	$-1, %ecx
	jmp	.L95
	.p2align 4,,10
.L110:
	testb	%al, %al
	jne	.L112
.L103:
	movq	.refptr.number_zero(%rip), %rax
.L93:
	movq	%rax, (%rdi)
.L90:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L112:
	movl	$1, %ecx
	jle	.L109
.L95:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	call	MultiplyU_X_L_Imp
	testl	%eax, %eax
	jne	.L106
	movq	40(%rsp), %rax
	jmp	.L93
	.p2align 4,,10
.L111:
	testb	%al, %al
	je	.L103
	movl	$-1, %ecx
	jg	.L95
.L104:
	movl	$1, %ecx
	jmp	.L95
	.p2align 4,,10
.L106:
	movl	%eax, %esi
	jmp	.L90
	.p2align 4,,10
.L97:
	movl	$-1, %esi
	jmp	.L90
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
	movq	%rdx, %rbp
	testq	%r8, %r8
	movq	%rcx, %rbx
	sete	%dl
	testq	%rbp, %rbp
	movq	%r8, %rdi
	sete	%al
	orb	%al, %dl
	jne	.L116
	testq	%rcx, %rcx
	je	.L116
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L113
	movsbl	24(%rbx), %ecx
	movq	.refptr.number_zero(%rip), %rax
	testb	%cl, %cl
	jne	.L120
.L115:
	movq	%rax, (%rdi)
.L113:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L120:
	testb	$1, 0(%rbp)
	jne	.L115
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	call	MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	.L119
	movq	40(%rsp), %rax
	jmp	.L115
	.p2align 4,,10
.L119:
	movl	%eax, %esi
	jmp	.L113
	.p2align 4,,10
.L116:
	movl	$-1, %esi
	jmp	.L113
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
	jne	.L125
	testq	%rcx, %rcx
	je	.L125
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L136
.L121:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L136:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L121
	cmpb	$0, 24(%rsi)
	je	.L126
	movsbl	24(%rdi), %ecx
	movq	.refptr.number_zero(%rip), %rax
	jle	.L124
	testb	%cl, %cl
	jne	.L137
.L123:
	movq	%rax, 0(%rbp)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L126:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L123
	.p2align 4,,10
.L124:
	testb	%cl, %cl
	je	.L123
	movq	16(%rsi), %rdx
	negl	%ecx
	movsbl	%cl, %ecx
.L135:
	movq	16(%rdi), %r8
	leaq	40(%rsp), %r9
	call	MultiplyU_X_X_Imp
	testl	%eax, %eax
	jne	.L130
	movq	40(%rsp), %rax
	jmp	.L123
	.p2align 4,,10
.L137:
	movq	16(%rsi), %rdx
	jmp	.L135
	.p2align 4,,10
.L125:
	movl	$-1, %ebx
	jmp	.L121
	.p2align 4,,10
.L130:
	movl	%eax, %ebx
	jmp	.L121
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
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
