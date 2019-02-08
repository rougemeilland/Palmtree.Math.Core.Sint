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
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbp
	movq	%rdx, %rsi
	movq	%r8, %rdi
	je	.L156
	testq	%rdx, %rdx
	je	.L156
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L163
.L148:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L163:
	leaq	63(%rsp), %rdx
	movq	%rbp, %rcx
	call	IsZero_UINT
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L148
	cmpb	$0, 63(%rsp)
	movzbl	16(%rsi), %eax
	je	.L150
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L164
.L151:
	movl	%ebx, %eax
	movq	%rdx, (%rdi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L150:
	testb	%al, %al
	jne	.L152
	movq	.refptr.ep_uint(%rip), %rsi
	leaq	72(%rsp), %rdx
	movq	%rbp, %rcx
	call	*88(%rsi)
	testl	%eax, %eax
	je	.L165
.L160:
	movl	%eax, %ebx
	jmp	.L148
	.p2align 4,,10
.L152:
	movq	8(%rsi), %r8
	leaq	64(%rsp), %r9
	movq	%rbp, %rdx
	movl	$1, %ecx
	jle	.L155
	call	AddU_X_X_Imp
	testl	%eax, %eax
	jne	.L160
.L162:
	movq	64(%rsp), %rdx
	jmp	.L151
	.p2align 4,,10
.L164:
	leaq	64(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L162
	jmp	.L160
	.p2align 4,,10
.L165:
	movq	72(%rsp), %r8
	leaq	64(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L162
	movl	%eax, 44(%rsp)
	movq	72(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	movl	%eax, %ebx
	jmp	.L148
	.p2align 4,,10
.L155:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L162
	jmp	.L160
	.p2align 4,,10
.L156:
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
	testq	%r8, %r8
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%r8, %rdi
	je	.L180
	testq	%rcx, %rcx
	je	.L180
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L166
	testl	%ebp, %ebp
	movzbl	16(%rbx), %eax
	jg	.L203
	jne	.L171
	testb	%al, %al
	jne	.L204
	movq	.refptr.number_zero(%rip), %rax
.L172:
	movq	%rax, (%rdi)
.L166:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L203:
	testb	%al, %al
	movl	%ebp, %r10d
	je	.L181
	movq	8(%rbx), %rdx
	jle	.L205
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	jne	.L192
	.p2align 4,,10
.L197:
	movq	40(%rsp), %rax
	jmp	.L172
	.p2align 4,,10
.L171:
	cmpl	$-2147483648, %ebp
	je	.L206
	movl	%ebp, %r10d
	negl	%r10d
	testb	%al, %al
	je	.L185
	jle	.L177
.L176:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L197
.L192:
	movl	%eax, %esi
.L207:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L181:
	movl	$1, %ecx
.L169:
	leaq	40(%rsp), %r8
	movl	%r10d, %edx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L197
	movl	%eax, %esi
	jmp	.L207
	.p2align 4,,10
.L204:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L197
	movl	%eax, %esi
	jmp	.L207
	.p2align 4,,10
.L206:
	testb	%al, %al
	je	.L183
	movl	%ebp, %r10d
	jg	.L176
.L177:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L197
	movl	%eax, %esi
	jmp	.L207
	.p2align 4,,10
.L185:
	movl	$-1, %ecx
	jmp	.L169
	.p2align 4,,10
.L205:
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L197
	movl	%eax, %esi
	jmp	.L207
	.p2align 4,,10
.L183:
	movl	$-1, %ecx
	movl	%ebp, %r10d
	jmp	.L169
	.p2align 4,,10
.L180:
	movl	$-1, %esi
	jmp	.L166
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
	testq	%r8, %r8
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r8, %rdi
	je	.L222
	testq	%rcx, %rcx
	je	.L222
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L208
	testq	%rbp, %rbp
	movzbl	16(%rbx), %eax
	jg	.L245
	jne	.L213
	testb	%al, %al
	jne	.L246
	movq	.refptr.number_zero(%rip), %rax
.L214:
	movq	%rax, (%rdi)
.L208:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L245:
	testb	%al, %al
	movq	%rbp, %r10
	je	.L223
	movq	8(%rbx), %rdx
	jle	.L247
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	jne	.L234
	.p2align 4,,10
.L239:
	movq	40(%rsp), %rax
	jmp	.L214
	.p2align 4,,10
.L213:
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rbp
	je	.L248
	movq	%rbp, %r10
	negq	%r10
	testb	%al, %al
	je	.L227
	jle	.L219
.L218:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L239
.L234:
	movl	%eax, %esi
.L249:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L223:
	movl	$1, %ecx
.L211:
	leaq	40(%rsp), %r8
	movq	%r10, %rdx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L239
	movl	%eax, %esi
	jmp	.L249
	.p2align 4,,10
.L246:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L239
	movl	%eax, %esi
	jmp	.L249
	.p2align 4,,10
.L248:
	testb	%al, %al
	je	.L225
	movq	%rbp, %r10
	jg	.L218
.L219:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L239
	movl	%eax, %esi
	jmp	.L249
	.p2align 4,,10
.L227:
	movl	$-1, %ecx
	jmp	.L211
	.p2align 4,,10
.L247:
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L239
	movl	%eax, %esi
	jmp	.L249
	.p2align 4,,10
.L225:
	movl	$-1, %ecx
	movq	%rbp, %r10
	jmp	.L211
	.p2align 4,,10
.L222:
	movl	$-1, %esi
	jmp	.L208
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Add_X_UX
	.def	PMC_Add_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_UX
PMC_Add_X_UX:
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
	jne	.L259
	testq	%rcx, %rcx
	je	.L259
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L272
.L250:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L272:
	leaq	43(%rsp), %rdx
	movq	%rdi, %rcx
	call	IsZero_UINT
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L250
	cmpb	$0, 16(%rsi)
	movzbl	43(%rsp), %eax
	jne	.L252
	testb	%al, %al
	jne	.L260
	movq	.refptr.ep_uint(%rip), %rsi
	leaq	56(%rsp), %rdx
	movq	%rdi, %rcx
	call	*88(%rsi)
	testl	%eax, %eax
	jne	.L266
	leaq	44(%rsp), %rdx
	movq	56(%rsp), %rcx
	call	*40(%rsi)
	testl	%eax, %eax
	je	.L273
.L266:
	movl	%eax, %ebx
.L274:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L252:
	jle	.L256
	testb	%al, %al
	je	.L257
.L269:
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	jne	.L266
.L267:
	movq	48(%rsp), %rax
.L253:
	movq	%rax, 0(%rbp)
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L260:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L253
	.p2align 4,,10
.L256:
	testb	%al, %al
	jne	.L269
	movq	8(%rsi), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L267
	movl	%eax, %ebx
	jmp	.L274
	.p2align 4,,10
.L257:
	movq	8(%rsi), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L267
	movl	%eax, %ebx
	jmp	.L274
	.p2align 4,,10
.L273:
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L267
	movq	56(%rsp), %rcx
	movl	%edi, %ebx
	call	*32(%rsi)
	jmp	.L250
	.p2align 4,,10
.L259:
	movl	$-1, %ebx
	jmp	.L250
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
	jne	.L284
	testq	%rcx, %rcx
	je	.L284
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L300
.L275:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L300:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L275
	cmpb	$0, 16(%rsi)
	movzbl	16(%rdi), %eax
	je	.L301
	jle	.L279
	testb	%al, %al
	je	.L296
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$1, %ecx
	movq	8(%rsi), %rdx
	jle	.L298
.L283:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	jne	.L292
.L294:
	movq	40(%rsp), %rdx
	jmp	.L278
	.p2align 4,,10
.L301:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L302
.L278:
	movl	%ebx, %eax
	movq	%rdx, 0(%rbp)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L279:
	testb	%al, %al
	je	.L296
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$-1, %ecx
	movq	8(%rsi), %rdx
	jle	.L283
.L298:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L294
.L292:
	movl	%eax, %ebx
	jmp	.L275
	.p2align 4,,10
.L296:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L294
	jmp	.L292
	.p2align 4,,10
.L302:
	leaq	40(%rsp), %rdx
	movq	%rdi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L294
	jmp	.L292
	.p2align 4,,10
.L284:
	movl	$-1, %ebx
	jmp	.L275
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
	je	.L315
	testq	%rdx, %rdx
	je	.L315
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L303
	testl	%ebp, %ebp
	movzbl	16(%rbx), %eax
	jg	.L335
	je	.L336
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	.L337
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ecx, %r8d
	jle	.L314
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L329
.L324:
	movl	%eax, %esi
.L303:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L335:
	testb	%al, %al
	je	.L338
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	jle	.L312
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	.L324
	.p2align 4,,10
.L329:
	movq	40(%rsp), %rdx
	jmp	.L309
	.p2align 4,,10
.L336:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L339
.L309:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L338:
	leaq	40(%rsp), %r8
	movl	%ebp, %edx
	movl	$1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L329
	movl	%eax, %esi
	jmp	.L303
	.p2align 4,,10
.L339:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L329
	movl	%eax, %esi
	jmp	.L303
	.p2align 4,,10
.L312:
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L329
	movl	%eax, %esi
	jmp	.L303
	.p2align 4,,10
.L337:
	leaq	40(%rsp), %r8
	movl	%ecx, %edx
	movl	$-1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L329
	movl	%eax, %esi
	jmp	.L303
	.p2align 4,,10
.L314:
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L329
	movl	%eax, %esi
	jmp	.L303
	.p2align 4,,10
.L315:
	movl	$-1, %esi
	jmp	.L303
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
	je	.L352
	testq	%rdx, %rdx
	je	.L352
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L340
	testq	%rbp, %rbp
	movzbl	16(%rbx), %eax
	jg	.L372
	je	.L373
	movabsq	$-9223372036854775808, %rcx
	movq	%rbp, %rdx
	negq	%rdx
	cmpq	%rcx, %rbp
	cmovne	%rdx, %rbp
	testb	%al, %al
	je	.L374
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L351
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L366
.L361:
	movl	%eax, %esi
.L340:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L372:
	testb	%al, %al
	je	.L375
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L349
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	.L361
	.p2align 4,,10
.L366:
	movq	40(%rsp), %rdx
	jmp	.L346
	.p2align 4,,10
.L373:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L376
.L346:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L375:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L366
	movl	%eax, %esi
	jmp	.L340
	.p2align 4,,10
.L376:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L366
	movl	%eax, %esi
	jmp	.L340
	.p2align 4,,10
.L349:
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L366
	movl	%eax, %esi
	jmp	.L340
	.p2align 4,,10
.L374:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$-1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L366
	movl	%eax, %esi
	jmp	.L340
	.p2align 4,,10
.L351:
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L366
	movl	%eax, %esi
	jmp	.L340
	.p2align 4,,10
.L352:
	movl	$-1, %esi
	jmp	.L340
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_UX_X
	.def	PMC_Subtruct_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_UX_X
PMC_Subtruct_UX_X:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	%rdx, %rsi
	testq	%r8, %r8
	movq	%rcx, %rdi
	sete	%dl
	testq	%rsi, %rsi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L385
	testq	%rcx, %rcx
	je	.L385
	movq	%rsi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L392
.L377:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L392:
	leaq	63(%rsp), %rdx
	movq	%rdi, %rcx
	call	IsZero_UINT
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L377
	cmpb	$0, 63(%rsp)
	movzbl	16(%rsi), %eax
	je	.L379
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L393
.L380:
	movl	%ebx, %eax
	movq	%rdx, 0(%rbp)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L379:
	testb	%al, %al
	jne	.L381
	movq	.refptr.ep_uint(%rip), %rsi
	leaq	72(%rsp), %rdx
	movq	%rdi, %rcx
	call	*88(%rsi)
	testl	%eax, %eax
	je	.L394
.L389:
	movl	%eax, %ebx
	jmp	.L377
	.p2align 4,,10
.L381:
	movq	8(%rsi), %r8
	leaq	64(%rsp), %r9
	movq	%rdi, %rdx
	movl	$1, %ecx
	jle	.L384
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	.L389
.L391:
	movq	64(%rsp), %rdx
	jmp	.L380
	.p2align 4,,10
.L393:
	leaq	64(%rsp), %rdx
	movq	%rsi, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L391
	jmp	.L389
	.p2align 4,,10
.L394:
	movq	72(%rsp), %r8
	leaq	64(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L391
	movl	%eax, 44(%rsp)
	movq	72(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	movl	%eax, %ebx
	jmp	.L377
	.p2align 4,,10
.L384:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L391
	jmp	.L389
	.p2align 4,,10
.L385:
	movl	$-1, %ebx
	jmp	.L377
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
	testq	%r8, %r8
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%r8, %rdi
	je	.L409
	testq	%rcx, %rcx
	je	.L409
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L395
	testl	%ebp, %ebp
	movzbl	16(%rbx), %eax
	jg	.L432
	jne	.L400
	testb	%al, %al
	jne	.L433
	movq	.refptr.number_zero(%rip), %rax
.L401:
	movq	%rax, (%rdi)
.L395:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L432:
	testb	%al, %al
	movl	%ebp, %r10d
	je	.L410
	movq	8(%rbx), %rdx
	jle	.L434
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	.L421
	.p2align 4,,10
.L426:
	movq	40(%rsp), %rax
	jmp	.L401
	.p2align 4,,10
.L400:
	cmpl	$-2147483648, %ebp
	je	.L435
	movl	%ebp, %r10d
	negl	%r10d
	testb	%al, %al
	je	.L414
	jle	.L406
.L405:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L426
.L421:
	movl	%eax, %esi
.L436:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L410:
	movl	$-1, %ecx
.L398:
	leaq	40(%rsp), %r8
	movl	%r10d, %edx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L426
	movl	%eax, %esi
	jmp	.L436
	.p2align 4,,10
.L433:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L426
	movl	%eax, %esi
	jmp	.L436
	.p2align 4,,10
.L435:
	testb	%al, %al
	je	.L412
	movl	%ebp, %r10d
	jg	.L405
.L406:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L426
	movl	%eax, %esi
	jmp	.L436
	.p2align 4,,10
.L414:
	movl	$1, %ecx
	jmp	.L398
	.p2align 4,,10
.L434:
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L426
	movl	%eax, %esi
	jmp	.L436
	.p2align 4,,10
.L412:
	movl	$1, %ecx
	movl	%ebp, %r10d
	jmp	.L398
	.p2align 4,,10
.L409:
	movl	$-1, %esi
	jmp	.L395
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
	testq	%r8, %r8
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r8, %rdi
	je	.L451
	testq	%rcx, %rcx
	je	.L451
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L437
	testq	%rbp, %rbp
	movzbl	16(%rbx), %eax
	jg	.L474
	jne	.L442
	testb	%al, %al
	jne	.L475
	movq	.refptr.number_zero(%rip), %rax
.L443:
	movq	%rax, (%rdi)
.L437:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L474:
	testb	%al, %al
	movq	%rbp, %r10
	je	.L452
	movq	8(%rbx), %rdx
	jle	.L476
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	.L463
	.p2align 4,,10
.L468:
	movq	40(%rsp), %rax
	jmp	.L443
	.p2align 4,,10
.L442:
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rbp
	je	.L477
	movq	%rbp, %r10
	negq	%r10
	testb	%al, %al
	je	.L456
	jle	.L448
.L447:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L468
.L463:
	movl	%eax, %esi
.L478:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L452:
	movl	$-1, %ecx
.L440:
	leaq	40(%rsp), %r8
	movq	%r10, %rdx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L468
	movl	%eax, %esi
	jmp	.L478
	.p2align 4,,10
.L475:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L468
	movl	%eax, %esi
	jmp	.L478
	.p2align 4,,10
.L477:
	testb	%al, %al
	je	.L454
	movq	%rbp, %r10
	jg	.L447
.L448:
	movq	8(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L468
	movl	%eax, %esi
	jmp	.L478
	.p2align 4,,10
.L456:
	movl	$1, %ecx
	jmp	.L440
	.p2align 4,,10
.L476:
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L468
	movl	%eax, %esi
	jmp	.L478
	.p2align 4,,10
.L454:
	movl	$1, %ecx
	movq	%rbp, %r10
	jmp	.L440
	.p2align 4,,10
.L451:
	movl	$-1, %esi
	jmp	.L437
	.seh_endproc
	.p2align 4,,15
	.globl	PMC_Subtruct_X_UX
	.def	PMC_Subtruct_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_UX
PMC_Subtruct_X_UX:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rsi
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L488
	testq	%rcx, %rcx
	je	.L488
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L499
.L479:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L499:
	leaq	63(%rsp), %rdx
	movq	%rdi, %rcx
	call	IsZero_UINT
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L479
	cmpb	$0, 16(%rsi)
	movzbl	63(%rsp), %eax
	jne	.L481
	testb	%al, %al
	jne	.L489
	movq	.refptr.ep_uint(%rip), %rsi
	leaq	72(%rsp), %rdx
	movq	%rdi, %rcx
	call	*88(%rsi)
	testl	%eax, %eax
	je	.L500
.L493:
	movl	%eax, %ebx
.L501:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L481:
	jle	.L485
	testb	%al, %al
	je	.L486
.L496:
	leaq	64(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	jne	.L493
.L494:
	movq	64(%rsp), %rax
.L482:
	movq	%rax, 0(%rbp)
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L489:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L482
	.p2align 4,,10
.L485:
	testb	%al, %al
	jne	.L496
	movq	8(%rsi), %rdx
	leaq	64(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L494
	movl	%eax, %ebx
	jmp	.L501
	.p2align 4,,10
.L486:
	movq	8(%rsi), %rdx
	leaq	64(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L494
	movl	%eax, %ebx
	jmp	.L501
	.p2align 4,,10
.L500:
	movq	72(%rsp), %r8
	leaq	64(%rsp), %rcx
	movl	$-1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L494
	movl	%eax, 44(%rsp)
	movq	72(%rsp), %rcx
	call	*32(%rsi)
	movl	44(%rsp), %eax
	movl	%eax, %ebx
	jmp	.L501
	.p2align 4,,10
.L488:
	movl	$-1, %ebx
	jmp	.L479
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
	jne	.L511
	testq	%rcx, %rcx
	je	.L511
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L527
.L502:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L527:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L502
	cmpb	$0, 16(%rsi)
	movzbl	16(%rdi), %eax
	je	.L528
	jle	.L506
	testb	%al, %al
	je	.L523
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$1, %ecx
	movq	8(%rsi), %rdx
	jle	.L525
.L510:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	.L519
.L521:
	movq	40(%rsp), %rdx
	jmp	.L505
	.p2align 4,,10
.L528:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L529
.L505:
	movl	%ebx, %eax
	movq	%rdx, 0(%rbp)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L506:
	testb	%al, %al
	je	.L523
	movq	8(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$-1, %ecx
	movq	8(%rsi), %rdx
	jle	.L510
.L525:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L521
.L519:
	movl	%eax, %ebx
	jmp	.L502
	.p2align 4,,10
.L523:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L521
	jmp	.L519
	.p2align 4,,10
.L529:
	leaq	40(%rsp), %rdx
	movq	%rdi, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L521
	jmp	.L519
	.p2align 4,,10
.L511:
	movl	$-1, %ebx
	jmp	.L502
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.def	From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	IsZero_UINT;	.scl	2;	.type	32;	.endef
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
