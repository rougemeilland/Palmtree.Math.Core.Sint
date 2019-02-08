	.file	"pmc_add_sub.c"
	.text
	.p2align 4,,15
	.def	SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_I_Imp
SubtructU_X_I_Imp:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
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
	movq	%rdx, %rdi
	movl	%r8d, %esi
	movl	%ecx, %ebp
	movq	%r9, %r12
	movl	%esi, %edx
	movq	%rdi, %rcx
	leaq	48(%rsp), %r8
	call	*440(%rbx)
	testl	%eax, %eax
	jne	.L1
	movl	48(%rsp), %edx
	testl	%edx, %edx
	jle	.L3
	leaq	56(%rsp), %r8
	movl	%esi, %edx
	movq	%rdi, %rcx
	call	*184(%rbx)
	testl	%eax, %eax
	je	.L17
.L1:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L3:
	je	.L19
	leaq	52(%rsp), %r8
	movq	%rdi, %rdx
	movl	%esi, %ecx
	call	*168(%rbx)
	testl	%eax, %eax
	jne	.L1
	leaq	56(%rsp), %rdx
	movl	52(%rsp), %ecx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L1
	negl	%ebp
	.p2align 4,,10
.L17:
	movq	56(%rsp), %r8
	movsbl	%bpl, %edx
	movq	%r12, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L1
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rbx)
	movl	44(%rsp), %eax
	jmp	.L1
	.p2align 4,,10
.L19:
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%r12)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.def	AddU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_I_Imp
AddU_X_I_Imp:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rsi
	movl	%ecx, %ebx
	movq	%r9, %rdi
	movq	%rdx, %rcx
	movl	%r8d, %edx
	leaq	56(%rsp), %r8
	call	*144(%rsi)
	testl	%eax, %eax
	je	.L25
.L20:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L25:
	movq	56(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rdi, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L20
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_L_Imp
SubtructU_X_L_Imp:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	movl	%ecx, %ebp
	movq	%r9, %r12
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	leaq	60(%rsp), %r8
	call	*448(%rbx)
	testl	%eax, %eax
	jne	.L26
	movl	60(%rsp), %edx
	testl	%edx, %edx
	jle	.L28
	leaq	72(%rsp), %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	*192(%rbx)
	testl	%eax, %eax
	je	.L42
.L26:
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L28:
	je	.L43
	leaq	64(%rsp), %r8
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	*176(%rbx)
	testl	%eax, %eax
	jne	.L26
	leaq	72(%rsp), %rdx
	movq	64(%rsp), %rcx
	call	*24(%rbx)
	testl	%eax, %eax
	jne	.L26
	negl	%ebp
	.p2align 4,,10
.L42:
	movq	72(%rsp), %r8
	movsbl	%bpl, %edx
	movq	%r12, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L26
	movl	%eax, 44(%rsp)
	movq	72(%rsp), %rcx
	call	*32(%rbx)
	movl	44(%rsp), %eax
	jmp	.L26
	.p2align 4,,10
.L43:
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%r12)
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.def	AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_L_Imp
AddU_X_L_Imp:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rsi
	movl	%ecx, %ebx
	movq	%r9, %rdi
	movq	%rdx, %rcx
	movq	%r8, %rdx
	leaq	56(%rsp), %r8
	call	*152(%rsi)
	testl	%eax, %eax
	je	.L49
.L44:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L49:
	movq	56(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rdi, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L44
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_X_Imp
AddU_X_X_Imp:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rsi
	movl	%ecx, %ebx
	movq	%r9, %rdi
	movq	%rdx, %rcx
	movq	%r8, %rdx
	leaq	56(%rsp), %r8
	call	*160(%rsi)
	testl	%eax, %eax
	je	.L55
.L50:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L55:
	movq	56(%rsp), %r8
	movsbl	%bl, %edx
	movq	%rdi, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L50
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	SubtructU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_X_Imp
SubtructU_X_X_Imp:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
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
	movq	%rdx, %rdi
	movq	%r8, %rsi
	movl	%ecx, %ebp
	movq	%r9, %r12
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	leaq	52(%rsp), %r8
	call	*456(%rbx)
	testl	%eax, %eax
	jne	.L56
	movl	52(%rsp), %edx
	testl	%edx, %edx
	jle	.L58
	leaq	56(%rsp), %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	*200(%rbx)
	testl	%eax, %eax
	je	.L72
.L56:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L58:
	je	.L73
	leaq	56(%rsp), %r8
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	*200(%rbx)
	testl	%eax, %eax
	jne	.L56
	negl	%ebp
.L72:
	movq	56(%rsp), %r8
	movsbl	%bpl, %edx
	movq	%r12, %rcx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L56
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rbx)
	movl	44(%rsp), %eax
	jmp	.L56
	.p2align 4,,10
.L73:
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%r12)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_I_X
	.def	PMC_Add_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_I_X
PMC_Add_I_X:
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
	testq	%r8, %r8
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L86
	testq	%rdx, %rdx
	je	.L86
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L74
	testl	%ebp, %ebp
	movzbl	16(%rbx), %eax
	jg	.L106
	je	.L107
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	.L108
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ecx, %r8d
	jle	.L85
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L100
.L95:
	movl	%eax, %esi
.L74:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L106:
	testb	%al, %al
	je	.L109
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	jle	.L83
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	jne	.L95
	.p2align 4,,10
.L100:
	movq	40(%rsp), %rdx
	jmp	.L80
	.p2align 4,,10
.L107:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L110
.L80:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L109:
	leaq	40(%rsp), %r8
	movl	%ebp, %edx
	movl	$1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L100
	movl	%eax, %esi
	jmp	.L74
	.p2align 4,,10
.L110:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L100
	movl	%eax, %esi
	jmp	.L74
	.p2align 4,,10
.L83:
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L100
	movl	%eax, %esi
	jmp	.L74
	.p2align 4,,10
.L108:
	leaq	40(%rsp), %r8
	movl	%ecx, %edx
	movl	$-1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L100
	movl	%eax, %esi
	jmp	.L74
	.p2align 4,,10
.L85:
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L100
	movl	%eax, %esi
	jmp	.L74
	.p2align 4,,10
.L86:
	movl	$-1, %esi
	jmp	.L74
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_L_X
	.def	PMC_Add_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_L_X
PMC_Add_L_X:
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
	testq	%r8, %r8
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L123
	testq	%rdx, %rdx
	je	.L123
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L111
	testq	%rbp, %rbp
	movzbl	16(%rbx), %eax
	jg	.L143
	je	.L144
	movabsq	$-9223372036854775808, %rcx
	movq	%rbp, %rdx
	negq	%rdx
	cmpq	%rcx, %rbp
	cmovne	%rdx, %rbp
	testb	%al, %al
	je	.L145
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L122
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L137
.L132:
	movl	%eax, %esi
.L111:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L143:
	testb	%al, %al
	je	.L146
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L120
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	jne	.L132
	.p2align 4,,10
.L137:
	movq	40(%rsp), %rdx
	jmp	.L117
	.p2align 4,,10
.L144:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L147
.L117:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L146:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L137
	movl	%eax, %esi
	jmp	.L111
	.p2align 4,,10
.L147:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L137
	movl	%eax, %esi
	jmp	.L111
	.p2align 4,,10
.L120:
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L137
	movl	%eax, %esi
	jmp	.L111
	.p2align 4,,10
.L145:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$-1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L137
	movl	%eax, %esi
	jmp	.L111
	.p2align 4,,10
.L122:
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L137
	movl	%eax, %esi
	jmp	.L111
	.p2align 4,,10
.L123:
	movl	$-1, %esi
	jmp	.L111
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_UX_X
	.def	PMC_Add_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_UX_X
PMC_Add_UX_X:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbp
	movq	%rdx, %rsi
	movq	%r8, %rdi
	je	.L158
	testq	%rdx, %rdx
	je	.L158
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L148
	movq	.refptr.ep_uint(%rip), %r12
	leaq	56(%rsp), %r13
	movq	%rbp, %rcx
	movq	%r13, %rdx
	call	*40(%r12)
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L148
	testb	$1, 56(%rsp)
	movzbl	16(%rsi), %eax
	je	.L164
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L166
	movq	%rdx, (%rdi)
.L148:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L164:
	testb	%al, %al
	jne	.L154
	movq	%r13, %rdx
	movq	%rbp, %rcx
	call	*88(%r12)
	testl	%eax, %eax
	jne	.L162
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L167
.L165:
	movq	48(%rsp), %rdx
	movq	%rdx, (%rdi)
	jmp	.L148
	.p2align 4,,10
.L154:
	movq	8(%rsi), %r8
	leaq	48(%rsp), %r9
	movq	%rbp, %rdx
	movl	$1, %ecx
	jle	.L157
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L165
	.p2align 4,,10
.L162:
	movl	%eax, %ebx
.L168:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L166:
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L165
	jmp	.L162
	.p2align 4,,10
.L167:
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%r12)
	movl	44(%rsp), %eax
	movl	%eax, %ebx
	jmp	.L168
	.p2align 4,,10
.L157:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L165
	jmp	.L162
	.p2align 4,,10
.L158:
	movl	$-1, %ebx
	jmp	.L148
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_X_I
	.def	PMC_Add_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_I
PMC_Add_X_I:
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
	movl	%edx, %edi
	movq	%r8, %rbp
	je	.L184
	testq	%r8, %r8
	je	.L184
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L169
	testl	%edi, %edi
	movzbl	16(%rbx), %eax
	jg	.L212
	je	.L213
	cmpl	$-2147483648, %edi
	je	.L205
	negl	%edi
.L205:
	testb	%al, %al
	jne	.L214
	leaq	40(%rsp), %r8
	movl	%edi, %edx
	movl	$-1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L204
.L195:
	movl	%eax, %esi
.L169:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L212:
	testb	%al, %al
	je	.L172
	movq	8(%rbx), %rdx
	jle	.L215
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	jne	.L195
	.p2align 4,,10
.L204:
	movq	40(%rsp), %rax
	jmp	.L175
	.p2align 4,,10
.L213:
	testb	%al, %al
	jne	.L216
	movq	.refptr.number_zero(%rip), %rax
.L175:
	movq	%rax, 0(%rbp)
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L172:
	leaq	40(%rsp), %r8
	movl	%edi, %edx
	movl	$1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L204
	movl	%eax, %esi
	jmp	.L169
	.p2align 4,,10
.L216:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L204
	movl	%eax, %esi
	jmp	.L169
	.p2align 4,,10
.L214:
	jle	.L217
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L204
	movl	%eax, %esi
	jmp	.L169
	.p2align 4,,10
.L215:
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L204
	movl	%eax, %esi
	jmp	.L169
	.p2align 4,,10
.L217:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L204
	movl	%eax, %esi
	jmp	.L169
	.p2align 4,,10
.L184:
	movl	$-1, %esi
	jmp	.L169
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_X_L
	.def	PMC_Add_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_L
PMC_Add_X_L:
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
	movq	%rdx, %rdi
	movq	%r8, %rbp
	je	.L233
	testq	%r8, %r8
	je	.L233
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L218
	testq	%rdi, %rdi
	movzbl	16(%rbx), %eax
	jg	.L261
	je	.L262
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rdi
	je	.L254
	negq	%rdi
.L254:
	testb	%al, %al
	jne	.L263
	leaq	40(%rsp), %r8
	movq	%rdi, %rdx
	movl	$-1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L253
.L244:
	movl	%eax, %esi
.L218:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L261:
	testb	%al, %al
	je	.L221
	movq	8(%rbx), %rdx
	jle	.L264
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	jne	.L244
	.p2align 4,,10
.L253:
	movq	40(%rsp), %rax
	jmp	.L224
	.p2align 4,,10
.L262:
	testb	%al, %al
	jne	.L265
	movq	.refptr.number_zero(%rip), %rax
.L224:
	movq	%rax, 0(%rbp)
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L221:
	leaq	40(%rsp), %r8
	movq	%rdi, %rdx
	movl	$1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L253
	movl	%eax, %esi
	jmp	.L218
	.p2align 4,,10
.L265:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L253
	movl	%eax, %esi
	jmp	.L218
	.p2align 4,,10
.L263:
	jle	.L266
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L253
	movl	%eax, %esi
	jmp	.L218
	.p2align 4,,10
.L264:
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L253
	movl	%eax, %esi
	jmp	.L218
	.p2align 4,,10
.L266:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L253
	movl	%eax, %esi
	jmp	.L218
	.p2align 4,,10
.L233:
	movl	$-1, %esi
	jmp	.L218
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_X_UX
	.def	PMC_Add_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_UX
PMC_Add_X_UX:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L278
	testq	%rcx, %rcx
	je	.L278
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L267
	movq	.refptr.ep_uint(%rip), %r12
	leaq	56(%rsp), %r13
	movq	%rdi, %rcx
	movq	%r13, %rdx
	call	*40(%r12)
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L267
	movl	56(%rsp), %eax
	andl	$1, %eax
	cmpb	$0, 16(%rsi)
	jne	.L286
	testb	%al, %al
	je	.L291
	movq	.refptr.number_zero(%rip), %rax
.L272:
	movq	%rax, 0(%rbp)
.L267:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L286:
	jle	.L275
	testb	%al, %al
	jne	.L289
	movq	8(%rsi), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L287
	.p2align 4,,10
.L285:
	movl	%eax, %ebx
.L292:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L291:
	movq	%r13, %rdx
	movq	%rdi, %rcx
	call	*88(%r12)
	testl	%eax, %eax
	jne	.L285
	leaq	44(%rsp), %rdx
	movq	56(%rsp), %rcx
	call	*40(%r12)
	testl	%eax, %eax
	jne	.L285
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L287
	movq	56(%rsp), %rcx
	movl	%esi, %ebx
	call	*32(%r12)
	jmp	.L267
	.p2align 4,,10
.L275:
	testb	%al, %al
	je	.L277
.L289:
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	jne	.L285
.L287:
	movq	48(%rsp), %rax
	jmp	.L272
	.p2align 4,,10
.L277:
	movq	8(%rsi), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L287
	movl	%eax, %ebx
	jmp	.L292
	.p2align 4,,10
.L278:
	movl	$-1, %ebx
	jmp	.L267
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_X_X
	.def	PMC_Add_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_X
PMC_Add_X_X:
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
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L302
	testq	%rcx, %rcx
	je	.L302
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L318
.L293:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L318:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L293
	cmpb	$0, 16(%rsi)
	movzbl	16(%rdi), %eax
	je	.L319
	jle	.L297
	testb	%al, %al
	je	.L314
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$1, %ecx
	movq	8(%rsi), %rdx
	jle	.L316
.L301:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	jne	.L310
.L312:
	movq	40(%rsp), %rdx
	jmp	.L296
	.p2align 4,,10
.L319:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L320
.L296:
	movl	%ebx, %eax
	movq	%rdx, 0(%rbp)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L297:
	testb	%al, %al
	je	.L314
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$-1, %ecx
	movq	8(%rsi), %rdx
	jle	.L301
.L316:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L312
.L310:
	movl	%eax, %ebx
	jmp	.L293
	.p2align 4,,10
.L314:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L312
	jmp	.L310
	.p2align 4,,10
.L320:
	leaq	40(%rsp), %rdx
	movq	%rdi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L312
	jmp	.L310
	.p2align 4,,10
.L302:
	movl	$-1, %ebx
	jmp	.L293
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_I_X
	.def	PMC_Subtruct_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_I_X
PMC_Subtruct_I_X:
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
	testq	%r8, %r8
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L333
	testq	%rdx, %rdx
	je	.L333
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L321
	testl	%ebp, %ebp
	movzbl	16(%rbx), %eax
	jg	.L353
	je	.L354
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	.L355
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ecx, %r8d
	jle	.L332
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L347
.L342:
	movl	%eax, %esi
.L321:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L353:
	testb	%al, %al
	je	.L356
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	jle	.L330
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	.L342
	.p2align 4,,10
.L347:
	movq	40(%rsp), %rdx
	jmp	.L327
	.p2align 4,,10
.L354:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L357
.L327:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L356:
	leaq	40(%rsp), %r8
	movl	%ebp, %edx
	movl	$1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L347
	movl	%eax, %esi
	jmp	.L321
	.p2align 4,,10
.L357:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L347
	movl	%eax, %esi
	jmp	.L321
	.p2align 4,,10
.L330:
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L347
	movl	%eax, %esi
	jmp	.L321
	.p2align 4,,10
.L355:
	leaq	40(%rsp), %r8
	movl	%ecx, %edx
	movl	$-1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L347
	movl	%eax, %esi
	jmp	.L321
	.p2align 4,,10
.L332:
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L347
	movl	%eax, %esi
	jmp	.L321
	.p2align 4,,10
.L333:
	movl	$-1, %esi
	jmp	.L321
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_L_X
	.def	PMC_Subtruct_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_L_X
PMC_Subtruct_L_X:
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
	testq	%r8, %r8
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L370
	testq	%rdx, %rdx
	je	.L370
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L358
	testq	%rbp, %rbp
	movzbl	16(%rbx), %eax
	jg	.L390
	je	.L391
	movabsq	$-9223372036854775808, %rcx
	movq	%rbp, %rdx
	negq	%rdx
	cmpq	%rcx, %rbp
	cmovne	%rdx, %rbp
	testb	%al, %al
	je	.L392
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L369
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L384
.L379:
	movl	%eax, %esi
.L358:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L390:
	testb	%al, %al
	je	.L393
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L367
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	.L379
	.p2align 4,,10
.L384:
	movq	40(%rsp), %rdx
	jmp	.L364
	.p2align 4,,10
.L391:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L394
.L364:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L393:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L384
	movl	%eax, %esi
	jmp	.L358
	.p2align 4,,10
.L394:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L384
	movl	%eax, %esi
	jmp	.L358
	.p2align 4,,10
.L367:
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L384
	movl	%eax, %esi
	jmp	.L358
	.p2align 4,,10
.L392:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$-1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L384
	movl	%eax, %esi
	jmp	.L358
	.p2align 4,,10
.L369:
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L384
	movl	%eax, %esi
	jmp	.L358
	.p2align 4,,10
.L370:
	movl	$-1, %esi
	jmp	.L358
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_UX_X
	.def	PMC_Subtruct_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_UX_X
PMC_Subtruct_UX_X:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, %rsi
	testq	%r8, %r8
	movq	%rcx, %rdi
	sete	%dl
	testq	%rsi, %rsi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L406
	testq	%rcx, %rcx
	je	.L406
	movq	%rsi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L395
	movq	.refptr.ep_uint(%rip), %r12
	leaq	56(%rsp), %r13
	movq	%rdi, %rcx
	movq	%r13, %rdx
	call	*40(%r12)
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L395
	testb	$1, 56(%rsp)
	movzbl	16(%rsi), %eax
	je	.L412
	testb	%al, %al
	je	.L407
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	jne	.L411
.L414:
	movq	48(%rsp), %rax
.L400:
	movq	%rax, 0(%rbp)
.L395:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L412:
	testb	%al, %al
	jne	.L402
	movq	%r13, %rdx
	movq	%rdi, %rcx
	call	*88(%r12)
	testl	%eax, %eax
	jne	.L411
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L414
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%r12)
	movl	44(%rsp), %eax
	.p2align 4,,10
.L411:
	movl	%eax, %ebx
.L418:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L402:
	movq	8(%rsi), %r8
	leaq	48(%rsp), %r9
	movq	%rdi, %rdx
	movl	$1, %ecx
	jle	.L405
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L414
	movl	%eax, %ebx
	jmp	.L418
	.p2align 4,,10
.L407:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L400
	.p2align 4,,10
.L405:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L414
	movl	%eax, %ebx
	jmp	.L418
	.p2align 4,,10
.L406:
	movl	$-1, %ebx
	jmp	.L395
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_X_I
	.def	PMC_Subtruct_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_I
PMC_Subtruct_X_I:
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
	movl	%edx, %edi
	movq	%r8, %rbp
	je	.L434
	testq	%r8, %r8
	je	.L434
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L419
	testl	%edi, %edi
	movzbl	16(%rbx), %eax
	jg	.L462
	je	.L463
	cmpl	$-2147483648, %edi
	je	.L455
	negl	%edi
.L455:
	testb	%al, %al
	jne	.L464
	leaq	40(%rsp), %r8
	movl	%edi, %edx
	movl	$1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L454
.L445:
	movl	%eax, %esi
.L419:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L462:
	testb	%al, %al
	je	.L422
	movq	8(%rbx), %rdx
	jle	.L465
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	.L445
	.p2align 4,,10
.L454:
	movq	40(%rsp), %rax
	jmp	.L425
	.p2align 4,,10
.L463:
	testb	%al, %al
	jne	.L466
	movq	.refptr.number_zero(%rip), %rax
.L425:
	movq	%rax, 0(%rbp)
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L422:
	leaq	40(%rsp), %r8
	movl	%edi, %edx
	movl	$-1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L454
	movl	%eax, %esi
	jmp	.L419
	.p2align 4,,10
.L466:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L454
	movl	%eax, %esi
	jmp	.L419
	.p2align 4,,10
.L464:
	jle	.L467
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L454
	movl	%eax, %esi
	jmp	.L419
	.p2align 4,,10
.L465:
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L454
	movl	%eax, %esi
	jmp	.L419
	.p2align 4,,10
.L467:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%edi, %r8d
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L454
	movl	%eax, %esi
	jmp	.L419
	.p2align 4,,10
.L434:
	movl	$-1, %esi
	jmp	.L419
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_X_L
	.def	PMC_Subtruct_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_L
PMC_Subtruct_X_L:
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
	movq	%rdx, %rdi
	movq	%r8, %rbp
	je	.L483
	testq	%r8, %r8
	je	.L483
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L468
	testq	%rdi, %rdi
	movzbl	16(%rbx), %eax
	jg	.L511
	je	.L512
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rdi
	je	.L504
	negq	%rdi
.L504:
	testb	%al, %al
	jne	.L513
	leaq	40(%rsp), %r8
	movq	%rdi, %rdx
	movl	$1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L503
.L494:
	movl	%eax, %esi
.L468:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L511:
	testb	%al, %al
	je	.L471
	movq	8(%rbx), %rdx
	jle	.L514
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	.L494
	.p2align 4,,10
.L503:
	movq	40(%rsp), %rax
	jmp	.L474
	.p2align 4,,10
.L512:
	testb	%al, %al
	jne	.L515
	movq	.refptr.number_zero(%rip), %rax
.L474:
	movq	%rax, 0(%rbp)
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L471:
	leaq	40(%rsp), %r8
	movq	%rdi, %rdx
	movl	$-1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L503
	movl	%eax, %esi
	jmp	.L468
	.p2align 4,,10
.L515:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L503
	movl	%eax, %esi
	jmp	.L468
	.p2align 4,,10
.L513:
	jle	.L516
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L503
	movl	%eax, %esi
	jmp	.L468
	.p2align 4,,10
.L514:
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L503
	movl	%eax, %esi
	jmp	.L468
	.p2align 4,,10
.L516:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L503
	movl	%eax, %esi
	jmp	.L468
	.p2align 4,,10
.L483:
	movl	$-1, %esi
	jmp	.L468
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_X_UX
	.def	PMC_Subtruct_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_UX
PMC_Subtruct_X_UX:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L528
	testq	%rcx, %rcx
	je	.L528
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L517
	movq	.refptr.ep_uint(%rip), %r12
	leaq	56(%rsp), %r13
	movq	%rdi, %rcx
	movq	%r13, %rdx
	call	*40(%r12)
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L517
	movl	56(%rsp), %eax
	andl	$1, %eax
	cmpb	$0, 16(%rsi)
	jne	.L534
	testb	%al, %al
	je	.L539
	movq	.refptr.number_zero(%rip), %rax
.L522:
	movq	%rax, 0(%rbp)
.L517:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L534:
	jle	.L525
	testb	%al, %al
	jne	.L537
	movq	8(%rsi), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L535
	.p2align 4,,10
.L533:
	movl	%eax, %ebx
.L540:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L539:
	movq	%r13, %rdx
	movq	%rdi, %rcx
	call	*88(%r12)
	testl	%eax, %eax
	jne	.L533
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$-1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L535
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%r12)
	movl	44(%rsp), %eax
	movl	%eax, %ebx
	jmp	.L540
	.p2align 4,,10
.L525:
	testb	%al, %al
	je	.L527
.L537:
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	jne	.L533
.L535:
	movq	48(%rsp), %rax
	jmp	.L522
	.p2align 4,,10
.L527:
	movq	8(%rsi), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L535
	movl	%eax, %ebx
	jmp	.L540
	.p2align 4,,10
.L528:
	movl	$-1, %ebx
	jmp	.L517
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_X_X
	.def	PMC_Subtruct_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_X
PMC_Subtruct_X_X:
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
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L550
	testq	%rcx, %rcx
	je	.L550
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L566
.L541:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L566:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L541
	cmpb	$0, 16(%rsi)
	movzbl	16(%rdi), %eax
	je	.L567
	jle	.L545
	testb	%al, %al
	je	.L562
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$1, %ecx
	movq	8(%rsi), %rdx
	jle	.L564
.L549:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	.L558
.L560:
	movq	40(%rsp), %rdx
	jmp	.L544
	.p2align 4,,10
.L567:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L568
.L544:
	movl	%ebx, %eax
	movq	%rdx, 0(%rbp)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L545:
	testb	%al, %al
	je	.L562
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$-1, %ecx
	movq	8(%rsi), %rdx
	jle	.L549
.L564:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L560
.L558:
	movl	%eax, %ebx
	jmp	.L541
	.p2align 4,,10
.L562:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L560
	jmp	.L558
	.p2align 4,,10
.L568:
	leaq	40(%rsp), %rdx
	movq	%rdi, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L560
	jmp	.L558
	.p2align 4,,10
.L550:
	movl	$-1, %ebx
	jmp	.L541
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.def	From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	Negate_Imp;	.scl	2;	.type	32;	.endef
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
