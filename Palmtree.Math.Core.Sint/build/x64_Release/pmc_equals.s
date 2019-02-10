	.file	"pmc_equals.c"
	.text
	.p2align 4,,15
	.globl	PMC_Equals_I_X
	.def	PMC_Equals_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Equals_I_X
PMC_Equals_I_X:
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
	testq	%rdx, %rdx
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L6
	testq	%r8, %r8
	je	.L6
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L1
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	movl	$1, %eax
	jg	.L4
	jne	.L11
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.L4:
	cmpb	%al, 24(%rbx)
	je	.L5
.L12:
	movl	$0, (%rdi)
.L1:
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rdi, %r8
	movq	16(%rbx), %rdx
	call	*448(%rax)
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L11:
	negl	%ecx
	movl	$-2147483648, %edx
	cmpl	$-2147483648, %ebp
	cmove	%edx, %ecx
	movl	$-1, %eax
	cmpb	%al, 24(%rbx)
	jne	.L12
	jmp	.L5
	.p2align 4,,10
.L6:
	movl	$-1, %esi
	jmp	.L1
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Equals_L_X
	.def	PMC_Equals_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Equals_L_X
PMC_Equals_L_X:
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
	testq	%rdx, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	movq	%r8, %rbp
	je	.L18
	testq	%r8, %r8
	je	.L18
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %edi
	jne	.L13
	testq	%rsi, %rsi
	movl	$1, %eax
	jg	.L16
	je	.L19
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rsi
	je	.L20
	negq	%rsi
	movl	$-1, %eax
.L16:
	cmpb	%al, 24(%rbx)
	je	.L17
.L21:
	movl	$0, 0(%rbp)
.L13:
	movl	%edi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L17:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rbp, %r8
	movq	%rsi, %rcx
	movq	16(%rbx), %rdx
	call	*456(%rax)
	movl	%edi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L19:
	xorl	%eax, %eax
	xorl	%esi, %esi
	cmpb	%al, 24(%rbx)
	jne	.L21
	jmp	.L17
	.p2align 4,,10
.L20:
	movl	$-1, %eax
	jmp	.L16
	.p2align 4,,10
.L18:
	movl	$-1, %edi
	jmp	.L13
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Equals_UX_X
	.def	PMC_Equals_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Equals_UX_X
PMC_Equals_UX_X:
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
	movq	%rcx, %rsi
	sete	%dl
	testq	%rbx, %rbx
	movq	%r8, %rdi
	sete	%al
	orb	%al, %dl
	jne	.L26
	testq	%rcx, %rcx
	je	.L26
	movq	%rbx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L22
	testb	$1, (%rsi)
	movzbl	24(%rbx), %edx
	je	.L24
	testb	%dl, %dl
	sete	%dl
	movzbl	%dl, %edx
	movl	%edx, (%rdi)
.L22:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L24:
	testb	%dl, %dl
	jle	.L27
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	16(%rbx), %rdx
	movq	480(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L27:
	movl	$0, (%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L26:
	movl	$-1, %eax
	jmp	.L22
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Equals_X_I
	.def	PMC_Equals_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Equals_X_I
PMC_Equals_X_I:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbx
	movl	%edx, %edi
	movq	%r8, %rsi
	je	.L33
	testq	%rcx, %rcx
	je	.L33
	call	CheckNumber
	testl	%eax, %eax
	jne	.L28
	testl	%edi, %edi
	movl	%edi, %edx
	movl	$1, %ecx
	jg	.L31
	jne	.L37
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.L31:
	cmpb	%cl, 24(%rbx)
	je	.L32
.L38:
	movl	$0, (%rsi)
.L28:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L32:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rsi, %r8
	movq	16(%rbx), %rcx
	movq	464(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L37:
	negl	%edx
	movl	$-2147483648, %r8d
	cmpl	$-2147483648, %edi
	cmove	%r8d, %edx
	movl	$-1, %ecx
	cmpb	%cl, 24(%rbx)
	jne	.L38
	jmp	.L32
	.p2align 4,,10
.L33:
	movl	$-1, %eax
	jmp	.L28
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Equals_X_L
	.def	PMC_Equals_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Equals_X_L
PMC_Equals_X_L:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	je	.L44
	testq	%rcx, %rcx
	je	.L44
	call	CheckNumber
	testl	%eax, %eax
	jne	.L39
	testq	%rsi, %rsi
	movl	$1, %ecx
	jg	.L42
	je	.L45
	movabsq	$-9223372036854775808, %rdx
	movl	$-1, %ecx
	cmpq	%rdx, %rsi
	je	.L42
	negq	%rsi
	movl	$-1, %ecx
.L42:
	cmpb	%cl, 24(%rbx)
	je	.L43
.L47:
	movl	$0, (%rdi)
.L39:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L43:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	16(%rbx), %rcx
	movq	472(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L45:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpb	%cl, 24(%rbx)
	jne	.L47
	jmp	.L43
	.p2align 4,,10
.L44:
	movl	$-1, %eax
	jmp	.L39
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Equals_X_UX
	.def	PMC_Equals_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Equals_X_UX
PMC_Equals_X_UX:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rbx
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rsi
	sete	%al
	orb	%al, %dl
	jne	.L53
	testq	%rcx, %rcx
	je	.L53
	call	CheckNumber
	testl	%eax, %eax
	jne	.L48
	cmpb	$0, 24(%rbx)
	jne	.L50
	movzbl	(%rdi), %edx
	andl	$1, %edx
	movl	%edx, (%rsi)
.L48:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L50:
	js	.L52
	testb	$1, (%rdi)
	jne	.L52
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	16(%rbx), %rcx
	movq	480(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L52:
	movl	$0, (%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L53:
	movl	$-1, %eax
	jmp	.L48
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Equals_X_X
	.def	PMC_Equals_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Equals_X_X
PMC_Equals_X_X:
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
	jne	.L57
	testq	%rcx, %rcx
	je	.L57
	call	CheckNumber
	testl	%eax, %eax
	je	.L58
.L54:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L58:
	movq	%rsi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	jne	.L54
	movzbl	24(%rsi), %ecx
	cmpb	%cl, 24(%rbx)
	je	.L56
	movl	$0, (%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L56:
	movq	.refptr.ep_uint(%rip), %rax
	movq	%rdi, %r8
	movq	16(%rsi), %rdx
	movq	16(%rbx), %rcx
	movq	480(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L57:
	movl	$-1, %eax
	jmp	.L54
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
