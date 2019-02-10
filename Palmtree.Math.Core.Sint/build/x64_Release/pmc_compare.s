	.file	"pmc_compare.c"
	.text
	.p2align 4,,15
	.globl	PMC_Compare_I_X
	.def	PMC_Compare_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_I_X
PMC_Compare_I_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%r8, %r8
	movl	%ecx, %edi
	movq	%rdx, %rbx
	movq	%r8, %rsi
	je	.L11
	testq	%rdx, %rdx
	je	.L11
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L1
	testl	%edi, %edi
	movsbl	24(%rbx), %ecx
	jg	.L16
	je	.L17
	movl	%edi, %edx
	movl	$-2147483648, %r8d
	negl	%edx
	cmpl	$-2147483648, %edi
	cmove	%r8d, %edx
	testb	%cl, %cl
	js	.L18
	movl	$-1, (%rsi)
.L1:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L16:
	testb	%cl, %cl
	jle	.L19
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movl	%edi, %edx
	movq	16(%rbx), %rcx
	call	*416(%rax)
	testl	%eax, %eax
	jne	.L1
	movl	44(%rsp), %edx
	negl	%edx
	movl	%edx, (%rsi)
	jmp	.L1
	.p2align 4,,10
.L17:
	negl	%ecx
	movl	%ecx, (%rsi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L19:
	movl	$1, (%rsi)
	jmp	.L1
	.p2align 4,,10
.L18:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	16(%rbx), %rcx
	call	*416(%rax)
	testl	%eax, %eax
	jne	.L1
	movl	44(%rsp), %edx
	movl	%edx, (%rsi)
	jmp	.L1
	.p2align 4,,10
.L11:
	movl	$-1, %eax
	jmp	.L1
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Compare_L_X
	.def	PMC_Compare_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_L_X
PMC_Compare_L_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movq	%r8, %rsi
	je	.L30
	testq	%rdx, %rdx
	je	.L30
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L20
	testq	%rdi, %rdi
	movsbl	24(%rbx), %r8d
	jg	.L34
	je	.L35
	movabsq	$-9223372036854775808, %rcx
	movq	%rdi, %rdx
	negq	%rdx
	cmpq	%rcx, %rdi
	cmove	%rdi, %rdx
	testb	%r8b, %r8b
	js	.L36
	movl	$-1, (%rsi)
.L20:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L34:
	testb	%r8b, %r8b
	jle	.L37
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	%rdi, %rdx
	movq	16(%rbx), %rcx
	call	*424(%rax)
	testl	%eax, %eax
	jne	.L20
	movl	44(%rsp), %edx
	negl	%edx
	movl	%edx, (%rsi)
	jmp	.L20
	.p2align 4,,10
.L35:
	negl	%r8d
	movl	%r8d, (%rsi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L37:
	movl	$1, (%rsi)
	jmp	.L20
	.p2align 4,,10
.L36:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	16(%rbx), %rcx
	call	*424(%rax)
	testl	%eax, %eax
	jne	.L20
	movl	44(%rsp), %edx
	movl	%edx, (%rsi)
	jmp	.L20
	.p2align 4,,10
.L30:
	movl	$-1, %eax
	jmp	.L20
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Compare_UX_X
	.def	PMC_Compare_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_UX_X
PMC_Compare_UX_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movq	%r8, %rsi
	je	.L43
	testq	%r8, %r8
	je	.L43
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L38
	testb	$1, (%rdi)
	movsbl	24(%rbx), %edx
	je	.L40
	negl	%edx
	movl	%edx, (%rsi)
.L38:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L40:
	testb	%dl, %dl
	jle	.L44
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	%rdi, %rcx
	movq	16(%rbx), %rdx
	call	*432(%rax)
	testl	%eax, %eax
	jne	.L38
	movl	44(%rsp), %edx
	movl	%edx, (%rsi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L44:
	movl	$1, (%rsi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L43:
	movl	$-1, %eax
	jmp	.L38
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Compare_X_I
	.def	PMC_Compare_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_I
PMC_Compare_X_I:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbx
	movl	%edx, %edi
	movq	%r8, %rsi
	je	.L57
	testq	%rcx, %rcx
	je	.L57
	call	CheckNumber
	testl	%eax, %eax
	jne	.L45
	testl	%edi, %edi
	movzbl	24(%rbx), %edx
	jg	.L64
	jne	.L51
	testb	%dl, %dl
	je	.L59
	jle	.L50
.L52:
	movl	$1, (%rsi)
.L45:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L64:
	testb	%dl, %dl
	je	.L58
	jle	.L50
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movl	%edi, %edx
	movq	16(%rbx), %rcx
	call	*416(%rax)
	testl	%eax, %eax
	jne	.L45
	movl	44(%rsp), %edx
	movl	%edx, (%rsi)
	jmp	.L45
	.p2align 4,,10
.L51:
	cmpl	$-2147483648, %edi
	je	.L65
	testb	%dl, %dl
	je	.L61
	jg	.L52
	negl	%edi
	jmp	.L62
	.p2align 4,,10
.L58:
	movl	$-1, %edx
	movl	%edx, (%rsi)
.L67:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L65:
	testb	%dl, %dl
	jne	.L66
.L61:
	movl	$1, %edx
	movl	%edx, (%rsi)
	jmp	.L67
	.p2align 4,,10
.L59:
	xorl	%edx, %edx
	movl	%edx, (%rsi)
	jmp	.L67
	.p2align 4,,10
.L50:
	movl	$-1, (%rsi)
	jmp	.L45
	.p2align 4,,10
.L66:
	jg	.L52
.L62:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movl	%edi, %edx
	movq	16(%rbx), %rcx
	call	*416(%rax)
	testl	%eax, %eax
	jne	.L45
	movl	44(%rsp), %edx
	negl	%edx
	movl	%edx, (%rsi)
	jmp	.L67
	.p2align 4,,10
.L57:
	movl	$-1, %eax
	jmp	.L45
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Compare_X_L
	.def	PMC_Compare_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_L
PMC_Compare_X_L:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	je	.L80
	testq	%rcx, %rcx
	je	.L80
	call	CheckNumber
	testl	%eax, %eax
	jne	.L68
	testq	%rdi, %rdi
	movzbl	24(%rbx), %edx
	jg	.L87
	jne	.L74
	testb	%dl, %dl
	je	.L82
	jle	.L73
.L75:
	movl	$1, (%rsi)
.L68:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L87:
	testb	%dl, %dl
	je	.L81
	jle	.L73
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	%rdi, %rdx
	movq	16(%rbx), %rcx
	call	*424(%rax)
	testl	%eax, %eax
	jne	.L68
	movl	44(%rsp), %edx
	movl	%edx, (%rsi)
	jmp	.L68
	.p2align 4,,10
.L74:
	movabsq	$-9223372036854775808, %rcx
	cmpq	%rcx, %rdi
	je	.L88
	testb	%dl, %dl
	je	.L84
	jg	.L75
	negq	%rdi
	jmp	.L85
	.p2align 4,,10
.L81:
	movl	$-1, %edx
	movl	%edx, (%rsi)
.L90:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L88:
	testb	%dl, %dl
	jne	.L89
.L84:
	movl	$1, %edx
	movl	%edx, (%rsi)
	jmp	.L90
	.p2align 4,,10
.L82:
	xorl	%edx, %edx
	movl	%edx, (%rsi)
	jmp	.L90
	.p2align 4,,10
.L73:
	movl	$-1, (%rsi)
	jmp	.L68
	.p2align 4,,10
.L89:
	jg	.L75
.L85:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	%rdi, %rdx
	movq	16(%rbx), %rcx
	call	*424(%rax)
	testl	%eax, %eax
	jne	.L68
	movl	44(%rsp), %edx
	negl	%edx
	movl	%edx, (%rsi)
	jmp	.L90
	.p2align 4,,10
.L80:
	movl	$-1, %eax
	jmp	.L68
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Compare_X_UX
	.def	PMC_Compare_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_UX
PMC_Compare_X_UX:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rbx
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rsi
	sete	%al
	orb	%al, %dl
	jne	.L97
	testq	%rcx, %rcx
	je	.L97
	call	CheckNumber
	testl	%eax, %eax
	jne	.L91
	cmpb	$0, 24(%rbx)
	jne	.L93
	testb	$1, (%rdi)
	je	.L94
	movl	$0, (%rsi)
.L91:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L93:
	jle	.L94
	testb	$1, (%rdi)
	je	.L95
	movl	$1, (%rsi)
	jmp	.L91
	.p2align 4,,10
.L94:
	movl	$-1, (%rsi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L95:
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	%rdi, %rdx
	movq	16(%rbx), %rcx
	call	*432(%rax)
	testl	%eax, %eax
	jne	.L91
	movl	44(%rsp), %edx
	movl	%edx, (%rsi)
	jmp	.L91
	.p2align 4,,10
.L97:
	movl	$-1, %eax
	jmp	.L91
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Compare_X_X
	.def	PMC_Compare_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_X
PMC_Compare_X_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rsi
	testq	%r8, %r8
	movq	%rcx, %rbx
	sete	%dl
	testq	%rsi, %rsi
	movq	%r8, %rdi
	sete	%al
	orb	%al, %dl
	jne	.L109
	testq	%rcx, %rcx
	je	.L109
	call	CheckNumber
	testl	%eax, %eax
	je	.L111
.L101:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L111:
	movq	%rsi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L101
	cmpb	$0, 24(%rbx)
	movsbl	24(%rsi), %edx
	je	.L110
	jle	.L104
	testb	%dl, %dl
	jle	.L112
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	16(%rsi), %rdx
	movq	16(%rbx), %rcx
	call	*432(%rax)
	testl	%eax, %eax
	jne	.L101
	movl	44(%rsp), %edx
	movl	%edx, (%rdi)
	jmp	.L101
	.p2align 4,,10
.L104:
	testb	%dl, %dl
	jns	.L113
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %r8
	movq	16(%rsi), %rdx
	movq	16(%rbx), %rcx
	call	*432(%rax)
	testl	%eax, %eax
	jne	.L101
	movl	44(%rsp), %edx
.L110:
	negl	%edx
	movl	%edx, (%rdi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L113:
	movl	$-1, (%rdi)
	jmp	.L101
	.p2align 4,,10
.L112:
	movl	$1, (%rdi)
	jmp	.L101
	.p2align 4,,10
.L109:
	movl	$-1, %eax
	jmp	.L101
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
