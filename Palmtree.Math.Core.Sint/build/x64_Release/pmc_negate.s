	.file	"pmc_negate.c"
	.text
	.p2align 4,,15
	.globl	PMC_Negate_X
	.def	PMC_Negate_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Negate_X
PMC_Negate_X:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	je	.L3
	testq	%rcx, %rcx
	je	.L3
	call	CheckNumber
	testl	%eax, %eax
	je	.L5
.L1:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	jne	.L1
	movq	40(%rsp), %rdx
	movq	%rdx, (%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3:
	movl	$-1, %eax
	jmp	.L1
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.def	Negate_Imp;	.scl	2;	.type	32;	.endef
