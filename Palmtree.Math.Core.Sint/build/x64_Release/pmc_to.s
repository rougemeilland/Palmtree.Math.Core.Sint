	.file	"pmc_to.c"
	.text
	.p2align 4,,15
	.globl	PMC_To_X_I
	.def	PMC_To_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_To_X_I
PMC_To_X_I:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	call	CheckNumber
	testl	%eax, %eax
	jne	.L1
	movq	.refptr.ep_uint(%rip), %rax
	leaq	44(%rsp), %rdx
	movzbl	16(%rbx), %edi
	movq	8(%rbx), %rcx
	call	*96(%rax)
	testl	%eax, %eax
	jne	.L1
	testb	%dil, %dil
	jne	.L3
	movl	$0, (%rsi)
.L1:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3:
	movl	44(%rsp), %edx
	jle	.L4
	testl	%edx, %edx
	js	.L6
	movl	%edx, (%rsi)
.L9:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4:
	cmpl	$-2147483648, %edx
	ja	.L6
	negl	%edx
	movl	%edx, (%rsi)
	jmp	.L9
.L6:
	movl	$-2, %eax
	jmp	.L1
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_To_X_L
	.def	PMC_To_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_To_X_L
PMC_To_X_L:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	call	CheckNumber
	testl	%eax, %eax
	jne	.L10
	movq	.refptr.ep_uint(%rip), %rax
	leaq	40(%rsp), %rdx
	movzbl	16(%rbx), %edi
	movq	8(%rbx), %rcx
	call	*104(%rax)
	testl	%eax, %eax
	jne	.L10
	testb	%dil, %dil
	jne	.L12
	movq	$0, (%rsi)
.L10:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L12:
	movq	40(%rsp), %rdx
	jle	.L13
	testq	%rdx, %rdx
	js	.L15
.L16:
	movq	%rdx, (%rsi)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L13:
	movabsq	$-9223372036854775808, %rcx
	cmpq	%rcx, %rdx
	ja	.L15
	negq	%rdx
	jmp	.L16
.L15:
	movl	$-2, %eax
	jmp	.L10
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
