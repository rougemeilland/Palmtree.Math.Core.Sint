	.file	"pmc_memory.c"
	.text
	.p2align 4,,15
	.def	InitializeNumber;	.scl	3;	.type	32;	.endef
	.seh_proc	InitializeNumber
InitializeNumber:
	.seh_endprologue
	movabsq	$5288155530894770176, %rax
	movq	%rax, (%rcx)
	movq	$0, 24(%rcx)
	movq	$1951287667, 8(%rcx)
	movb	%dl, 24(%rcx)
	movq	%r8, 16(%rcx)
	movzbl	(%r8), %r8d
	leal	(%r8,%r8), %eax
	andl	$8, %eax
	movl	%eax, %r9d
	movzbl	(%rcx), %eax
	andl	$-9, %eax
	orl	%r9d, %eax
	testb	%dl, %dl
	movb	%al, (%rcx)
	js	.L24
	movl	%eax, %r9d
	andl	$-5, %r9d
	testb	%dl, %dl
	movb	%r9b, (%rcx)
	je	.L5
	orl	$2, %r9d
	andl	$-7, %eax
	testb	$2, %r8b
	cmovne	%r9d, %eax
	movl	%r8d, %edx
	andl	$1, %edx
	andl	$8, %r8d
	movb	%al, (%rcx)
	je	.L25
	orl	$16, %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, (%rcx)
.L10:
	testb	$1, (%rcx)
	jne	.L15
.L8:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L25:
	andl	$-18, %eax
	orl	%edx, %eax
	movb	%al, (%rcx)
	jmp	.L10
.L5:
	andl	$1, %r8d
	andl	$-24, %eax
	orl	%r8d, %eax
	testb	$1, %al
	movb	%al, (%rcx)
	jne	.L8
.L15:
	movl	$-256, %eax
	ret
	.p2align 4,,10
.L24:
	movl	%eax, %edx
	andl	$-5, %eax
	orl	$4, %edx
	testb	$2, %r8b
	cmovne	%edx, %eax
	andl	$1, %r8d
	andl	$-20, %eax
	orl	%r8d, %eax
	movb	%al, (%rcx)
	jmp	.L10
	.seh_endproc
	.p2align 4,,15
	.def	DetatchNumber.part.1;	.scl	3;	.type	32;	.endef
	.seh_proc	DetatchNumber.part.1
DetatchNumber.part.1:
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rax
	movq	16(%rcx), %rcx
	rex.W jmp	*32(%rax)
	.seh_endproc
	.p2align 4,,15
	.def	DeallocateNumber.part.2;	.scl	3;	.type	32;	.endef
	.seh_proc	DeallocateNumber.part.2
DeallocateNumber.part.2:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rcx, %rbx
	movq	16(%rcx), %rcx
	call	*32(%rax)
	movq	hLocalHeap(%rip), %rcx
	movq	%rbx, %r8
	xorl	%edx, %edx
	movabsq	$-3689348814741910324, %rax
	movq	%rax, (%rbx)
	movq	%rax, 8(%rbx)
	movq	%rax, 16(%rbx)
	movq	%rax, 24(%rbx)
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp	*__imp_HeapFree(%rip)
	.seh_endproc
	.p2align 4,,15
	.globl	AttatchNumber
	.def	AttatchNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	AttatchNumber
AttatchNumber:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movsbl	%dl, %edx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L28
	orb	$1, 28(%rcx)
.L28:
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	AllocateNumber
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	AllocateNumber
AllocateNumber:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movl	%edx, %ebx
	movq	%r8, %rsi
	movq	hLocalHeap(%rip), %rcx
	movl	$32, %r8d
	movl	$8, %edx
	call	*__imp_HeapAlloc(%rip)
	testq	%rax, %rax
	movq	%rax, %r10
	je	.L32
	movsbl	%bl, %edx
	movq	%rsi, %r8
	movq	%rax, %rcx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L30
	andb	$-2, 28(%r10)
	movq	%r10, (%rdi)
.L30:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L32:
	movl	$-5, %eax
	jmp	.L30
	.seh_endproc
	.p2align 4,,15
	.globl	DetatchNumber
	.def	DetatchNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DetatchNumber
DetatchNumber:
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L33
	testb	$1, 28(%rcx)
	je	.L33
	jmp	DetatchNumber.part.1
	.p2align 4,,10
.L33:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	DeallocateNumber
	.def	DeallocateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DeallocateNumber
DeallocateNumber:
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L41
	testb	$1, 28(%rcx)
	jne	.L41
	jmp	DeallocateNumber.part.2
	.p2align 4,,10
.L41:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	CheckNumber
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckNumber
CheckNumber:
	.seh_endprologue
	cmpl	$1231244656, 4(%rcx)
	jne	.L48
	cmpl	$1951287667, 8(%rcx)
	movl	$0, %edx
	movl	$-257, %eax
	cmove	%edx, %eax
	ret
	.p2align 4,,10
.L48:
	movl	$-257, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	DuplicateNumber
	.def	DuplicateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DuplicateNumber
DuplicateNumber:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	testb	$1, 28(%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	jne	.L57
	movzbl	(%rcx), %eax
	testb	$1, %al
	jne	.L58
	testb	$2, %al
	jne	.L59
	testb	$4, %al
	jne	.L60
	movq	.refptr.ep_uint(%rip), %rdi
	leaq	48(%rsp), %rdx
	movq	16(%rcx), %rcx
	call	*80(%rdi)
	testl	%eax, %eax
	jne	.L50
	movsbl	24(%rbx), %edx
	leaq	56(%rsp), %rcx
	movq	48(%rsp), %r8
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L61
	movq	56(%rsp), %rdx
	movq	%rdx, (%rsi)
	jmp	.L50
	.p2align 4,,10
.L58:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L50:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L57:
	xorl	%eax, %eax
	movq	%rcx, (%rsi)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L60:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	jmp	.L50
	.p2align 4,,10
.L59:
	leaq	number_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L61:
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	call	*32(%rdi)
	movl	44(%rsp), %eax
	jmp	.L50
	.seh_endproc
	.p2align 4,,15
	.globl	Negate_Imp
	.def	Negate_Imp;	.scl	2;	.type	32;	.endef
	.seh_proc	Negate_Imp
Negate_Imp:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movzbl	(%rcx), %eax
	testb	$1, %al
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	jne	.L68
	testb	$2, %al
	jne	.L69
	testb	$4, %al
	jne	.L70
	movq	.refptr.ep_uint(%rip), %rdi
	leaq	48(%rsp), %rdx
	movq	16(%rcx), %rcx
	call	*80(%rdi)
	testl	%eax, %eax
	jne	.L62
	movzbl	24(%rbx), %edx
	leaq	56(%rsp), %rcx
	movq	48(%rsp), %r8
	negl	%edx
	movsbl	%dl, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L71
	movq	56(%rsp), %rdx
	movq	%rdx, (%rsi)
	jmp	.L62
	.p2align 4,,10
.L69:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L62:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L68:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L70:
	leaq	number_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L71:
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	call	*32(%rdi)
	movl	44(%rsp), %eax
	jmp	.L62
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GetConstantValue_I
	.def	PMC_GetConstantValue_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GetConstantValue_I
PMC_GetConstantValue_I:
	.seh_endprologue
	cmpl	$2, %ecx
	je	.L73
	cmpl	$3, %ecx
	je	.L74
	cmpl	$1, %ecx
	movl	$-1, %eax
	je	.L77
	ret
	.p2align 4,,10
.L77:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L74:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L73:
	leaq	number_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Dispose
	.def	PMC_Dispose;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Dispose
PMC_Dispose:
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L78
	testb	$1, 28(%rcx)
	jne	.L78
	jmp	DeallocateNumber.part.2
	.p2align 4,,10
.L78:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	Initialize_Memory
	.def	Initialize_Memory;	.scl	2;	.type	32;	.endef
	.seh_proc	Initialize_Memory
Initialize_Memory:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rbx
	leaq	uint_number_zero(%rip), %rdx
	movl	$1, %ecx
	call	*40(%rbx)
	testl	%eax, %eax
	jne	.L107
	leaq	uint_number_one(%rip), %rdx
	movl	$2, %ecx
	call	*40(%rbx)
	testl	%eax, %eax
	jne	.L107
	movq	uint_number_zero(%rip), %r8
	leaq	number_zero(%rip), %r10
	xorl	%edx, %edx
	leaq	number_one(%rip), %rsi
	movq	%r10, %rcx
	leaq	number_minus_one(%rip), %rbx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L84
	movq	uint_number_one(%rip), %r8
	leaq	number_one(%rip), %rsi
	movl	$1, %edx
	orb	$1, 28+number_zero(%rip)
	movq	%rsi, %rcx
	leaq	number_minus_one(%rip), %rbx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L84
	movq	uint_number_one(%rip), %r8
	leaq	number_minus_one(%rip), %rbx
	movl	$-1, %edx
	orb	$1, 28+number_one(%rip)
	movq	%rbx, %rcx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L84
	orb	$1, 28+number_minus_one(%rip)
.L83:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L107:
	leaq	number_zero(%rip), %r10
	leaq	number_one(%rip), %rsi
	leaq	number_minus_one(%rip), %rbx
.L84:
	testb	$1, 28+number_zero(%rip)
	je	.L87
	movq	%r10, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
.L87:
	testb	$1, 28+number_one(%rip)
	je	.L86
	movq	%rsi, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
.L86:
	testb	$1, 28+number_minus_one(%rip)
	je	.L83
	movq	%rbx, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	AllocateHeapArea
	.def	AllocateHeapArea;	.scl	2;	.type	32;	.endef
	.seh_proc	AllocateHeapArea
AllocateHeapArea:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$4096, %edx
	call	*__imp_HeapCreate(%rip)
	testq	%rax, %rax
	movq	%rax, hLocalHeap(%rip)
	setne	%al
	movzbl	%al, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	DeallocateHeapArea
	.def	DeallocateHeapArea;	.scl	2;	.type	32;	.endef
	.seh_proc	DeallocateHeapArea
DeallocateHeapArea:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	hLocalHeap(%rip), %rcx
	testq	%rcx, %rcx
	je	.L109
	call	*__imp_HeapDestroy(%rip)
	movq	$0, hLocalHeap(%rip)
.L109:
	addq	$40, %rsp
	ret
	.seh_endproc
	.comm	number_minus_one, 32, 5
	.comm	number_one, 32, 5
	.comm	number_zero, 32, 5
	.comm	hLocalHeap, 8, 3
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
