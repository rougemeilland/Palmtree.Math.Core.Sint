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
	js	.L12
	movl	%eax, %r9d
	andl	$-5, %r9d
	testb	%dl, %dl
	movb	%r9b, (%rcx)
	je	.L5
	orl	$2, %r9d
	andl	$-7, %eax
	testb	$2, %r8b
	cmovne	%r9d, %eax
	movb	%al, (%rcx)
	movl	%r8d, %eax
	shrb	$3, %al
	andl	$1, %eax
.L9:
	sall	$4, %eax
	andl	$1, %r8d
	movl	%eax, %edx
	movzbl	(%rcx), %eax
	andl	$-18, %eax
	orl	%edx, %eax
	orl	%r8d, %eax
	movb	%al, (%rcx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L12:
	movl	%eax, %edx
	andl	$-5, %eax
	orl	$4, %edx
	testb	$2, %r8b
	cmovne	%edx, %eax
	movb	%al, (%rcx)
.L5:
	andb	$-3, (%rcx)
	xorl	%eax, %eax
	jmp	.L9
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
	jne	.L15
	orb	$1, 28(%rcx)
.L15:
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
	je	.L19
	movsbl	%bl, %edx
	movq	%rsi, %r8
	movq	%rax, %rcx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L17
	andb	$-2, 28(%r10)
	movq	%r10, (%rdi)
.L17:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L19:
	movl	$-5, %eax
	jmp	.L17
	.seh_endproc
	.p2align 4,,15
	.globl	DetatchNumber
	.def	DetatchNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DetatchNumber
DetatchNumber:
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L20
	testb	$1, 28(%rcx)
	je	.L20
	jmp	DetatchNumber.part.1
	.p2align 4,,10
.L20:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	DeallocateNumber
	.def	DeallocateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DeallocateNumber
DeallocateNumber:
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L28
	testb	$1, 28(%rcx)
	jne	.L28
	jmp	DeallocateNumber.part.2
	.p2align 4,,10
.L28:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	CheckNumber
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckNumber
CheckNumber:
	.seh_endprologue
	cmpl	$1231244656, 4(%rcx)
	jne	.L35
	cmpl	$1951287667, 8(%rcx)
	movl	$0, %edx
	movl	$-257, %eax
	cmove	%edx, %eax
	ret
	.p2align 4,,10
.L35:
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
	jne	.L44
	movzbl	(%rcx), %eax
	testb	$1, %al
	jne	.L45
	testb	$2, %al
	jne	.L46
	testb	$4, %al
	jne	.L47
	movq	.refptr.ep_uint(%rip), %rdi
	leaq	48(%rsp), %rdx
	movq	16(%rcx), %rcx
	call	*64(%rdi)
	testl	%eax, %eax
	jne	.L37
	movsbl	24(%rbx), %edx
	leaq	56(%rsp), %rcx
	movq	48(%rsp), %r8
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L48
	movq	56(%rsp), %rdx
	movq	%rdx, (%rsi)
	jmp	.L37
	.p2align 4,,10
.L45:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L37:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L44:
	xorl	%eax, %eax
	movq	%rcx, (%rsi)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L47:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	jmp	.L37
	.p2align 4,,10
.L46:
	leaq	number_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L48:
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	call	*32(%rdi)
	movl	44(%rsp), %eax
	jmp	.L37
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
	jne	.L55
	testb	$2, %al
	jne	.L56
	testb	$4, %al
	jne	.L57
	movq	.refptr.ep_uint(%rip), %rdi
	leaq	48(%rsp), %rdx
	movq	16(%rcx), %rcx
	call	*64(%rdi)
	testl	%eax, %eax
	jne	.L49
	movzbl	24(%rbx), %edx
	leaq	56(%rsp), %rcx
	movq	48(%rsp), %r8
	negl	%edx
	movsbl	%dl, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L58
	movq	56(%rsp), %rdx
	movq	%rdx, (%rsi)
	jmp	.L49
	.p2align 4,,10
.L56:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L49:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L55:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L57:
	leaq	number_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L58:
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	call	*32(%rdi)
	movl	44(%rsp), %eax
	jmp	.L49
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GetConstantValue_I
	.def	PMC_GetConstantValue_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GetConstantValue_I
PMC_GetConstantValue_I:
	.seh_endprologue
	cmpl	$2, %ecx
	je	.L60
	cmpl	$3, %ecx
	je	.L61
	cmpl	$1, %ecx
	movl	$-1, %eax
	je	.L64
	ret
	.p2align 4,,10
.L64:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L61:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L60:
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
	je	.L65
	testb	$1, 28(%rcx)
	jne	.L65
	jmp	DeallocateNumber.part.2
	.p2align 4,,10
.L65:
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
	jne	.L94
	leaq	uint_number_one(%rip), %rdx
	movl	$2, %ecx
	call	*40(%rbx)
	testl	%eax, %eax
	jne	.L94
	movq	uint_number_zero(%rip), %r8
	leaq	number_zero(%rip), %r10
	xorl	%edx, %edx
	leaq	number_one(%rip), %rsi
	movq	%r10, %rcx
	leaq	number_minus_one(%rip), %rbx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L71
	movq	uint_number_one(%rip), %r8
	leaq	number_one(%rip), %rsi
	movl	$1, %edx
	orb	$1, 28+number_zero(%rip)
	movq	%rsi, %rcx
	leaq	number_minus_one(%rip), %rbx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L71
	movq	uint_number_one(%rip), %r8
	leaq	number_minus_one(%rip), %rbx
	movl	$-1, %edx
	orb	$1, 28+number_one(%rip)
	movq	%rbx, %rcx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L71
	orb	$1, 28+number_minus_one(%rip)
.L70:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L94:
	leaq	number_zero(%rip), %r10
	leaq	number_one(%rip), %rsi
	leaq	number_minus_one(%rip), %rbx
.L71:
	testb	$1, 28+number_zero(%rip)
	je	.L74
	movq	%r10, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
.L74:
	testb	$1, 28+number_one(%rip)
	je	.L73
	movq	%rsi, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
.L73:
	testb	$1, 28+number_minus_one(%rip)
	je	.L70
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
	je	.L96
	call	*__imp_HeapDestroy(%rip)
	movq	$0, hLocalHeap(%rip)
.L96:
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
