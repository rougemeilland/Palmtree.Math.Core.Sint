	.file	"pmc_add_sub.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.def	GET_ABS_32;	.scl	3;	.type	32;	.endef
	.seh_proc	GET_ABS_32
GET_ABS_32:
.LFB4362:
	.file 1 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_inline_func.h"
	.loc 1 780 5
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 781 12
	cmpl	$0, 16(%rbp)
	jle	.L2
	.loc 1 783 19
	movq	24(%rbp), %rax
	movb	$1, (%rax)
	.loc 1 784 21
	movl	16(%rbp), %eax
	jmp	.L3
.L2:
	.loc 1 786 17
	cmpl	$0, 16(%rbp)
	jne	.L4
	.loc 1 788 19
	movq	24(%rbp), %rax
	movb	$0, (%rax)
	.loc 1 789 20
	movl	$0, %eax
	jmp	.L3
.L4:
	.loc 1 793 19
	movq	24(%rbp), %rax
	movb	$-1, (%rax)
	.loc 1 794 63
	cmpl	$-2147483648, 16(%rbp)
	je	.L5
	.loc 1 794 76 discriminator 1
	movl	16(%rbp), %eax
	negl	%eax
	.loc 1 794 63 discriminator 1
	jmp	.L3
.L5:
	.loc 1 794 63 is_stmt 0 discriminator 2
	movl	$-2147483648, %eax
.L3:
	.loc 1 796 1 is_stmt 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4362:
	.seh_endproc
	.def	GET_ABS_64;	.scl	3;	.type	32;	.endef
	.seh_proc	GET_ABS_64
GET_ABS_64:
.LFB4363:
	.loc 1 800 5
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 801 12
	cmpq	$0, 16(%rbp)
	jle	.L8
	.loc 1 803 19
	movq	24(%rbp), %rax
	movb	$1, (%rax)
	.loc 1 804 21
	movq	16(%rbp), %rax
	jmp	.L9
.L8:
	.loc 1 806 17
	cmpq	$0, 16(%rbp)
	jne	.L10
	.loc 1 808 19
	movq	24(%rbp), %rax
	movb	$0, (%rax)
	.loc 1 809 20
	movl	$0, %eax
	jmp	.L9
.L10:
	.loc 1 813 19
	movq	24(%rbp), %rax
	movb	$-1, (%rax)
	.loc 1 814 81
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, 16(%rbp)
	je	.L11
	.loc 1 814 94 discriminator 1
	movq	16(%rbp), %rax
	negq	%rax
	.loc 1 814 81 discriminator 1
	jmp	.L9
.L11:
	.loc 1 814 81 is_stmt 0 discriminator 2
	movabsq	$-9223372036854775808, %rax
.L9:
	.loc 1 816 5 is_stmt 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4363:
	.seh_endproc
	.def	AddU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_I_Imp
AddU_X_I_Imp:
.LFB4364:
	.file 2 "../pmc_add_sub.c"
	.loc 2 32 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, %eax
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	%r9, 40(%rbp)
	movb	%al, 16(%rbp)
	.loc 2 35 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	144(%rax), %rax
	.loc 2 35 19
	leaq	-16(%rbp), %r8
	movl	32(%rbp), %edx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL0:
	movl	%eax, -4(%rbp)
	.loc 2 35 8
	cmpl	$0, -4(%rbp)
	je	.L14
	.loc 2 36 16
	movl	-4(%rbp), %eax
	jmp	.L17
.L14:
	.loc 2 37 19
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 37 8
	cmpl	$0, -4(%rbp)
	je	.L16
	.loc 2 39 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 39 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL1:
	.loc 2 40 16
	movl	-4(%rbp), %eax
	jmp	.L17
.L16:
	.loc 2 42 12
	movl	$0, %eax
.L17:
	.loc 2 43 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4364:
	.seh_endproc
	.def	AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_L_Imp
AddU_X_L_Imp:
.LFB4365:
	.loc 2 46 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, %eax
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movb	%al, 16(%rbp)
	.loc 2 49 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	152(%rax), %rax
	.loc 2 49 19
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL2:
	movl	%eax, -4(%rbp)
	.loc 2 49 8
	cmpl	$0, -4(%rbp)
	je	.L19
	.loc 2 50 16
	movl	-4(%rbp), %eax
	jmp	.L22
.L19:
	.loc 2 51 19
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 51 8
	cmpl	$0, -4(%rbp)
	je	.L21
	.loc 2 53 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 53 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL3:
	.loc 2 54 16
	movl	-4(%rbp), %eax
	jmp	.L22
.L21:
	.loc 2 56 12
	movl	$0, %eax
.L22:
	.loc 2 57 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4365:
	.seh_endproc
	.def	AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_X_Imp
AddU_X_X_Imp:
.LFB4366:
	.loc 2 60 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, %eax
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movb	%al, 16(%rbp)
	.loc 2 63 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	160(%rax), %rax
	.loc 2 63 19
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL4:
	movl	%eax, -4(%rbp)
	.loc 2 63 8
	cmpl	$0, -4(%rbp)
	je	.L24
	.loc 2 64 16
	movl	-4(%rbp), %eax
	jmp	.L27
.L24:
	.loc 2 65 19
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 65 8
	cmpl	$0, -4(%rbp)
	je	.L26
	.loc 2 67 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 67 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL5:
	.loc 2 68 16
	movl	-4(%rbp), %eax
	jmp	.L27
.L26:
	.loc 2 70 12
	movl	$0, %eax
.L27:
	.loc 2 71 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4366:
	.seh_endproc
	.def	SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_I_Imp
SubtructU_X_I_Imp:
.LFB4367:
	.loc 2 74 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, %eax
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	%r9, 40(%rbp)
	movb	%al, 16(%rbp)
	.loc 2 77 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	440(%rax), %rax
	.loc 2 77 19
	leaq	-8(%rbp), %r8
	movl	32(%rbp), %edx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL6:
	movl	%eax, -4(%rbp)
	.loc 2 77 8
	cmpl	$0, -4(%rbp)
	je	.L29
	.loc 2 78 16
	movl	-4(%rbp), %eax
	jmp	.L41
.L29:
	.loc 2 79 11
	movl	-8(%rbp), %eax
	.loc 2 79 8
	testl	%eax, %eax
	jle	.L31
.LBB2:
	.loc 2 85 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	184(%rax), %rax
	.loc 2 85 23
	leaq	-16(%rbp), %r8
	movl	32(%rbp), %edx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL7:
	movl	%eax, -4(%rbp)
	.loc 2 85 12
	cmpl	$0, -4(%rbp)
	je	.L32
	.loc 2 86 20
	movl	-4(%rbp), %eax
	jmp	.L41
.L32:
	.loc 2 87 23
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 87 12
	cmpl	$0, -4(%rbp)
	je	.L35
	.loc 2 89 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 89 13
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL8:
	.loc 2 90 20
	movl	-4(%rbp), %eax
	jmp	.L41
.L31:
.LBE2:
	.loc 2 93 16
	movl	-8(%rbp), %eax
	.loc 2 93 13
	testl	%eax, %eax
	jne	.L36
	.loc 2 98 12
	movq	40(%rbp), %rax
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L35
.L36:
.LBB3:
	.loc 2 106 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	168(%rax), %rax
	.loc 2 106 23
	leaq	-20(%rbp), %r8
	movq	24(%rbp), %rdx
	movl	32(%rbp), %ecx
	call	*%rax
.LVL9:
	movl	%eax, -4(%rbp)
	.loc 2 106 12
	cmpl	$0, -4(%rbp)
	je	.L37
	.loc 2 107 20
	movl	-4(%rbp), %eax
	jmp	.L41
.L37:
	.loc 2 109 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	16(%rax), %r8
	.loc 2 109 23
	movl	-20(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL10:
	movl	%eax, -4(%rbp)
	.loc 2 109 12
	cmpl	$0, -4(%rbp)
	je	.L39
	.loc 2 110 20
	movl	-4(%rbp), %eax
	jmp	.L41
.L39:
	.loc 2 111 23
	movq	-32(%rbp), %rdx
	movzbl	16(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 111 12
	cmpl	$0, -4(%rbp)
	je	.L35
	.loc 2 113 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 113 13
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL11:
	.loc 2 114 20
	movl	-4(%rbp), %eax
	jmp	.L41
.L35:
.LBE3:
	.loc 2 117 12
	movl	$0, %eax
.L41:
	.loc 2 118 1 discriminator 2
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4367:
	.seh_endproc
	.def	SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_L_Imp
SubtructU_X_L_Imp:
.LFB4368:
	.loc 2 121 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, %eax
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movb	%al, 16(%rbp)
	.loc 2 124 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	448(%rax), %rax
	.loc 2 124 19
	leaq	-8(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL12:
	movl	%eax, -4(%rbp)
	.loc 2 124 8
	cmpl	$0, -4(%rbp)
	je	.L43
	.loc 2 125 16
	movl	-4(%rbp), %eax
	jmp	.L55
.L43:
	.loc 2 126 11
	movl	-8(%rbp), %eax
	.loc 2 126 8
	testl	%eax, %eax
	jle	.L45
.LBB4:
	.loc 2 132 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	192(%rax), %rax
	.loc 2 132 23
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL13:
	movl	%eax, -4(%rbp)
	.loc 2 132 12
	cmpl	$0, -4(%rbp)
	je	.L46
	.loc 2 133 20
	movl	-4(%rbp), %eax
	jmp	.L55
.L46:
	.loc 2 134 23
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 134 12
	cmpl	$0, -4(%rbp)
	je	.L49
	.loc 2 136 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 136 13
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL14:
	.loc 2 137 20
	movl	-4(%rbp), %eax
	jmp	.L55
.L45:
.LBE4:
	.loc 2 140 16
	movl	-8(%rbp), %eax
	.loc 2 140 13
	testl	%eax, %eax
	jne	.L50
	.loc 2 145 12
	movq	40(%rbp), %rax
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L49
.L50:
.LBB5:
	.loc 2 153 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	176(%rax), %rax
	.loc 2 153 23
	leaq	-24(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	32(%rbp), %rcx
	call	*%rax
.LVL15:
	movl	%eax, -4(%rbp)
	.loc 2 153 12
	cmpl	$0, -4(%rbp)
	je	.L51
	.loc 2 154 20
	movl	-4(%rbp), %eax
	jmp	.L55
.L51:
	.loc 2 156 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	24(%rax), %r8
	.loc 2 156 23
	movq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL16:
	movl	%eax, -4(%rbp)
	.loc 2 156 12
	cmpl	$0, -4(%rbp)
	je	.L53
	.loc 2 157 20
	movl	-4(%rbp), %eax
	jmp	.L55
.L53:
	.loc 2 158 23
	movq	-32(%rbp), %rdx
	movzbl	16(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 158 12
	cmpl	$0, -4(%rbp)
	je	.L49
	.loc 2 160 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 160 13
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL17:
	.loc 2 161 20
	movl	-4(%rbp), %eax
	jmp	.L55
.L49:
.LBE5:
	.loc 2 164 12
	movl	$0, %eax
.L55:
	.loc 2 165 1 discriminator 2
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4368:
	.seh_endproc
	.def	SubtructU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_X_Imp
SubtructU_X_X_Imp:
.LFB4369:
	.loc 2 168 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, %eax
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movb	%al, 16(%rbp)
	.loc 2 171 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	456(%rax), %rax
	.loc 2 171 19
	leaq	-8(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL18:
	movl	%eax, -4(%rbp)
	.loc 2 171 8
	cmpl	$0, -4(%rbp)
	je	.L57
	.loc 2 172 16
	movl	-4(%rbp), %eax
	jmp	.L68
.L57:
	.loc 2 173 11
	movl	-8(%rbp), %eax
	.loc 2 173 8
	testl	%eax, %eax
	jle	.L59
.LBB6:
	.loc 2 179 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	200(%rax), %rax
	.loc 2 179 23
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL19:
	movl	%eax, -4(%rbp)
	.loc 2 179 12
	cmpl	$0, -4(%rbp)
	je	.L60
	.loc 2 180 20
	movl	-4(%rbp), %eax
	jmp	.L68
.L60:
	.loc 2 181 23
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 181 12
	cmpl	$0, -4(%rbp)
	je	.L63
	.loc 2 183 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 183 13
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL20:
	.loc 2 184 20
	movl	-4(%rbp), %eax
	jmp	.L68
.L59:
.LBE6:
	.loc 2 187 16
	movl	-8(%rbp), %eax
	.loc 2 187 13
	testl	%eax, %eax
	jne	.L64
	.loc 2 192 12
	movq	40(%rbp), %rax
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L63
.L64:
.LBB7:
	.loc 2 200 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	200(%rax), %rax
	.loc 2 200 23
	leaq	-24(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	32(%rbp), %rcx
	call	*%rax
.LVL21:
	movl	%eax, -4(%rbp)
	.loc 2 200 12
	cmpl	$0, -4(%rbp)
	je	.L65
	.loc 2 201 20
	movl	-4(%rbp), %eax
	jmp	.L68
.L65:
	.loc 2 202 23
	movq	-24(%rbp), %rdx
	movzbl	16(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 202 12
	cmpl	$0, -4(%rbp)
	je	.L63
	.loc 2 204 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 204 13
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL22:
	.loc 2 205 20
	movl	-4(%rbp), %eax
	jmp	.L68
.L63:
.LBE7:
	.loc 2 208 12
	movl	$0, %eax
.L68:
	.loc 2 209 1 discriminator 2
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4369:
	.seh_endproc
	.globl	PMC_Add_I_X
	.def	PMC_Add_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_I_X
PMC_Add_I_X:
.LFB4370:
	.loc 2 212 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 213 8
	cmpq	$0, 24(%rbp)
	jne	.L70
	.loc 2 214 16
	movl	$-1, %eax
	jmp	.L82
.L70:
	.loc 2 215 8
	cmpq	$0, 32(%rbp)
	jne	.L72
	.loc 2 216 16
	movl	$-1, %eax
	jmp	.L82
.L72:
	.loc 2 218 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 220 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 220 8
	cmpl	$0, -12(%rbp)
	je	.L73
	.loc 2 221 16
	movl	-12(%rbp), %eax
	jmp	.L82
.L73:
	.loc 2 223 23
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movl	16(%rbp), %ecx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 224 16
	movzbl	-25(%rbp), %eax
	.loc 2 224 8
	testb	%al, %al
	jne	.L74
	.loc 2 228 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 228 12
	testb	%al, %al
	jne	.L75
	.loc 2 233 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L76
.L75:
	.loc 2 240 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 240 16
	cmpl	$0, -12(%rbp)
	je	.L76
	.loc 2 241 24
	movl	-12(%rbp), %eax
	jmp	.L82
.L74:
	.loc 2 244 21
	movzbl	-25(%rbp), %eax
	.loc 2 244 13
	testb	%al, %al
	jle	.L77
	.loc 2 248 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 248 12
	testb	%al, %al
	jne	.L78
	.loc 2 253 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 253 16
	cmpl	$0, -12(%rbp)
	je	.L76
	.loc 2 254 24
	movl	-12(%rbp), %eax
	jmp	.L82
.L78:
	.loc 2 256 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 256 17
	testb	%al, %al
	jle	.L79
	.loc 2 261 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 261 16
	cmpl	$0, -12(%rbp)
	je	.L76
	.loc 2 262 24
	movl	-12(%rbp), %eax
	jmp	.L82
.L79:
	.loc 2 269 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 269 16
	cmpl	$0, -12(%rbp)
	je	.L76
	.loc 2 270 24
	movl	-12(%rbp), %eax
	jmp	.L82
.L77:
	.loc 2 277 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 277 12
	testb	%al, %al
	jne	.L80
	.loc 2 282 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 282 16
	cmpl	$0, -12(%rbp)
	je	.L76
	.loc 2 283 24
	movl	-12(%rbp), %eax
	jmp	.L82
.L80:
	.loc 2 285 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 285 17
	testb	%al, %al
	jle	.L81
	.loc 2 290 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 290 16
	cmpl	$0, -12(%rbp)
	je	.L76
	.loc 2 291 24
	movl	-12(%rbp), %eax
	jmp	.L82
.L81:
	.loc 2 298 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 298 16
	cmpl	$0, -12(%rbp)
	je	.L76
	.loc 2 299 24
	movl	-12(%rbp), %eax
	jmp	.L82
.L76:
	.loc 2 302 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 303 12
	movl	$0, %eax
.L82:
	.loc 2 304 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4370:
	.seh_endproc
	.globl	PMC_Add_L_X
	.def	PMC_Add_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_L_X
PMC_Add_L_X:
.LFB4371:
	.loc 2 307 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 308 8
	cmpq	$0, 24(%rbp)
	jne	.L84
	.loc 2 309 16
	movl	$-1, %eax
	jmp	.L96
.L84:
	.loc 2 310 8
	cmpq	$0, 32(%rbp)
	jne	.L86
	.loc 2 311 16
	movl	$-1, %eax
	jmp	.L96
.L86:
	.loc 2 313 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 315 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 315 8
	cmpl	$0, -12(%rbp)
	je	.L87
	.loc 2 316 16
	movl	-12(%rbp), %eax
	jmp	.L96
.L87:
	.loc 2 318 23
	leaq	-33(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 319 16
	movzbl	-33(%rbp), %eax
	.loc 2 319 8
	testb	%al, %al
	jne	.L88
	.loc 2 323 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 323 12
	testb	%al, %al
	jne	.L89
	.loc 2 328 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L90
.L89:
	.loc 2 335 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 335 16
	cmpl	$0, -12(%rbp)
	je	.L90
	.loc 2 336 24
	movl	-12(%rbp), %eax
	jmp	.L96
.L88:
	.loc 2 339 21
	movzbl	-33(%rbp), %eax
	.loc 2 339 13
	testb	%al, %al
	jle	.L91
	.loc 2 343 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 343 12
	testb	%al, %al
	jne	.L92
	.loc 2 348 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 348 16
	cmpl	$0, -12(%rbp)
	je	.L90
	.loc 2 349 24
	movl	-12(%rbp), %eax
	jmp	.L96
.L92:
	.loc 2 351 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 351 17
	testb	%al, %al
	jle	.L93
	.loc 2 356 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 356 16
	cmpl	$0, -12(%rbp)
	je	.L90
	.loc 2 357 24
	movl	-12(%rbp), %eax
	jmp	.L96
.L93:
	.loc 2 364 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 364 16
	cmpl	$0, -12(%rbp)
	je	.L90
	.loc 2 365 24
	movl	-12(%rbp), %eax
	jmp	.L96
.L91:
	.loc 2 372 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 372 12
	testb	%al, %al
	jne	.L94
	.loc 2 377 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 377 16
	cmpl	$0, -12(%rbp)
	je	.L90
	.loc 2 378 24
	movl	-12(%rbp), %eax
	jmp	.L96
.L94:
	.loc 2 380 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 380 17
	testb	%al, %al
	jle	.L95
	.loc 2 385 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 385 16
	cmpl	$0, -12(%rbp)
	je	.L90
	.loc 2 386 24
	movl	-12(%rbp), %eax
	jmp	.L96
.L95:
	.loc 2 393 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 393 16
	cmpl	$0, -12(%rbp)
	je	.L90
	.loc 2 394 24
	movl	-12(%rbp), %eax
	jmp	.L96
.L90:
	.loc 2 397 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 398 12
	movl	$0, %eax
.L96:
	.loc 2 399 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4371:
	.seh_endproc
	.globl	PMC_Add_UX_X
	.def	PMC_Add_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_UX_X
PMC_Add_UX_X:
.LFB4372:
	.loc 2 402 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 403 8
	cmpq	$0, 24(%rbp)
	jne	.L98
	.loc 2 404 16
	movl	$-1, %eax
	jmp	.L111
.L98:
	.loc 2 405 8
	cmpq	$0, 32(%rbp)
	jne	.L100
	.loc 2 406 16
	movl	$-1, %eax
	jmp	.L111
.L100:
	.loc 2 408 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 410 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 410 8
	cmpl	$0, -12(%rbp)
	je	.L101
	.loc 2 411 16
	movl	-12(%rbp), %eax
	jmp	.L111
.L101:
	.loc 2 413 19
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	IsZero_UINT
	movl	%eax, -12(%rbp)
	.loc 2 413 8
	cmpl	$0, -12(%rbp)
	je	.L102
	.loc 2 414 16
	movl	-12(%rbp), %eax
	jmp	.L111
.L102:
	.loc 2 415 9
	movzbl	-25(%rbp), %eax
	.loc 2 415 8
	testb	%al, %al
	je	.L103
	.loc 2 419 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 419 12
	testb	%al, %al
	jne	.L104
	.loc 2 424 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L105
.L104:
	.loc 2 431 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 431 16
	cmpl	$0, -12(%rbp)
	je	.L105
	.loc 2 432 24
	movl	-12(%rbp), %eax
	jmp	.L111
.L103:
	.loc 2 439 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 439 12
	testb	%al, %al
	jne	.L106
.LBB8:
	.loc 2 445 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 445 27
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	*%r8
.LVL23:
	movl	%eax, -12(%rbp)
	.loc 2 445 16
	cmpl	$0, -12(%rbp)
	je	.L107
	.loc 2 446 24
	movl	-12(%rbp), %eax
	jmp	.L111
.L107:
	.loc 2 447 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 447 16
	cmpl	$0, -12(%rbp)
	je	.L105
	.loc 2 449 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 449 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL24:
	.loc 2 450 24
	movl	-12(%rbp), %eax
	jmp	.L111
.L106:
.LBE8:
	.loc 2 453 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 453 17
	testb	%al, %al
	jle	.L110
	.loc 2 458 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 458 16
	cmpl	$0, -12(%rbp)
	je	.L105
	.loc 2 459 24
	movl	-12(%rbp), %eax
	jmp	.L111
.L110:
	.loc 2 466 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 466 16
	cmpl	$0, -12(%rbp)
	je	.L105
	.loc 2 467 24
	movl	-12(%rbp), %eax
	jmp	.L111
.L105:
	.loc 2 470 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 471 12
	movl	$0, %eax
.L111:
	.loc 2 472 1 discriminator 2
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4372:
	.seh_endproc
	.globl	PMC_Add_X_I
	.def	PMC_Add_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_I
PMC_Add_X_I:
.LFB4373:
	.loc 2 475 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 476 8
	cmpq	$0, 16(%rbp)
	jne	.L113
	.loc 2 477 16
	movl	$-1, %eax
	jmp	.L125
.L113:
	.loc 2 478 8
	cmpq	$0, 32(%rbp)
	jne	.L115
	.loc 2 479 16
	movl	$-1, %eax
	jmp	.L125
.L115:
	.loc 2 481 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 483 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 483 8
	cmpl	$0, -12(%rbp)
	je	.L116
	.loc 2 484 16
	movl	-12(%rbp), %eax
	jmp	.L125
.L116:
	.loc 2 486 23
	leaq	-25(%rbp), %rax
	movl	24(%rbp), %ecx
	movq	%rax, %rdx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 487 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 487 8
	testb	%al, %al
	jne	.L117
	.loc 2 491 20
	movzbl	-25(%rbp), %eax
	.loc 2 491 12
	testb	%al, %al
	jne	.L118
	.loc 2 496 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L119
.L118:
	.loc 2 503 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 503 16
	cmpl	$0, -12(%rbp)
	je	.L119
	.loc 2 504 24
	movl	-12(%rbp), %eax
	jmp	.L125
.L117:
	.loc 2 507 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 507 13
	testb	%al, %al
	jle	.L120
	.loc 2 511 20
	movzbl	-25(%rbp), %eax
	.loc 2 511 12
	testb	%al, %al
	jne	.L121
	.loc 2 516 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 516 16
	cmpl	$0, -12(%rbp)
	je	.L119
	.loc 2 517 24
	movl	-12(%rbp), %eax
	jmp	.L125
.L121:
	.loc 2 519 25
	movzbl	-25(%rbp), %eax
	.loc 2 519 17
	testb	%al, %al
	jle	.L122
	.loc 2 524 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 524 16
	cmpl	$0, -12(%rbp)
	je	.L119
	.loc 2 525 24
	movl	-12(%rbp), %eax
	jmp	.L125
.L122:
	.loc 2 532 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 532 16
	cmpl	$0, -12(%rbp)
	je	.L119
	.loc 2 533 24
	movl	-12(%rbp), %eax
	jmp	.L125
.L120:
	.loc 2 540 20
	movzbl	-25(%rbp), %eax
	.loc 2 540 12
	testb	%al, %al
	jne	.L123
	.loc 2 545 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 545 16
	cmpl	$0, -12(%rbp)
	je	.L119
	.loc 2 546 24
	movl	-12(%rbp), %eax
	jmp	.L125
.L123:
	.loc 2 548 25
	movzbl	-25(%rbp), %eax
	.loc 2 548 17
	testb	%al, %al
	jle	.L124
	.loc 2 553 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 553 16
	cmpl	$0, -12(%rbp)
	je	.L119
	.loc 2 554 24
	movl	-12(%rbp), %eax
	jmp	.L125
.L124:
	.loc 2 561 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 561 16
	cmpl	$0, -12(%rbp)
	je	.L119
	.loc 2 562 24
	movl	-12(%rbp), %eax
	jmp	.L125
.L119:
	.loc 2 565 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 566 12
	movl	$0, %eax
.L125:
	.loc 2 567 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4373:
	.seh_endproc
	.globl	PMC_Add_X_L
	.def	PMC_Add_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_L
PMC_Add_X_L:
.LFB4374:
	.loc 2 570 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 571 8
	cmpq	$0, 16(%rbp)
	jne	.L127
	.loc 2 572 16
	movl	$-1, %eax
	jmp	.L139
.L127:
	.loc 2 573 8
	cmpq	$0, 32(%rbp)
	jne	.L129
	.loc 2 574 16
	movl	$-1, %eax
	jmp	.L139
.L129:
	.loc 2 576 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 578 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 578 8
	cmpl	$0, -12(%rbp)
	je	.L130
	.loc 2 579 16
	movl	-12(%rbp), %eax
	jmp	.L139
.L130:
	.loc 2 581 23
	leaq	-33(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 582 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 582 8
	testb	%al, %al
	jne	.L131
	.loc 2 586 20
	movzbl	-33(%rbp), %eax
	.loc 2 586 12
	testb	%al, %al
	jne	.L132
	.loc 2 591 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L133
.L132:
	.loc 2 598 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 598 16
	cmpl	$0, -12(%rbp)
	je	.L133
	.loc 2 599 24
	movl	-12(%rbp), %eax
	jmp	.L139
.L131:
	.loc 2 602 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 602 13
	testb	%al, %al
	jle	.L134
	.loc 2 606 20
	movzbl	-33(%rbp), %eax
	.loc 2 606 12
	testb	%al, %al
	jne	.L135
	.loc 2 611 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 611 16
	cmpl	$0, -12(%rbp)
	je	.L133
	.loc 2 612 24
	movl	-12(%rbp), %eax
	jmp	.L139
.L135:
	.loc 2 614 25
	movzbl	-33(%rbp), %eax
	.loc 2 614 17
	testb	%al, %al
	jle	.L136
	.loc 2 619 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 619 16
	cmpl	$0, -12(%rbp)
	je	.L133
	.loc 2 620 24
	movl	-12(%rbp), %eax
	jmp	.L139
.L136:
	.loc 2 627 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 627 16
	cmpl	$0, -12(%rbp)
	je	.L133
	.loc 2 628 24
	movl	-12(%rbp), %eax
	jmp	.L139
.L134:
	.loc 2 635 20
	movzbl	-33(%rbp), %eax
	.loc 2 635 12
	testb	%al, %al
	jne	.L137
	.loc 2 640 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 640 16
	cmpl	$0, -12(%rbp)
	je	.L133
	.loc 2 641 24
	movl	-12(%rbp), %eax
	jmp	.L139
.L137:
	.loc 2 643 25
	movzbl	-33(%rbp), %eax
	.loc 2 643 17
	testb	%al, %al
	jle	.L138
	.loc 2 648 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 648 16
	cmpl	$0, -12(%rbp)
	je	.L133
	.loc 2 649 24
	movl	-12(%rbp), %eax
	jmp	.L139
.L138:
	.loc 2 656 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 656 16
	cmpl	$0, -12(%rbp)
	je	.L133
	.loc 2 657 24
	movl	-12(%rbp), %eax
	jmp	.L139
.L133:
	.loc 2 660 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 661 12
	movl	$0, %eax
.L139:
	.loc 2 662 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4374:
	.seh_endproc
	.globl	PMC_Add_X_UX
	.def	PMC_Add_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_UX
PMC_Add_X_UX:
.LFB4375:
	.loc 2 665 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 666 8
	cmpq	$0, 16(%rbp)
	jne	.L141
	.loc 2 667 16
	movl	$-1, %eax
	jmp	.L158
.L141:
	.loc 2 668 8
	cmpq	$0, 24(%rbp)
	jne	.L143
	.loc 2 669 16
	movl	$-1, %eax
	jmp	.L158
.L143:
	.loc 2 670 8
	cmpq	$0, 32(%rbp)
	jne	.L144
	.loc 2 671 16
	movl	$-1, %eax
	jmp	.L158
.L144:
	.loc 2 673 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 675 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 675 8
	cmpl	$0, -12(%rbp)
	je	.L145
	.loc 2 676 16
	movl	-12(%rbp), %eax
	jmp	.L158
.L145:
	.loc 2 678 19
	leaq	-25(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	IsZero_UINT
	movl	%eax, -12(%rbp)
	.loc 2 678 8
	cmpl	$0, -12(%rbp)
	je	.L146
	.loc 2 679 16
	movl	-12(%rbp), %eax
	jmp	.L158
.L146:
	.loc 2 680 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 680 8
	testb	%al, %al
	jne	.L147
	.loc 2 684 13
	movzbl	-25(%rbp), %eax
	.loc 2 684 12
	testb	%al, %al
	je	.L148
	.loc 2 689 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L154
.L148:
.LBB9:
	.loc 2 697 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 697 27
	leaq	-40(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%r8
.LVL25:
	movl	%eax, -12(%rbp)
	.loc 2 697 16
	cmpl	$0, -12(%rbp)
	je	.L150
	.loc 2 698 24
	movl	-12(%rbp), %eax
	jmp	.L158
.L150:
	.loc 2 700 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	40(%rax), %r8
	.loc 2 700 27
	movq	-40(%rbp), %rcx
	leaq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL26:
	movl	%eax, -12(%rbp)
	.loc 2 700 16
	cmpl	$0, -12(%rbp)
	je	.L152
	.loc 2 701 24
	movl	-12(%rbp), %eax
	jmp	.L158
.L152:
	.loc 2 702 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 702 16
	cmpl	$0, -12(%rbp)
	je	.L154
	.loc 2 704 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 704 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL27:
	.loc 2 705 24
	movl	-12(%rbp), %eax
	jmp	.L158
.L147:
.LBE9:
	.loc 2 709 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 709 13
	testb	%al, %al
	jle	.L155
	.loc 2 713 13
	movzbl	-25(%rbp), %eax
	.loc 2 713 12
	testb	%al, %al
	je	.L156
	.loc 2 718 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 718 16
	cmpl	$0, -12(%rbp)
	je	.L154
	.loc 2 719 24
	movl	-12(%rbp), %eax
	jmp	.L158
.L156:
	.loc 2 726 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 726 16
	cmpl	$0, -12(%rbp)
	je	.L154
	.loc 2 727 24
	movl	-12(%rbp), %eax
	jmp	.L158
.L155:
	.loc 2 734 13
	movzbl	-25(%rbp), %eax
	.loc 2 734 12
	testb	%al, %al
	je	.L157
	.loc 2 739 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 739 16
	cmpl	$0, -12(%rbp)
	je	.L154
	.loc 2 740 24
	movl	-12(%rbp), %eax
	jmp	.L158
.L157:
	.loc 2 747 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 747 16
	cmpl	$0, -12(%rbp)
	je	.L154
	.loc 2 748 24
	movl	-12(%rbp), %eax
	jmp	.L158
.L154:
	.loc 2 752 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 753 12
	movl	$0, %eax
.L158:
	.loc 2 754 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4375:
	.seh_endproc
	.globl	PMC_Add_X_X
	.def	PMC_Add_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_X
PMC_Add_X_X:
.LFB4376:
	.loc 2 757 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 758 8
	cmpq	$0, 16(%rbp)
	jne	.L160
	.loc 2 759 16
	movl	$-1, %eax
	jmp	.L174
.L160:
	.loc 2 760 8
	cmpq	$0, 24(%rbp)
	jne	.L162
	.loc 2 761 16
	movl	$-1, %eax
	jmp	.L174
.L162:
	.loc 2 762 8
	cmpq	$0, 32(%rbp)
	jne	.L163
	.loc 2 763 16
	movl	$-1, %eax
	jmp	.L174
.L163:
	.loc 2 765 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 766 20
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 768 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 768 8
	cmpl	$0, -20(%rbp)
	je	.L164
	.loc 2 769 16
	movl	-20(%rbp), %eax
	jmp	.L174
.L164:
	.loc 2 770 19
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 770 8
	cmpl	$0, -20(%rbp)
	je	.L165
	.loc 2 771 16
	movl	-20(%rbp), %eax
	jmp	.L174
.L165:
	.loc 2 772 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 772 8
	testb	%al, %al
	jne	.L166
	.loc 2 776 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 776 12
	testb	%al, %al
	jne	.L167
	.loc 2 781 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L168
.L167:
	.loc 2 788 27
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 788 16
	cmpl	$0, -20(%rbp)
	je	.L168
	.loc 2 789 24
	movl	-20(%rbp), %eax
	jmp	.L174
.L166:
	.loc 2 792 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 792 13
	testb	%al, %al
	jle	.L169
	.loc 2 796 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 796 12
	testb	%al, %al
	jne	.L170
	.loc 2 801 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 801 16
	cmpl	$0, -20(%rbp)
	je	.L168
	.loc 2 802 24
	movl	-20(%rbp), %eax
	jmp	.L174
.L170:
	.loc 2 804 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 804 17
	testb	%al, %al
	jle	.L171
	.loc 2 809 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 809 16
	cmpl	$0, -20(%rbp)
	je	.L168
	.loc 2 810 24
	movl	-20(%rbp), %eax
	jmp	.L174
.L171:
	.loc 2 817 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 817 16
	cmpl	$0, -20(%rbp)
	je	.L168
	.loc 2 818 24
	movl	-20(%rbp), %eax
	jmp	.L174
.L169:
	.loc 2 825 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 825 12
	testb	%al, %al
	jne	.L172
	.loc 2 830 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 830 16
	cmpl	$0, -20(%rbp)
	je	.L168
	.loc 2 831 24
	movl	-20(%rbp), %eax
	jmp	.L174
.L172:
	.loc 2 833 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 833 17
	testb	%al, %al
	jle	.L173
	.loc 2 838 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 838 16
	cmpl	$0, -20(%rbp)
	je	.L168
	.loc 2 839 24
	movl	-20(%rbp), %eax
	jmp	.L174
.L173:
	.loc 2 846 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 846 16
	cmpl	$0, -20(%rbp)
	je	.L168
	.loc 2 847 24
	movl	-20(%rbp), %eax
	jmp	.L174
.L168:
	.loc 2 850 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 851 12
	movl	$0, %eax
.L174:
	.loc 2 852 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4376:
	.seh_endproc
	.globl	PMC_Subtruct_I_X
	.def	PMC_Subtruct_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_I_X
PMC_Subtruct_I_X:
.LFB4377:
	.loc 2 855 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 856 8
	cmpq	$0, 24(%rbp)
	jne	.L176
	.loc 2 857 16
	movl	$-1, %eax
	jmp	.L188
.L176:
	.loc 2 858 8
	cmpq	$0, 32(%rbp)
	jne	.L178
	.loc 2 859 16
	movl	$-1, %eax
	jmp	.L188
.L178:
	.loc 2 861 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 863 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 863 8
	cmpl	$0, -12(%rbp)
	je	.L179
	.loc 2 864 16
	movl	-12(%rbp), %eax
	jmp	.L188
.L179:
	.loc 2 866 23
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movl	16(%rbp), %ecx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 867 16
	movzbl	-25(%rbp), %eax
	.loc 2 867 8
	testb	%al, %al
	jne	.L180
	.loc 2 871 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 871 12
	testb	%al, %al
	jne	.L181
	.loc 2 876 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L182
.L181:
	.loc 2 883 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -12(%rbp)
	.loc 2 883 16
	cmpl	$0, -12(%rbp)
	je	.L182
	.loc 2 884 24
	movl	-12(%rbp), %eax
	jmp	.L188
.L180:
	.loc 2 887 21
	movzbl	-25(%rbp), %eax
	.loc 2 887 13
	testb	%al, %al
	jle	.L183
	.loc 2 891 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 891 12
	testb	%al, %al
	jne	.L184
	.loc 2 896 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 896 16
	cmpl	$0, -12(%rbp)
	je	.L182
	.loc 2 897 24
	movl	-12(%rbp), %eax
	jmp	.L188
.L184:
	.loc 2 899 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 899 17
	testb	%al, %al
	jle	.L185
	.loc 2 904 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 904 16
	cmpl	$0, -12(%rbp)
	je	.L182
	.loc 2 905 24
	movl	-12(%rbp), %eax
	jmp	.L188
.L185:
	.loc 2 912 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 912 16
	cmpl	$0, -12(%rbp)
	je	.L182
	.loc 2 913 24
	movl	-12(%rbp), %eax
	jmp	.L188
.L183:
	.loc 2 920 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 920 12
	testb	%al, %al
	jne	.L186
	.loc 2 925 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 925 16
	cmpl	$0, -12(%rbp)
	je	.L182
	.loc 2 926 24
	movl	-12(%rbp), %eax
	jmp	.L188
.L186:
	.loc 2 928 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 928 17
	testb	%al, %al
	jle	.L187
	.loc 2 933 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 933 16
	cmpl	$0, -12(%rbp)
	je	.L182
	.loc 2 934 24
	movl	-12(%rbp), %eax
	jmp	.L188
.L187:
	.loc 2 941 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 941 16
	cmpl	$0, -12(%rbp)
	je	.L182
	.loc 2 942 24
	movl	-12(%rbp), %eax
	jmp	.L188
.L182:
	.loc 2 945 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 946 12
	movl	$0, %eax
.L188:
	.loc 2 947 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4377:
	.seh_endproc
	.globl	PMC_Subtruct_L_X
	.def	PMC_Subtruct_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_L_X
PMC_Subtruct_L_X:
.LFB4378:
	.loc 2 950 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 951 8
	cmpq	$0, 24(%rbp)
	jne	.L190
	.loc 2 952 16
	movl	$-1, %eax
	jmp	.L202
.L190:
	.loc 2 953 8
	cmpq	$0, 32(%rbp)
	jne	.L192
	.loc 2 954 16
	movl	$-1, %eax
	jmp	.L202
.L192:
	.loc 2 956 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 958 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 958 8
	cmpl	$0, -12(%rbp)
	je	.L193
	.loc 2 959 16
	movl	-12(%rbp), %eax
	jmp	.L202
.L193:
	.loc 2 961 23
	leaq	-33(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 962 16
	movzbl	-33(%rbp), %eax
	.loc 2 962 8
	testb	%al, %al
	jne	.L194
	.loc 2 966 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 966 12
	testb	%al, %al
	jne	.L195
	.loc 2 971 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L196
.L195:
	.loc 2 978 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -12(%rbp)
	.loc 2 978 16
	cmpl	$0, -12(%rbp)
	je	.L196
	.loc 2 979 24
	movl	-12(%rbp), %eax
	jmp	.L202
.L194:
	.loc 2 982 21
	movzbl	-33(%rbp), %eax
	.loc 2 982 13
	testb	%al, %al
	jle	.L197
	.loc 2 986 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 986 12
	testb	%al, %al
	jne	.L198
	.loc 2 991 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 991 16
	cmpl	$0, -12(%rbp)
	je	.L196
	.loc 2 992 24
	movl	-12(%rbp), %eax
	jmp	.L202
.L198:
	.loc 2 994 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 994 17
	testb	%al, %al
	jle	.L199
	.loc 2 999 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 999 16
	cmpl	$0, -12(%rbp)
	je	.L196
	.loc 2 1000 24
	movl	-12(%rbp), %eax
	jmp	.L202
.L199:
	.loc 2 1007 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1007 16
	cmpl	$0, -12(%rbp)
	je	.L196
	.loc 2 1008 24
	movl	-12(%rbp), %eax
	jmp	.L202
.L197:
	.loc 2 1015 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1015 12
	testb	%al, %al
	jne	.L200
	.loc 2 1020 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1020 16
	cmpl	$0, -12(%rbp)
	je	.L196
	.loc 2 1021 24
	movl	-12(%rbp), %eax
	jmp	.L202
.L200:
	.loc 2 1023 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1023 17
	testb	%al, %al
	jle	.L201
	.loc 2 1028 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1028 16
	cmpl	$0, -12(%rbp)
	je	.L196
	.loc 2 1029 24
	movl	-12(%rbp), %eax
	jmp	.L202
.L201:
	.loc 2 1036 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1036 16
	cmpl	$0, -12(%rbp)
	je	.L196
	.loc 2 1037 24
	movl	-12(%rbp), %eax
	jmp	.L202
.L196:
	.loc 2 1040 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1041 12
	movl	$0, %eax
.L202:
	.loc 2 1042 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4378:
	.seh_endproc
	.globl	PMC_Subtruct_UX_X
	.def	PMC_Subtruct_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_UX_X
PMC_Subtruct_UX_X:
.LFB4379:
	.loc 2 1045 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 1046 8
	cmpq	$0, 16(%rbp)
	jne	.L204
	.loc 2 1047 16
	movl	$-1, %eax
	jmp	.L218
.L204:
	.loc 2 1048 8
	cmpq	$0, 24(%rbp)
	jne	.L206
	.loc 2 1049 16
	movl	$-1, %eax
	jmp	.L218
.L206:
	.loc 2 1050 8
	cmpq	$0, 32(%rbp)
	jne	.L207
	.loc 2 1051 16
	movl	$-1, %eax
	jmp	.L218
.L207:
	.loc 2 1053 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1055 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1055 8
	cmpl	$0, -12(%rbp)
	je	.L208
	.loc 2 1056 16
	movl	-12(%rbp), %eax
	jmp	.L218
.L208:
	.loc 2 1058 19
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	IsZero_UINT
	movl	%eax, -12(%rbp)
	.loc 2 1058 8
	cmpl	$0, -12(%rbp)
	je	.L209
	.loc 2 1059 16
	movl	-12(%rbp), %eax
	jmp	.L218
.L209:
	.loc 2 1060 9
	movzbl	-25(%rbp), %eax
	.loc 2 1060 8
	testb	%al, %al
	je	.L210
	.loc 2 1064 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1064 12
	testb	%al, %al
	jne	.L211
	.loc 2 1069 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L212
.L211:
	.loc 2 1076 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1076 16
	cmpl	$0, -12(%rbp)
	je	.L212
	.loc 2 1077 24
	movl	-12(%rbp), %eax
	jmp	.L218
.L210:
	.loc 2 1084 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1084 12
	testb	%al, %al
	jne	.L213
.LBB10:
	.loc 2 1090 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 1090 27
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	*%r8
.LVL28:
	movl	%eax, -12(%rbp)
	.loc 2 1090 16
	cmpl	$0, -12(%rbp)
	je	.L214
	.loc 2 1091 24
	movl	-12(%rbp), %eax
	jmp	.L218
.L214:
	.loc 2 1092 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1092 16
	cmpl	$0, -12(%rbp)
	je	.L212
	.loc 2 1094 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 1094 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL29:
	.loc 2 1095 24
	movl	-12(%rbp), %eax
	jmp	.L218
.L213:
.LBE10:
	.loc 2 1098 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1098 17
	testb	%al, %al
	jle	.L217
	.loc 2 1103 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1103 16
	cmpl	$0, -12(%rbp)
	je	.L212
	.loc 2 1104 24
	movl	-12(%rbp), %eax
	jmp	.L218
.L217:
	.loc 2 1111 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1111 16
	cmpl	$0, -12(%rbp)
	je	.L212
	.loc 2 1112 24
	movl	-12(%rbp), %eax
	jmp	.L218
.L212:
	.loc 2 1115 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1116 12
	movl	$0, %eax
.L218:
	.loc 2 1117 1 discriminator 2
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4379:
	.seh_endproc
	.globl	PMC_Subtruct_X_I
	.def	PMC_Subtruct_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_I
PMC_Subtruct_X_I:
.LFB4380:
	.loc 2 1120 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 1121 8
	cmpq	$0, 16(%rbp)
	jne	.L220
	.loc 2 1122 16
	movl	$-1, %eax
	jmp	.L232
.L220:
	.loc 2 1123 8
	cmpq	$0, 32(%rbp)
	jne	.L222
	.loc 2 1124 16
	movl	$-1, %eax
	jmp	.L232
.L222:
	.loc 2 1126 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1128 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1128 8
	cmpl	$0, -12(%rbp)
	je	.L223
	.loc 2 1129 16
	movl	-12(%rbp), %eax
	jmp	.L232
.L223:
	.loc 2 1131 23
	leaq	-25(%rbp), %rax
	movl	24(%rbp), %ecx
	movq	%rax, %rdx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 1132 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1132 8
	testb	%al, %al
	jne	.L224
	.loc 2 1136 20
	movzbl	-25(%rbp), %eax
	.loc 2 1136 12
	testb	%al, %al
	jne	.L225
	.loc 2 1141 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L226
.L225:
	.loc 2 1148 27
	movzbl	-25(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1148 16
	cmpl	$0, -12(%rbp)
	je	.L226
	.loc 2 1149 24
	movl	-12(%rbp), %eax
	jmp	.L232
.L224:
	.loc 2 1152 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1152 13
	testb	%al, %al
	jle	.L227
	.loc 2 1156 20
	movzbl	-25(%rbp), %eax
	.loc 2 1156 12
	testb	%al, %al
	jne	.L228
	.loc 2 1161 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1161 16
	cmpl	$0, -12(%rbp)
	je	.L226
	.loc 2 1162 24
	movl	-12(%rbp), %eax
	jmp	.L232
.L228:
	.loc 2 1164 25
	movzbl	-25(%rbp), %eax
	.loc 2 1164 17
	testb	%al, %al
	jle	.L229
	.loc 2 1169 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1169 16
	cmpl	$0, -12(%rbp)
	je	.L226
	.loc 2 1170 24
	movl	-12(%rbp), %eax
	jmp	.L232
.L229:
	.loc 2 1177 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1177 16
	cmpl	$0, -12(%rbp)
	je	.L226
	.loc 2 1178 24
	movl	-12(%rbp), %eax
	jmp	.L232
.L227:
	.loc 2 1185 20
	movzbl	-25(%rbp), %eax
	.loc 2 1185 12
	testb	%al, %al
	jne	.L230
	.loc 2 1190 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1190 16
	cmpl	$0, -12(%rbp)
	je	.L226
	.loc 2 1191 24
	movl	-12(%rbp), %eax
	jmp	.L232
.L230:
	.loc 2 1193 25
	movzbl	-25(%rbp), %eax
	.loc 2 1193 17
	testb	%al, %al
	jle	.L231
	.loc 2 1198 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1198 16
	cmpl	$0, -12(%rbp)
	je	.L226
	.loc 2 1199 24
	movl	-12(%rbp), %eax
	jmp	.L232
.L231:
	.loc 2 1206 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1206 16
	cmpl	$0, -12(%rbp)
	je	.L226
	.loc 2 1207 24
	movl	-12(%rbp), %eax
	jmp	.L232
.L226:
	.loc 2 1210 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1211 12
	movl	$0, %eax
.L232:
	.loc 2 1212 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4380:
	.seh_endproc
	.globl	PMC_Subtruct_X_L
	.def	PMC_Subtruct_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_L
PMC_Subtruct_X_L:
.LFB4381:
	.loc 2 1215 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 1216 8
	cmpq	$0, 16(%rbp)
	jne	.L234
	.loc 2 1217 16
	movl	$-1, %eax
	jmp	.L246
.L234:
	.loc 2 1218 8
	cmpq	$0, 32(%rbp)
	jne	.L236
	.loc 2 1219 16
	movl	$-1, %eax
	jmp	.L246
.L236:
	.loc 2 1221 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1223 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1223 8
	cmpl	$0, -12(%rbp)
	je	.L237
	.loc 2 1224 16
	movl	-12(%rbp), %eax
	jmp	.L246
.L237:
	.loc 2 1226 23
	leaq	-33(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 1227 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1227 8
	testb	%al, %al
	jne	.L238
	.loc 2 1231 20
	movzbl	-33(%rbp), %eax
	.loc 2 1231 12
	testb	%al, %al
	jne	.L239
	.loc 2 1236 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L240
.L239:
	.loc 2 1243 27
	movzbl	-33(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1243 16
	cmpl	$0, -12(%rbp)
	je	.L240
	.loc 2 1244 24
	movl	-12(%rbp), %eax
	jmp	.L246
.L238:
	.loc 2 1247 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1247 13
	testb	%al, %al
	jle	.L241
	.loc 2 1251 20
	movzbl	-33(%rbp), %eax
	.loc 2 1251 12
	testb	%al, %al
	jne	.L242
	.loc 2 1256 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1256 16
	cmpl	$0, -12(%rbp)
	je	.L240
	.loc 2 1257 24
	movl	-12(%rbp), %eax
	jmp	.L246
.L242:
	.loc 2 1259 25
	movzbl	-33(%rbp), %eax
	.loc 2 1259 17
	testb	%al, %al
	jle	.L243
	.loc 2 1264 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1264 16
	cmpl	$0, -12(%rbp)
	je	.L240
	.loc 2 1265 24
	movl	-12(%rbp), %eax
	jmp	.L246
.L243:
	.loc 2 1272 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1272 16
	cmpl	$0, -12(%rbp)
	je	.L240
	.loc 2 1273 24
	movl	-12(%rbp), %eax
	jmp	.L246
.L241:
	.loc 2 1280 20
	movzbl	-33(%rbp), %eax
	.loc 2 1280 12
	testb	%al, %al
	jne	.L244
	.loc 2 1285 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1285 16
	cmpl	$0, -12(%rbp)
	je	.L240
	.loc 2 1286 24
	movl	-12(%rbp), %eax
	jmp	.L246
.L244:
	.loc 2 1288 25
	movzbl	-33(%rbp), %eax
	.loc 2 1288 17
	testb	%al, %al
	jle	.L245
	.loc 2 1293 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1293 16
	cmpl	$0, -12(%rbp)
	je	.L240
	.loc 2 1294 24
	movl	-12(%rbp), %eax
	jmp	.L246
.L245:
	.loc 2 1301 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1301 16
	cmpl	$0, -12(%rbp)
	je	.L240
	.loc 2 1302 24
	movl	-12(%rbp), %eax
	jmp	.L246
.L240:
	.loc 2 1305 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1306 12
	movl	$0, %eax
.L246:
	.loc 2 1307 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4381:
	.seh_endproc
	.globl	PMC_Subtruct_X_UX
	.def	PMC_Subtruct_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_UX
PMC_Subtruct_X_UX:
.LFB4382:
	.loc 2 1310 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 1311 8
	cmpq	$0, 16(%rbp)
	jne	.L248
	.loc 2 1312 16
	movl	$-1, %eax
	jmp	.L264
.L248:
	.loc 2 1313 8
	cmpq	$0, 24(%rbp)
	jne	.L250
	.loc 2 1314 16
	movl	$-1, %eax
	jmp	.L264
.L250:
	.loc 2 1315 8
	cmpq	$0, 32(%rbp)
	jne	.L251
	.loc 2 1316 16
	movl	$-1, %eax
	jmp	.L264
.L251:
	.loc 2 1318 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1320 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1320 8
	cmpl	$0, -12(%rbp)
	je	.L252
	.loc 2 1321 16
	movl	-12(%rbp), %eax
	jmp	.L264
.L252:
	.loc 2 1323 19
	leaq	-25(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	IsZero_UINT
	movl	%eax, -12(%rbp)
	.loc 2 1323 8
	cmpl	$0, -12(%rbp)
	je	.L253
	.loc 2 1324 16
	movl	-12(%rbp), %eax
	jmp	.L264
.L253:
	.loc 2 1325 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1325 8
	testb	%al, %al
	jne	.L254
	.loc 2 1329 13
	movzbl	-25(%rbp), %eax
	.loc 2 1329 12
	testb	%al, %al
	je	.L255
	.loc 2 1334 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L260
.L255:
.LBB11:
	.loc 2 1342 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 1342 27
	leaq	-40(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%r8
.LVL30:
	movl	%eax, -12(%rbp)
	.loc 2 1342 16
	cmpl	$0, -12(%rbp)
	je	.L257
	.loc 2 1343 24
	movl	-12(%rbp), %eax
	jmp	.L264
.L257:
	.loc 2 1344 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$-1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1344 16
	cmpl	$0, -12(%rbp)
	je	.L260
	.loc 2 1346 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 1346 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL31:
	.loc 2 1347 24
	movl	-12(%rbp), %eax
	jmp	.L264
.L254:
.LBE11:
	.loc 2 1352 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1352 13
	testb	%al, %al
	jle	.L261
	.loc 2 1356 13
	movzbl	-25(%rbp), %eax
	.loc 2 1356 12
	testb	%al, %al
	je	.L262
	.loc 2 1361 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1361 16
	cmpl	$0, -12(%rbp)
	je	.L260
	.loc 2 1362 24
	movl	-12(%rbp), %eax
	jmp	.L264
.L262:
	.loc 2 1369 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1369 16
	cmpl	$0, -12(%rbp)
	je	.L260
	.loc 2 1370 24
	movl	-12(%rbp), %eax
	jmp	.L264
.L261:
	.loc 2 1378 13
	movzbl	-25(%rbp), %eax
	.loc 2 1378 12
	testb	%al, %al
	je	.L263
	.loc 2 1383 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1383 16
	cmpl	$0, -12(%rbp)
	je	.L260
	.loc 2 1384 24
	movl	-12(%rbp), %eax
	jmp	.L264
.L263:
	.loc 2 1391 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1391 16
	cmpl	$0, -12(%rbp)
	je	.L260
	.loc 2 1392 24
	movl	-12(%rbp), %eax
	jmp	.L264
.L260:
	.loc 2 1395 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1396 12
	movl	$0, %eax
.L264:
	.loc 2 1397 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4382:
	.seh_endproc
	.globl	PMC_Subtruct_X_X
	.def	PMC_Subtruct_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_X
PMC_Subtruct_X_X:
.LFB4383:
	.loc 2 1400 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 1401 8
	cmpq	$0, 16(%rbp)
	jne	.L266
	.loc 2 1402 16
	movl	$-1, %eax
	jmp	.L280
.L266:
	.loc 2 1403 8
	cmpq	$0, 24(%rbp)
	jne	.L268
	.loc 2 1404 16
	movl	$-1, %eax
	jmp	.L280
.L268:
	.loc 2 1405 8
	cmpq	$0, 32(%rbp)
	jne	.L269
	.loc 2 1406 16
	movl	$-1, %eax
	jmp	.L280
.L269:
	.loc 2 1408 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1409 20
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1411 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 1411 8
	cmpl	$0, -20(%rbp)
	je	.L270
	.loc 2 1412 16
	movl	-20(%rbp), %eax
	jmp	.L280
.L270:
	.loc 2 1413 19
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 1413 8
	cmpl	$0, -20(%rbp)
	je	.L271
	.loc 2 1414 16
	movl	-20(%rbp), %eax
	jmp	.L280
.L271:
	.loc 2 1415 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1415 8
	testb	%al, %al
	jne	.L272
	.loc 2 1419 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1419 12
	testb	%al, %al
	jne	.L273
	.loc 2 1424 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L274
.L273:
	.loc 2 1431 27
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -20(%rbp)
	.loc 2 1431 16
	cmpl	$0, -20(%rbp)
	je	.L274
	.loc 2 1432 24
	movl	-20(%rbp), %eax
	jmp	.L280
.L272:
	.loc 2 1435 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1435 13
	testb	%al, %al
	jle	.L275
	.loc 2 1439 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1439 12
	testb	%al, %al
	jne	.L276
	.loc 2 1444 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 1444 16
	cmpl	$0, -20(%rbp)
	je	.L274
	.loc 2 1445 24
	movl	-20(%rbp), %eax
	jmp	.L280
.L276:
	.loc 2 1447 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1447 17
	testb	%al, %al
	jle	.L277
	.loc 2 1452 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 1452 16
	cmpl	$0, -20(%rbp)
	je	.L274
	.loc 2 1453 24
	movl	-20(%rbp), %eax
	jmp	.L280
.L277:
	.loc 2 1460 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 1460 16
	cmpl	$0, -20(%rbp)
	je	.L274
	.loc 2 1461 24
	movl	-20(%rbp), %eax
	jmp	.L280
.L275:
	.loc 2 1468 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1468 12
	testb	%al, %al
	jne	.L278
	.loc 2 1473 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 1473 16
	cmpl	$0, -20(%rbp)
	je	.L274
	.loc 2 1474 24
	movl	-20(%rbp), %eax
	jmp	.L280
.L278:
	.loc 2 1476 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1476 17
	testb	%al, %al
	jle	.L279
	.loc 2 1481 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 1481 16
	cmpl	$0, -20(%rbp)
	je	.L274
	.loc 2 1482 24
	movl	-20(%rbp), %eax
	jmp	.L280
.L279:
	.loc 2 1489 27
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 1489 16
	cmpl	$0, -20(%rbp)
	je	.L274
	.loc 2 1490 24
	movl	-20(%rbp), %eax
	jmp	.L280
.L274:
	.loc 2 1493 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1494 12
	movl	$0, %eax
.L280:
	.loc 2 1495 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4383:
	.seh_endproc
.Letext0:
	.file 3 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/crtdefs.h"
	.file 4 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/excpt.h"
	.file 5 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/minwindef.h"
	.file 6 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/ctype.h"
	.file 7 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/guiddef.h"
	.file 8 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.file 9 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/malloc.h"
	.file 10 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winnt.h"
	.file 11 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/rpcdce.h"
	.file 12 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/wtypesbase.h"
	.file 13 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/unknwnbase.h"
	.file 14 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/objidlbase.h"
	.file 15 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/cguid.h"
	.file 16 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/wtypes.h"
	.file 17 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/objidl.h"
	.file 18 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oleidl.h"
	.file 19 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/servprov.h"
	.file 20 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oaidl.h"
	.file 21 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/msxml.h"
	.file 22 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/urlmon.h"
	.file 23 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/propidl.h"
	.file 24 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oleauto.h"
	.file 25 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winioctl.h"
	.file 26 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winsmcrd.h"
	.file 27 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winscard.h"
	.file 28 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/commdlg.h"
	.file 29 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/stdint.h"
	.file 30 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc.h"
	.file 31 "../pmc_sint_internal.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x677c
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=core2 -march=nocona -g\0"
	.byte	0xc
	.ascii "../pmc_add_sub.c\0"
	.ascii "Z:\\\\Sources\\\\Lunor\\\\Repos\\\\rougemeilland\\\\Palmtree.Math.Core.Sint\\\\Palmtree.Math.Core.Sint\\\\myproject\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x3
	.byte	0x23
	.byte	0x2a
	.long	0xdb
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "wchar_t\0"
	.byte	0x3
	.byte	0x62
	.byte	0x18
	.long	0x116
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0x116
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x5
	.ascii "pthreadlocinfo\0"
	.byte	0x3
	.word	0x1a8
	.byte	0x28
	.long	0x15c
	.uleb128 0x6
	.byte	0x8
	.long	0x162
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.word	0x160
	.byte	0x3
	.word	0x1bc
	.byte	0x10
	.long	0x30c
	.uleb128 0x8
	.secrel32	.LASF0
	.byte	0x3
	.word	0x1bd
	.byte	0x7
	.long	0x131
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x3
	.word	0x1be
	.byte	0x10
	.long	0x459
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x3
	.word	0x1bf
	.byte	0x10
	.long	0x459
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x3
	.word	0x1c0
	.byte	0x11
	.long	0x469
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x3
	.word	0x1c1
	.byte	0x9
	.long	0x48e
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x3
	.word	0x1c7
	.byte	0x5
	.long	0x49e
	.byte	0x48
	.uleb128 0xa
	.ascii "lc_clike\0"
	.byte	0x3
	.word	0x1c8
	.byte	0x7
	.long	0x131
	.word	0x108
	.uleb128 0xa
	.ascii "mb_cur_max\0"
	.byte	0x3
	.word	0x1c9
	.byte	0x7
	.long	0x131
	.word	0x10c
	.uleb128 0xa
	.ascii "lconv_intl_refcount\0"
	.byte	0x3
	.word	0x1ca
	.byte	0x8
	.long	0x453
	.word	0x110
	.uleb128 0xa
	.ascii "lconv_num_refcount\0"
	.byte	0x3
	.word	0x1cb
	.byte	0x8
	.long	0x453
	.word	0x118
	.uleb128 0xa
	.ascii "lconv_mon_refcount\0"
	.byte	0x3
	.word	0x1cc
	.byte	0x8
	.long	0x453
	.word	0x120
	.uleb128 0xa
	.ascii "lconv\0"
	.byte	0x3
	.word	0x1cd
	.byte	0x11
	.long	0x4b5
	.word	0x128
	.uleb128 0xa
	.ascii "ctype1_refcount\0"
	.byte	0x3
	.word	0x1ce
	.byte	0x8
	.long	0x453
	.word	0x130
	.uleb128 0xa
	.ascii "ctype1\0"
	.byte	0x3
	.word	0x1cf
	.byte	0x13
	.long	0x4bb
	.word	0x138
	.uleb128 0xa
	.ascii "pctype\0"
	.byte	0x3
	.word	0x1d0
	.byte	0x19
	.long	0x4c1
	.word	0x140
	.uleb128 0xa
	.ascii "pclmap\0"
	.byte	0x3
	.word	0x1d1
	.byte	0x18
	.long	0x4c7
	.word	0x148
	.uleb128 0xa
	.ascii "pcumap\0"
	.byte	0x3
	.word	0x1d2
	.byte	0x18
	.long	0x4c7
	.word	0x150
	.uleb128 0xa
	.ascii "lc_time_curr\0"
	.byte	0x3
	.word	0x1d3
	.byte	0x1a
	.long	0x4f3
	.word	0x158
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x3
	.word	0x1a9
	.byte	0x25
	.long	0x324
	.uleb128 0x6
	.byte	0x8
	.long	0x32a
	.uleb128 0xb
	.ascii "threadmbcinfostruct\0"
	.uleb128 0xc
	.ascii "localeinfo_struct\0"
	.byte	0x10
	.byte	0x3
	.word	0x1ac
	.byte	0x10
	.long	0x380
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x3
	.word	0x1ad
	.byte	0x12
	.long	0x144
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x3
	.word	0x1ae
	.byte	0x12
	.long	0x30c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x3
	.word	0x1af
	.byte	0x3
	.long	0x33f
	.uleb128 0xc
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x3
	.word	0x1b3
	.byte	0x10
	.long	0x3e8
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x3
	.word	0x1b4
	.byte	0x12
	.long	0x116
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x3
	.word	0x1b5
	.byte	0x12
	.long	0x116
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x3
	.word	0x1b6
	.byte	0x12
	.long	0x116
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x3
	.word	0x1b7
	.byte	0x3
	.long	0x399
	.uleb128 0xd
	.byte	0x20
	.byte	0x3
	.word	0x1c2
	.byte	0x3
	.long	0x447
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x3
	.word	0x1c3
	.byte	0xb
	.long	0x447
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x3
	.word	0x1c4
	.byte	0xe
	.long	0x44d
	.byte	0x8
	.uleb128 0x8
	.secrel32	.LASF0
	.byte	0x3
	.word	0x1c5
	.byte	0xa
	.long	0x453
	.byte	0x10
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x3
	.word	0x1c6
	.byte	0xa
	.long	0x453
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc4
	.uleb128 0x6
	.byte	0x8
	.long	0x106
	.uleb128 0x6
	.byte	0x8
	.long	0x131
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xe
	.long	0x479
	.long	0x479
	.uleb128 0xf
	.long	0xdb
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xe
	.long	0x3e8
	.long	0x49e
	.uleb128 0xf
	.long	0xdb
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x3f7
	.long	0x4ae
	.uleb128 0xf
	.long	0xdb
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4ae
	.uleb128 0x6
	.byte	0x8
	.long	0x116
	.uleb128 0x6
	.byte	0x8
	.long	0x12c
	.uleb128 0x6
	.byte	0x8
	.long	0x4de
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x4cd
	.uleb128 0xb
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4e3
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x4
	.byte	0x3f
	.byte	0x2e
	.long	0x509
	.uleb128 0x6
	.byte	0x8
	.long	0x50f
	.uleb128 0x10
	.long	0x51a
	.uleb128 0x11
	.long	0x131
	.byte	0
	.uleb128 0x12
	.ascii "_XCPT_ACTION\0"
	.byte	0x10
	.byte	0x4
	.byte	0x41
	.byte	0xa
	.long	0x566
	.uleb128 0x13
	.ascii "XcptNum\0"
	.byte	0x4
	.byte	0x42
	.byte	0x13
	.long	0x479
	.byte	0
	.uleb128 0x13
	.ascii "SigNum\0"
	.byte	0x4
	.byte	0x43
	.byte	0x9
	.long	0x131
	.byte	0x4
	.uleb128 0x13
	.ascii "XcptAction\0"
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.long	0x4f9
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x51a
	.long	0x571
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.ascii "_XcptActTab\0"
	.byte	0x4
	.byte	0x47
	.byte	0x1e
	.long	0x566
	.uleb128 0x15
	.ascii "_XcptActTabCount\0"
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.long	0x131
	.uleb128 0x15
	.ascii "_XcptActTabSize\0"
	.byte	0x4
	.byte	0x49
	.byte	0xe
	.long	0x131
	.uleb128 0x15
	.ascii "_First_FPE_Indx\0"
	.byte	0x4
	.byte	0x4a
	.byte	0xe
	.long	0x131
	.uleb128 0x15
	.ascii "_Num_FPE\0"
	.byte	0x4
	.byte	0x4b
	.byte	0xe
	.long	0x131
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x5
	.byte	0x8d
	.byte	0x19
	.long	0x479
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x459
	.uleb128 0x15
	.ascii "__imp__pctype\0"
	.byte	0x6
	.byte	0x2b
	.byte	0x1c
	.long	0x614
	.uleb128 0x6
	.byte	0x8
	.long	0x4bb
	.uleb128 0x15
	.ascii "__imp__wctype\0"
	.byte	0x6
	.byte	0x3b
	.byte	0x1c
	.long	0x614
	.uleb128 0x15
	.ascii "__imp__pwctype\0"
	.byte	0x6
	.byte	0x47
	.byte	0x1c
	.long	0x614
	.uleb128 0xe
	.long	0x4de
	.long	0x652
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x647
	.uleb128 0x15
	.ascii "__newclmap\0"
	.byte	0x6
	.byte	0x50
	.byte	0x1e
	.long	0x652
	.uleb128 0x15
	.ascii "__newcumap\0"
	.byte	0x6
	.byte	0x51
	.byte	0x1e
	.long	0x652
	.uleb128 0x15
	.ascii "__ptlocinfo\0"
	.byte	0x6
	.byte	0x52
	.byte	0x19
	.long	0x144
	.uleb128 0x15
	.ascii "__ptmbcinfo\0"
	.byte	0x6
	.byte	0x53
	.byte	0x19
	.long	0x30c
	.uleb128 0x15
	.ascii "__globallocalestatus\0"
	.byte	0x6
	.byte	0x54
	.byte	0xe
	.long	0x131
	.uleb128 0x15
	.ascii "__locale_changed\0"
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.long	0x131
	.uleb128 0x15
	.ascii "__initiallocinfo\0"
	.byte	0x6
	.byte	0x56
	.byte	0x28
	.long	0x162
	.uleb128 0x15
	.ascii "__initiallocalestructinfo\0"
	.byte	0x6
	.byte	0x57
	.byte	0x1a
	.long	0x380
	.uleb128 0x15
	.ascii "__imp___mb_cur_max\0"
	.byte	0x6
	.byte	0xcb
	.byte	0x10
	.long	0x453
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4cd
	.uleb128 0x12
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x7
	.byte	0x13
	.byte	0x10
	.long	0x79f
	.uleb128 0x13
	.ascii "Data1\0"
	.byte	0x7
	.byte	0x14
	.byte	0x11
	.long	0x479
	.byte	0
	.uleb128 0x13
	.ascii "Data2\0"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.long	0x116
	.byte	0x4
	.uleb128 0x13
	.ascii "Data3\0"
	.byte	0x7
	.byte	0x16
	.byte	0x12
	.long	0x116
	.byte	0x6
	.uleb128 0x13
	.ascii "Data4\0"
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.long	0x79f
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x4cd
	.long	0x7af
	.uleb128 0xf
	.long	0xdb
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x753
	.uleb128 0x4
	.long	0x7af
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x7
	.byte	0x53
	.byte	0xe
	.long	0x7af
	.uleb128 0x4
	.long	0x7c1
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x7af
	.uleb128 0x4
	.long	0x7d2
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.long	0x7af
	.uleb128 0x4
	.long	0x7e5
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xe
	.long	0x447
	.long	0x821
	.uleb128 0xf
	.long	0xdb
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "_sys_errlist\0"
	.byte	0x8
	.byte	0xac
	.byte	0x2b
	.long	0x811
	.uleb128 0x15
	.ascii "_sys_nerr\0"
	.byte	0x8
	.byte	0xad
	.byte	0x29
	.long	0x131
	.uleb128 0x17
	.ascii "__imp___argc\0"
	.byte	0x8
	.word	0x119
	.byte	0x10
	.long	0x453
	.uleb128 0x17
	.ascii "__imp___argv\0"
	.byte	0x8
	.word	0x11d
	.byte	0x13
	.long	0x874
	.uleb128 0x6
	.byte	0x8
	.long	0x87a
	.uleb128 0x6
	.byte	0x8
	.long	0x447
	.uleb128 0x17
	.ascii "__imp___wargv\0"
	.byte	0x8
	.word	0x121
	.byte	0x16
	.long	0x897
	.uleb128 0x6
	.byte	0x8
	.long	0x89d
	.uleb128 0x6
	.byte	0x8
	.long	0x44d
	.uleb128 0x17
	.ascii "__imp__environ\0"
	.byte	0x8
	.word	0x127
	.byte	0x13
	.long	0x874
	.uleb128 0x17
	.ascii "__imp__wenviron\0"
	.byte	0x8
	.word	0x12c
	.byte	0x16
	.long	0x897
	.uleb128 0x17
	.ascii "__imp__pgmptr\0"
	.byte	0x8
	.word	0x132
	.byte	0x12
	.long	0x87a
	.uleb128 0x17
	.ascii "__imp__wpgmptr\0"
	.byte	0x8
	.word	0x137
	.byte	0x15
	.long	0x89d
	.uleb128 0x17
	.ascii "__imp__osplatform\0"
	.byte	0x8
	.word	0x13c
	.byte	0x19
	.long	0x5f8
	.uleb128 0x17
	.ascii "__imp__osver\0"
	.byte	0x8
	.word	0x141
	.byte	0x19
	.long	0x5f8
	.uleb128 0x17
	.ascii "__imp__winver\0"
	.byte	0x8
	.word	0x146
	.byte	0x19
	.long	0x5f8
	.uleb128 0x17
	.ascii "__imp__winmajor\0"
	.byte	0x8
	.word	0x14b
	.byte	0x19
	.long	0x5f8
	.uleb128 0x17
	.ascii "__imp__winminor\0"
	.byte	0x8
	.word	0x150
	.byte	0x19
	.long	0x5f8
	.uleb128 0x15
	.ascii "_amblksiz\0"
	.byte	0x9
	.byte	0x35
	.byte	0x17
	.long	0x459
	.uleb128 0x17
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0xa
	.word	0x13a9
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0xa
	.word	0x13aa
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0xa
	.word	0x13ab
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0xa
	.word	0x13ac
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0xa
	.word	0x13ad
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0xa
	.word	0x13ae
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0xa
	.word	0x13af
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0xa
	.word	0x13b0
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0xa
	.word	0x13b1
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0xa
	.word	0x13b2
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0xa
	.word	0x13b3
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0xa
	.word	0x13b4
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0xa
	.word	0x13b5
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0xa
	.word	0x13b6
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0xa
	.word	0x13b7
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0xa
	.word	0x13b8
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0xa
	.word	0x13b9
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0xa
	.word	0x13ba
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13bb
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13bc
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13bd
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13be
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0xa
	.word	0x13bf
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0xa
	.word	0x13c0
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0xa
	.word	0x13c1
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0xa
	.word	0x13c2
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0xa
	.word	0x13c3
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0xa
	.word	0x13c4
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0xa
	.word	0x13c5
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0xa
	.word	0x13c6
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0xa
	.word	0x13c7
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0xa
	.word	0x13c8
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0xa
	.word	0x13c9
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0xa
	.word	0x13ca
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0xa
	.word	0x13cb
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0xa
	.word	0x13cc
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0xa
	.word	0x13cd
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0xa
	.word	0x13ce
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0xa
	.word	0x13cf
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0xa
	.word	0x13d0
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0xa
	.word	0x13d1
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0xa
	.word	0x13d2
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0xa
	.word	0x13d3
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0xa
	.word	0x13d4
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0xa
	.word	0x13d5
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0xa
	.word	0x13d6
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0xa
	.word	0x13d7
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0xa
	.word	0x13d8
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0xa
	.word	0x13d9
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0xa
	.word	0x13da
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0xa
	.word	0x13db
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0xa
	.word	0x13dc
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0xa
	.word	0x13dd
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0xa
	.word	0x13de
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0xa
	.word	0x13df
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0xa
	.word	0x13e0
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0xa
	.word	0x13e1
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0xa
	.word	0x13e2
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0xa
	.word	0x13e3
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0xa
	.word	0x13e4
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0xa
	.word	0x13e5
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0xa
	.word	0x13e6
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0xa
	.word	0x13e7
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0xa
	.word	0x13e8
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0xa
	.word	0x13e9
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0xa
	.word	0x13ea
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0xa
	.word	0x13eb
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0xa
	.word	0x13ec
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0xa
	.word	0x13ed
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0xa
	.word	0x13ee
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13ef
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13f0
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0xa
	.word	0x13f1
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0xa
	.word	0x13f2
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0xa
	.word	0x13f3
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0xa
	.word	0x13f4
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0xa
	.word	0x13f5
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0xa
	.word	0x13f6
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0xa
	.word	0x13f7
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0xa
	.word	0x13f8
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0xa
	.word	0x13f9
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0xa
	.word	0x13fa
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0xa
	.word	0x13fb
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0xa
	.word	0x13fc
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0xa
	.word	0x13fd
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13fe
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13ff
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0xa
	.word	0x1400
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0xa
	.word	0x1401
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0xa
	.word	0x1402
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0xa
	.word	0x1403
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0xa
	.word	0x1404
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0xa
	.word	0x1405
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0xa
	.word	0x1406
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0xa
	.word	0x1407
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0xa
	.word	0x1408
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0xa
	.word	0x1409
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0xa
	.word	0x140a
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0xa
	.word	0x140b
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0xa
	.word	0x140c
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0xa
	.word	0x140d
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0xa
	.word	0x140e
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0xa
	.word	0x140f
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0xa
	.word	0x1410
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0xa
	.word	0x1411
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0xa
	.word	0x1412
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0xa
	.word	0x1413
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0xa
	.word	0x1414
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0xa
	.word	0x1415
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0xa
	.word	0x1416
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0xa
	.word	0x1417
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0xa
	.word	0x1418
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0xa
	.word	0x1419
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0xa
	.word	0x141a
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0xa
	.word	0x141b
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0xa
	.word	0x141c
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0xa
	.word	0x141d
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0xa
	.word	0x141e
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0xa
	.word	0x141f
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0xa
	.word	0x1420
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0xa
	.word	0x1421
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0xa
	.word	0x1422
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1620
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1621
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1622
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0xa
	.word	0x1623
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0xa
	.word	0x1624
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0xa
	.word	0x1625
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0xa
	.word	0x1626
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0xa
	.word	0x1627
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0xa
	.word	0x1628
	.byte	0x17
	.long	0x7bc
	.uleb128 0x17
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1629
	.byte	0x17
	.long	0x7bc
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0xb
	.byte	0x42
	.byte	0x11
	.long	0x5df
	.uleb128 0x15
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xc
	.byte	0x29
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x15
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xc
	.byte	0x2a
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x15
	.ascii "IID_IUnknown\0"
	.byte	0xd
	.byte	0x57
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xd
	.byte	0xbd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IClassFactory\0"
	.byte	0xd
	.word	0x16d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMarshal\0"
	.byte	0xe
	.word	0x16e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_INoMarshal\0"
	.byte	0xe
	.word	0x255
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAgileObject\0"
	.byte	0xe
	.word	0x294
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAgileReference\0"
	.byte	0xe
	.word	0x2d2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMarshal2\0"
	.byte	0xe
	.word	0x32d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMalloc\0"
	.byte	0xe
	.word	0x3b2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xe
	.word	0x469
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IExternalConnection\0"
	.byte	0xe
	.word	0x4cc
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMultiQI\0"
	.byte	0xe
	.word	0x547
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xe
	.word	0x59e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternalUnknown\0"
	.byte	0xe
	.word	0x60c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumUnknown\0"
	.byte	0xe
	.word	0x668
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumString\0"
	.byte	0xe
	.word	0x706
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISequentialStream\0"
	.byte	0xe
	.word	0x7a2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IStream\0"
	.byte	0xe
	.word	0x84d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xe
	.word	0x991
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xe
	.word	0xa3b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xe
	.word	0xabd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xe
	.word	0xb7f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xe
	.word	0xc99
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xe
	.word	0xcee
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xe
	.word	0xd56
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xe
	.word	0xe1c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IChannelHook\0"
	.byte	0xe
	.word	0xe9f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IClientSecurity\0"
	.byte	0xe
	.word	0xfc3
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IServerSecurity\0"
	.byte	0xe
	.word	0x106d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcOptions\0"
	.byte	0xe
	.word	0x1113
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IGlobalOptions\0"
	.byte	0xe
	.word	0x11ae
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISurrogate\0"
	.byte	0xe
	.word	0x1221
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xe
	.word	0x1289
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISynchronize\0"
	.byte	0xe
	.word	0x1312
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xe
	.word	0x138c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xe
	.word	0x13e1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xe
	.word	0x1441
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xe
	.word	0x14af
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xe
	.word	0x151e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAsyncManager\0"
	.byte	0xe
	.word	0x158a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICallFactory\0"
	.byte	0xe
	.word	0x1608
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRpcHelper\0"
	.byte	0xe
	.word	0x1666
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xe
	.word	0x16d1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWaitMultiple\0"
	.byte	0xe
	.word	0x172c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xe
	.word	0x1798
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xe
	.word	0x17fd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPipeByte\0"
	.byte	0xe
	.word	0x1868
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPipeLong\0"
	.byte	0xe
	.word	0x18d9
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPipeDouble\0"
	.byte	0xe
	.word	0x194a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xe
	.word	0x1b24
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IProcessInitControl\0"
	.byte	0xe
	.word	0x1bb2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IFastRundown\0"
	.byte	0xe
	.word	0x1c07
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMarshalingStream\0"
	.byte	0xe
	.word	0x1c4a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xe
	.word	0x1d09
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_NULL\0"
	.byte	0xf
	.byte	0xd
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "CATID_MARSHALER\0"
	.byte	0xf
	.byte	0xe
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IRpcChannel\0"
	.byte	0xf
	.byte	0xf
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IRpcStub\0"
	.byte	0xf
	.byte	0x10
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IStubManager\0"
	.byte	0xf
	.byte	0x11
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IRpcProxy\0"
	.byte	0xf
	.byte	0x12
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IProxyManager\0"
	.byte	0xf
	.byte	0x13
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IPSFactory\0"
	.byte	0xf
	.byte	0x14
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IInternalMoniker\0"
	.byte	0xf
	.byte	0x15
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IDfReserved1\0"
	.byte	0xf
	.byte	0x16
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IDfReserved2\0"
	.byte	0xf
	.byte	0x17
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IDfReserved3\0"
	.byte	0xf
	.byte	0x18
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "CLSID_StdMarshal\0"
	.byte	0xf
	.byte	0x19
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xf
	.byte	0x1a
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xf
	.byte	0x1b
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "IID_IStub\0"
	.byte	0xf
	.byte	0x1c
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IProxy\0"
	.byte	0xf
	.byte	0x1d
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IEnumGeneric\0"
	.byte	0xf
	.byte	0x1e
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IEnumHolder\0"
	.byte	0xf
	.byte	0x1f
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IEnumCallback\0"
	.byte	0xf
	.byte	0x20
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IOleManager\0"
	.byte	0xf
	.byte	0x21
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IOlePresObj\0"
	.byte	0xf
	.byte	0x22
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IDebug\0"
	.byte	0xf
	.byte	0x23
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "IID_IDebugStream\0"
	.byte	0xf
	.byte	0x24
	.byte	0x14
	.long	0x7cd
	.uleb128 0x15
	.ascii "CLSID_PSGenObject\0"
	.byte	0xf
	.byte	0x25
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_PSClientSite\0"
	.byte	0xf
	.byte	0x26
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_PSClassObject\0"
	.byte	0xf
	.byte	0x27
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xf
	.byte	0x2a
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xf
	.byte	0x2b
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xf
	.byte	0x2c
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xf
	.byte	0x2d
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_StaticDib\0"
	.byte	0xf
	.byte	0x2e
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CID_CDfsVolume\0"
	.byte	0xf
	.byte	0x2f
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xf
	.byte	0x30
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xf
	.byte	0x31
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xf
	.byte	0x32
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_ComBinding\0"
	.byte	0xf
	.byte	0x33
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_StdEvent\0"
	.byte	0xf
	.byte	0x34
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xf
	.byte	0x35
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xf
	.byte	0x36
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_AddrControl\0"
	.byte	0xf
	.byte	0x37
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xf
	.byte	0x38
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xf
	.byte	0x39
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xf
	.byte	0x3a
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xf
	.byte	0x3b
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xf
	.byte	0x3c
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xf
	.byte	0x3d
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xf
	.byte	0x3e
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDLabel\0"
	.byte	0xf
	.byte	0x3f
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xf
	.byte	0x40
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDListBox\0"
	.byte	0xf
	.byte	0x41
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xf
	.byte	0x42
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xf
	.byte	0x43
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xf
	.byte	0x45
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xf
	.byte	0x46
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xf
	.byte	0x47
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xf
	.byte	0x48
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xf
	.byte	0x49
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4a
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4b
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4c
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4d
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4e
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xf
	.byte	0x4f
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xf
	.byte	0x50
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xf
	.byte	0x51
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xf
	.byte	0x52
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xf
	.byte	0x53
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xf
	.byte	0x54
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xf
	.byte	0x55
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_CSystemPage\0"
	.byte	0xf
	.byte	0x56
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xf
	.byte	0x57
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xf
	.byte	0x58
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xf
	.byte	0x59
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xf
	.byte	0x5a
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xf
	.byte	0x5b
	.byte	0x16
	.long	0x7e0
	.uleb128 0x15
	.ascii "GUID_TRISTATE\0"
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x7bc
	.uleb128 0x15
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0x10
	.byte	0x28
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x15
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0x10
	.byte	0x29
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x17
	.ascii "IID_IMallocSpy\0"
	.byte	0x11
	.word	0x1dbd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindCtx\0"
	.byte	0x11
	.word	0x1f3a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumMoniker\0"
	.byte	0x11
	.word	0x204a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRunnableObject\0"
	.byte	0x11
	.word	0x20e8
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x11
	.word	0x218e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersist\0"
	.byte	0x11
	.word	0x2269
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersistStream\0"
	.byte	0x11
	.word	0x22be
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMoniker\0"
	.byte	0x11
	.word	0x236a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IROTData\0"
	.byte	0x11
	.word	0x2558
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x11
	.word	0x25b5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IStorage\0"
	.byte	0x11
	.word	0x2658
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersistFile\0"
	.byte	0x11
	.word	0x2841
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersistStorage\0"
	.byte	0x11
	.word	0x28f1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ILockBytes\0"
	.byte	0x11
	.word	0x29b1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x11
	.word	0x2ac0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x11
	.word	0x2b6c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRootStorage\0"
	.byte	0x11
	.word	0x2c08
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAdviseSink\0"
	.byte	0x11
	.word	0x2cb3
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x11
	.word	0x2d73
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAdviseSink2\0"
	.byte	0x11
	.word	0x2ea9
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x11
	.word	0x2f2e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDataObject\0"
	.byte	0x11
	.word	0x2ff4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x11
	.word	0x3118
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMessageFilter\0"
	.byte	0x11
	.word	0x31d3
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x11
	.word	0x325d
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x11
	.word	0x325f
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x11
	.word	0x3261
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x11
	.word	0x3263
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x11
	.word	0x3265
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x11
	.word	0x3267
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x11
	.word	0x3269
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x11
	.word	0x326b
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "IID_IClassActivator\0"
	.byte	0x11
	.word	0x3273
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IFillLockBytes\0"
	.byte	0x11
	.word	0x32d5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IProgressNotify\0"
	.byte	0x11
	.word	0x3389
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ILayoutStorage\0"
	.byte	0x11
	.word	0x33ee
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBlockingLock\0"
	.byte	0x11
	.word	0x3492
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x11
	.word	0x34f7
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOplockStorage\0"
	.byte	0x11
	.word	0x354e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x11
	.word	0x35d5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IUrlMon\0"
	.byte	0x11
	.word	0x364d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x11
	.word	0x36bc
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x11
	.word	0x3710
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x11
	.word	0x3786
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IProcessLock\0"
	.byte	0x11
	.word	0x37e5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISurrogateService\0"
	.byte	0x11
	.word	0x3848
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInitializeSpy\0"
	.byte	0x11
	.word	0x38f2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x11
	.word	0x398a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x12
	.byte	0xab
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleCache\0"
	.byte	0x12
	.word	0x162
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleCache2\0"
	.byte	0x12
	.word	0x229
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleCacheControl\0"
	.byte	0x12
	.word	0x2d4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IParseDisplayName\0"
	.byte	0x12
	.word	0x33c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleContainer\0"
	.byte	0x12
	.word	0x39c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleClientSite\0"
	.byte	0x12
	.word	0x417
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleObject\0"
	.byte	0x12
	.word	0x4fe
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x12
	.word	0x6fe
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x17
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x12
	.word	0x6ff
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x17
	.ascii "IID_IOleWindow\0"
	.byte	0x12
	.word	0x724
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleLink\0"
	.byte	0x12
	.word	0x79a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleItemContainer\0"
	.byte	0x12
	.word	0x8bf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x12
	.word	0x976
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x12
	.word	0xa1c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x12
	.word	0xaf8
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x12
	.word	0xbf1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x12
	.word	0xc91
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IContinue\0"
	.byte	0x12
	.word	0xda4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IViewObject\0"
	.byte	0x12
	.word	0xdf9
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IViewObject2\0"
	.byte	0x12
	.word	0xf2a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDropSource\0"
	.byte	0x12
	.word	0xfd2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDropTarget\0"
	.byte	0x12
	.word	0x105b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x12
	.word	0x10ff
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x12
	.word	0x1176
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_IServiceProvider\0"
	.byte	0x13
	.byte	0x4d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x14
	.byte	0xf1
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x14
	.byte	0xf2
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x17
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x14
	.word	0x33b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x14
	.word	0x562
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x14
	.word	0x7b2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x14
	.word	0x8ba
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDispatch\0"
	.byte	0x14
	.word	0x9b6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x14
	.word	0xa87
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeComp\0"
	.byte	0x14
	.word	0xb35
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeInfo\0"
	.byte	0x14
	.word	0xbd9
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeInfo2\0"
	.byte	0x14
	.word	0xe50
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeLib\0"
	.byte	0x14
	.word	0x10d6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeLib2\0"
	.byte	0x14
	.word	0x123d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x14
	.word	0x1361
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IErrorInfo\0"
	.byte	0x14
	.word	0x13da
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x14
	.word	0x147d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x14
	.word	0x1520
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeFactory\0"
	.byte	0x14
	.word	0x1575
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeMarshal\0"
	.byte	0x14
	.word	0x15d0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRecordInfo\0"
	.byte	0x14
	.word	0x1684
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IErrorLog\0"
	.byte	0x14
	.word	0x1820
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPropertyBag\0"
	.byte	0x14
	.word	0x187a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x15
	.byte	0xeb
	.byte	0x18
	.long	0x1eb2
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.long	0x1eb2
	.uleb128 0x15
	.ascii "LIBID_MSXML\0"
	.byte	0x15
	.byte	0xfc
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x15
	.word	0x100
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x15
	.word	0x127
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x15
	.word	0x1fd
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x15
	.word	0x266
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x15
	.word	0x375
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x15
	.word	0x3b0
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x15
	.word	0x404
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x15
	.word	0x496
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x15
	.word	0x50f
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMText\0"
	.byte	0x15
	.word	0x5a6
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x15
	.word	0x625
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x15
	.word	0x69e
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x15
	.word	0x717
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x15
	.word	0x792
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x15
	.word	0x80b
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x15
	.word	0x87f
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x15
	.word	0x8f8
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x15
	.word	0x961
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXTLRuntime\0"
	.byte	0x15
	.word	0x9a6
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x15
	.word	0xa3d
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_DOMDocument\0"
	.byte	0x15
	.word	0xa5c
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x15
	.word	0xa60
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x15
	.word	0xa67
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x15
	.word	0xacd
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x15
	.word	0xad4
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x15
	.word	0xb0d
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x15
	.word	0xb14
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDocument\0"
	.byte	0x15
	.word	0xb4a
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDocument2\0"
	.byte	0x15
	.word	0xbb2
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLElement\0"
	.byte	0x15
	.word	0xc24
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLElement2\0"
	.byte	0x15
	.word	0xc82
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLAttribute\0"
	.byte	0x15
	.word	0xce5
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLError\0"
	.byte	0x15
	.word	0xd11
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_XMLDocument\0"
	.byte	0x15
	.word	0xd2e
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x16
	.word	0x17e
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x16
	.word	0x17f
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x16
	.word	0x180
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x16
	.word	0x181
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x16
	.word	0x182
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x16
	.word	0x183
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x16
	.word	0x184
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x185
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x16
	.word	0x186
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x16
	.word	0x187
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x16
	.word	0x188
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x16
	.word	0x189
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x16
	.word	0x18a
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x16
	.word	0x193
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x16
	.word	0x194
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x16
	.word	0x195
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x16
	.word	0x196
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x16
	.word	0x197
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x16
	.word	0x198
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_FileProtocol\0"
	.byte	0x16
	.word	0x199
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_MkProtocol\0"
	.byte	0x16
	.word	0x19a
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x16
	.word	0x19b
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x19c
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x16
	.word	0x19d
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x16
	.word	0x19e
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x16
	.word	0x19f
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IPersistMoniker\0"
	.byte	0x16
	.word	0x250
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMonikerProp\0"
	.byte	0x16
	.word	0x321
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindProtocol\0"
	.byte	0x16
	.word	0x37f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBinding\0"
	.byte	0x16
	.word	0x3e0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x16
	.word	0x575
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x16
	.word	0x6a5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAuthenticate\0"
	.byte	0x16
	.word	0x764
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x16
	.word	0x7d0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x16
	.word	0x841
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x16
	.word	0x8c1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x16
	.word	0x93b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x16
	.word	0x9bf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x16
	.word	0xa30
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICodeInstall\0"
	.byte	0x16
	.word	0xa9b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetInfo\0"
	.byte	0x16
	.word	0x10a5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpSecurity\0"
	.byte	0x16
	.word	0x1112
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x16
	.word	0x1179
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x16
	.word	0x11f8
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "SID_BindHost\0"
	.byte	0x16
	.word	0x1335
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindHost\0"
	.byte	0x16
	.word	0x133f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternet\0"
	.byte	0x16
	.word	0x144d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x16
	.word	0x14ac
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x16
	.word	0x1526
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x16
	.word	0x15bf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocol\0"
	.byte	0x16
	.word	0x1684
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x16
	.word	0x181a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x16
	.word	0x18bd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetSession\0"
	.byte	0x16
	.word	0x193f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x16
	.word	0x1a48
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetPriority\0"
	.byte	0x16
	.word	0x1ab2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x16
	.word	0x1b4e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x16
	.word	0x1cb2
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x16
	.word	0x1cb3
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x16
	.word	0x1ccb
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x16
	.word	0x1d69
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x16
	.word	0x210f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x16
	.word	0x22c4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x16
	.word	0x269c
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_ISoftDistExt\0"
	.byte	0x16
	.word	0x26cc
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x16
	.word	0x2778
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDataFilter\0"
	.byte	0x16
	.word	0x27e6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x16
	.word	0x28a6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x16
	.word	0x2933
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x16
	.word	0x2941
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IGetBindHandle\0"
	.byte	0x16
	.word	0x29a5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x16
	.word	0x2a0d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPropertyStorage\0"
	.byte	0x17
	.word	0x1b7
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x17
	.word	0x304
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x17
	.word	0x3a6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x17
	.word	0x444
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_StdOle\0"
	.byte	0x18
	.byte	0x15
	.byte	0x12
	.long	0x7cd
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x19
	.byte	0xc
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x19
	.byte	0xd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x19
	.byte	0xe
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x19
	.byte	0xf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x19
	.byte	0x10
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x19
	.byte	0x11
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x19
	.byte	0x12
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x19
	.byte	0x13
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x19
	.byte	0x14
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x19
	.byte	0x15
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x19
	.byte	0x16
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x19
	.byte	0x17
	.byte	0x13
	.long	0x7bc
	.uleb128 0x12
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1a
	.byte	0xa1
	.byte	0x12
	.long	0x48bf
	.uleb128 0x13
	.ascii "dwProtocol\0"
	.byte	0x1a
	.byte	0xa2
	.byte	0xb
	.long	0x5e1
	.byte	0
	.uleb128 0x13
	.ascii "cbPciLength\0"
	.byte	0x1a
	.byte	0xa3
	.byte	0xb
	.long	0x5e1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1a
	.byte	0xa4
	.byte	0x5
	.long	0x487a
	.uleb128 0x4
	.long	0x48bf
	.uleb128 0x15
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x3c
	.long	0x48d8
	.uleb128 0x15
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x4b
	.long	0x48d8
	.uleb128 0x15
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x5a
	.long	0x48d8
	.uleb128 0x15
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1c
	.byte	0xe
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1c
	.byte	0xf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1d
	.byte	0x27
	.byte	0xd
	.long	0x131
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1d
	.byte	0x28
	.byte	0x12
	.long	0x459
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1d
	.byte	0x29
	.byte	0x21
	.long	0xf5
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1d
	.byte	0x2a
	.byte	0x2a
	.long	0xdb
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1e
	.byte	0x5a
	.byte	0x11
	.long	0x4965
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1e
	.byte	0x5b
	.byte	0x11
	.long	0x4986
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1e
	.byte	0x5e
	.byte	0x12
	.long	0x4975
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1e
	.byte	0x5f
	.byte	0x12
	.long	0x4996
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1e
	.byte	0x6a
	.byte	0xd
	.long	0x131
	.uleb128 0x3
	.ascii "PMC_NUMBER_TYPE_CODE\0"
	.byte	0x1e
	.byte	0x6c
	.byte	0xd
	.long	0x131
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1e
	.byte	0x6e
	.byte	0xd
	.long	0x131
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1e
	.byte	0x70
	.byte	0xd
	.long	0x131
	.uleb128 0x12
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x8
	.byte	0x1e
	.byte	0x72
	.byte	0x8
	.long	0x4a8f
	.uleb128 0x13
	.ascii "dummy\0"
	.byte	0x1e
	.byte	0x77
	.byte	0xf
	.long	0x49db
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x1e
	.byte	0x7c
	.byte	0x27
	.long	0x4aa7
	.uleb128 0x6
	.byte	0x8
	.long	0x4a60
	.uleb128 0x12
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x8
	.byte	0x1e
	.byte	0x7e
	.byte	0x8
	.long	0x4adc
	.uleb128 0x13
	.ascii "dummy\0"
	.byte	0x1e
	.byte	0x83
	.byte	0xf
	.long	0x49db
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x1e
	.byte	0x88
	.byte	0x27
	.long	0x4af4
	.uleb128 0x6
	.byte	0x8
	.long	0x4aad
	.uleb128 0x12
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x8a
	.byte	0x10
	.long	0x4b76
	.uleb128 0x13
	.ascii "COUNT_MULTI64\0"
	.byte	0x1e
	.byte	0x8c
	.byte	0xa
	.long	0x138
	.byte	0
	.uleb128 0x13
	.ascii "COUNT_MULTI32\0"
	.byte	0x1e
	.byte	0x8d
	.byte	0xa
	.long	0x138
	.byte	0x4
	.uleb128 0x13
	.ascii "COUNT_DIV64\0"
	.byte	0x1e
	.byte	0x8e
	.byte	0xa
	.long	0x138
	.byte	0x8
	.uleb128 0x13
	.ascii "COUNT_DIV32\0"
	.byte	0x1e
	.byte	0x8f
	.byte	0xa
	.long	0x138
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1e
	.byte	0x90
	.byte	0x3
	.long	0x4afa
	.uleb128 0x12
	.ascii "__tag_PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x28
	.byte	0x1e
	.byte	0x92
	.byte	0x10
	.long	0x4c44
	.uleb128 0x13
	.ascii "DecimalDigits\0"
	.byte	0x1e
	.byte	0x94
	.byte	0x9
	.long	0x131
	.byte	0
	.uleb128 0x13
	.ascii "GroupSeparator\0"
	.byte	0x1e
	.byte	0x95
	.byte	0xd
	.long	0x4c44
	.byte	0x4
	.uleb128 0x13
	.ascii "DecimalSeparator\0"
	.byte	0x1e
	.byte	0x96
	.byte	0xd
	.long	0x4c44
	.byte	0xa
	.uleb128 0x13
	.ascii "PositiveSign\0"
	.byte	0x1e
	.byte	0x97
	.byte	0xd
	.long	0x4c44
	.byte	0x10
	.uleb128 0x13
	.ascii "NegativeSign\0"
	.byte	0x1e
	.byte	0x98
	.byte	0xd
	.long	0x4c44
	.byte	0x16
	.uleb128 0x13
	.ascii "GroupSizes\0"
	.byte	0x1e
	.byte	0x99
	.byte	0xa
	.long	0x4c54
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.long	0x106
	.long	0x4c54
	.uleb128 0xf
	.long	0xdb
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0xc4
	.long	0x4c64
	.uleb128 0xf
	.long	0xdb
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x1e
	.byte	0x9a
	.byte	0x3
	.long	0x4b92
	.uleb128 0x18
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x230
	.byte	0x1e
	.byte	0x9c
	.byte	0x10
	.long	0x539d
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x1e
	.byte	0x9f
	.byte	0xe
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x1e
	.byte	0xa0
	.byte	0xe
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x1e
	.byte	0xa1
	.byte	0xe
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x1e
	.byte	0xa2
	.byte	0xe
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x1e
	.byte	0xa3
	.byte	0xe
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.ascii "GetStatisticsInfo\0"
	.byte	0x1e
	.byte	0xa6
	.byte	0xe
	.long	0x53ae
	.byte	0x8
	.uleb128 0x13
	.ascii "From_I\0"
	.byte	0x1e
	.byte	0xa9
	.byte	0x19
	.long	0x53ce
	.byte	0x10
	.uleb128 0x13
	.ascii "From_L\0"
	.byte	0x1e
	.byte	0xac
	.byte	0x19
	.long	0x53e8
	.byte	0x18
	.uleb128 0x13
	.ascii "Dispose\0"
	.byte	0x1e
	.byte	0xaf
	.byte	0xe
	.long	0x53f9
	.byte	0x20
	.uleb128 0x13
	.ascii "GetNumberType_X\0"
	.byte	0x1e
	.byte	0xb2
	.byte	0x19
	.long	0x5419
	.byte	0x28
	.uleb128 0x13
	.ascii "GetConstantValue_I\0"
	.byte	0x1e
	.byte	0xb5
	.byte	0x19
	.long	0x5433
	.byte	0x30
	.uleb128 0x13
	.ascii "FromByteArray\0"
	.byte	0x1e
	.byte	0xb8
	.byte	0x19
	.long	0x5452
	.byte	0x38
	.uleb128 0x13
	.ascii "ToByteArray\0"
	.byte	0x1e
	.byte	0xb9
	.byte	0x19
	.long	0x547c
	.byte	0x40
	.uleb128 0x13
	.ascii "FromByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xba
	.byte	0x18
	.long	0x54a0
	.byte	0x48
	.uleb128 0x13
	.ascii "ToByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xbb
	.byte	0x18
	.long	0x54c9
	.byte	0x50
	.uleb128 0x13
	.ascii "Clone_X\0"
	.byte	0x1e
	.byte	0xbe
	.byte	0x19
	.long	0x54e3
	.byte	0x58
	.uleb128 0x13
	.ascii "To_X_I\0"
	.byte	0x1e
	.byte	0xc1
	.byte	0x19
	.long	0x5503
	.byte	0x60
	.uleb128 0x13
	.ascii "To_X_L\0"
	.byte	0x1e
	.byte	0xc2
	.byte	0x19
	.long	0x5523
	.byte	0x68
	.uleb128 0x13
	.ascii "ToString\0"
	.byte	0x1e
	.byte	0xc5
	.byte	0x19
	.long	0x5557
	.byte	0x70
	.uleb128 0x13
	.ascii "TryParse\0"
	.byte	0x1e
	.byte	0xc8
	.byte	0x19
	.long	0x557b
	.byte	0x78
	.uleb128 0x13
	.ascii "Add_I_X\0"
	.byte	0x1e
	.byte	0xcb
	.byte	0x19
	.long	0x559a
	.byte	0x80
	.uleb128 0x13
	.ascii "Add_L_X\0"
	.byte	0x1e
	.byte	0xcc
	.byte	0x19
	.long	0x55b9
	.byte	0x88
	.uleb128 0x13
	.ascii "Add_X_I\0"
	.byte	0x1e
	.byte	0xcd
	.byte	0x19
	.long	0x55d8
	.byte	0x90
	.uleb128 0x13
	.ascii "Add_X_L\0"
	.byte	0x1e
	.byte	0xce
	.byte	0x19
	.long	0x55f7
	.byte	0x98
	.uleb128 0x13
	.ascii "Add_X_X\0"
	.byte	0x1e
	.byte	0xcf
	.byte	0x19
	.long	0x5616
	.byte	0xa0
	.uleb128 0x13
	.ascii "Subtruct_I_X\0"
	.byte	0x1e
	.byte	0xd2
	.byte	0x19
	.long	0x5635
	.byte	0xa8
	.uleb128 0x13
	.ascii "Subtruct_L_X\0"
	.byte	0x1e
	.byte	0xd3
	.byte	0x19
	.long	0x5654
	.byte	0xb0
	.uleb128 0x13
	.ascii "Subtruct_X_I\0"
	.byte	0x1e
	.byte	0xd4
	.byte	0x19
	.long	0x55d8
	.byte	0xb8
	.uleb128 0x13
	.ascii "Subtruct_X_L\0"
	.byte	0x1e
	.byte	0xd5
	.byte	0x19
	.long	0x55f7
	.byte	0xc0
	.uleb128 0x13
	.ascii "Subtruct_X_X\0"
	.byte	0x1e
	.byte	0xd6
	.byte	0x19
	.long	0x5616
	.byte	0xc8
	.uleb128 0x13
	.ascii "Multiply_I_X\0"
	.byte	0x1e
	.byte	0xd9
	.byte	0x19
	.long	0x559a
	.byte	0xd0
	.uleb128 0x13
	.ascii "Multiply_L_X\0"
	.byte	0x1e
	.byte	0xda
	.byte	0x19
	.long	0x55b9
	.byte	0xd8
	.uleb128 0x13
	.ascii "Multiply_X_I\0"
	.byte	0x1e
	.byte	0xdb
	.byte	0x19
	.long	0x55d8
	.byte	0xe0
	.uleb128 0x13
	.ascii "Multiply_X_L\0"
	.byte	0x1e
	.byte	0xdc
	.byte	0x19
	.long	0x55f7
	.byte	0xe8
	.uleb128 0x13
	.ascii "Multiply_X_X\0"
	.byte	0x1e
	.byte	0xdd
	.byte	0x19
	.long	0x5616
	.byte	0xf0
	.uleb128 0x13
	.ascii "DivRem_I_X\0"
	.byte	0x1e
	.byte	0xe0
	.byte	0x19
	.long	0x5678
	.byte	0xf8
	.uleb128 0x1a
	.ascii "DivRem_L_X\0"
	.byte	0x1e
	.byte	0xe1
	.byte	0x19
	.long	0x569c
	.word	0x100
	.uleb128 0x1a
	.ascii "DivRem_X_I\0"
	.byte	0x1e
	.byte	0xe2
	.byte	0x19
	.long	0x56c0
	.word	0x108
	.uleb128 0x1a
	.ascii "DivRem_X_L\0"
	.byte	0x1e
	.byte	0xe3
	.byte	0x19
	.long	0x56e4
	.word	0x110
	.uleb128 0x1a
	.ascii "DivRem_X_X\0"
	.byte	0x1e
	.byte	0xe4
	.byte	0x19
	.long	0x5708
	.word	0x118
	.uleb128 0x1a
	.ascii "LeftShift_X_I\0"
	.byte	0x1e
	.byte	0xe7
	.byte	0x19
	.long	0x55d8
	.word	0x120
	.uleb128 0x1a
	.ascii "RightShift_X_I\0"
	.byte	0x1e
	.byte	0xea
	.byte	0x19
	.long	0x55d8
	.word	0x128
	.uleb128 0x1a
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x1e
	.byte	0xed
	.byte	0x19
	.long	0x5635
	.word	0x130
	.uleb128 0x1a
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x1e
	.byte	0xee
	.byte	0x19
	.long	0x5654
	.word	0x138
	.uleb128 0x1a
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x1e
	.byte	0xef
	.byte	0x19
	.long	0x5727
	.word	0x140
	.uleb128 0x1a
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x1e
	.byte	0xf0
	.byte	0x19
	.long	0x5746
	.word	0x148
	.uleb128 0x1a
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x1e
	.byte	0xf1
	.byte	0x19
	.long	0x5616
	.word	0x150
	.uleb128 0x1a
	.ascii "BitwiseOr_I_X\0"
	.byte	0x1e
	.byte	0xf4
	.byte	0x19
	.long	0x559a
	.word	0x158
	.uleb128 0x1a
	.ascii "BitwiseOr_L_X\0"
	.byte	0x1e
	.byte	0xf5
	.byte	0x19
	.long	0x55b9
	.word	0x160
	.uleb128 0x1a
	.ascii "BitwiseOr_X_I\0"
	.byte	0x1e
	.byte	0xf6
	.byte	0x19
	.long	0x55d8
	.word	0x168
	.uleb128 0x1a
	.ascii "BitwiseOr_X_L\0"
	.byte	0x1e
	.byte	0xf7
	.byte	0x19
	.long	0x55f7
	.word	0x170
	.uleb128 0x1a
	.ascii "BitwiseOr_X_X\0"
	.byte	0x1e
	.byte	0xf8
	.byte	0x19
	.long	0x5616
	.word	0x178
	.uleb128 0x1a
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x1e
	.byte	0xfb
	.byte	0x19
	.long	0x559a
	.word	0x180
	.uleb128 0x1a
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x1e
	.byte	0xfc
	.byte	0x19
	.long	0x55b9
	.word	0x188
	.uleb128 0x1a
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x1e
	.byte	0xfd
	.byte	0x19
	.long	0x55d8
	.word	0x190
	.uleb128 0x1a
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x1e
	.byte	0xfe
	.byte	0x19
	.long	0x55f7
	.word	0x198
	.uleb128 0x1a
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x1e
	.byte	0xff
	.byte	0x19
	.long	0x5616
	.word	0x1a0
	.uleb128 0xa
	.ascii "Compare_I_X\0"
	.byte	0x1e
	.word	0x102
	.byte	0x19
	.long	0x576b
	.word	0x1a8
	.uleb128 0xa
	.ascii "Compare_L_X\0"
	.byte	0x1e
	.word	0x103
	.byte	0x19
	.long	0x578a
	.word	0x1b0
	.uleb128 0xa
	.ascii "Compare_X_I\0"
	.byte	0x1e
	.word	0x104
	.byte	0x19
	.long	0x57a9
	.word	0x1b8
	.uleb128 0xa
	.ascii "Compare_X_L\0"
	.byte	0x1e
	.word	0x105
	.byte	0x19
	.long	0x57c8
	.word	0x1c0
	.uleb128 0xa
	.ascii "Compare_X_X\0"
	.byte	0x1e
	.word	0x106
	.byte	0x19
	.long	0x57e7
	.word	0x1c8
	.uleb128 0xa
	.ascii "Equals_I_X\0"
	.byte	0x1e
	.word	0x109
	.byte	0x19
	.long	0x576b
	.word	0x1d0
	.uleb128 0xa
	.ascii "Equals_L_X\0"
	.byte	0x1e
	.word	0x10a
	.byte	0x19
	.long	0x578a
	.word	0x1d8
	.uleb128 0xa
	.ascii "Equals_X_I\0"
	.byte	0x1e
	.word	0x10b
	.byte	0x19
	.long	0x57a9
	.word	0x1e0
	.uleb128 0xa
	.ascii "Equals_X_L\0"
	.byte	0x1e
	.word	0x10c
	.byte	0x19
	.long	0x57c8
	.word	0x1e8
	.uleb128 0xa
	.ascii "Equals_X_X\0"
	.byte	0x1e
	.word	0x10d
	.byte	0x19
	.long	0x57e7
	.word	0x1f0
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x1e
	.word	0x110
	.byte	0x19
	.long	0x559a
	.word	0x1f8
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x1e
	.word	0x111
	.byte	0x19
	.long	0x55b9
	.word	0x200
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x1e
	.word	0x112
	.byte	0x19
	.long	0x55d8
	.word	0x208
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x1e
	.word	0x113
	.byte	0x19
	.long	0x55f7
	.word	0x210
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x1e
	.word	0x114
	.byte	0x19
	.long	0x5616
	.word	0x218
	.uleb128 0xa
	.ascii "Pow_X_I\0"
	.byte	0x1e
	.word	0x117
	.byte	0x19
	.long	0x55d8
	.word	0x220
	.uleb128 0xa
	.ascii "ModPow_X_X_X\0"
	.byte	0x1e
	.word	0x11a
	.byte	0x19
	.long	0x580b
	.word	0x228
	.byte	0
	.uleb128 0x10
	.long	0x53a8
	.uleb128 0x11
	.long	0x53a8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b76
	.uleb128 0x6
	.byte	0x8
	.long	0x539d
	.uleb128 0x1b
	.long	0x49ed
	.long	0x53c8
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a8f
	.uleb128 0x6
	.byte	0x8
	.long	0x53b4
	.uleb128 0x1b
	.long	0x49ed
	.long	0x53e8
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x53d4
	.uleb128 0x10
	.long	0x53f9
	.uleb128 0x11
	.long	0x4a8f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x53ee
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5413
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x5413
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a05
	.uleb128 0x6
	.byte	0x8
	.long	0x53ff
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5433
	.uleb128 0x11
	.long	0x4a22
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x541f
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5452
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5439
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5476
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x5476
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcc
	.uleb128 0x6
	.byte	0x8
	.long	0x5458
	.uleb128 0x1b
	.long	0x49ed
	.long	0x54a0
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x447
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5482
	.uleb128 0x1b
	.long	0x49ed
	.long	0x54c9
	.uleb128 0x11
	.long	0xc4
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x5476
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54a6
	.uleb128 0x1b
	.long	0x49ed
	.long	0x54e3
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54cf
	.uleb128 0x1b
	.long	0x49ed
	.long	0x54fd
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x54fd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49c9
	.uleb128 0x6
	.byte	0x8
	.long	0x54e9
	.uleb128 0x1b
	.long	0x49ed
	.long	0x551d
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x551d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49db
	.uleb128 0x6
	.byte	0x8
	.long	0x5509
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5551
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x44d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0xc4
	.uleb128 0x11
	.long	0x131
	.uleb128 0x11
	.long	0x5551
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c64
	.uleb128 0x6
	.byte	0x8
	.long	0x5529
	.uleb128 0x1b
	.long	0x49ed
	.long	0x557b
	.uleb128 0x11
	.long	0x44d
	.uleb128 0x11
	.long	0x4a42
	.uleb128 0x11
	.long	0x5551
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x555d
	.uleb128 0x1b
	.long	0x49ed
	.long	0x559a
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5581
	.uleb128 0x1b
	.long	0x49ed
	.long	0x55b9
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55a0
	.uleb128 0x1b
	.long	0x49ed
	.long	0x55d8
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55bf
	.uleb128 0x1b
	.long	0x49ed
	.long	0x55f7
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55de
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5616
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55fd
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5635
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x54fd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x561c
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5654
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x551d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x563b
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5678
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x54fd
	.uleb128 0x11
	.long	0x54fd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x565a
	.uleb128 0x1b
	.long	0x49ed
	.long	0x569c
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x551d
	.uleb128 0x11
	.long	0x551d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x567e
	.uleb128 0x1b
	.long	0x49ed
	.long	0x56c0
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x53c8
	.uleb128 0x11
	.long	0x54fd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56a2
	.uleb128 0x1b
	.long	0x49ed
	.long	0x56e4
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x53c8
	.uleb128 0x11
	.long	0x551d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56c6
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5708
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x53c8
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56ea
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5727
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x54fd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x570e
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5746
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x551d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x572d
	.uleb128 0x1b
	.long	0x49ed
	.long	0x5765
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x5765
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49a7
	.uleb128 0x6
	.byte	0x8
	.long	0x574c
	.uleb128 0x1b
	.long	0x49ed
	.long	0x578a
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x5765
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5771
	.uleb128 0x1b
	.long	0x49ed
	.long	0x57a9
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49c9
	.uleb128 0x11
	.long	0x5765
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5790
	.uleb128 0x1b
	.long	0x49ed
	.long	0x57c8
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x49db
	.uleb128 0x11
	.long	0x5765
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57af
	.uleb128 0x1b
	.long	0x49ed
	.long	0x57e7
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x5765
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57ce
	.uleb128 0x1b
	.long	0x49ed
	.long	0x580b
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x4a8f
	.uleb128 0x11
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57ed
	.uleb128 0x5
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x11c
	.byte	0x3
	.long	0x4c85
	.uleb128 0x6
	.byte	0x8
	.long	0x4adc
	.uleb128 0x12
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x18
	.byte	0x1f
	.byte	0x2b
	.byte	0x14
	.long	0x591d
	.uleb128 0x13
	.ascii "SIGNATURE1\0"
	.byte	0x1f
	.byte	0x2d
	.byte	0x13
	.long	0x49c9
	.byte	0
	.uleb128 0x13
	.ascii "SIGNATURE2\0"
	.byte	0x1f
	.byte	0x2e
	.byte	0x13
	.long	0x49c9
	.byte	0x4
	.uleb128 0x13
	.ascii "ABS\0"
	.byte	0x1f
	.byte	0x2f
	.byte	0x19
	.long	0x4a8f
	.byte	0x8
	.uleb128 0x13
	.ascii "SIGN\0"
	.byte	0x1f
	.byte	0x30
	.byte	0xe
	.long	0xc4
	.byte	0x10
	.uleb128 0x19
	.ascii "IS_STATIC\0"
	.byte	0x1f
	.byte	0x31
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.uleb128 0x19
	.ascii "IS_ZERO\0"
	.byte	0x1f
	.byte	0x32
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.uleb128 0x19
	.ascii "IS_ONE\0"
	.byte	0x1f
	.byte	0x33
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x14
	.uleb128 0x19
	.ascii "IS_MINUS_ONE\0"
	.byte	0x1f
	.byte	0x34
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x14
	.uleb128 0x19
	.ascii "IS_EVEN\0"
	.byte	0x1f
	.byte	0x35
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.uleb128 0x19
	.ascii "IS_POWER_OF_TWO\0"
	.byte	0x1f
	.byte	0x36
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.ascii "NUMBER_HEADER\0"
	.byte	0x1f
	.byte	0x37
	.byte	0x7
	.long	0x5836
	.uleb128 0x15
	.ascii "ep_uint\0"
	.byte	0x1f
	.byte	0x3d
	.byte	0x22
	.long	0x5811
	.uleb128 0x15
	.ascii "number_zero\0"
	.byte	0x1f
	.byte	0x40
	.byte	0x1a
	.long	0x591d
	.uleb128 0x15
	.ascii "number_one\0"
	.byte	0x1f
	.byte	0x43
	.byte	0x1a
	.long	0x591d
	.uleb128 0x15
	.ascii "number_minus_one\0"
	.byte	0x1f
	.byte	0x46
	.byte	0x1a
	.long	0x591d
	.uleb128 0x15
	.ascii "statistics_info\0"
	.byte	0x1f
	.byte	0x49
	.byte	0x20
	.long	0x4b76
	.uleb128 0x1c
	.ascii "PMC_Subtruct_X_X\0"
	.byte	0x2
	.word	0x577
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4383
	.quad	.LFE4383-.LFB4383
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a33
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x577
	.byte	0x32
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x577
	.byte	0x45
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x577
	.byte	0x59
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x57f
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x580
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x581
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x582
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x591d
	.uleb128 0x1c
	.ascii "PMC_Subtruct_X_UX\0"
	.byte	0x2
	.word	0x51d
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4382
	.quad	.LFE4382-.LFB4382
	.uleb128 0x1
	.byte	0x9c
	.long	0x5af7
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x51d
	.byte	0x33
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x51d
	.byte	0x46
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x51d
	.byte	0x5a
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x525
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x526
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x527
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x2
	.word	0x52a
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x20
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1f
	.ascii "new_v\0"
	.byte	0x2
	.word	0x53d
	.byte	0x1d
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_X_L\0"
	.byte	0x2
	.word	0x4be
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4381
	.quad	.LFE4381-.LFB4381
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ba0
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x4be
	.byte	0x32
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x4be
	.byte	0x3e
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x4be
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x4c4
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x4c5
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x4c6
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x4c9
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x4ca
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_X_I\0"
	.byte	0x2
	.word	0x45f
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4380
	.quad	.LFE4380-.LFB4380
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c49
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x45f
	.byte	0x32
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x45f
	.byte	0x3e
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x45f
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x465
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x466
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x467
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x46a
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x46b
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_UX_X\0"
	.byte	0x2
	.word	0x414
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4379
	.quad	.LFE4379-.LFB4379
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d07
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x414
	.byte	0x33
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x414
	.byte	0x46
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x414
	.byte	0x5a
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x41c
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x41d
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x41e
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF5
	.byte	0x2
	.word	0x421
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1f
	.ascii "new_u\0"
	.byte	0x2
	.word	0x441
	.byte	0x1d
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_L_X\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4378
	.quad	.LFE4378-.LFB4378
	.uleb128 0x1
	.byte	0x9c
	.long	0x5db0
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x2b
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x3e
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x3bb
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x3bc
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x3bd
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF6
	.byte	0x2
	.word	0x3c0
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x2
	.word	0x3c1
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_I_X\0"
	.byte	0x2
	.word	0x356
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4377
	.quad	.LFE4377-.LFB4377
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e59
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x356
	.byte	0x2b
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x356
	.byte	0x3e
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x356
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x35c
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x35d
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x35e
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF6
	.byte	0x2
	.word	0x361
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x2
	.word	0x362
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_X_X\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4376
	.quad	.LFE4376-.LFB4376
	.uleb128 0x1
	.byte	0x9c
	.long	0x5eec
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x2d
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x40
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x54
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x2fc
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x2fd
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x2fe
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x2ff
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_X_UX\0"
	.byte	0x2
	.word	0x298
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4375
	.quad	.LFE4375-.LFB4375
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fb6
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x298
	.byte	0x2e
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x298
	.byte	0x41
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x298
	.byte	0x55
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x2a0
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x2a1
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x2a2
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x2
	.word	0x2a5
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1f
	.ascii "new_v\0"
	.byte	0x2
	.word	0x2b8
	.byte	0x1d
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.ascii "type\0"
	.byte	0x2
	.word	0x2bb
	.byte	0x22
	.long	0x4a05
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_X_L\0"
	.byte	0x2
	.word	0x239
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4374
	.quad	.LFE4374-.LFB4374
	.uleb128 0x1
	.byte	0x9c
	.long	0x605a
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x239
	.byte	0x2d
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x239
	.byte	0x39
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x239
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x23f
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x240
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x241
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x244
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x245
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_X_I\0"
	.byte	0x2
	.word	0x1da
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4373
	.quad	.LFE4373-.LFB4373
	.uleb128 0x1
	.byte	0x9c
	.long	0x60fe
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x1da
	.byte	0x2d
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x1da
	.byte	0x39
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x1da
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x1e0
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x1e1
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x1e5
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x1e6
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_UX_X\0"
	.byte	0x2
	.word	0x191
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4372
	.quad	.LFE4372-.LFB4372
	.uleb128 0x1
	.byte	0x9c
	.long	0x61b7
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x191
	.byte	0x2e
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x191
	.byte	0x41
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x191
	.byte	0x55
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x197
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x198
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x199
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF5
	.byte	0x2
	.word	0x19c
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1f
	.ascii "new_u\0"
	.byte	0x2
	.word	0x1bc
	.byte	0x1d
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_L_X\0"
	.byte	0x2
	.word	0x132
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4371
	.quad	.LFE4371-.LFB4371
	.uleb128 0x1
	.byte	0x9c
	.long	0x625b
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x132
	.byte	0x26
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x132
	.byte	0x39
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x132
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x138
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x139
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x13a
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF6
	.byte	0x2
	.word	0x13d
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x2
	.word	0x13e
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x21
	.ascii "PMC_Add_I_X\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4370
	.quad	.LFE4370-.LFB4370
	.uleb128 0x1
	.byte	0x9c
	.long	0x62f6
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x26
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x39
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0xd9
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.ascii "nv\0"
	.byte	0x2
	.byte	0xda
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii "nw\0"
	.byte	0x2
	.byte	0xdb
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.secrel32	.LASF6
	.byte	0x2
	.byte	0xde
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x23
	.secrel32	.LASF7
	.byte	0x2
	.byte	0xdf
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "SubtructU_X_X_Imp\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4369
	.quad	.LFE4369-.LFB4369
	.uleb128 0x1
	.byte	0x9c
	.long	0x63bf
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0xa7
	.byte	0x2f
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x45
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x58
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x6b
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0xa9
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii "c\0"
	.byte	0x2
	.byte	0xaa
	.byte	0xe
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x639d
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0xb2
	.byte	0x19
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0xc7
	.byte	0x19
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a33
	.uleb128 0x25
	.ascii "SubtructU_X_L_Imp\0"
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4368
	.quad	.LFE4368-.LFB4368
	.uleb128 0x1
	.byte	0x9c
	.long	0x649b
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x78
	.byte	0x2f
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x78
	.byte	0x45
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x78
	.byte	0x52
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x78
	.byte	0x65
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x7a
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii "c\0"
	.byte	0x2
	.byte	0x7b
	.byte	0xe
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x646c
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x83
	.byte	0x19
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x24
	.ascii "t\0"
	.byte	0x2
	.byte	0x98
	.byte	0x13
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x9b
	.byte	0x19
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x25
	.ascii "SubtructU_X_I_Imp\0"
	.byte	0x2
	.byte	0x49
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4367
	.quad	.LFE4367-.LFB4367
	.uleb128 0x1
	.byte	0x9c
	.long	0x6571
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x49
	.byte	0x2f
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x49
	.byte	0x45
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x49
	.byte	0x52
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x49
	.byte	0x65
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x4b
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii "c\0"
	.byte	0x2
	.byte	0x4c
	.byte	0xe
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x6542
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x54
	.byte	0x19
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x24
	.ascii "t\0"
	.byte	0x2
	.byte	0x69
	.byte	0x13
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x6c
	.byte	0x19
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x25
	.ascii "AddU_X_X_Imp\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4366
	.quad	.LFE4366-.LFB4366
	.uleb128 0x1
	.byte	0x9c
	.long	0x65f1
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x3b
	.byte	0x2a
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x40
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x53
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x66
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x3d
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x3e
	.byte	0x15
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "AddU_X_L_Imp\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4365
	.quad	.LFE4365-.LFB4365
	.uleb128 0x1
	.byte	0x9c
	.long	0x6671
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x2d
	.byte	0x2a
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x40
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x4d
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x60
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x2f
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x30
	.byte	0x15
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "AddU_X_I_Imp\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4364
	.quad	.LFE4364-.LFB4364
	.uleb128 0x1
	.byte	0x9c
	.long	0x66f1
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x1f
	.byte	0x2a
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x40
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x4d
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x60
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.ascii "GET_ABS_64\0"
	.byte	0x1
	.word	0x31f
	.byte	0x1f
	.long	0x49db
	.quad	.LFB4363
	.quad	.LFE4363-.LFB4363
	.uleb128 0x1
	.byte	0x9c
	.long	0x673a
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x1
	.word	0x31f
	.byte	0x33
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x31f
	.byte	0x3b
	.long	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2a
	.ascii "GET_ABS_32\0"
	.byte	0x1
	.word	0x30b
	.byte	0x1f
	.long	0x49c9
	.quad	.LFB4362
	.quad	.LFE4362-.LFB4362
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x1
	.word	0x30b
	.byte	0x33
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0x1
	.word	0x30b
	.byte	0x3b
	.long	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF3:
	.ascii "v_sign\0"
.LASF7:
	.ascii "u_abs\0"
.LASF1:
	.ascii "result\0"
.LASF4:
	.ascii "v_abs\0"
.LASF5:
	.ascii "u_is_zero\0"
.LASF2:
	.ascii "v_is_zero\0"
.LASF9:
	.ascii "w_abs\0"
.LASF6:
	.ascii "u_sign\0"
.LASF8:
	.ascii "sign\0"
.LASF0:
	.ascii "refcount\0"
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.def	DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	From_I_Imp;	.scl	2;	.type	32;	.endef
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
