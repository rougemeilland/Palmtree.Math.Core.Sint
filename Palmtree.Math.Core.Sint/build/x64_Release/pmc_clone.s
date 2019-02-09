	.file	"pmc_clone.c"
	.text
	.p2align 4,,15
	.globl	PMC_Clone_X
	.def	PMC_Clone_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Clone_X
PMC_Clone_X:
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
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	je	.L4
	testq	%rcx, %rcx
	je	.L4
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L1
	testb	$1, (%rbx)
	movq	.refptr.number_zero(%rip), %rax
	je	.L8
.L3:
	movq	%rax, (%rdi)
.L1:
	movl	%esi, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L8:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	jne	.L6
	movq	40(%rsp), %rax
	jmp	.L3
	.p2align 4,,10
.L6:
	movl	%eax, %esi
	jmp	.L1
	.p2align 4,,10
.L4:
	movl	$-1, %esi
	jmp	.L1
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.def	DuplicateNumber;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.number_zero, "dr"
	.globl	.refptr.number_zero
	.linkonce	discard
.refptr.number_zero:
	.quad	number_zero
