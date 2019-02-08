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
	.def	IS_ZERO_UINT;	.scl	3;	.type	32;	.endef
	.seh_proc	IS_ZERO_UINT
IS_ZERO_UINT:
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
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 35 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	40(%rax), %r8
	.loc 2 35 19
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	*%r8
.LVL0:
	movl	%eax, -4(%rbp)
	.loc 2 35 8
	cmpl	$0, -4(%rbp)
	je	.L14
	.loc 2 36 16
	movl	-4(%rbp), %eax
	jmp	.L16
.L14:
	.loc 2 37 38
	movl	-8(%rbp), %eax
	andl	$1, %eax
	.loc 2 37 14
	movq	24(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 2 38 12
	movl	$0, %eax
.L16:
	.loc 2 39 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4364:
	.seh_endproc
	.def	AddU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_I_Imp
AddU_X_I_Imp:
.LFB4365:
	.loc 2 42 1
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
	.loc 2 45 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	144(%rax), %rax
	.loc 2 45 19
	leaq	-16(%rbp), %r8
	movl	32(%rbp), %edx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL1:
	movl	%eax, -4(%rbp)
	.loc 2 45 8
	cmpl	$0, -4(%rbp)
	je	.L18
	.loc 2 46 16
	movl	-4(%rbp), %eax
	jmp	.L21
.L18:
	.loc 2 47 19
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 47 8
	cmpl	$0, -4(%rbp)
	je	.L20
	.loc 2 49 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 49 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL2:
	.loc 2 50 16
	movl	-4(%rbp), %eax
	jmp	.L21
.L20:
	.loc 2 52 12
	movl	$0, %eax
.L21:
	.loc 2 53 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4365:
	.seh_endproc
	.def	AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_L_Imp
AddU_X_L_Imp:
.LFB4366:
	.loc 2 56 1
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
	.loc 2 59 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	152(%rax), %rax
	.loc 2 59 19
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL3:
	movl	%eax, -4(%rbp)
	.loc 2 59 8
	cmpl	$0, -4(%rbp)
	je	.L23
	.loc 2 60 16
	movl	-4(%rbp), %eax
	jmp	.L26
.L23:
	.loc 2 61 19
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 61 8
	cmpl	$0, -4(%rbp)
	je	.L25
	.loc 2 63 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 63 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL4:
	.loc 2 64 16
	movl	-4(%rbp), %eax
	jmp	.L26
.L25:
	.loc 2 66 12
	movl	$0, %eax
.L26:
	.loc 2 67 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4366:
	.seh_endproc
	.def	AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	AddU_X_X_Imp
AddU_X_X_Imp:
.LFB4367:
	.loc 2 70 1
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
	.loc 2 73 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	160(%rax), %rax
	.loc 2 73 19
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL5:
	movl	%eax, -4(%rbp)
	.loc 2 73 8
	cmpl	$0, -4(%rbp)
	je	.L28
	.loc 2 74 16
	movl	-4(%rbp), %eax
	jmp	.L31
.L28:
	.loc 2 75 19
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 75 8
	cmpl	$0, -4(%rbp)
	je	.L30
	.loc 2 77 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 77 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL6:
	.loc 2 78 16
	movl	-4(%rbp), %eax
	jmp	.L31
.L30:
	.loc 2 80 12
	movl	$0, %eax
.L31:
	.loc 2 81 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4367:
	.seh_endproc
	.def	SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_I_Imp
SubtructU_X_I_Imp:
.LFB4368:
	.loc 2 84 1
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
	.loc 2 87 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	440(%rax), %rax
	.loc 2 87 19
	leaq	-8(%rbp), %r8
	movl	32(%rbp), %edx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL7:
	movl	%eax, -4(%rbp)
	.loc 2 87 8
	cmpl	$0, -4(%rbp)
	je	.L33
	.loc 2 88 16
	movl	-4(%rbp), %eax
	jmp	.L45
.L33:
	.loc 2 89 11
	movl	-8(%rbp), %eax
	.loc 2 89 8
	testl	%eax, %eax
	jle	.L35
.LBB2:
	.loc 2 95 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	184(%rax), %rax
	.loc 2 95 23
	leaq	-16(%rbp), %r8
	movl	32(%rbp), %edx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL8:
	movl	%eax, -4(%rbp)
	.loc 2 95 12
	cmpl	$0, -4(%rbp)
	je	.L36
	.loc 2 96 20
	movl	-4(%rbp), %eax
	jmp	.L45
.L36:
	.loc 2 97 23
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 97 12
	cmpl	$0, -4(%rbp)
	je	.L39
	.loc 2 99 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 99 13
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL9:
	.loc 2 100 20
	movl	-4(%rbp), %eax
	jmp	.L45
.L35:
.LBE2:
	.loc 2 103 16
	movl	-8(%rbp), %eax
	.loc 2 103 13
	testl	%eax, %eax
	jne	.L40
	.loc 2 108 12
	movq	40(%rbp), %rax
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L39
.L40:
.LBB3:
	.loc 2 116 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	168(%rax), %rax
	.loc 2 116 23
	leaq	-20(%rbp), %r8
	movq	24(%rbp), %rdx
	movl	32(%rbp), %ecx
	call	*%rax
.LVL10:
	movl	%eax, -4(%rbp)
	.loc 2 116 12
	cmpl	$0, -4(%rbp)
	je	.L41
	.loc 2 117 20
	movl	-4(%rbp), %eax
	jmp	.L45
.L41:
	.loc 2 119 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	16(%rax), %r8
	.loc 2 119 23
	movl	-20(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL11:
	movl	%eax, -4(%rbp)
	.loc 2 119 12
	cmpl	$0, -4(%rbp)
	je	.L43
	.loc 2 120 20
	movl	-4(%rbp), %eax
	jmp	.L45
.L43:
	.loc 2 121 23
	movq	-32(%rbp), %rdx
	movzbl	16(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 121 12
	cmpl	$0, -4(%rbp)
	je	.L39
	.loc 2 123 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 123 13
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL12:
	.loc 2 124 20
	movl	-4(%rbp), %eax
	jmp	.L45
.L39:
.LBE3:
	.loc 2 127 12
	movl	$0, %eax
.L45:
	.loc 2 128 1 discriminator 2
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4368:
	.seh_endproc
	.def	SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_L_Imp
SubtructU_X_L_Imp:
.LFB4369:
	.loc 2 131 1
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
	.loc 2 134 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	448(%rax), %rax
	.loc 2 134 19
	leaq	-8(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL13:
	movl	%eax, -4(%rbp)
	.loc 2 134 8
	cmpl	$0, -4(%rbp)
	je	.L47
	.loc 2 135 16
	movl	-4(%rbp), %eax
	jmp	.L59
.L47:
	.loc 2 136 11
	movl	-8(%rbp), %eax
	.loc 2 136 8
	testl	%eax, %eax
	jle	.L49
.LBB4:
	.loc 2 142 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	192(%rax), %rax
	.loc 2 142 23
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL14:
	movl	%eax, -4(%rbp)
	.loc 2 142 12
	cmpl	$0, -4(%rbp)
	je	.L50
	.loc 2 143 20
	movl	-4(%rbp), %eax
	jmp	.L59
.L50:
	.loc 2 144 23
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 144 12
	cmpl	$0, -4(%rbp)
	je	.L53
	.loc 2 146 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 146 13
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL15:
	.loc 2 147 20
	movl	-4(%rbp), %eax
	jmp	.L59
.L49:
.LBE4:
	.loc 2 150 16
	movl	-8(%rbp), %eax
	.loc 2 150 13
	testl	%eax, %eax
	jne	.L54
	.loc 2 155 12
	movq	40(%rbp), %rax
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L53
.L54:
.LBB5:
	.loc 2 163 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	176(%rax), %rax
	.loc 2 163 23
	leaq	-24(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	32(%rbp), %rcx
	call	*%rax
.LVL16:
	movl	%eax, -4(%rbp)
	.loc 2 163 12
	cmpl	$0, -4(%rbp)
	je	.L55
	.loc 2 164 20
	movl	-4(%rbp), %eax
	jmp	.L59
.L55:
	.loc 2 166 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	24(%rax), %r8
	.loc 2 166 23
	movq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL17:
	movl	%eax, -4(%rbp)
	.loc 2 166 12
	cmpl	$0, -4(%rbp)
	je	.L57
	.loc 2 167 20
	movl	-4(%rbp), %eax
	jmp	.L59
.L57:
	.loc 2 168 23
	movq	-32(%rbp), %rdx
	movzbl	16(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 168 12
	cmpl	$0, -4(%rbp)
	je	.L53
	.loc 2 170 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 170 13
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL18:
	.loc 2 171 20
	movl	-4(%rbp), %eax
	jmp	.L59
.L53:
.LBE5:
	.loc 2 174 12
	movl	$0, %eax
.L59:
	.loc 2 175 1 discriminator 2
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4369:
	.seh_endproc
	.def	SubtructU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	SubtructU_X_X_Imp
SubtructU_X_X_Imp:
.LFB4370:
	.loc 2 178 1
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
	.loc 2 181 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	456(%rax), %rax
	.loc 2 181 19
	leaq	-8(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL19:
	movl	%eax, -4(%rbp)
	.loc 2 181 8
	cmpl	$0, -4(%rbp)
	je	.L61
	.loc 2 182 16
	movl	-4(%rbp), %eax
	jmp	.L72
.L61:
	.loc 2 183 11
	movl	-8(%rbp), %eax
	.loc 2 183 8
	testl	%eax, %eax
	jle	.L63
.LBB6:
	.loc 2 189 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	200(%rax), %rax
	.loc 2 189 23
	leaq	-16(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL20:
	movl	%eax, -4(%rbp)
	.loc 2 189 12
	cmpl	$0, -4(%rbp)
	je	.L64
	.loc 2 190 20
	movl	-4(%rbp), %eax
	jmp	.L72
.L64:
	.loc 2 191 23
	movq	-16(%rbp), %rdx
	movsbl	16(%rbp), %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 191 12
	cmpl	$0, -4(%rbp)
	je	.L67
	.loc 2 193 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 193 13
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL21:
	.loc 2 194 20
	movl	-4(%rbp), %eax
	jmp	.L72
.L63:
.LBE6:
	.loc 2 197 16
	movl	-8(%rbp), %eax
	.loc 2 197 13
	testl	%eax, %eax
	jne	.L68
	.loc 2 202 12
	movq	40(%rbp), %rax
	movq	.refptr.number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L67
.L68:
.LBB7:
	.loc 2 210 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	200(%rax), %rax
	.loc 2 210 23
	leaq	-24(%rbp), %r8
	movq	24(%rbp), %rdx
	movq	32(%rbp), %rcx
	call	*%rax
.LVL22:
	movl	%eax, -4(%rbp)
	.loc 2 210 12
	cmpl	$0, -4(%rbp)
	je	.L69
	.loc 2 211 20
	movl	-4(%rbp), %eax
	jmp	.L72
.L69:
	.loc 2 212 23
	movq	-24(%rbp), %rdx
	movzbl	16(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	movq	40(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 2 212 12
	cmpl	$0, -4(%rbp)
	je	.L67
	.loc 2 214 20
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 214 13
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL23:
	.loc 2 215 20
	movl	-4(%rbp), %eax
	jmp	.L72
.L67:
.LBE7:
	.loc 2 218 12
	movl	$0, %eax
.L72:
	.loc 2 219 1 discriminator 2
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4370:
	.seh_endproc
	.globl	PMC_Add_I_X
	.def	PMC_Add_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_I_X
PMC_Add_I_X:
.LFB4371:
	.loc 2 222 1
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
	.loc 2 223 8
	cmpq	$0, 24(%rbp)
	jne	.L74
	.loc 2 224 16
	movl	$-1, %eax
	jmp	.L86
.L74:
	.loc 2 225 8
	cmpq	$0, 32(%rbp)
	jne	.L76
	.loc 2 226 16
	movl	$-1, %eax
	jmp	.L86
.L76:
	.loc 2 228 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 230 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 230 8
	cmpl	$0, -12(%rbp)
	je	.L77
	.loc 2 231 16
	movl	-12(%rbp), %eax
	jmp	.L86
.L77:
	.loc 2 233 23
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movl	16(%rbp), %ecx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 234 16
	movzbl	-25(%rbp), %eax
	.loc 2 234 8
	testb	%al, %al
	jne	.L78
	.loc 2 238 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 238 12
	testb	%al, %al
	jne	.L79
	.loc 2 242 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L80
.L79:
	.loc 2 249 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 249 16
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 2 250 24
	movl	-12(%rbp), %eax
	jmp	.L86
.L78:
	.loc 2 253 21
	movzbl	-25(%rbp), %eax
	.loc 2 253 13
	testb	%al, %al
	jle	.L81
	.loc 2 257 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 257 12
	testb	%al, %al
	jne	.L82
	.loc 2 262 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 262 16
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 2 263 24
	movl	-12(%rbp), %eax
	jmp	.L86
.L82:
	.loc 2 265 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 265 17
	testb	%al, %al
	jle	.L83
	.loc 2 270 27
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
	.loc 2 270 16
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 2 271 24
	movl	-12(%rbp), %eax
	jmp	.L86
.L83:
	.loc 2 278 27
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
	.loc 2 278 16
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 2 279 24
	movl	-12(%rbp), %eax
	jmp	.L86
.L81:
	.loc 2 286 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 286 12
	testb	%al, %al
	jne	.L84
	.loc 2 291 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 291 16
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 2 292 24
	movl	-12(%rbp), %eax
	jmp	.L86
.L84:
	.loc 2 294 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 294 17
	testb	%al, %al
	jle	.L85
	.loc 2 299 27
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
	.loc 2 299 16
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 2 300 24
	movl	-12(%rbp), %eax
	jmp	.L86
.L85:
	.loc 2 307 27
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
	.loc 2 307 16
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 2 308 24
	movl	-12(%rbp), %eax
	jmp	.L86
.L80:
	.loc 2 311 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 312 12
	movl	$0, %eax
.L86:
	.loc 2 313 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4371:
	.seh_endproc
	.globl	PMC_Add_L_X
	.def	PMC_Add_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_L_X
PMC_Add_L_X:
.LFB4372:
	.loc 2 316 1
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
	.loc 2 317 8
	cmpq	$0, 24(%rbp)
	jne	.L88
	.loc 2 318 16
	movl	$-1, %eax
	jmp	.L100
.L88:
	.loc 2 319 8
	cmpq	$0, 32(%rbp)
	jne	.L90
	.loc 2 320 16
	movl	$-1, %eax
	jmp	.L100
.L90:
	.loc 2 322 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 324 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 324 8
	cmpl	$0, -12(%rbp)
	je	.L91
	.loc 2 325 16
	movl	-12(%rbp), %eax
	jmp	.L100
.L91:
	.loc 2 327 23
	leaq	-33(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 328 16
	movzbl	-33(%rbp), %eax
	.loc 2 328 8
	testb	%al, %al
	jne	.L92
	.loc 2 332 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 332 12
	testb	%al, %al
	jne	.L93
	.loc 2 336 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L94
.L93:
	.loc 2 343 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 343 16
	cmpl	$0, -12(%rbp)
	je	.L94
	.loc 2 344 24
	movl	-12(%rbp), %eax
	jmp	.L100
.L92:
	.loc 2 347 21
	movzbl	-33(%rbp), %eax
	.loc 2 347 13
	testb	%al, %al
	jle	.L95
	.loc 2 351 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 351 12
	testb	%al, %al
	jne	.L96
	.loc 2 356 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 356 16
	cmpl	$0, -12(%rbp)
	je	.L94
	.loc 2 357 24
	movl	-12(%rbp), %eax
	jmp	.L100
.L96:
	.loc 2 359 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 359 17
	testb	%al, %al
	jle	.L97
	.loc 2 364 27
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
	.loc 2 364 16
	cmpl	$0, -12(%rbp)
	je	.L94
	.loc 2 365 24
	movl	-12(%rbp), %eax
	jmp	.L100
.L97:
	.loc 2 372 27
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
	.loc 2 372 16
	cmpl	$0, -12(%rbp)
	je	.L94
	.loc 2 373 24
	movl	-12(%rbp), %eax
	jmp	.L100
.L95:
	.loc 2 380 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 380 12
	testb	%al, %al
	jne	.L98
	.loc 2 385 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 385 16
	cmpl	$0, -12(%rbp)
	je	.L94
	.loc 2 386 24
	movl	-12(%rbp), %eax
	jmp	.L100
.L98:
	.loc 2 388 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 388 17
	testb	%al, %al
	jle	.L99
	.loc 2 393 27
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
	.loc 2 393 16
	cmpl	$0, -12(%rbp)
	je	.L94
	.loc 2 394 24
	movl	-12(%rbp), %eax
	jmp	.L100
.L99:
	.loc 2 401 27
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
	.loc 2 401 16
	cmpl	$0, -12(%rbp)
	je	.L94
	.loc 2 402 24
	movl	-12(%rbp), %eax
	jmp	.L100
.L94:
	.loc 2 405 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 406 12
	movl	$0, %eax
.L100:
	.loc 2 407 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4372:
	.seh_endproc
	.globl	PMC_Add_UX_X
	.def	PMC_Add_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_UX_X
PMC_Add_UX_X:
.LFB4373:
	.loc 2 410 1
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
	.loc 2 411 8
	cmpq	$0, 24(%rbp)
	jne	.L102
	.loc 2 412 16
	movl	$-1, %eax
	jmp	.L115
.L102:
	.loc 2 413 8
	cmpq	$0, 32(%rbp)
	jne	.L104
	.loc 2 414 16
	movl	$-1, %eax
	jmp	.L115
.L104:
	.loc 2 416 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 418 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 418 8
	cmpl	$0, -12(%rbp)
	je	.L105
	.loc 2 419 16
	movl	-12(%rbp), %eax
	jmp	.L115
.L105:
	.loc 2 421 19
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	IS_ZERO_UINT
	movl	%eax, -12(%rbp)
	.loc 2 421 8
	cmpl	$0, -12(%rbp)
	je	.L106
	.loc 2 422 16
	movl	-12(%rbp), %eax
	jmp	.L115
.L106:
	.loc 2 423 9
	movzbl	-25(%rbp), %eax
	.loc 2 423 8
	testb	%al, %al
	je	.L107
	.loc 2 427 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 427 12
	testb	%al, %al
	jne	.L108
	.loc 2 432 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L109
.L108:
	.loc 2 439 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 439 16
	cmpl	$0, -12(%rbp)
	je	.L109
	.loc 2 440 24
	movl	-12(%rbp), %eax
	jmp	.L115
.L107:
	.loc 2 447 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 447 12
	testb	%al, %al
	jne	.L110
.LBB8:
	.loc 2 453 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 453 27
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	*%r8
.LVL24:
	movl	%eax, -12(%rbp)
	.loc 2 453 16
	cmpl	$0, -12(%rbp)
	je	.L111
	.loc 2 454 24
	movl	-12(%rbp), %eax
	jmp	.L115
.L111:
	.loc 2 455 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 455 16
	cmpl	$0, -12(%rbp)
	je	.L109
	.loc 2 457 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 457 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL25:
	.loc 2 458 24
	movl	-12(%rbp), %eax
	jmp	.L115
.L110:
.LBE8:
	.loc 2 461 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 461 17
	testb	%al, %al
	jle	.L114
	.loc 2 466 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 466 16
	cmpl	$0, -12(%rbp)
	je	.L109
	.loc 2 467 24
	movl	-12(%rbp), %eax
	jmp	.L115
.L114:
	.loc 2 474 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 474 16
	cmpl	$0, -12(%rbp)
	je	.L109
	.loc 2 475 24
	movl	-12(%rbp), %eax
	jmp	.L115
.L109:
	.loc 2 478 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 479 12
	movl	$0, %eax
.L115:
	.loc 2 480 1 discriminator 2
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4373:
	.seh_endproc
	.globl	PMC_Add_X_I
	.def	PMC_Add_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_I
PMC_Add_X_I:
.LFB4374:
	.loc 2 483 1
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
	.loc 2 484 8
	cmpq	$0, 16(%rbp)
	jne	.L117
	.loc 2 485 16
	movl	$-1, %eax
	jmp	.L130
.L117:
	.loc 2 486 8
	cmpq	$0, 32(%rbp)
	jne	.L119
	.loc 2 487 16
	movl	$-1, %eax
	jmp	.L130
.L119:
	.loc 2 489 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 491 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 491 8
	cmpl	$0, -12(%rbp)
	je	.L120
	.loc 2 492 16
	movl	-12(%rbp), %eax
	jmp	.L130
.L120:
	.loc 2 494 23
	leaq	-25(%rbp), %rax
	movl	24(%rbp), %ecx
	movq	%rax, %rdx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 495 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 495 8
	testb	%al, %al
	jne	.L121
	.loc 2 499 20
	movzbl	-25(%rbp), %eax
	.loc 2 499 12
	testb	%al, %al
	jne	.L122
	.loc 2 503 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L123
.L122:
	.loc 2 505 25
	movzbl	-25(%rbp), %eax
	.loc 2 505 17
	testb	%al, %al
	jle	.L124
	.loc 2 510 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 510 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 511 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L124:
	.loc 2 518 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 518 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 519 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L121:
	.loc 2 522 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 522 13
	testb	%al, %al
	jle	.L125
	.loc 2 526 20
	movzbl	-25(%rbp), %eax
	.loc 2 526 12
	testb	%al, %al
	jne	.L126
	.loc 2 531 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 531 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 532 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L126:
	.loc 2 534 25
	movzbl	-25(%rbp), %eax
	.loc 2 534 17
	testb	%al, %al
	jle	.L127
	.loc 2 539 27
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
	.loc 2 539 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 540 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L127:
	.loc 2 547 27
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
	.loc 2 547 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 548 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L125:
	.loc 2 555 20
	movzbl	-25(%rbp), %eax
	.loc 2 555 12
	testb	%al, %al
	jne	.L128
	.loc 2 560 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 560 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 561 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L128:
	.loc 2 563 25
	movzbl	-25(%rbp), %eax
	.loc 2 563 17
	testb	%al, %al
	jle	.L129
	.loc 2 568 27
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
	.loc 2 568 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 569 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L129:
	.loc 2 576 27
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
	.loc 2 576 16
	cmpl	$0, -12(%rbp)
	je	.L123
	.loc 2 577 24
	movl	-12(%rbp), %eax
	jmp	.L130
.L123:
	.loc 2 580 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 581 12
	movl	$0, %eax
.L130:
	.loc 2 582 1 discriminator 4
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4374:
	.seh_endproc
	.globl	PMC_Add_X_L
	.def	PMC_Add_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_L
PMC_Add_X_L:
.LFB4375:
	.loc 2 585 1
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
	.loc 2 586 8
	cmpq	$0, 16(%rbp)
	jne	.L132
	.loc 2 587 16
	movl	$-1, %eax
	jmp	.L145
.L132:
	.loc 2 588 8
	cmpq	$0, 32(%rbp)
	jne	.L134
	.loc 2 589 16
	movl	$-1, %eax
	jmp	.L145
.L134:
	.loc 2 591 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 593 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 593 8
	cmpl	$0, -12(%rbp)
	je	.L135
	.loc 2 594 16
	movl	-12(%rbp), %eax
	jmp	.L145
.L135:
	.loc 2 596 23
	leaq	-33(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 597 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 597 8
	testb	%al, %al
	jne	.L136
	.loc 2 601 20
	movzbl	-33(%rbp), %eax
	.loc 2 601 12
	testb	%al, %al
	jne	.L137
	.loc 2 605 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L138
.L137:
	.loc 2 607 25
	movzbl	-33(%rbp), %eax
	.loc 2 607 17
	testb	%al, %al
	jle	.L139
	.loc 2 612 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 612 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 613 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L139:
	.loc 2 620 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 620 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 621 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L136:
	.loc 2 624 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 624 13
	testb	%al, %al
	jle	.L140
	.loc 2 628 20
	movzbl	-33(%rbp), %eax
	.loc 2 628 12
	testb	%al, %al
	jne	.L141
	.loc 2 633 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 633 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 634 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L141:
	.loc 2 636 25
	movzbl	-33(%rbp), %eax
	.loc 2 636 17
	testb	%al, %al
	jle	.L142
	.loc 2 641 27
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
	.loc 2 641 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 642 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L142:
	.loc 2 649 27
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
	.loc 2 649 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 650 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L140:
	.loc 2 657 20
	movzbl	-33(%rbp), %eax
	.loc 2 657 12
	testb	%al, %al
	jne	.L143
	.loc 2 662 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 662 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 663 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L143:
	.loc 2 665 25
	movzbl	-33(%rbp), %eax
	.loc 2 665 17
	testb	%al, %al
	jle	.L144
	.loc 2 670 27
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
	.loc 2 670 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 671 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L144:
	.loc 2 678 27
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
	.loc 2 678 16
	cmpl	$0, -12(%rbp)
	je	.L138
	.loc 2 679 24
	movl	-12(%rbp), %eax
	jmp	.L145
.L138:
	.loc 2 682 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 683 12
	movl	$0, %eax
.L145:
	.loc 2 684 1 discriminator 4
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4375:
	.seh_endproc
	.globl	PMC_Add_X_UX
	.def	PMC_Add_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_UX
PMC_Add_X_UX:
.LFB4376:
	.loc 2 687 1
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
	.loc 2 688 8
	cmpq	$0, 16(%rbp)
	jne	.L147
	.loc 2 689 16
	movl	$-1, %eax
	jmp	.L164
.L147:
	.loc 2 690 8
	cmpq	$0, 24(%rbp)
	jne	.L149
	.loc 2 691 16
	movl	$-1, %eax
	jmp	.L164
.L149:
	.loc 2 692 8
	cmpq	$0, 32(%rbp)
	jne	.L150
	.loc 2 693 16
	movl	$-1, %eax
	jmp	.L164
.L150:
	.loc 2 695 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 697 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 697 8
	cmpl	$0, -12(%rbp)
	je	.L151
	.loc 2 698 16
	movl	-12(%rbp), %eax
	jmp	.L164
.L151:
	.loc 2 700 19
	leaq	-25(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	IS_ZERO_UINT
	movl	%eax, -12(%rbp)
	.loc 2 700 8
	cmpl	$0, -12(%rbp)
	je	.L152
	.loc 2 701 16
	movl	-12(%rbp), %eax
	jmp	.L164
.L152:
	.loc 2 702 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 702 8
	testb	%al, %al
	jne	.L153
	.loc 2 706 13
	movzbl	-25(%rbp), %eax
	.loc 2 706 12
	testb	%al, %al
	je	.L154
	.loc 2 711 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L160
.L154:
.LBB9:
	.loc 2 719 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 719 27
	leaq	-40(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%r8
.LVL26:
	movl	%eax, -12(%rbp)
	.loc 2 719 16
	cmpl	$0, -12(%rbp)
	je	.L156
	.loc 2 720 24
	movl	-12(%rbp), %eax
	jmp	.L164
.L156:
	.loc 2 722 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	40(%rax), %r8
	.loc 2 722 27
	movq	-40(%rbp), %rcx
	leaq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL27:
	movl	%eax, -12(%rbp)
	.loc 2 722 16
	cmpl	$0, -12(%rbp)
	je	.L158
	.loc 2 723 24
	movl	-12(%rbp), %eax
	jmp	.L164
.L158:
	.loc 2 724 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 724 16
	cmpl	$0, -12(%rbp)
	je	.L160
	.loc 2 726 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 726 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL28:
	.loc 2 727 24
	movl	-12(%rbp), %eax
	jmp	.L164
.L153:
.LBE9:
	.loc 2 731 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 731 13
	testb	%al, %al
	jle	.L161
	.loc 2 735 13
	movzbl	-25(%rbp), %eax
	.loc 2 735 12
	testb	%al, %al
	je	.L162
	.loc 2 740 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 740 16
	cmpl	$0, -12(%rbp)
	je	.L160
	.loc 2 741 24
	movl	-12(%rbp), %eax
	jmp	.L164
.L162:
	.loc 2 748 27
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
	.loc 2 748 16
	cmpl	$0, -12(%rbp)
	je	.L160
	.loc 2 749 24
	movl	-12(%rbp), %eax
	jmp	.L164
.L161:
	.loc 2 756 13
	movzbl	-25(%rbp), %eax
	.loc 2 756 12
	testb	%al, %al
	je	.L163
	.loc 2 761 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 761 16
	cmpl	$0, -12(%rbp)
	je	.L160
	.loc 2 762 24
	movl	-12(%rbp), %eax
	jmp	.L164
.L163:
	.loc 2 769 27
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
	.loc 2 769 16
	cmpl	$0, -12(%rbp)
	je	.L160
	.loc 2 770 24
	movl	-12(%rbp), %eax
	jmp	.L164
.L160:
	.loc 2 774 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 775 12
	movl	$0, %eax
.L164:
	.loc 2 776 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4376:
	.seh_endproc
	.globl	PMC_Add_X_X
	.def	PMC_Add_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Add_X_X
PMC_Add_X_X:
.LFB4377:
	.loc 2 779 1
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
	.loc 2 780 8
	cmpq	$0, 16(%rbp)
	jne	.L166
	.loc 2 781 16
	movl	$-1, %eax
	jmp	.L180
.L166:
	.loc 2 782 8
	cmpq	$0, 24(%rbp)
	jne	.L168
	.loc 2 783 16
	movl	$-1, %eax
	jmp	.L180
.L168:
	.loc 2 784 8
	cmpq	$0, 32(%rbp)
	jne	.L169
	.loc 2 785 16
	movl	$-1, %eax
	jmp	.L180
.L169:
	.loc 2 787 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 788 20
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 790 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 790 8
	cmpl	$0, -20(%rbp)
	je	.L170
	.loc 2 791 16
	movl	-20(%rbp), %eax
	jmp	.L180
.L170:
	.loc 2 792 19
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 792 8
	cmpl	$0, -20(%rbp)
	je	.L171
	.loc 2 793 16
	movl	-20(%rbp), %eax
	jmp	.L180
.L171:
	.loc 2 794 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 794 8
	testb	%al, %al
	jne	.L172
	.loc 2 798 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 798 12
	testb	%al, %al
	jne	.L173
	.loc 2 802 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L174
.L173:
	.loc 2 809 27
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 809 16
	cmpl	$0, -20(%rbp)
	je	.L174
	.loc 2 810 24
	movl	-20(%rbp), %eax
	jmp	.L180
.L172:
	.loc 2 813 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 813 13
	testb	%al, %al
	jle	.L175
	.loc 2 817 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 817 12
	testb	%al, %al
	jne	.L176
	.loc 2 822 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 822 16
	cmpl	$0, -20(%rbp)
	je	.L174
	.loc 2 823 24
	movl	-20(%rbp), %eax
	jmp	.L180
.L176:
	.loc 2 825 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 825 17
	testb	%al, %al
	jle	.L177
	.loc 2 830 27
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
	.loc 2 830 16
	cmpl	$0, -20(%rbp)
	je	.L174
	.loc 2 831 24
	movl	-20(%rbp), %eax
	jmp	.L180
.L177:
	.loc 2 838 27
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
	.loc 2 838 16
	cmpl	$0, -20(%rbp)
	je	.L174
	.loc 2 839 24
	movl	-20(%rbp), %eax
	jmp	.L180
.L175:
	.loc 2 846 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 846 12
	testb	%al, %al
	jne	.L178
	.loc 2 851 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 851 16
	cmpl	$0, -20(%rbp)
	je	.L174
	.loc 2 852 24
	movl	-20(%rbp), %eax
	jmp	.L180
.L178:
	.loc 2 854 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 854 17
	testb	%al, %al
	jle	.L179
	.loc 2 859 27
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
	.loc 2 859 16
	cmpl	$0, -20(%rbp)
	je	.L174
	.loc 2 860 24
	movl	-20(%rbp), %eax
	jmp	.L180
.L179:
	.loc 2 867 27
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
	.loc 2 867 16
	cmpl	$0, -20(%rbp)
	je	.L174
	.loc 2 868 24
	movl	-20(%rbp), %eax
	jmp	.L180
.L174:
	.loc 2 871 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 872 12
	movl	$0, %eax
.L180:
	.loc 2 873 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4377:
	.seh_endproc
	.globl	PMC_Subtruct_I_X
	.def	PMC_Subtruct_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_I_X
PMC_Subtruct_I_X:
.LFB4378:
	.loc 2 876 1
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
	.loc 2 877 8
	cmpq	$0, 24(%rbp)
	jne	.L182
	.loc 2 878 16
	movl	$-1, %eax
	jmp	.L194
.L182:
	.loc 2 879 8
	cmpq	$0, 32(%rbp)
	jne	.L184
	.loc 2 880 16
	movl	$-1, %eax
	jmp	.L194
.L184:
	.loc 2 882 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 884 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 884 8
	cmpl	$0, -12(%rbp)
	je	.L185
	.loc 2 885 16
	movl	-12(%rbp), %eax
	jmp	.L194
.L185:
	.loc 2 887 23
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movl	16(%rbp), %ecx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 888 16
	movzbl	-25(%rbp), %eax
	.loc 2 888 8
	testb	%al, %al
	jne	.L186
	.loc 2 892 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 892 12
	testb	%al, %al
	jne	.L187
	.loc 2 896 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L188
.L187:
	.loc 2 903 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -12(%rbp)
	.loc 2 903 16
	cmpl	$0, -12(%rbp)
	je	.L188
	.loc 2 904 24
	movl	-12(%rbp), %eax
	jmp	.L194
.L186:
	.loc 2 907 21
	movzbl	-25(%rbp), %eax
	.loc 2 907 13
	testb	%al, %al
	jle	.L189
	.loc 2 911 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 911 12
	testb	%al, %al
	jne	.L190
	.loc 2 916 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 916 16
	cmpl	$0, -12(%rbp)
	je	.L188
	.loc 2 917 24
	movl	-12(%rbp), %eax
	jmp	.L194
.L190:
	.loc 2 919 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 919 17
	testb	%al, %al
	jle	.L191
	.loc 2 924 27
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
	.loc 2 924 16
	cmpl	$0, -12(%rbp)
	je	.L188
	.loc 2 925 24
	movl	-12(%rbp), %eax
	jmp	.L194
.L191:
	.loc 2 932 27
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
	.loc 2 932 16
	cmpl	$0, -12(%rbp)
	je	.L188
	.loc 2 933 24
	movl	-12(%rbp), %eax
	jmp	.L194
.L189:
	.loc 2 940 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 940 12
	testb	%al, %al
	jne	.L192
	.loc 2 945 27
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 945 16
	cmpl	$0, -12(%rbp)
	je	.L188
	.loc 2 946 24
	movl	-12(%rbp), %eax
	jmp	.L194
.L192:
	.loc 2 948 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 948 17
	testb	%al, %al
	jle	.L193
	.loc 2 953 27
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
	.loc 2 953 16
	cmpl	$0, -12(%rbp)
	je	.L188
	.loc 2 954 24
	movl	-12(%rbp), %eax
	jmp	.L194
.L193:
	.loc 2 961 27
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
	.loc 2 961 16
	cmpl	$0, -12(%rbp)
	je	.L188
	.loc 2 962 24
	movl	-12(%rbp), %eax
	jmp	.L194
.L188:
	.loc 2 965 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 966 12
	movl	$0, %eax
.L194:
	.loc 2 967 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4378:
	.seh_endproc
	.globl	PMC_Subtruct_L_X
	.def	PMC_Subtruct_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_L_X
PMC_Subtruct_L_X:
.LFB4379:
	.loc 2 970 1
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
	.loc 2 971 8
	cmpq	$0, 24(%rbp)
	jne	.L196
	.loc 2 972 16
	movl	$-1, %eax
	jmp	.L208
.L196:
	.loc 2 973 8
	cmpq	$0, 32(%rbp)
	jne	.L198
	.loc 2 974 16
	movl	$-1, %eax
	jmp	.L208
.L198:
	.loc 2 976 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 978 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 978 8
	cmpl	$0, -12(%rbp)
	je	.L199
	.loc 2 979 16
	movl	-12(%rbp), %eax
	jmp	.L208
.L199:
	.loc 2 981 23
	leaq	-33(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 982 16
	movzbl	-33(%rbp), %eax
	.loc 2 982 8
	testb	%al, %al
	jne	.L200
	.loc 2 986 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 986 12
	testb	%al, %al
	jne	.L201
	.loc 2 990 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L202
.L201:
	.loc 2 997 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -12(%rbp)
	.loc 2 997 16
	cmpl	$0, -12(%rbp)
	je	.L202
	.loc 2 998 24
	movl	-12(%rbp), %eax
	jmp	.L208
.L200:
	.loc 2 1001 21
	movzbl	-33(%rbp), %eax
	.loc 2 1001 13
	testb	%al, %al
	jle	.L203
	.loc 2 1005 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1005 12
	testb	%al, %al
	jne	.L204
	.loc 2 1010 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1010 16
	cmpl	$0, -12(%rbp)
	je	.L202
	.loc 2 1011 24
	movl	-12(%rbp), %eax
	jmp	.L208
.L204:
	.loc 2 1013 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1013 17
	testb	%al, %al
	jle	.L205
	.loc 2 1018 27
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
	.loc 2 1018 16
	cmpl	$0, -12(%rbp)
	je	.L202
	.loc 2 1019 24
	movl	-12(%rbp), %eax
	jmp	.L208
.L205:
	.loc 2 1026 27
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
	.loc 2 1026 16
	cmpl	$0, -12(%rbp)
	je	.L202
	.loc 2 1027 24
	movl	-12(%rbp), %eax
	jmp	.L208
.L203:
	.loc 2 1034 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1034 12
	testb	%al, %al
	jne	.L206
	.loc 2 1039 27
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1039 16
	cmpl	$0, -12(%rbp)
	je	.L202
	.loc 2 1040 24
	movl	-12(%rbp), %eax
	jmp	.L208
.L206:
	.loc 2 1042 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1042 17
	testb	%al, %al
	jle	.L207
	.loc 2 1047 27
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
	.loc 2 1047 16
	cmpl	$0, -12(%rbp)
	je	.L202
	.loc 2 1048 24
	movl	-12(%rbp), %eax
	jmp	.L208
.L207:
	.loc 2 1055 27
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
	.loc 2 1055 16
	cmpl	$0, -12(%rbp)
	je	.L202
	.loc 2 1056 24
	movl	-12(%rbp), %eax
	jmp	.L208
.L202:
	.loc 2 1059 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1060 12
	movl	$0, %eax
.L208:
	.loc 2 1061 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4379:
	.seh_endproc
	.globl	PMC_Subtruct_UX_X
	.def	PMC_Subtruct_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_UX_X
PMC_Subtruct_UX_X:
.LFB4380:
	.loc 2 1064 1
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
	.loc 2 1065 8
	cmpq	$0, 16(%rbp)
	jne	.L210
	.loc 2 1066 16
	movl	$-1, %eax
	jmp	.L225
.L210:
	.loc 2 1067 8
	cmpq	$0, 24(%rbp)
	jne	.L212
	.loc 2 1068 16
	movl	$-1, %eax
	jmp	.L225
.L212:
	.loc 2 1069 8
	cmpq	$0, 32(%rbp)
	jne	.L213
	.loc 2 1070 16
	movl	$-1, %eax
	jmp	.L225
.L213:
	.loc 2 1072 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1074 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1074 8
	cmpl	$0, -12(%rbp)
	je	.L214
	.loc 2 1075 16
	movl	-12(%rbp), %eax
	jmp	.L225
.L214:
	.loc 2 1077 19
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	IS_ZERO_UINT
	movl	%eax, -12(%rbp)
	.loc 2 1077 8
	cmpl	$0, -12(%rbp)
	je	.L215
	.loc 2 1078 16
	movl	-12(%rbp), %eax
	jmp	.L225
.L215:
	.loc 2 1079 9
	movzbl	-25(%rbp), %eax
	.loc 2 1079 8
	testb	%al, %al
	je	.L216
	.loc 2 1083 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1083 12
	testb	%al, %al
	jne	.L217
	.loc 2 1088 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L218
.L217:
	.loc 2 1090 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1090 17
	testb	%al, %al
	jle	.L219
	.loc 2 1095 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1095 16
	cmpl	$0, -12(%rbp)
	je	.L218
	.loc 2 1096 24
	movl	-12(%rbp), %eax
	jmp	.L225
.L219:
	.loc 2 1103 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1103 16
	cmpl	$0, -12(%rbp)
	je	.L218
	.loc 2 1104 24
	movl	-12(%rbp), %eax
	jmp	.L225
.L216:
	.loc 2 1111 15
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1111 12
	testb	%al, %al
	jne	.L220
.LBB10:
	.loc 2 1117 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 1117 27
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	*%r8
.LVL29:
	movl	%eax, -12(%rbp)
	.loc 2 1117 16
	cmpl	$0, -12(%rbp)
	je	.L221
	.loc 2 1118 24
	movl	-12(%rbp), %eax
	jmp	.L225
.L221:
	.loc 2 1119 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1119 16
	cmpl	$0, -12(%rbp)
	je	.L218
	.loc 2 1121 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 1121 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL30:
	.loc 2 1122 24
	movl	-12(%rbp), %eax
	jmp	.L225
.L220:
.LBE10:
	.loc 2 1125 20
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1125 17
	testb	%al, %al
	jle	.L224
	.loc 2 1130 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	SubtructU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1130 16
	cmpl	$0, -12(%rbp)
	je	.L218
	.loc 2 1131 24
	movl	-12(%rbp), %eax
	jmp	.L225
.L224:
	.loc 2 1138 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	AddU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1138 16
	cmpl	$0, -12(%rbp)
	je	.L218
	.loc 2 1139 24
	movl	-12(%rbp), %eax
	jmp	.L225
.L218:
	.loc 2 1142 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1143 12
	movl	$0, %eax
.L225:
	.loc 2 1144 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4380:
	.seh_endproc
	.globl	PMC_Subtruct_X_I
	.def	PMC_Subtruct_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_I
PMC_Subtruct_X_I:
.LFB4381:
	.loc 2 1147 1
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
	.loc 2 1148 8
	cmpq	$0, 16(%rbp)
	jne	.L227
	.loc 2 1149 16
	movl	$-1, %eax
	jmp	.L240
.L227:
	.loc 2 1150 8
	cmpq	$0, 32(%rbp)
	jne	.L229
	.loc 2 1151 16
	movl	$-1, %eax
	jmp	.L240
.L229:
	.loc 2 1153 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1155 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1155 8
	cmpl	$0, -12(%rbp)
	je	.L230
	.loc 2 1156 16
	movl	-12(%rbp), %eax
	jmp	.L240
.L230:
	.loc 2 1158 23
	leaq	-25(%rbp), %rax
	movl	24(%rbp), %ecx
	movq	%rax, %rdx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 1159 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1159 8
	testb	%al, %al
	jne	.L231
	.loc 2 1163 20
	movzbl	-25(%rbp), %eax
	.loc 2 1163 12
	testb	%al, %al
	jne	.L232
	.loc 2 1167 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L233
.L232:
	.loc 2 1169 25
	movzbl	-25(%rbp), %eax
	.loc 2 1169 17
	testb	%al, %al
	jle	.L234
	.loc 2 1174 27
	movzbl	-25(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1174 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1175 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L234:
	.loc 2 1182 27
	movzbl	-25(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	leaq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1182 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1183 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L231:
	.loc 2 1186 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1186 13
	testb	%al, %al
	jle	.L235
	.loc 2 1190 20
	movzbl	-25(%rbp), %eax
	.loc 2 1190 12
	testb	%al, %al
	jne	.L236
	.loc 2 1195 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1195 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1196 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L236:
	.loc 2 1198 25
	movzbl	-25(%rbp), %eax
	.loc 2 1198 17
	testb	%al, %al
	jle	.L237
	.loc 2 1203 27
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
	.loc 2 1203 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1204 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L237:
	.loc 2 1211 27
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
	.loc 2 1211 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1212 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L235:
	.loc 2 1219 20
	movzbl	-25(%rbp), %eax
	.loc 2 1219 12
	testb	%al, %al
	jne	.L238
	.loc 2 1224 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1224 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1225 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L238:
	.loc 2 1227 25
	movzbl	-25(%rbp), %eax
	.loc 2 1227 17
	testb	%al, %al
	jle	.L239
	.loc 2 1232 27
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
	.loc 2 1232 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1233 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L239:
	.loc 2 1240 27
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
	.loc 2 1240 16
	cmpl	$0, -12(%rbp)
	je	.L233
	.loc 2 1241 24
	movl	-12(%rbp), %eax
	jmp	.L240
.L233:
	.loc 2 1244 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1245 12
	movl	$0, %eax
.L240:
	.loc 2 1246 1 discriminator 4
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4381:
	.seh_endproc
	.globl	PMC_Subtruct_X_L
	.def	PMC_Subtruct_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_L
PMC_Subtruct_X_L:
.LFB4382:
	.loc 2 1249 1
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
	.loc 2 1250 8
	cmpq	$0, 16(%rbp)
	jne	.L242
	.loc 2 1251 16
	movl	$-1, %eax
	jmp	.L255
.L242:
	.loc 2 1252 8
	cmpq	$0, 32(%rbp)
	jne	.L244
	.loc 2 1253 16
	movl	$-1, %eax
	jmp	.L255
.L244:
	.loc 2 1255 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1257 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1257 8
	cmpl	$0, -12(%rbp)
	je	.L245
	.loc 2 1258 16
	movl	-12(%rbp), %eax
	jmp	.L255
.L245:
	.loc 2 1260 23
	leaq	-33(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 1261 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1261 8
	testb	%al, %al
	jne	.L246
	.loc 2 1265 20
	movzbl	-33(%rbp), %eax
	.loc 2 1265 12
	testb	%al, %al
	jne	.L247
	.loc 2 1269 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L248
.L247:
	.loc 2 1271 25
	movzbl	-33(%rbp), %eax
	.loc 2 1271 17
	testb	%al, %al
	jle	.L249
	.loc 2 1276 27
	movzbl	-33(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1276 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1277 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L249:
	.loc 2 1284 27
	movzbl	-33(%rbp), %eax
	negl	%eax
	movsbl	%al, %eax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	From_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 1284 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1285 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L246:
	.loc 2 1288 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1288 13
	testb	%al, %al
	jle	.L250
	.loc 2 1292 20
	movzbl	-33(%rbp), %eax
	.loc 2 1292 12
	testb	%al, %al
	jne	.L251
	.loc 2 1297 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1297 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1298 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L251:
	.loc 2 1300 25
	movzbl	-33(%rbp), %eax
	.loc 2 1300 17
	testb	%al, %al
	jle	.L252
	.loc 2 1305 27
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
	.loc 2 1305 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1306 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L252:
	.loc 2 1313 27
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
	.loc 2 1313 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1314 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L250:
	.loc 2 1321 20
	movzbl	-33(%rbp), %eax
	.loc 2 1321 12
	testb	%al, %al
	jne	.L253
	.loc 2 1326 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1326 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1327 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L253:
	.loc 2 1329 25
	movzbl	-33(%rbp), %eax
	.loc 2 1329 17
	testb	%al, %al
	jle	.L254
	.loc 2 1334 27
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
	.loc 2 1334 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1335 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L254:
	.loc 2 1342 27
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
	.loc 2 1342 16
	cmpl	$0, -12(%rbp)
	je	.L248
	.loc 2 1343 24
	movl	-12(%rbp), %eax
	jmp	.L255
.L248:
	.loc 2 1346 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1347 12
	movl	$0, %eax
.L255:
	.loc 2 1348 1 discriminator 4
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4382:
	.seh_endproc
	.globl	PMC_Subtruct_X_UX
	.def	PMC_Subtruct_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_UX
PMC_Subtruct_X_UX:
.LFB4383:
	.loc 2 1351 1
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
	.loc 2 1352 8
	cmpq	$0, 16(%rbp)
	jne	.L257
	.loc 2 1353 16
	movl	$-1, %eax
	jmp	.L273
.L257:
	.loc 2 1354 8
	cmpq	$0, 24(%rbp)
	jne	.L259
	.loc 2 1355 16
	movl	$-1, %eax
	jmp	.L273
.L259:
	.loc 2 1356 8
	cmpq	$0, 32(%rbp)
	jne	.L260
	.loc 2 1357 16
	movl	$-1, %eax
	jmp	.L273
.L260:
	.loc 2 1359 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1361 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 1361 8
	cmpl	$0, -12(%rbp)
	je	.L261
	.loc 2 1362 16
	movl	-12(%rbp), %eax
	jmp	.L273
.L261:
	.loc 2 1364 19
	leaq	-25(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	IS_ZERO_UINT
	movl	%eax, -12(%rbp)
	.loc 2 1364 8
	cmpl	$0, -12(%rbp)
	je	.L262
	.loc 2 1365 16
	movl	-12(%rbp), %eax
	jmp	.L273
.L262:
	.loc 2 1366 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1366 8
	testb	%al, %al
	jne	.L263
	.loc 2 1370 13
	movzbl	-25(%rbp), %eax
	.loc 2 1370 12
	testb	%al, %al
	je	.L264
	.loc 2 1375 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L269
.L264:
.LBB11:
	.loc 2 1383 34
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 2 1383 27
	leaq	-40(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	*%r8
.LVL31:
	movl	%eax, -12(%rbp)
	.loc 2 1383 16
	cmpl	$0, -12(%rbp)
	je	.L266
	.loc 2 1384 24
	movl	-12(%rbp), %eax
	jmp	.L273
.L266:
	.loc 2 1385 27
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$-1, %edx
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1385 16
	cmpl	$0, -12(%rbp)
	je	.L269
	.loc 2 1387 24
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 2 1387 17
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL32:
	.loc 2 1388 24
	movl	-12(%rbp), %eax
	jmp	.L273
.L263:
.LBE11:
	.loc 2 1393 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1393 13
	testb	%al, %al
	jle	.L270
	.loc 2 1397 13
	movzbl	-25(%rbp), %eax
	.loc 2 1397 12
	testb	%al, %al
	je	.L271
	.loc 2 1402 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1402 16
	cmpl	$0, -12(%rbp)
	je	.L269
	.loc 2 1403 24
	movl	-12(%rbp), %eax
	jmp	.L273
.L271:
	.loc 2 1410 27
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
	.loc 2 1410 16
	cmpl	$0, -12(%rbp)
	je	.L269
	.loc 2 1411 24
	movl	-12(%rbp), %eax
	jmp	.L273
.L270:
	.loc 2 1419 13
	movzbl	-25(%rbp), %eax
	.loc 2 1419 12
	testb	%al, %al
	je	.L272
	.loc 2 1424 27
	leaq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -12(%rbp)
	.loc 2 1424 16
	cmpl	$0, -12(%rbp)
	je	.L269
	.loc 2 1425 24
	movl	-12(%rbp), %eax
	jmp	.L273
.L272:
	.loc 2 1432 27
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
	.loc 2 1432 16
	cmpl	$0, -12(%rbp)
	je	.L269
	.loc 2 1433 24
	movl	-12(%rbp), %eax
	jmp	.L273
.L269:
	.loc 2 1436 8
	movq	-24(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1437 12
	movl	$0, %eax
.L273:
	.loc 2 1438 1 discriminator 3
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4383:
	.seh_endproc
	.globl	PMC_Subtruct_X_X
	.def	PMC_Subtruct_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Subtruct_X_X
PMC_Subtruct_X_X:
.LFB4384:
	.loc 2 1441 1
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
	.loc 2 1442 8
	cmpq	$0, 16(%rbp)
	jne	.L275
	.loc 2 1443 16
	movl	$-1, %eax
	jmp	.L289
.L275:
	.loc 2 1444 8
	cmpq	$0, 24(%rbp)
	jne	.L277
	.loc 2 1445 16
	movl	$-1, %eax
	jmp	.L289
.L277:
	.loc 2 1446 8
	cmpq	$0, 32(%rbp)
	jne	.L278
	.loc 2 1447 16
	movl	$-1, %eax
	jmp	.L289
.L278:
	.loc 2 1449 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1450 20
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1452 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 1452 8
	cmpl	$0, -20(%rbp)
	je	.L279
	.loc 2 1453 16
	movl	-20(%rbp), %eax
	jmp	.L289
.L279:
	.loc 2 1454 19
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 1454 8
	cmpl	$0, -20(%rbp)
	je	.L280
	.loc 2 1455 16
	movl	-20(%rbp), %eax
	jmp	.L289
.L280:
	.loc 2 1456 11
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1456 8
	testb	%al, %al
	jne	.L281
	.loc 2 1460 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1460 12
	testb	%al, %al
	jne	.L282
	.loc 2 1464 16
	movq	.refptr.number_zero(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L283
.L282:
	.loc 2 1471 27
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	call	Negate_Imp
	movl	%eax, -20(%rbp)
	.loc 2 1471 16
	cmpl	$0, -20(%rbp)
	je	.L283
	.loc 2 1472 24
	movl	-20(%rbp), %eax
	jmp	.L289
.L281:
	.loc 2 1475 16
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1475 13
	testb	%al, %al
	jle	.L284
	.loc 2 1479 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1479 12
	testb	%al, %al
	jne	.L285
	.loc 2 1484 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 1484 16
	cmpl	$0, -20(%rbp)
	je	.L283
	.loc 2 1485 24
	movl	-20(%rbp), %eax
	jmp	.L289
.L285:
	.loc 2 1487 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1487 17
	testb	%al, %al
	jle	.L286
	.loc 2 1492 27
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
	.loc 2 1492 16
	cmpl	$0, -20(%rbp)
	je	.L283
	.loc 2 1493 24
	movl	-20(%rbp), %eax
	jmp	.L289
.L286:
	.loc 2 1500 27
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
	.loc 2 1500 16
	cmpl	$0, -20(%rbp)
	je	.L283
	.loc 2 1501 24
	movl	-20(%rbp), %eax
	jmp	.L289
.L284:
	.loc 2 1508 15
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1508 12
	testb	%al, %al
	jne	.L287
	.loc 2 1513 27
	leaq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	call	DuplicateNumber
	movl	%eax, -20(%rbp)
	.loc 2 1513 16
	cmpl	$0, -20(%rbp)
	je	.L283
	.loc 2 1514 24
	movl	-20(%rbp), %eax
	jmp	.L289
.L287:
	.loc 2 1516 20
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1516 17
	testb	%al, %al
	jle	.L288
	.loc 2 1521 27
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
	.loc 2 1521 16
	cmpl	$0, -20(%rbp)
	je	.L283
	.loc 2 1522 24
	movl	-20(%rbp), %eax
	jmp	.L289
.L288:
	.loc 2 1529 27
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
	.loc 2 1529 16
	cmpl	$0, -20(%rbp)
	je	.L283
	.loc 2 1530 24
	movl	-20(%rbp), %eax
	jmp	.L289
.L283:
	.loc 2 1533 8
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1534 12
	movl	$0, %eax
.L289:
	.loc 2 1535 1 discriminator 3
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4384:
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
	.long	0x67e7
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
	.word	0x5a0
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4384
	.quad	.LFE4384-.LFB4384
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a33
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x5a0
	.byte	0x32
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x5a0
	.byte	0x45
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x5a0
	.byte	0x59
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x5a8
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x5a9
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x5aa
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x5ab
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
	.word	0x546
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4383
	.quad	.LFE4383-.LFB4383
	.uleb128 0x1
	.byte	0x9c
	.long	0x5af7
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x546
	.byte	0x33
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x546
	.byte	0x46
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x546
	.byte	0x5a
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x54e
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x54f
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x550
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x2
	.word	0x553
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
	.word	0x566
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
	.word	0x4e0
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4382
	.quad	.LFE4382-.LFB4382
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ba0
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x4e0
	.byte	0x32
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x4e0
	.byte	0x3e
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x4e0
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x4e6
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x4e7
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x4e8
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x4eb
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x4ec
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_X_I\0"
	.byte	0x2
	.word	0x47a
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4381
	.quad	.LFE4381-.LFB4381
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c49
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x47a
	.byte	0x32
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x47a
	.byte	0x3e
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x47a
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x480
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x481
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x482
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x485
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x486
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_UX_X\0"
	.byte	0x2
	.word	0x427
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4380
	.quad	.LFE4380-.LFB4380
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d07
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x427
	.byte	0x33
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x427
	.byte	0x46
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x427
	.byte	0x5a
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x42f
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x430
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x431
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF5
	.byte	0x2
	.word	0x434
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
	.word	0x45c
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
	.word	0x3c9
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4379
	.quad	.LFE4379-.LFB4379
	.uleb128 0x1
	.byte	0x9c
	.long	0x5db0
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x3c9
	.byte	0x2b
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x3c9
	.byte	0x3e
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x3c9
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x3cf
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x3d0
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x3d1
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF6
	.byte	0x2
	.word	0x3d4
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x2
	.word	0x3d5
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Subtruct_I_X\0"
	.byte	0x2
	.word	0x36b
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4378
	.quad	.LFE4378-.LFB4378
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e59
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x36b
	.byte	0x2b
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x36b
	.byte	0x3e
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x36b
	.byte	0x52
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x371
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x372
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x373
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF6
	.byte	0x2
	.word	0x376
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x2
	.word	0x377
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_X_X\0"
	.byte	0x2
	.word	0x30a
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4377
	.quad	.LFE4377-.LFB4377
	.uleb128 0x1
	.byte	0x9c
	.long	0x5eec
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x30a
	.byte	0x2d
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x30a
	.byte	0x40
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x30a
	.byte	0x54
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x312
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x313
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x314
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x315
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_X_UX\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4376
	.quad	.LFE4376-.LFB4376
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fb6
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x2e
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x41
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x55
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x2b6
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x2b7
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x2b8
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x2
	.word	0x2bb
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
	.word	0x2ce
	.byte	0x1d
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.ascii "type\0"
	.byte	0x2
	.word	0x2d1
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
	.word	0x248
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4375
	.quad	.LFE4375-.LFB4375
	.uleb128 0x1
	.byte	0x9c
	.long	0x605a
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x248
	.byte	0x2d
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x248
	.byte	0x39
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x248
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x24e
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x24f
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x250
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x253
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x254
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_X_I\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4374
	.quad	.LFE4374-.LFB4374
	.uleb128 0x1
	.byte	0x9c
	.long	0x60fe
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x2d
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x39
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x1e8
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nu\0"
	.byte	0x2
	.word	0x1e9
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x1ea
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x2
	.word	0x1ed
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x2
	.word	0x1ee
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.ascii "PMC_Add_UX_X\0"
	.byte	0x2
	.word	0x199
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4373
	.quad	.LFE4373-.LFB4373
	.uleb128 0x1
	.byte	0x9c
	.long	0x61b7
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x199
	.byte	0x2e
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x199
	.byte	0x41
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x199
	.byte	0x55
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x19f
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x1a0
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x1a1
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.secrel32	.LASF5
	.byte	0x2
	.word	0x1a4
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
	.word	0x1c4
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
	.word	0x13b
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4372
	.quad	.LFE4372-.LFB4372
	.uleb128 0x1
	.byte	0x9c
	.long	0x625b
	.uleb128 0x1d
	.ascii "u\0"
	.byte	0x2
	.word	0x13b
	.byte	0x26
	.long	0x49b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.ascii "v\0"
	.byte	0x2
	.word	0x13b
	.byte	0x39
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "w\0"
	.byte	0x2
	.word	0x13b
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0x2
	.word	0x141
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii "nv\0"
	.byte	0x2
	.word	0x142
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii "nw\0"
	.byte	0x2
	.word	0x143
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.secrel32	.LASF6
	.byte	0x2
	.word	0x146
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x2
	.word	0x147
	.byte	0xf
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x21
	.ascii "PMC_Add_I_X\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x11
	.long	0x49ed
	.quad	.LFB4371
	.quad	.LFE4371-.LFB4371
	.uleb128 0x1
	.byte	0x9c
	.long	0x62f6
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x26
	.long	0x49a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x39
	.long	0x4adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x4d
	.long	0x5830
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0xe3
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.ascii "nv\0"
	.byte	0x2
	.byte	0xe4
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii "nw\0"
	.byte	0x2
	.byte	0xe5
	.byte	0x14
	.long	0x5a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.secrel32	.LASF6
	.byte	0x2
	.byte	0xe8
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x23
	.secrel32	.LASF7
	.byte	0x2
	.byte	0xe9
	.byte	0xf
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "SubtructU_X_X_Imp\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4370
	.quad	.LFE4370-.LFB4370
	.uleb128 0x1
	.byte	0x9c
	.long	0x63bf
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0xb1
	.byte	0x2f
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x45
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x58
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x6b
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0xb3
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii "c\0"
	.byte	0x2
	.byte	0xb4
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
	.byte	0xbc
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
	.byte	0xd1
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
	.byte	0x82
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4369
	.quad	.LFE4369-.LFB4369
	.uleb128 0x1
	.byte	0x9c
	.long	0x649b
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x82
	.byte	0x2f
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x82
	.byte	0x45
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x82
	.byte	0x52
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x82
	.byte	0x65
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x84
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii "c\0"
	.byte	0x2
	.byte	0x85
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
	.byte	0x8d
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
	.byte	0xa2
	.byte	0x13
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0xa5
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
	.byte	0x53
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4368
	.quad	.LFE4368-.LFB4368
	.uleb128 0x1
	.byte	0x9c
	.long	0x6571
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x53
	.byte	0x2f
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x53
	.byte	0x45
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x53
	.byte	0x52
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x53
	.byte	0x65
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x55
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii "c\0"
	.byte	0x2
	.byte	0x56
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
	.byte	0x5e
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
	.byte	0x73
	.byte	0x13
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x76
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
	.byte	0x45
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4367
	.quad	.LFE4367-.LFB4367
	.uleb128 0x1
	.byte	0x9c
	.long	0x65f1
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x45
	.byte	0x2a
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x45
	.byte	0x40
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x45
	.byte	0x53
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x45
	.byte	0x66
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x47
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x48
	.byte	0x15
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "AddU_X_L_Imp\0"
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4366
	.quad	.LFE4366-.LFB4366
	.uleb128 0x1
	.byte	0x9c
	.long	0x6671
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x37
	.byte	0x2a
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x37
	.byte	0x40
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x37
	.byte	0x4d
	.long	0x49db
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x37
	.byte	0x60
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x39
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x3a
	.byte	0x15
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "AddU_X_I_Imp\0"
	.byte	0x2
	.byte	0x29
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4365
	.quad	.LFE4365-.LFB4365
	.uleb128 0x1
	.byte	0x9c
	.long	0x66f1
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x29
	.byte	0x2a
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "u\0"
	.byte	0x2
	.byte	0x29
	.byte	0x40
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.ascii "v\0"
	.byte	0x2
	.byte	0x29
	.byte	0x4d
	.long	0x49c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.ascii "w\0"
	.byte	0x2
	.byte	0x29
	.byte	0x60
	.long	0x63bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x2b
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x2c
	.byte	0x15
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.ascii "IS_ZERO_UINT\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x18
	.long	0x49ed
	.quad	.LFB4364
	.quad	.LFE4364-.LFB4364
	.uleb128 0x1
	.byte	0x9c
	.long	0x675c
	.uleb128 0x22
	.ascii "x\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x35
	.long	0x4a8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "is_zero\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x3e
	.long	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.long	0x49ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.ascii "type\0"
	.byte	0x2
	.byte	0x22
	.byte	0x1a
	.long	0x4a05
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.long	0x67a5
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
