	.file	"pmc_greatestcommondivisor.c"
	.text
	.p2align 4,,15
	.globl	PMC_GreatestCommonDivisor_I_X
	.def	PMC_GreatestCommonDivisor_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GreatestCommonDivisor_I_X
PMC_GreatestCommonDivisor_I_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rdx, %rdx
	movl	%ecx, %edi
	movq	%rdx, %rbx
	movq	%r8, %rsi
	je	.L5
	testq	%r8, %r8
	je	.L5
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L1
	testl	%edi, %edi
	movl	%edi, %ecx
	jg	.L4
	movl	$0, %ecx
	jne	.L10
.L4:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rsi, %r8
	movq	16(%rbx), %rdx
	movq	488(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L5:
	movl	$-1, %eax
.L1:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L10:
	movl	%edi, %ecx
	movl	$-2147483648, %eax
	negl	%ecx
	cmpl	$-2147483648, %edi
	cmove	%eax, %ecx
	jmp	.L4
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GreatestCommonDivisor_L_X
	.def	PMC_GreatestCommonDivisor_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GreatestCommonDivisor_L_X
PMC_GreatestCommonDivisor_L_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movq	%r8, %rsi
	je	.L15
	testq	%r8, %r8
	je	.L15
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L11
	testq	%rdi, %rdi
	movq	%rdi, %rcx
	jg	.L14
	movl	$0, %ecx
	jne	.L19
.L14:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rsi, %r8
	movq	16(%rbx), %rdx
	movq	496(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L15:
	movl	$-1, %eax
.L11:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L19:
	movabsq	$-9223372036854775808, %rax
	movq	%rdi, %rcx
	negq	%rcx
	cmpq	%rax, %rdi
	cmove	%rdi, %rcx
	jmp	.L14
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GreatestCommonDivisor_UX_X
	.def	PMC_GreatestCommonDivisor_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GreatestCommonDivisor_UX_X
PMC_GreatestCommonDivisor_UX_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	testq	%r8, %r8
	movq	%rcx, %rdi
	sete	%dl
	testq	%rbx, %rbx
	movq	%r8, %rsi
	sete	%al
	orb	%al, %dl
	jne	.L22
	testq	%rcx, %rcx
	je	.L22
	movq	%rbx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L20
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rsi, %r8
	movq	%rdi, %rcx
	movq	16(%rbx), %rdx
	movq	520(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L22:
	movl	$-1, %eax
.L20:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GreatestCommonDivisor_X_I
	.def	PMC_GreatestCommonDivisor_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GreatestCommonDivisor_X_I
PMC_GreatestCommonDivisor_X_I:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movl	%edx, %edi
	movq	%r8, %rsi
	je	.L27
	testq	%r8, %r8
	je	.L27
	call	CheckNumber
	testl	%eax, %eax
	jne	.L23
	testl	%edi, %edi
	movl	%edi, %edx
	jg	.L26
	movl	$0, %edx
	jne	.L31
.L26:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rsi, %r8
	movq	16(%rbx), %rcx
	movq	504(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L27:
	movl	$-1, %eax
.L23:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L31:
	movl	%edi, %edx
	movl	$-2147483648, %eax
	negl	%edx
	cmpl	$-2147483648, %edi
	cmove	%eax, %edx
	jmp	.L26
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GreatestCommonDivisor_X_L
	.def	PMC_GreatestCommonDivisor_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GreatestCommonDivisor_X_L
PMC_GreatestCommonDivisor_X_L:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	je	.L36
	testq	%r8, %r8
	je	.L36
	call	CheckNumber
	testl	%eax, %eax
	jne	.L32
	testq	%rdi, %rdi
	movq	%rdi, %rdx
	jg	.L35
	movl	$0, %edx
	jne	.L40
.L35:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rsi, %r8
	movq	16(%rbx), %rcx
	movq	512(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L36:
	movl	$-1, %eax
.L32:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L40:
	movabsq	$-9223372036854775808, %rax
	movq	%rdi, %rdx
	negq	%rdx
	cmpq	%rax, %rdi
	cmove	%rdi, %rdx
	jmp	.L35
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GreatestCommonDivisor_X_UX
	.def	PMC_GreatestCommonDivisor_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GreatestCommonDivisor_X_UX
PMC_GreatestCommonDivisor_X_UX:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	testq	%r8, %r8
	movq	%rcx, %rbx
	sete	%dl
	testq	%rsi, %rsi
	movq	%r8, %rdi
	sete	%al
	orb	%al, %dl
	jne	.L43
	testq	%rcx, %rcx
	je	.L43
	call	CheckNumber
	testl	%eax, %eax
	jne	.L41
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	16(%rbx), %rcx
	movq	520(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L43:
	movl	$-1, %eax
.L41:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_GreatestCommonDivisor_X_X
	.def	PMC_GreatestCommonDivisor_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GreatestCommonDivisor_X_X
PMC_GreatestCommonDivisor_X_X:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	testq	%r8, %r8
	movq	%rcx, %rbx
	sete	%dl
	testq	%rsi, %rsi
	movq	%r8, %rdi
	sete	%al
	orb	%al, %dl
	jne	.L46
	testq	%rcx, %rcx
	je	.L46
	call	CheckNumber
	testl	%eax, %eax
	je	.L47
.L44:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L47:
	movq	%rsi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L44
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rdi, %r8
	movq	16(%rsi), %rdx
	movq	16(%rbx), %rcx
	movq	520(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L46:
	movl	$-1, %eax
	jmp	.L44
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
