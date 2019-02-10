	.file	"pmc_bytes.c"
	.text
	.p2align 4,,15
	.globl	PMC_FromByteArray
	.def	PMC_FromByteArray;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_FromByteArray
PMC_FromByteArray:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	%r8, %rbx
	testq	%rdx, %rdx
	sete	%r8b
	testq	%rbx, %rbx
	sete	%al
	orb	%al, %r8b
	jne	.L4
	testq	%rcx, %rcx
	je	.L4
	movq	.refptr.ep_uint(%rip), %rsi
	leaq	64(%rsp), %r9
	leaq	63(%rsp), %r8
	call	*536(%rsi)
	testl	%eax, %eax
	je	.L6
.L1:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L6:
	movsbl	63(%rsp), %edx
	leaq	72(%rsp), %rcx
	movq	64(%rsp), %r8
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L7
	movq	72(%rsp), %rdx
	movq	%rdx, (%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L7:
	movl	%eax, 44(%rsp)
	movq	64(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4:
	movl	$-1, %eax
	jmp	.L1
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_ToByteArray
	.def	PMC_ToByteArray;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_ToByteArray
PMC_ToByteArray:
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
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbp
	je	.L10
	call	CheckNumber
	testl	%eax, %eax
	jne	.L8
	movq	16(%rbx), %rdx
	movq	%rbp, 32(%rsp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	.refptr.ep_uint(%rip), %rax
	movsbl	24(%rbx), %ecx
	call	*544(%rax)
.L8:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L10:
	movl	$-1, %eax
	jmp	.L8
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
