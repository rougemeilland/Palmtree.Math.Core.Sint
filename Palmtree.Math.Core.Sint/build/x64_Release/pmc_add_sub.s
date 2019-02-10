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
	call	*416(%rbx)
	testl	%eax, %eax
	jne	.L1
	movl	48(%rsp), %edx
	testl	%edx, %edx
	jle	.L3
	leaq	56(%rsp), %r8
	movl	%esi, %edx
	movq	%rdi, %rcx
	call	*160(%rbx)
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
	call	*144(%rbx)
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
	call	*120(%rsi)
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
	call	*424(%rbx)
	testl	%eax, %eax
	jne	.L26
	movl	60(%rsp), %edx
	testl	%edx, %edx
	jle	.L28
	leaq	72(%rsp), %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	*168(%rbx)
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
	call	*152(%rbx)
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
	call	*128(%rsi)
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
	call	*136(%rsi)
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
	call	*432(%rbx)
	testl	%eax, %eax
	jne	.L56
	movl	52(%rsp), %edx
	testl	%edx, %edx
	jle	.L58
	leaq	56(%rsp), %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	*176(%rbx)
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
	call	*176(%rbx)
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
	movzbl	24(%rbx), %eax
	jg	.L106
	je	.L107
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	.L108
	movq	16(%rbx), %rdx
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
	movq	16(%rbx), %rdx
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
	movzbl	24(%rbx), %eax
	jg	.L143
	je	.L144
	movabsq	$-9223372036854775808, %rcx
	movq	%rbp, %rdx
	negq	%rdx
	cmpq	%rcx, %rbp
	cmovne	%rdx, %rbp
	testb	%al, %al
	je	.L145
	movq	16(%rbx), %rdx
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
	movq	16(%rbx), %rdx
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
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%r8, %rdi
	je	.L156
	testq	%rdx, %rdx
	je	.L156
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L148
	testb	$1, 0(%rbp)
	movzbl	24(%rbx), %eax
	je	.L150
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L165
.L151:
	movq	%rdx, (%rdi)
.L148:
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L150:
	testb	%al, %al
	je	.L166
	movq	16(%rbx), %r8
	leaq	48(%rsp), %r9
	movq	%rbp, %rdx
	movl	$1, %ecx
	jle	.L155
	call	AddU_X_X_Imp
	testl	%eax, %eax
	jne	.L160
.L162:
	movq	48(%rsp), %rdx
	jmp	.L151
	.p2align 4,,10
.L166:
	movq	.refptr.ep_uint(%rip), %rbx
	leaq	56(%rsp), %rdx
	movq	%rbp, %rcx
	call	*64(%rbx)
	testl	%eax, %eax
	jne	.L160
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L162
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rbx)
	movl	44(%rsp), %eax
	.p2align 4,,10
.L160:
	movl	%eax, %esi
.L167:
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L165:
	leaq	48(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L162
	movl	%eax, %esi
	jmp	.L167
	.p2align 4,,10
.L155:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L162
	movl	%eax, %esi
	jmp	.L167
	.p2align 4,,10
.L156:
	movl	$-1, %esi
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
	je	.L182
	testq	%rcx, %rcx
	je	.L182
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L168
	testl	%ebp, %ebp
	movzbl	24(%rbx), %eax
	jg	.L205
	jne	.L173
	testb	%al, %al
	jne	.L206
	movq	.refptr.number_zero(%rip), %rax
.L174:
	movq	%rax, (%rdi)
.L168:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L205:
	testb	%al, %al
	movl	%ebp, %r10d
	je	.L183
	movq	16(%rbx), %rdx
	jle	.L207
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	jne	.L194
	.p2align 4,,10
.L199:
	movq	40(%rsp), %rax
	jmp	.L174
	.p2align 4,,10
.L173:
	cmpl	$-2147483648, %ebp
	je	.L208
	movl	%ebp, %r10d
	negl	%r10d
	testb	%al, %al
	je	.L187
	jle	.L179
.L178:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L199
.L194:
	movl	%eax, %esi
.L209:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L183:
	movl	$1, %ecx
.L171:
	leaq	40(%rsp), %r8
	movl	%r10d, %edx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L199
	movl	%eax, %esi
	jmp	.L209
	.p2align 4,,10
.L206:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L199
	movl	%eax, %esi
	jmp	.L209
	.p2align 4,,10
.L208:
	testb	%al, %al
	je	.L185
	movl	%ebp, %r10d
	jg	.L178
.L179:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L199
	movl	%eax, %esi
	jmp	.L209
	.p2align 4,,10
.L187:
	movl	$-1, %ecx
	jmp	.L171
	.p2align 4,,10
.L207:
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L199
	movl	%eax, %esi
	jmp	.L209
	.p2align 4,,10
.L185:
	movl	$-1, %ecx
	movl	%ebp, %r10d
	jmp	.L171
	.p2align 4,,10
.L182:
	movl	$-1, %esi
	jmp	.L168
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
	je	.L224
	testq	%rcx, %rcx
	je	.L224
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L210
	testq	%rbp, %rbp
	movzbl	24(%rbx), %eax
	jg	.L247
	jne	.L215
	testb	%al, %al
	jne	.L248
	movq	.refptr.number_zero(%rip), %rax
.L216:
	movq	%rax, (%rdi)
.L210:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L247:
	testb	%al, %al
	movq	%rbp, %r10
	je	.L225
	movq	16(%rbx), %rdx
	jle	.L249
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	jne	.L236
	.p2align 4,,10
.L241:
	movq	40(%rsp), %rax
	jmp	.L216
	.p2align 4,,10
.L215:
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rbp
	je	.L250
	movq	%rbp, %r10
	negq	%r10
	testb	%al, %al
	je	.L229
	jle	.L221
.L220:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L241
.L236:
	movl	%eax, %esi
.L251:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L225:
	movl	$1, %ecx
.L213:
	leaq	40(%rsp), %r8
	movq	%r10, %rdx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L241
	movl	%eax, %esi
	jmp	.L251
	.p2align 4,,10
.L248:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L241
	movl	%eax, %esi
	jmp	.L251
	.p2align 4,,10
.L250:
	testb	%al, %al
	je	.L227
	movq	%rbp, %r10
	jg	.L220
.L221:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L241
	movl	%eax, %esi
	jmp	.L251
	.p2align 4,,10
.L229:
	movl	$-1, %ecx
	jmp	.L213
	.p2align 4,,10
.L249:
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L241
	movl	%eax, %esi
	jmp	.L251
	.p2align 4,,10
.L227:
	movl	$-1, %ecx
	movq	%rbp, %r10
	jmp	.L213
	.p2align 4,,10
.L224:
	movl	$-1, %esi
	jmp	.L210
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
	movq	%rcx, %rbx
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L261
	testq	%rcx, %rcx
	je	.L261
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L252
	movzbl	(%rdi), %eax
	andl	$1, %eax
	cmpb	$0, 24(%rbx)
	jne	.L254
	testb	%al, %al
	jne	.L262
	movq	.refptr.ep_uint(%rip), %rbx
	leaq	56(%rsp), %rdx
	movq	%rdi, %rcx
	call	*64(%rbx)
	testl	%eax, %eax
	jne	.L266
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L267
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rbx)
	movl	44(%rsp), %eax
	.p2align 4,,10
.L266:
	movl	%eax, %esi
.L252:
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L254:
	jle	.L258
	testb	%al, %al
	jne	.L269
	movq	16(%rbx), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	AddU_X_X_Imp
	testl	%eax, %eax
	jne	.L266
.L267:
	movq	48(%rsp), %rax
.L255:
	movq	%rax, 0(%rbp)
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L262:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L255
	.p2align 4,,10
.L258:
	testb	%al, %al
	jne	.L269
	movq	16(%rbx), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L267
	movl	%eax, %esi
	jmp	.L252
	.p2align 4,,10
.L269:
	leaq	48(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L267
	movl	%eax, %esi
	jmp	.L252
	.p2align 4,,10
.L261:
	movl	$-1, %esi
	jmp	.L252
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
	jne	.L281
	testq	%rcx, %rcx
	je	.L281
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L297
.L272:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L297:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L272
	cmpb	$0, 24(%rsi)
	movzbl	24(%rdi), %eax
	je	.L298
	jle	.L276
	testb	%al, %al
	je	.L293
	movq	16(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$1, %ecx
	movq	16(%rsi), %rdx
	jle	.L295
.L280:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	jne	.L289
.L291:
	movq	40(%rsp), %rdx
	jmp	.L275
	.p2align 4,,10
.L298:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L299
.L275:
	movl	%ebx, %eax
	movq	%rdx, 0(%rbp)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L276:
	testb	%al, %al
	je	.L293
	movq	16(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$-1, %ecx
	movq	16(%rsi), %rdx
	jle	.L280
.L295:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	je	.L291
.L289:
	movl	%eax, %ebx
	jmp	.L272
	.p2align 4,,10
.L293:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L291
	jmp	.L289
	.p2align 4,,10
.L299:
	leaq	40(%rsp), %rdx
	movq	%rdi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L291
	jmp	.L289
	.p2align 4,,10
.L281:
	movl	$-1, %ebx
	jmp	.L272
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
	je	.L312
	testq	%rdx, %rdx
	je	.L312
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L300
	testl	%ebp, %ebp
	movzbl	24(%rbx), %eax
	jg	.L332
	je	.L333
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	.L334
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ecx, %r8d
	jle	.L311
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L326
.L321:
	movl	%eax, %esi
.L300:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L332:
	testb	%al, %al
	je	.L335
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	jle	.L309
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	.L321
	.p2align 4,,10
.L326:
	movq	40(%rsp), %rdx
	jmp	.L306
	.p2align 4,,10
.L333:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L336
.L306:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L335:
	leaq	40(%rsp), %r8
	movl	%ebp, %edx
	movl	$1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L326
	movl	%eax, %esi
	jmp	.L300
	.p2align 4,,10
.L336:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L326
	movl	%eax, %esi
	jmp	.L300
	.p2align 4,,10
.L309:
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L326
	movl	%eax, %esi
	jmp	.L300
	.p2align 4,,10
.L334:
	leaq	40(%rsp), %r8
	movl	%ecx, %edx
	movl	$-1, %ecx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L326
	movl	%eax, %esi
	jmp	.L300
	.p2align 4,,10
.L311:
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L326
	movl	%eax, %esi
	jmp	.L300
	.p2align 4,,10
.L312:
	movl	$-1, %esi
	jmp	.L300
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
	je	.L349
	testq	%rdx, %rdx
	je	.L349
	movq	%rdx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L337
	testq	%rbp, %rbp
	movzbl	24(%rbx), %eax
	jg	.L369
	je	.L370
	movabsq	$-9223372036854775808, %rcx
	movq	%rbp, %rdx
	negq	%rdx
	cmpq	%rcx, %rbp
	cmovne	%rdx, %rbp
	testb	%al, %al
	je	.L371
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L348
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L363
.L358:
	movl	%eax, %esi
.L337:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L369:
	testb	%al, %al
	je	.L372
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	jle	.L346
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	.L358
	.p2align 4,,10
.L363:
	movq	40(%rsp), %rdx
	jmp	.L343
	.p2align 4,,10
.L370:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L373
.L343:
	movl	%esi, %eax
	movq	%rdx, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L372:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L363
	movl	%eax, %esi
	jmp	.L337
	.p2align 4,,10
.L373:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L363
	movl	%eax, %esi
	jmp	.L337
	.p2align 4,,10
.L346:
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L363
	movl	%eax, %esi
	jmp	.L337
	.p2align 4,,10
.L371:
	leaq	40(%rsp), %r8
	movq	%rbp, %rdx
	movl	$-1, %ecx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L363
	movl	%eax, %esi
	jmp	.L337
	.p2align 4,,10
.L348:
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L363
	movl	%eax, %esi
	jmp	.L337
	.p2align 4,,10
.L349:
	movl	$-1, %esi
	jmp	.L337
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
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, %rbx
	testq	%r8, %r8
	movq	%rcx, %rdi
	sete	%dl
	testq	%rbx, %rbx
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L382
	testq	%rcx, %rcx
	je	.L382
	movq	%rbx, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L374
	testb	$1, (%rdi)
	movzbl	24(%rbx), %eax
	je	.L376
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L391
.L377:
	movq	%rdx, 0(%rbp)
.L374:
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L376:
	testb	%al, %al
	je	.L392
	movq	16(%rbx), %r8
	leaq	48(%rsp), %r9
	movq	%rdi, %rdx
	movl	$1, %ecx
	jle	.L381
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	.L386
.L388:
	movq	48(%rsp), %rdx
	jmp	.L377
	.p2align 4,,10
.L392:
	movq	.refptr.ep_uint(%rip), %rbx
	leaq	56(%rsp), %rdx
	movq	%rdi, %rcx
	call	*64(%rbx)
	testl	%eax, %eax
	jne	.L386
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L388
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rbx)
	movl	44(%rsp), %eax
	.p2align 4,,10
.L386:
	movl	%eax, %esi
.L393:
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L391:
	leaq	48(%rsp), %rdx
	movq	%rbx, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L388
	movl	%eax, %esi
	jmp	.L393
	.p2align 4,,10
.L381:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L388
	movl	%eax, %esi
	jmp	.L393
	.p2align 4,,10
.L382:
	movl	$-1, %esi
	jmp	.L374
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
	je	.L408
	testq	%rcx, %rcx
	je	.L408
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L394
	testl	%ebp, %ebp
	movzbl	24(%rbx), %eax
	jg	.L431
	jne	.L399
	testb	%al, %al
	jne	.L432
	movq	.refptr.number_zero(%rip), %rax
.L400:
	movq	%rax, (%rdi)
.L394:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L431:
	testb	%al, %al
	movl	%ebp, %r10d
	je	.L409
	movq	16(%rbx), %rdx
	jle	.L433
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	.L420
	.p2align 4,,10
.L425:
	movq	40(%rsp), %rax
	jmp	.L400
	.p2align 4,,10
.L399:
	cmpl	$-2147483648, %ebp
	je	.L434
	movl	%ebp, %r10d
	negl	%r10d
	testb	%al, %al
	je	.L413
	jle	.L405
.L404:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L425
.L420:
	movl	%eax, %esi
.L435:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L409:
	movl	$-1, %ecx
.L397:
	leaq	40(%rsp), %r8
	movl	%r10d, %edx
	call	From_I_Imp
	testl	%eax, %eax
	je	.L425
	movl	%eax, %esi
	jmp	.L435
	.p2align 4,,10
.L432:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L425
	movl	%eax, %esi
	jmp	.L435
	.p2align 4,,10
.L434:
	testb	%al, %al
	je	.L411
	movl	%ebp, %r10d
	jg	.L404
.L405:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movl	%r10d, %r8d
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	testl	%eax, %eax
	je	.L425
	movl	%eax, %esi
	jmp	.L435
	.p2align 4,,10
.L413:
	movl	$1, %ecx
	jmp	.L397
	.p2align 4,,10
.L433:
	leaq	40(%rsp), %r9
	movl	%ebp, %r8d
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	testl	%eax, %eax
	je	.L425
	movl	%eax, %esi
	jmp	.L435
	.p2align 4,,10
.L411:
	movl	$1, %ecx
	movl	%ebp, %r10d
	jmp	.L397
	.p2align 4,,10
.L408:
	movl	$-1, %esi
	jmp	.L394
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
	je	.L450
	testq	%rcx, %rcx
	je	.L450
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L436
	testq	%rbp, %rbp
	movzbl	24(%rbx), %eax
	jg	.L473
	jne	.L441
	testb	%al, %al
	jne	.L474
	movq	.refptr.number_zero(%rip), %rax
.L442:
	movq	%rax, (%rdi)
.L436:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L473:
	testb	%al, %al
	movq	%rbp, %r10
	je	.L451
	movq	16(%rbx), %rdx
	jle	.L475
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	.L462
	.p2align 4,,10
.L467:
	movq	40(%rsp), %rax
	jmp	.L442
	.p2align 4,,10
.L441:
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rbp
	je	.L476
	movq	%rbp, %r10
	negq	%r10
	testb	%al, %al
	je	.L455
	jle	.L447
.L446:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L467
.L462:
	movl	%eax, %esi
.L477:
	movl	%esi, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L451:
	movl	$-1, %ecx
.L439:
	leaq	40(%rsp), %r8
	movq	%r10, %rdx
	call	From_L_Imp
	testl	%eax, %eax
	je	.L467
	movl	%eax, %esi
	jmp	.L477
	.p2align 4,,10
.L474:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L467
	movl	%eax, %esi
	jmp	.L477
	.p2align 4,,10
.L476:
	testb	%al, %al
	je	.L453
	movq	%rbp, %r10
	jg	.L446
.L447:
	movq	16(%rbx), %rdx
	leaq	40(%rsp), %r9
	movq	%r10, %r8
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	testl	%eax, %eax
	je	.L467
	movl	%eax, %esi
	jmp	.L477
	.p2align 4,,10
.L455:
	movl	$1, %ecx
	jmp	.L439
	.p2align 4,,10
.L475:
	leaq	40(%rsp), %r9
	movq	%rbp, %r8
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	testl	%eax, %eax
	je	.L467
	movl	%eax, %esi
	jmp	.L477
	.p2align 4,,10
.L453:
	movl	$1, %ecx
	movq	%rbp, %r10
	jmp	.L439
	.p2align 4,,10
.L450:
	movl	$-1, %esi
	jmp	.L436
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
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%r8, %r8
	movq	%rcx, %rbx
	sete	%dl
	testq	%rdi, %rdi
	movq	%r8, %rbp
	sete	%al
	orb	%al, %dl
	jne	.L487
	testq	%rcx, %rcx
	je	.L487
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L478
	movzbl	(%rdi), %eax
	andl	$1, %eax
	cmpb	$0, 24(%rbx)
	jne	.L480
	testb	%al, %al
	jne	.L488
	movq	.refptr.ep_uint(%rip), %rbx
	leaq	56(%rsp), %rdx
	movq	%rdi, %rcx
	call	*64(%rbx)
	testl	%eax, %eax
	jne	.L492
	movq	56(%rsp), %r8
	leaq	48(%rsp), %rcx
	movl	$-1, %edx
	call	AllocateNumber
	testl	%eax, %eax
	je	.L493
	movl	%eax, 44(%rsp)
	movq	56(%rsp), %rcx
	call	*32(%rbx)
	movl	44(%rsp), %eax
	.p2align 4,,10
.L492:
	movl	%eax, %esi
.L478:
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L480:
	jle	.L484
	testb	%al, %al
	jne	.L495
	movq	16(%rbx), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	.L492
.L493:
	movq	48(%rsp), %rax
.L481:
	movq	%rax, 0(%rbp)
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L488:
	movq	.refptr.number_zero(%rip), %rax
	jmp	.L481
	.p2align 4,,10
.L484:
	testb	%al, %al
	jne	.L495
	movq	16(%rbx), %rdx
	leaq	48(%rsp), %r9
	movq	%rdi, %r8
	movl	$-1, %ecx
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L493
	movl	%eax, %esi
	jmp	.L478
	.p2align 4,,10
.L495:
	leaq	48(%rsp), %rdx
	movq	%rbx, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L493
	movl	%eax, %esi
	jmp	.L478
	.p2align 4,,10
.L487:
	movl	$-1, %esi
	jmp	.L478
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
	jne	.L507
	testq	%rcx, %rcx
	je	.L507
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L523
.L498:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L523:
	movq	%rdi, %rcx
	call	CheckNumber
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L498
	cmpb	$0, 24(%rsi)
	movzbl	24(%rdi), %eax
	je	.L524
	jle	.L502
	testb	%al, %al
	je	.L519
	movq	16(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$1, %ecx
	movq	16(%rsi), %rdx
	jle	.L521
.L506:
	call	SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	.L515
.L517:
	movq	40(%rsp), %rdx
	jmp	.L501
	.p2align 4,,10
.L524:
	testb	%al, %al
	movq	.refptr.number_zero(%rip), %rdx
	jne	.L525
.L501:
	movl	%ebx, %eax
	movq	%rdx, 0(%rbp)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L502:
	testb	%al, %al
	je	.L519
	movq	16(%rdi), %r8
	leaq	40(%rsp), %r9
	movl	$-1, %ecx
	movq	16(%rsi), %rdx
	jle	.L506
.L521:
	call	AddU_X_X_Imp
	testl	%eax, %eax
	je	.L517
.L515:
	movl	%eax, %ebx
	jmp	.L498
	.p2align 4,,10
.L519:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	call	DuplicateNumber
	testl	%eax, %eax
	je	.L517
	jmp	.L515
	.p2align 4,,10
.L525:
	leaq	40(%rsp), %rdx
	movq	%rdi, %rcx
	call	Negate_Imp
	testl	%eax, %eax
	je	.L517
	jmp	.L515
	.p2align 4,,10
.L507:
	movl	$-1, %ebx
	jmp	.L498
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
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
