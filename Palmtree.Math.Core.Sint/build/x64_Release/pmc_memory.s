	.file	"pmc_memory.c"
	.text
	.p2align 4,,15
	.def	InitializeNumber;	.scl	3;	.type	32;	.endef
	.seh_proc	InitializeNumber
InitializeNumber:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movabsq	$8380716716084383088, %rax
	movq	%rax, (%rcx)
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rcx, %rbx
	movl	%edx, %esi
	movq	$0, 16(%rcx)
	movb	%dl, 16(%rbx)
	leaq	44(%rsp), %rdx
	movq	%r8, 8(%rcx)
	movq	%r8, %rcx
	call	*40(%rax)
	testl	%eax, %eax
	jne	.L1
	movl	44(%rsp), %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	andl	$1, %edx
	sall	$4, %edx
	movl	%edx, %r8d
	movzbl	20(%rbx), %edx
	andl	$-17, %edx
	orl	%r8d, %edx
	testb	%sil, %sil
	movb	%dl, 20(%rbx)
	movl	%edx, %r8d
	js	.L24
	andl	$-9, %r8d
	testb	%sil, %sil
	movb	%r8b, 20(%rbx)
	je	.L6
	orl	$4, %r8d
	andl	$-13, %edx
	testb	$2, %cl
	cmovne	%r8d, %edx
	movl	%ecx, %r8d
	andl	$1, %r8d
	andl	$16, %ecx
	movb	%dl, 20(%rbx)
	je	.L25
	orl	$32, %edx
	addl	%r8d, %r8d
	andl	$-3, %edx
	orl	%r8d, %edx
	movb	%dl, 20(%rbx)
	testb	$2, 20(%rbx)
	jne	.L15
.L1:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L24:
	orl	$8, %r8d
	andl	$-9, %edx
	testb	$2, %cl
	cmovne	%r8d, %edx
	andl	$1, %ecx
	addl	%ecx, %ecx
	andl	$-39, %edx
	orl	%ecx, %edx
	movb	%dl, 20(%rbx)
.L10:
	testb	$2, 20(%rbx)
	je	.L1
.L15:
	movl	$-256, %eax
	jmp	.L1
	.p2align 4,,10
.L6:
	andl	$1, %ecx
	andl	$-47, %edx
	addl	%ecx, %ecx
	orl	%ecx, %edx
	movb	%dl, 20(%rbx)
	andl	$2, %edx
	je	.L15
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L25:
	addl	%r8d, %r8d
	andl	$-35, %edx
	orl	%r8d, %edx
	movb	%dl, 20(%rbx)
	jmp	.L10
	.seh_endproc
	.p2align 4,,15
	.def	DetatchNumber.part.1;	.scl	3;	.type	32;	.endef
	.seh_proc	DetatchNumber.part.1
DetatchNumber.part.1:
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rax
	movq	8(%rcx), %rcx
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
	movq	8(%rcx), %rcx
	call	*32(%rax)
	movq	hLocalHeap(%rip), %rcx
	movq	%rbx, %r8
	xorl	%edx, %edx
	movabsq	$-3689348814741910324, %rax
	movq	%rax, (%rbx)
	movq	%rax, 8(%rbx)
	movq	%rax, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp	*__imp_HeapFree(%rip)
	.seh_endproc
	.p2align 4,,15
	.globl	AttatchNumber
	.def	AttatchNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	AttatchNumber
AttatchNumber:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movsbl	%dl, %edx
	movq	%rcx, %rbx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L28
	orb	$1, 20(%rbx)
.L28:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	AllocateNumber
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	AllocateNumber
AllocateNumber:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbp
	movl	%edx, %esi
	movq	%r8, %rdi
	movq	hLocalHeap(%rip), %rcx
	movl	$24, %r8d
	movl	$8, %edx
	call	*__imp_HeapAlloc(%rip)
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L32
	movsbl	%sil, %edx
	movq	%rdi, %r8
	movq	%rax, %rcx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L30
	andb	$-2, 20(%rbx)
	movq	%rbx, 0(%rbp)
.L30:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
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
	testb	$1, 20(%rcx)
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
	testb	$1, 20(%rcx)
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
	movl	$-257, %edx
	movabsq	$8380716716084383088, %rax
	cmpq	%rax, (%rcx)
	movl	$0, %eax
	cmovne	%edx, %eax
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
	movzbl	20(%rcx), %eax
	testb	$1, %al
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	jne	.L56
	testb	$2, %al
	jne	.L57
	testb	$4, %al
	jne	.L58
	testb	$8, %al
	jne	.L59
	movq	.refptr.ep_uint(%rip), %rdi
	leaq	48(%rsp), %rdx
	movq	8(%rcx), %rcx
	call	*88(%rdi)
	testl	%eax, %eax
	jne	.L49
	movsbl	16(%rbx), %edx
	leaq	56(%rsp), %rcx
	movq	48(%rsp), %r8
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L60
	movq	56(%rsp), %rdx
	movq	%rdx, (%rsi)
	jmp	.L49
	.p2align 4,,10
.L57:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L49:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L56:
	xorl	%eax, %eax
	movq	%rcx, (%rsi)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L59:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	jmp	.L49
	.p2align 4,,10
.L58:
	leaq	number_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L60:
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	call	*32(%rdi)
	movl	44(%rsp), %eax
	jmp	.L49
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
	movzbl	20(%rcx), %eax
	testb	$2, %al
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	jne	.L67
	testb	$4, %al
	jne	.L68
	testb	$8, %al
	jne	.L69
	movq	.refptr.ep_uint(%rip), %rdi
	leaq	48(%rsp), %rdx
	movq	8(%rcx), %rcx
	call	*88(%rdi)
	testl	%eax, %eax
	jne	.L61
	movzbl	16(%rbx), %edx
	leaq	56(%rsp), %rcx
	movq	48(%rsp), %r8
	negl	%edx
	movsbl	%dl, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L70
	movq	56(%rsp), %rdx
	movq	%rdx, (%rsi)
	jmp	.L61
	.p2align 4,,10
.L68:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.L61:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L67:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L69:
	leaq	number_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L70:
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	call	*32(%rdi)
	movl	44(%rsp), %eax
	jmp	.L61
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GetConstantValue_I
	.def	PMC_GetConstantValue_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GetConstantValue_I
PMC_GetConstantValue_I:
	.seh_endprologue
	cmpl	$2, %ecx
	je	.L72
	cmpl	$3, %ecx
	je	.L73
	cmpl	$1, %ecx
	movl	$-1, %eax
	je	.L76
	ret
	.p2align 4,,10
.L76:
	leaq	number_zero(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L73:
	leaq	number_minus_one(%rip), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L72:
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
	je	.L77
	testb	$1, 20(%rcx)
	jne	.L77
	jmp	DeallocateNumber.part.2
	.p2align 4,,10
.L77:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	Initialize_Memory
	.def	Initialize_Memory;	.scl	2;	.type	32;	.endef
	.seh_proc	Initialize_Memory
Initialize_Memory:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rbx
	movl	$1, %ecx
	movq	$0, 48(%rsp)
	leaq	48(%rsp), %rdx
	movq	$0, 56(%rsp)
	call	*48(%rbx)
	testl	%eax, %eax
	jne	.L106
	leaq	56(%rsp), %rdx
	movl	$2, %ecx
	call	*48(%rbx)
	testl	%eax, %eax
	jne	.L106
	movq	48(%rsp), %r8
	leaq	number_zero(%rip), %rdi
	xorl	%edx, %edx
	leaq	number_one(%rip), %rsi
	movq	%rdi, %rcx
	leaq	number_minus_one(%rip), %rbx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L83
	movq	56(%rsp), %r8
	leaq	number_one(%rip), %rsi
	movl	$1, %edx
	orb	$1, 20+number_zero(%rip)
	movq	%rsi, %rcx
	leaq	number_minus_one(%rip), %rbx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L83
	movq	56(%rsp), %r8
	leaq	number_minus_one(%rip), %rbx
	movl	$-1, %edx
	orb	$1, 20+number_one(%rip)
	movq	%rbx, %rcx
	call	InitializeNumber
	testl	%eax, %eax
	jne	.L83
	orb	$1, 20+number_minus_one(%rip)
.L82:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L106:
	leaq	number_zero(%rip), %rdi
	leaq	number_one(%rip), %rsi
	leaq	number_minus_one(%rip), %rbx
.L83:
	testb	$1, 20+number_zero(%rip)
	je	.L86
	movq	%rdi, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
.L86:
	testb	$1, 20+number_one(%rip)
	je	.L85
	movq	%rsi, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
.L85:
	testb	$1, 20+number_minus_one(%rip)
	je	.L82
	movq	%rbx, %rcx
	movl	%eax, 44(%rsp)
	call	DetatchNumber.part.1
	movl	44(%rsp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	je	.L108
	call	*__imp_HeapDestroy(%rip)
	movq	$0, hLocalHeap(%rip)
.L108:
	addq	$40, %rsp
	ret
	.seh_endproc
	.comm	number_minus_one, 24, 4
	.comm	number_one, 24, 4
	.comm	number_zero, 24, 4
	.comm	hLocalHeap, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
