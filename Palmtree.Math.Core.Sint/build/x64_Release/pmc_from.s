	.file	"pmc_from.c"
	.text
	.p2align 4,,15
	.def	From_I_Imp.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	From_I_Imp.part.0
From_I_Imp.part.0:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rax
	movl	%ecx, %ebx
	movq	%r8, %rsi
	movl	%edx, %ecx
	leaq	40(%rsp), %rdx
	call	*16(%rax)
	testl	%eax, %eax
	jne	.L1
	movq	40(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rsi, %rcx
	call	AllocateNumber
.L1:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	From_L_Imp.part.1;	.scl	3;	.type	32;	.endef
	.seh_proc	From_L_Imp.part.1
From_L_Imp.part.1:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rax
	movl	%ecx, %ebx
	movq	%r8, %rsi
	movq	%rdx, %rcx
	leaq	40(%rsp), %rdx
	call	*24(%rax)
	testl	%eax, %eax
	jne	.L5
	movq	40(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rsi, %rcx
	call	AllocateNumber
.L5:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	From_I_Imp
	.def	From_I_Imp;	.scl	2;	.type	32;	.endef
	.seh_proc	From_I_Imp
From_I_Imp:
	.seh_endprologue
	testb	%cl, %cl
	je	.L12
	movsbl	%cl, %ecx
	jmp	From_I_Imp.part.0
	.p2align 4,,10
.L12:
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, (%r8)
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	From_L_Imp
	.def	From_L_Imp;	.scl	2;	.type	32;	.endef
	.seh_proc	From_L_Imp
From_L_Imp:
	.seh_endprologue
	testb	%cl, %cl
	je	.L17
	movsbl	%cl, %ecx
	jmp	From_L_Imp.part.1
	.p2align 4,,10
.L17:
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, (%r8)
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_From_I
	.def	PMC_From_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_From_I
PMC_From_I:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testl	%ecx, %ecx
	movq	%rdx, %rbx
	jne	.L19
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L18:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L19:
	jle	.L21
	leaq	40(%rsp), %r8
	movl	%ecx, %edx
	movl	$1, %ecx
	call	From_I_Imp.part.0
.L22:
	testl	%eax, %eax
	jne	.L18
	movq	40(%rsp), %rdx
	movq	%rdx, (%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L21:
	leaq	40(%rsp), %r8
	movl	%ecx, %edx
	movl	$-1, %ecx
	negl	%edx
	call	From_I_Imp.part.0
	jmp	.L22
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_From_L
	.def	PMC_From_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_From_L
PMC_From_L:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rdx, %rbx
	jne	.L25
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L24:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L25:
	jle	.L27
	leaq	40(%rsp), %r8
	movq	%rcx, %rdx
	movl	$1, %ecx
	call	From_L_Imp.part.1
.L28:
	testl	%eax, %eax
	jne	.L24
	movq	40(%rsp), %rdx
	movq	%rdx, (%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L27:
	leaq	40(%rsp), %r8
	movq	%rcx, %rdx
	movl	$-1, %ecx
	negq	%rdx
	call	From_L_Imp.part.1
	jmp	.L28
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
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
