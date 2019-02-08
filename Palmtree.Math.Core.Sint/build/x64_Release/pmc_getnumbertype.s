	.file	"pmc_getnumbertype.c"
	.text
	.p2align 4,,15
	.globl	PMC_GetNumberType_X
	.def	PMC_GetNumberType_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GetNumberType_X
PMC_GetNumberType_X:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	je	.L7
	testq	%rdx, %rdx
	je	.L7
	call	CheckNumber
	testl	%eax, %eax
	jne	.L1
	movzbl	20(%rbx), %r8d
	movl	%r8d, %ecx
	shrb	%cl
	movl	%ecx, %r9d
	andl	$1, %r9d
	movl	%r9d, %ecx
	orl	$2, %ecx
	testb	$4, %r8b
	cmove	%r9d, %ecx
	movl	%ecx, %edx
	orl	$4, %edx
	testb	$8, %r8b
	cmovne	%edx, %ecx
	movl	%ecx, %edx
	orl	$8, %edx
	testb	$16, %r8b
	cmovne	%edx, %ecx
	movl	%ecx, %edx
	orl	$16, %edx
	andl	$32, %r8d
	cmovne	%edx, %ecx
	movl	%ecx, (%rsi)
.L1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L7:
	movl	$-1, %eax
	jmp	.L1
	.seh_endproc
	.p2align 4,,15
	.globl	Initialize_GetPropertyValue
	.def	Initialize_GetPropertyValue;	.scl	2;	.type	32;	.endef
	.seh_proc	Initialize_GetPropertyValue
Initialize_GetPropertyValue:
	.seh_endprologue
	xorl	%eax, %eax
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
