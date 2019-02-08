	.file	"pmc_add_sub.c"
	.text
Ltext0:
	.def	_GET_ABS_32;	.scl	3;	.type	32;	.endef
_GET_ABS_32:
LFB4231:
	.file 1 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_inline_func.h"
	.loc 1 780 5
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 781 12
	cmpl	$0, 8(%ebp)
	jle	L2
	.loc 1 783 19
	movl	12(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 784 21
	movl	8(%ebp), %eax
	jmp	L3
L2:
	.loc 1 786 17
	cmpl	$0, 8(%ebp)
	jne	L4
	.loc 1 788 19
	movl	12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 789 20
	movl	$0, %eax
	jmp	L3
L4:
	.loc 1 793 19
	movl	12(%ebp), %eax
	movb	$-1, (%eax)
	.loc 1 794 63
	cmpl	$-2147483648, 8(%ebp)
	je	L5
	.loc 1 794 76 discriminator 1
	movl	8(%ebp), %eax
	negl	%eax
	.loc 1 794 63 discriminator 1
	jmp	L3
L5:
	.loc 1 794 63 is_stmt 0 discriminator 2
	movl	$-2147483648, %eax
L3:
	.loc 1 796 1 is_stmt 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4231:
	.def	_GET_ABS_64;	.scl	3;	.type	32;	.endef
_GET_ABS_64:
LFB4232:
	.loc 1 800 5
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %esi
	movl	%esi, -24(%ebp)
	movl	12(%ebp), %esi
	movl	%esi, -20(%ebp)
	.loc 1 801 12
	movl	$0, %edi
	movl	$0, %esi
	cmpl	-24(%ebp), %edi
	sbbl	-20(%ebp), %esi
	jge	L8
	.loc 1 803 19
	movl	16(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 804 21
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	jmp	L9
L8:
	.loc 1 806 17
	movl	-24(%ebp), %esi
	xorl	$0, %esi
	movl	%esi, %ecx
	movl	-20(%ebp), %esi
	xorl	$0, %esi
	movl	%esi, %ebx
	orl	%ebx, %ecx
	testl	%ecx, %ecx
	jne	L10
	.loc 1 808 19
	movl	16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 809 20
	movl	$0, %eax
	movl	$0, %edx
	jmp	L9
L10:
	.loc 1 813 19
	movl	16(%ebp), %ecx
	movb	$-1, (%ecx)
	.loc 1 814 81
	movl	-24(%ebp), %ecx
	xorb	$0, %ch
	movl	%ecx, %eax
	movl	-20(%ebp), %ecx
	xorl	$-2147483648, %ecx
	movl	%ecx, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	L11
	.loc 1 814 94 discriminator 1
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	.loc 1 814 81 discriminator 1
	jmp	L9
L11:
	.loc 1 814 81 is_stmt 0 discriminator 2
	movl	$0, %eax
	movl	$-2147483648, %edx
L9:
	.loc 1 816 5 is_stmt 1
	addl	$12, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4232:
	.def	_AddU_X_I_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_I_Imp:
LFB4233:
	.file 2 "../pmc_add_sub.c"
	.loc 2 32 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 35 26
	movl	_ep_uint+72, %eax
	.loc 2 35 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL0:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 35 8
	cmpl	$0, -12(%ebp)
	je	L14
	.loc 2 36 16
	movl	-12(%ebp), %eax
	jmp	L17
L14:
	.loc 2 37 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 37 8
	cmpl	$0, -12(%ebp)
	je	L16
	.loc 2 39 16
	movl	_ep_uint+16, %eax
	.loc 2 39 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL1:
	subl	$4, %esp
	.loc 2 40 16
	movl	-12(%ebp), %eax
	jmp	L17
L16:
	.loc 2 42 12
	movl	$0, %eax
L17:
	.loc 2 43 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4233:
	.def	_AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_L_Imp:
LFB4234:
	.loc 2 46 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 2 49 26
	movl	_ep_uint+76, %ecx
	.loc 2 49 19
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
LVL2:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 49 8
	cmpl	$0, -12(%ebp)
	je	L19
	.loc 2 50 16
	movl	-12(%ebp), %eax
	jmp	L22
L19:
	.loc 2 51 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 51 8
	cmpl	$0, -12(%ebp)
	je	L21
	.loc 2 53 16
	movl	_ep_uint+16, %eax
	.loc 2 53 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL3:
	subl	$4, %esp
	.loc 2 54 16
	movl	-12(%ebp), %eax
	jmp	L22
L21:
	.loc 2 56 12
	movl	$0, %eax
L22:
	.loc 2 57 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4234:
	.def	_AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_X_Imp:
LFB4235:
	.loc 2 60 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 63 26
	movl	_ep_uint+80, %eax
	.loc 2 63 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL4:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 63 8
	cmpl	$0, -12(%ebp)
	je	L24
	.loc 2 64 16
	movl	-12(%ebp), %eax
	jmp	L27
L24:
	.loc 2 65 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 65 8
	cmpl	$0, -12(%ebp)
	je	L26
	.loc 2 67 16
	movl	_ep_uint+16, %eax
	.loc 2 67 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	subl	$4, %esp
	.loc 2 68 16
	movl	-12(%ebp), %eax
	jmp	L27
L26:
	.loc 2 70 12
	movl	$0, %eax
L27:
	.loc 2 71 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4235:
	.def	_SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_I_Imp:
LFB4236:
	.loc 2 74 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movb	%al, -44(%ebp)
	.loc 2 77 26
	movl	_ep_uint+220, %eax
	.loc 2 77 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL6:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 77 8
	cmpl	$0, -12(%ebp)
	je	L29
	.loc 2 78 16
	movl	-12(%ebp), %eax
	jmp	L41
L29:
	.loc 2 79 11
	movl	-16(%ebp), %eax
	.loc 2 79 8
	testl	%eax, %eax
	jle	L31
LBB2:
	.loc 2 85 30
	movl	_ep_uint+92, %eax
	.loc 2 85 23
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL7:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 85 12
	cmpl	$0, -12(%ebp)
	je	L32
	.loc 2 86 20
	movl	-12(%ebp), %eax
	jmp	L41
L32:
	.loc 2 87 23
	movl	-20(%ebp), %edx
	movsbl	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 87 12
	cmpl	$0, -12(%ebp)
	je	L35
	.loc 2 89 20
	movl	_ep_uint+16, %eax
	.loc 2 89 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL8:
	subl	$4, %esp
	.loc 2 90 20
	movl	-12(%ebp), %eax
	jmp	L41
L31:
LBE2:
	.loc 2 93 16
	movl	-16(%ebp), %eax
	.loc 2 93 13
	testl	%eax, %eax
	jne	L36
	.loc 2 98 12
	movl	20(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L35
L36:
LBB3:
	.loc 2 106 30
	movl	_ep_uint+84, %eax
	.loc 2 106 23
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL9:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 106 12
	cmpl	$0, -12(%ebp)
	je	L37
	.loc 2 107 20
	movl	-12(%ebp), %eax
	jmp	L41
L37:
	.loc 2 109 30
	movl	_ep_uint+8, %eax
	.loc 2 109 23
	movl	-24(%ebp), %edx
	leal	-28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL10:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 2 109 12
	cmpl	$0, -12(%ebp)
	je	L39
	.loc 2 110 20
	movl	-12(%ebp), %eax
	jmp	L41
L39:
	.loc 2 111 23
	movl	-28(%ebp), %edx
	movzbl	-44(%ebp), %eax
	negl	%eax
	movsbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 111 12
	cmpl	$0, -12(%ebp)
	je	L35
	.loc 2 113 20
	movl	_ep_uint+16, %eax
	.loc 2 113 13
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL11:
	subl	$4, %esp
	.loc 2 114 20
	movl	-12(%ebp), %eax
	jmp	L41
L35:
LBE3:
	.loc 2 117 12
	movl	$0, %eax
L41:
	.loc 2 118 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4236:
	.def	_SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_L_Imp:
LFB4237:
	.loc 2 121 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movb	%al, -44(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 2 124 26
	movl	_ep_uint+224, %ecx
	.loc 2 124 19
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
LVL12:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 124 8
	cmpl	$0, -12(%ebp)
	je	L43
	.loc 2 125 16
	movl	-12(%ebp), %eax
	jmp	L55
L43:
	.loc 2 126 11
	movl	-16(%ebp), %eax
	.loc 2 126 8
	testl	%eax, %eax
	jle	L45
LBB4:
	.loc 2 132 30
	movl	_ep_uint+96, %ecx
	.loc 2 132 23
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
LVL13:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 132 12
	cmpl	$0, -12(%ebp)
	je	L46
	.loc 2 133 20
	movl	-12(%ebp), %eax
	jmp	L55
L46:
	.loc 2 134 23
	movl	-20(%ebp), %edx
	movsbl	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 134 12
	cmpl	$0, -12(%ebp)
	je	L49
	.loc 2 136 20
	movl	_ep_uint+16, %eax
	.loc 2 136 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL14:
	subl	$4, %esp
	.loc 2 137 20
	movl	-12(%ebp), %eax
	jmp	L55
L45:
LBE4:
	.loc 2 140 16
	movl	-16(%ebp), %eax
	.loc 2 140 13
	testl	%eax, %eax
	jne	L50
	.loc 2 145 12
	movl	24(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L49
L50:
LBB5:
	.loc 2 153 30
	movl	_ep_uint+88, %ecx
	.loc 2 153 23
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL15:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 153 12
	cmpl	$0, -12(%ebp)
	je	L51
	.loc 2 154 20
	movl	-12(%ebp), %eax
	jmp	L55
L51:
	.loc 2 156 30
	movl	_ep_uint+12, %ecx
	.loc 2 156 23
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	leal	-36(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL16:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 156 12
	cmpl	$0, -12(%ebp)
	je	L53
	.loc 2 157 20
	movl	-12(%ebp), %eax
	jmp	L55
L53:
	.loc 2 158 23
	movl	-36(%ebp), %edx
	movzbl	-44(%ebp), %eax
	negl	%eax
	movsbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 158 12
	cmpl	$0, -12(%ebp)
	je	L49
	.loc 2 160 20
	movl	_ep_uint+16, %eax
	.loc 2 160 13
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL17:
	subl	$4, %esp
	.loc 2 161 20
	movl	-12(%ebp), %eax
	jmp	L55
L49:
LBE5:
	.loc 2 164 12
	movl	$0, %eax
L55:
	.loc 2 165 1 discriminator 2
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4237:
	.def	_SubtructU_X_X_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_X_Imp:
LFB4238:
	.loc 2 168 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 171 26
	movl	_ep_uint+228, %eax
	.loc 2 171 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL18:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 171 8
	cmpl	$0, -12(%ebp)
	je	L57
	.loc 2 172 16
	movl	-12(%ebp), %eax
	jmp	L68
L57:
	.loc 2 173 11
	movl	-16(%ebp), %eax
	.loc 2 173 8
	testl	%eax, %eax
	jle	L59
LBB6:
	.loc 2 179 30
	movl	_ep_uint+100, %eax
	.loc 2 179 23
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL19:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 179 12
	cmpl	$0, -12(%ebp)
	je	L60
	.loc 2 180 20
	movl	-12(%ebp), %eax
	jmp	L68
L60:
	.loc 2 181 23
	movl	-20(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 181 12
	cmpl	$0, -12(%ebp)
	je	L63
	.loc 2 183 20
	movl	_ep_uint+16, %eax
	.loc 2 183 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL20:
	subl	$4, %esp
	.loc 2 184 20
	movl	-12(%ebp), %eax
	jmp	L68
L59:
LBE6:
	.loc 2 187 16
	movl	-16(%ebp), %eax
	.loc 2 187 13
	testl	%eax, %eax
	jne	L64
	.loc 2 192 12
	movl	20(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L63
L64:
LBB7:
	.loc 2 200 30
	movl	_ep_uint+100, %eax
	.loc 2 200 23
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL21:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 200 12
	cmpl	$0, -12(%ebp)
	je	L65
	.loc 2 201 20
	movl	-12(%ebp), %eax
	jmp	L68
L65:
	.loc 2 202 23
	movl	-24(%ebp), %edx
	movzbl	-28(%ebp), %eax
	negl	%eax
	movsbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 202 12
	cmpl	$0, -12(%ebp)
	je	L63
	.loc 2 204 20
	movl	_ep_uint+16, %eax
	.loc 2 204 13
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL22:
	subl	$4, %esp
	.loc 2 205 20
	movl	-12(%ebp), %eax
	jmp	L68
L63:
LBE7:
	.loc 2 208 12
	movl	$0, %eax
L68:
	.loc 2 209 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4238:
	.globl	_PMC_Add_I_X@12
	.def	_PMC_Add_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_I_X@12:
LFB4239:
	.loc 2 212 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 213 8
	cmpl	$0, 12(%ebp)
	jne	L70
	.loc 2 214 16
	movl	$-1, %eax
	jmp	L82
L70:
	.loc 2 215 8
	cmpl	$0, 16(%ebp)
	jne	L72
	.loc 2 216 16
	movl	$-1, %eax
	jmp	L82
L72:
	.loc 2 218 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 220 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 220 8
	cmpl	$0, -16(%ebp)
	je	L73
	.loc 2 221 16
	movl	-16(%ebp), %eax
	jmp	L82
L73:
	.loc 2 223 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 224 16
	movzbl	-25(%ebp), %eax
	.loc 2 224 8
	testb	%al, %al
	jne	L74
	.loc 2 228 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 228 12
	testb	%al, %al
	jne	L75
	.loc 2 233 16
	movl	$_number_zero, -24(%ebp)
	jmp	L76
L75:
	.loc 2 240 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 240 16
	cmpl	$0, -16(%ebp)
	je	L76
	.loc 2 241 24
	movl	-16(%ebp), %eax
	jmp	L82
L74:
	.loc 2 244 21
	movzbl	-25(%ebp), %eax
	.loc 2 244 13
	testb	%al, %al
	jle	L77
	.loc 2 248 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 248 12
	testb	%al, %al
	jne	L78
	.loc 2 253 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 253 16
	cmpl	$0, -16(%ebp)
	je	L76
	.loc 2 254 24
	movl	-16(%ebp), %eax
	jmp	L82
L78:
	.loc 2 256 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 256 17
	testb	%al, %al
	jle	L79
	.loc 2 261 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 261 16
	cmpl	$0, -16(%ebp)
	je	L76
	.loc 2 262 24
	movl	-16(%ebp), %eax
	jmp	L82
L79:
	.loc 2 269 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 269 16
	cmpl	$0, -16(%ebp)
	je	L76
	.loc 2 270 24
	movl	-16(%ebp), %eax
	jmp	L82
L77:
	.loc 2 277 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 277 12
	testb	%al, %al
	jne	L80
	.loc 2 282 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 282 16
	cmpl	$0, -16(%ebp)
	je	L76
	.loc 2 283 24
	movl	-16(%ebp), %eax
	jmp	L82
L80:
	.loc 2 285 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 285 17
	testb	%al, %al
	jle	L81
	.loc 2 290 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 290 16
	cmpl	$0, -16(%ebp)
	je	L76
	.loc 2 291 24
	movl	-16(%ebp), %eax
	jmp	L82
L81:
	.loc 2 298 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 298 16
	cmpl	$0, -16(%ebp)
	je	L76
	.loc 2 299 24
	movl	-16(%ebp), %eax
	jmp	L82
L76:
	.loc 2 302 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 303 12
	movl	$0, %eax
L82:
	.loc 2 304 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4239:
	.globl	_PMC_Add_L_X@16
	.def	_PMC_Add_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Add_L_X@16:
LFB4240:
	.loc 2 307 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 308 8
	cmpl	$0, 16(%ebp)
	jne	L84
	.loc 2 309 16
	movl	$-1, %eax
	jmp	L96
L84:
	.loc 2 310 8
	cmpl	$0, 20(%ebp)
	jne	L86
	.loc 2 311 16
	movl	$-1, %eax
	jmp	L96
L86:
	.loc 2 313 20
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 315 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 315 8
	cmpl	$0, -16(%ebp)
	je	L87
	.loc 2 316 16
	movl	-16(%ebp), %eax
	jmp	L96
L87:
	.loc 2 318 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 319 16
	movzbl	-29(%ebp), %eax
	.loc 2 319 8
	testb	%al, %al
	jne	L88
	.loc 2 323 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 323 12
	testb	%al, %al
	jne	L89
	.loc 2 328 16
	movl	$_number_zero, -28(%ebp)
	jmp	L90
L89:
	.loc 2 335 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 335 16
	cmpl	$0, -16(%ebp)
	je	L90
	.loc 2 336 24
	movl	-16(%ebp), %eax
	jmp	L96
L88:
	.loc 2 339 21
	movzbl	-29(%ebp), %eax
	.loc 2 339 13
	testb	%al, %al
	jle	L91
	.loc 2 343 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 343 12
	testb	%al, %al
	jne	L92
	.loc 2 348 27
	movzbl	-29(%ebp), %eax
	movsbl	%al, %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 348 16
	cmpl	$0, -16(%ebp)
	je	L90
	.loc 2 349 24
	movl	-16(%ebp), %eax
	jmp	L96
L92:
	.loc 2 351 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 351 17
	testb	%al, %al
	jle	L93
	.loc 2 356 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 356 16
	cmpl	$0, -16(%ebp)
	je	L90
	.loc 2 357 24
	movl	-16(%ebp), %eax
	jmp	L96
L93:
	.loc 2 364 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 364 16
	cmpl	$0, -16(%ebp)
	je	L90
	.loc 2 365 24
	movl	-16(%ebp), %eax
	jmp	L96
L91:
	.loc 2 372 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 372 12
	testb	%al, %al
	jne	L94
	.loc 2 377 27
	movzbl	-29(%ebp), %eax
	movsbl	%al, %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 377 16
	cmpl	$0, -16(%ebp)
	je	L90
	.loc 2 378 24
	movl	-16(%ebp), %eax
	jmp	L96
L94:
	.loc 2 380 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 380 17
	testb	%al, %al
	jle	L95
	.loc 2 385 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 385 16
	cmpl	$0, -16(%ebp)
	je	L90
	.loc 2 386 24
	movl	-16(%ebp), %eax
	jmp	L96
L95:
	.loc 2 393 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 393 16
	cmpl	$0, -16(%ebp)
	je	L90
	.loc 2 394 24
	movl	-16(%ebp), %eax
	jmp	L96
L90:
	.loc 2 397 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 398 12
	movl	$0, %eax
L96:
	.loc 2 399 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4240:
	.globl	_PMC_Add_UX_X@12
	.def	_PMC_Add_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_UX_X@12:
LFB4241:
	.loc 2 402 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 403 8
	cmpl	$0, 12(%ebp)
	jne	L98
	.loc 2 404 16
	movl	$-1, %eax
	jmp	L111
L98:
	.loc 2 405 8
	cmpl	$0, 16(%ebp)
	jne	L100
	.loc 2 406 16
	movl	$-1, %eax
	jmp	L111
L100:
	.loc 2 408 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 410 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 410 8
	cmpl	$0, -16(%ebp)
	je	L101
	.loc 2 411 16
	movl	-16(%ebp), %eax
	jmp	L111
L101:
	.loc 2 413 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsZero_UINT
	movl	%eax, -16(%ebp)
	.loc 2 413 8
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 414 16
	movl	-16(%ebp), %eax
	jmp	L111
L102:
	.loc 2 415 9
	movzbl	-21(%ebp), %eax
	.loc 2 415 8
	testb	%al, %al
	je	L103
	.loc 2 419 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 419 12
	testb	%al, %al
	jne	L104
	.loc 2 424 16
	movl	$_number_zero, -20(%ebp)
	jmp	L105
L104:
	.loc 2 431 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 431 16
	cmpl	$0, -16(%ebp)
	je	L105
	.loc 2 432 24
	movl	-16(%ebp), %eax
	jmp	L111
L103:
	.loc 2 439 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 439 12
	testb	%al, %al
	jne	L106
LBB8:
	.loc 2 445 34
	movl	_ep_uint+44, %eax
	.loc 2 445 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL23:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 445 16
	cmpl	$0, -16(%ebp)
	je	L107
	.loc 2 446 24
	movl	-16(%ebp), %eax
	jmp	L111
L107:
	.loc 2 447 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 447 16
	cmpl	$0, -16(%ebp)
	je	L105
	.loc 2 449 24
	movl	_ep_uint+16, %eax
	.loc 2 449 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL24:
	subl	$4, %esp
	.loc 2 450 24
	movl	-16(%ebp), %eax
	jmp	L111
L106:
LBE8:
	.loc 2 453 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 453 17
	testb	%al, %al
	jle	L110
	.loc 2 458 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 458 16
	cmpl	$0, -16(%ebp)
	je	L105
	.loc 2 459 24
	movl	-16(%ebp), %eax
	jmp	L111
L110:
	.loc 2 466 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 466 16
	cmpl	$0, -16(%ebp)
	je	L105
	.loc 2 467 24
	movl	-16(%ebp), %eax
	jmp	L111
L105:
	.loc 2 470 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 471 12
	movl	$0, %eax
L111:
	.loc 2 472 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4241:
	.globl	_PMC_Add_X_I@12
	.def	_PMC_Add_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_I@12:
LFB4242:
	.loc 2 475 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 476 8
	cmpl	$0, 8(%ebp)
	jne	L113
	.loc 2 477 16
	movl	$-1, %eax
	jmp	L125
L113:
	.loc 2 478 8
	cmpl	$0, 16(%ebp)
	jne	L115
	.loc 2 479 16
	movl	$-1, %eax
	jmp	L125
L115:
	.loc 2 481 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 483 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 483 8
	cmpl	$0, -16(%ebp)
	je	L116
	.loc 2 484 16
	movl	-16(%ebp), %eax
	jmp	L125
L116:
	.loc 2 486 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 487 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 487 8
	testb	%al, %al
	jne	L117
	.loc 2 491 20
	movzbl	-25(%ebp), %eax
	.loc 2 491 12
	testb	%al, %al
	jne	L118
	.loc 2 496 16
	movl	$_number_zero, -24(%ebp)
	jmp	L119
L118:
	.loc 2 503 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 503 16
	cmpl	$0, -16(%ebp)
	je	L119
	.loc 2 504 24
	movl	-16(%ebp), %eax
	jmp	L125
L117:
	.loc 2 507 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 507 13
	testb	%al, %al
	jle	L120
	.loc 2 511 20
	movzbl	-25(%ebp), %eax
	.loc 2 511 12
	testb	%al, %al
	jne	L121
	.loc 2 516 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 516 16
	cmpl	$0, -16(%ebp)
	je	L119
	.loc 2 517 24
	movl	-16(%ebp), %eax
	jmp	L125
L121:
	.loc 2 519 25
	movzbl	-25(%ebp), %eax
	.loc 2 519 17
	testb	%al, %al
	jle	L122
	.loc 2 524 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 524 16
	cmpl	$0, -16(%ebp)
	je	L119
	.loc 2 525 24
	movl	-16(%ebp), %eax
	jmp	L125
L122:
	.loc 2 532 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 532 16
	cmpl	$0, -16(%ebp)
	je	L119
	.loc 2 533 24
	movl	-16(%ebp), %eax
	jmp	L125
L120:
	.loc 2 540 20
	movzbl	-25(%ebp), %eax
	.loc 2 540 12
	testb	%al, %al
	jne	L123
	.loc 2 545 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 545 16
	cmpl	$0, -16(%ebp)
	je	L119
	.loc 2 546 24
	movl	-16(%ebp), %eax
	jmp	L125
L123:
	.loc 2 548 25
	movzbl	-25(%ebp), %eax
	.loc 2 548 17
	testb	%al, %al
	jle	L124
	.loc 2 553 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 553 16
	cmpl	$0, -16(%ebp)
	je	L119
	.loc 2 554 24
	movl	-16(%ebp), %eax
	jmp	L125
L124:
	.loc 2 561 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 561 16
	cmpl	$0, -16(%ebp)
	je	L119
	.loc 2 562 24
	movl	-16(%ebp), %eax
	jmp	L125
L119:
	.loc 2 565 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 566 12
	movl	$0, %eax
L125:
	.loc 2 567 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4242:
	.globl	_PMC_Add_X_L@16
	.def	_PMC_Add_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Add_X_L@16:
LFB4243:
	.loc 2 570 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 571 8
	cmpl	$0, 8(%ebp)
	jne	L127
	.loc 2 572 16
	movl	$-1, %eax
	jmp	L139
L127:
	.loc 2 573 8
	cmpl	$0, 20(%ebp)
	jne	L129
	.loc 2 574 16
	movl	$-1, %eax
	jmp	L139
L129:
	.loc 2 576 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 578 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 578 8
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 579 16
	movl	-16(%ebp), %eax
	jmp	L139
L130:
	.loc 2 581 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 582 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 582 8
	testb	%al, %al
	jne	L131
	.loc 2 586 20
	movzbl	-29(%ebp), %eax
	.loc 2 586 12
	testb	%al, %al
	jne	L132
	.loc 2 591 16
	movl	$_number_zero, -28(%ebp)
	jmp	L133
L132:
	.loc 2 598 27
	movzbl	-29(%ebp), %eax
	movsbl	%al, %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 598 16
	cmpl	$0, -16(%ebp)
	je	L133
	.loc 2 599 24
	movl	-16(%ebp), %eax
	jmp	L139
L131:
	.loc 2 602 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 602 13
	testb	%al, %al
	jle	L134
	.loc 2 606 20
	movzbl	-29(%ebp), %eax
	.loc 2 606 12
	testb	%al, %al
	jne	L135
	.loc 2 611 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 611 16
	cmpl	$0, -16(%ebp)
	je	L133
	.loc 2 612 24
	movl	-16(%ebp), %eax
	jmp	L139
L135:
	.loc 2 614 25
	movzbl	-29(%ebp), %eax
	.loc 2 614 17
	testb	%al, %al
	jle	L136
	.loc 2 619 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 619 16
	cmpl	$0, -16(%ebp)
	je	L133
	.loc 2 620 24
	movl	-16(%ebp), %eax
	jmp	L139
L136:
	.loc 2 627 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 627 16
	cmpl	$0, -16(%ebp)
	je	L133
	.loc 2 628 24
	movl	-16(%ebp), %eax
	jmp	L139
L134:
	.loc 2 635 20
	movzbl	-29(%ebp), %eax
	.loc 2 635 12
	testb	%al, %al
	jne	L137
	.loc 2 640 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 640 16
	cmpl	$0, -16(%ebp)
	je	L133
	.loc 2 641 24
	movl	-16(%ebp), %eax
	jmp	L139
L137:
	.loc 2 643 25
	movzbl	-29(%ebp), %eax
	.loc 2 643 17
	testb	%al, %al
	jle	L138
	.loc 2 648 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 648 16
	cmpl	$0, -16(%ebp)
	je	L133
	.loc 2 649 24
	movl	-16(%ebp), %eax
	jmp	L139
L138:
	.loc 2 656 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 656 16
	cmpl	$0, -16(%ebp)
	je	L133
	.loc 2 657 24
	movl	-16(%ebp), %eax
	jmp	L139
L133:
	.loc 2 660 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 661 12
	movl	$0, %eax
L139:
	.loc 2 662 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4243:
	.globl	_PMC_Add_X_UX@12
	.def	_PMC_Add_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_UX@12:
LFB4244:
	.loc 2 665 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 666 8
	cmpl	$0, 8(%ebp)
	jne	L141
	.loc 2 667 16
	movl	$-1, %eax
	jmp	L158
L141:
	.loc 2 668 8
	cmpl	$0, 12(%ebp)
	jne	L143
	.loc 2 669 16
	movl	$-1, %eax
	jmp	L158
L143:
	.loc 2 670 8
	cmpl	$0, 16(%ebp)
	jne	L144
	.loc 2 671 16
	movl	$-1, %eax
	jmp	L158
L144:
	.loc 2 673 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 675 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 675 8
	cmpl	$0, -16(%ebp)
	je	L145
	.loc 2 676 16
	movl	-16(%ebp), %eax
	jmp	L158
L145:
	.loc 2 678 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsZero_UINT
	movl	%eax, -16(%ebp)
	.loc 2 678 8
	cmpl	$0, -16(%ebp)
	je	L146
	.loc 2 679 16
	movl	-16(%ebp), %eax
	jmp	L158
L146:
	.loc 2 680 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 680 8
	testb	%al, %al
	jne	L147
	.loc 2 684 13
	movzbl	-21(%ebp), %eax
	.loc 2 684 12
	testb	%al, %al
	je	L148
	.loc 2 689 16
	movl	$_number_zero, -20(%ebp)
	jmp	L154
L148:
LBB9:
	.loc 2 697 34
	movl	_ep_uint+44, %eax
	.loc 2 697 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL25:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 697 16
	cmpl	$0, -16(%ebp)
	je	L150
	.loc 2 698 24
	movl	-16(%ebp), %eax
	jmp	L158
L150:
	.loc 2 700 34
	movl	_ep_uint+20, %eax
	.loc 2 700 27
	movl	-28(%ebp), %edx
	leal	-32(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL26:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 700 16
	cmpl	$0, -16(%ebp)
	je	L152
	.loc 2 701 24
	movl	-16(%ebp), %eax
	jmp	L158
L152:
	.loc 2 702 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 702 16
	cmpl	$0, -16(%ebp)
	je	L154
	.loc 2 704 24
	movl	_ep_uint+16, %eax
	.loc 2 704 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL27:
	subl	$4, %esp
	.loc 2 705 24
	movl	-16(%ebp), %eax
	jmp	L158
L147:
LBE9:
	.loc 2 709 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 709 13
	testb	%al, %al
	jle	L155
	.loc 2 713 13
	movzbl	-21(%ebp), %eax
	.loc 2 713 12
	testb	%al, %al
	je	L156
	.loc 2 718 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 718 16
	cmpl	$0, -16(%ebp)
	je	L154
	.loc 2 719 24
	movl	-16(%ebp), %eax
	jmp	L158
L156:
	.loc 2 726 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 726 16
	cmpl	$0, -16(%ebp)
	je	L154
	.loc 2 727 24
	movl	-16(%ebp), %eax
	jmp	L158
L155:
	.loc 2 734 13
	movzbl	-21(%ebp), %eax
	.loc 2 734 12
	testb	%al, %al
	je	L157
	.loc 2 739 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 739 16
	cmpl	$0, -16(%ebp)
	je	L154
	.loc 2 740 24
	movl	-16(%ebp), %eax
	jmp	L158
L157:
	.loc 2 747 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 747 16
	cmpl	$0, -16(%ebp)
	je	L154
	.loc 2 748 24
	movl	-16(%ebp), %eax
	jmp	L158
L154:
	.loc 2 752 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 753 12
	movl	$0, %eax
L158:
	.loc 2 754 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4244:
	.globl	_PMC_Add_X_X@12
	.def	_PMC_Add_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_X@12:
LFB4245:
	.loc 2 757 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 758 8
	cmpl	$0, 8(%ebp)
	jne	L160
	.loc 2 759 16
	movl	$-1, %eax
	jmp	L174
L160:
	.loc 2 760 8
	cmpl	$0, 12(%ebp)
	jne	L162
	.loc 2 761 16
	movl	$-1, %eax
	jmp	L174
L162:
	.loc 2 762 8
	cmpl	$0, 16(%ebp)
	jne	L163
	.loc 2 763 16
	movl	$-1, %eax
	jmp	L174
L163:
	.loc 2 765 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 766 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 768 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 768 8
	cmpl	$0, -20(%ebp)
	je	L164
	.loc 2 769 16
	movl	-20(%ebp), %eax
	jmp	L174
L164:
	.loc 2 770 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 770 8
	cmpl	$0, -20(%ebp)
	je	L165
	.loc 2 771 16
	movl	-20(%ebp), %eax
	jmp	L174
L165:
	.loc 2 772 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 772 8
	testb	%al, %al
	jne	L166
	.loc 2 776 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 776 12
	testb	%al, %al
	jne	L167
	.loc 2 781 16
	movl	$_number_zero, -24(%ebp)
	jmp	L168
L167:
	.loc 2 788 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 788 16
	cmpl	$0, -20(%ebp)
	je	L168
	.loc 2 789 24
	movl	-20(%ebp), %eax
	jmp	L174
L166:
	.loc 2 792 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 792 13
	testb	%al, %al
	jle	L169
	.loc 2 796 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 796 12
	testb	%al, %al
	jne	L170
	.loc 2 801 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 801 16
	cmpl	$0, -20(%ebp)
	je	L168
	.loc 2 802 24
	movl	-20(%ebp), %eax
	jmp	L174
L170:
	.loc 2 804 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 804 17
	testb	%al, %al
	jle	L171
	.loc 2 809 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 809 16
	cmpl	$0, -20(%ebp)
	je	L168
	.loc 2 810 24
	movl	-20(%ebp), %eax
	jmp	L174
L171:
	.loc 2 817 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 817 16
	cmpl	$0, -20(%ebp)
	je	L168
	.loc 2 818 24
	movl	-20(%ebp), %eax
	jmp	L174
L169:
	.loc 2 825 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 825 12
	testb	%al, %al
	jne	L172
	.loc 2 830 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 830 16
	cmpl	$0, -20(%ebp)
	je	L168
	.loc 2 831 24
	movl	-20(%ebp), %eax
	jmp	L174
L172:
	.loc 2 833 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 833 17
	testb	%al, %al
	jle	L173
	.loc 2 838 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 838 16
	cmpl	$0, -20(%ebp)
	je	L168
	.loc 2 839 24
	movl	-20(%ebp), %eax
	jmp	L174
L173:
	.loc 2 846 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 846 16
	cmpl	$0, -20(%ebp)
	je	L168
	.loc 2 847 24
	movl	-20(%ebp), %eax
	jmp	L174
L168:
	.loc 2 850 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 851 12
	movl	$0, %eax
L174:
	.loc 2 852 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4245:
	.globl	_PMC_Subtruct_I_X@12
	.def	_PMC_Subtruct_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_I_X@12:
LFB4246:
	.loc 2 855 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 856 8
	cmpl	$0, 12(%ebp)
	jne	L176
	.loc 2 857 16
	movl	$-1, %eax
	jmp	L188
L176:
	.loc 2 858 8
	cmpl	$0, 16(%ebp)
	jne	L178
	.loc 2 859 16
	movl	$-1, %eax
	jmp	L188
L178:
	.loc 2 861 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 863 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 863 8
	cmpl	$0, -16(%ebp)
	je	L179
	.loc 2 864 16
	movl	-16(%ebp), %eax
	jmp	L188
L179:
	.loc 2 866 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 867 16
	movzbl	-25(%ebp), %eax
	.loc 2 867 8
	testb	%al, %al
	jne	L180
	.loc 2 871 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 871 12
	testb	%al, %al
	jne	L181
	.loc 2 876 16
	movl	$_number_zero, -24(%ebp)
	jmp	L182
L181:
	.loc 2 883 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 883 16
	cmpl	$0, -16(%ebp)
	je	L182
	.loc 2 884 24
	movl	-16(%ebp), %eax
	jmp	L188
L180:
	.loc 2 887 21
	movzbl	-25(%ebp), %eax
	.loc 2 887 13
	testb	%al, %al
	jle	L183
	.loc 2 891 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 891 12
	testb	%al, %al
	jne	L184
	.loc 2 896 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 896 16
	cmpl	$0, -16(%ebp)
	je	L182
	.loc 2 897 24
	movl	-16(%ebp), %eax
	jmp	L188
L184:
	.loc 2 899 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 899 17
	testb	%al, %al
	jle	L185
	.loc 2 904 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 904 16
	cmpl	$0, -16(%ebp)
	je	L182
	.loc 2 905 24
	movl	-16(%ebp), %eax
	jmp	L188
L185:
	.loc 2 912 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 912 16
	cmpl	$0, -16(%ebp)
	je	L182
	.loc 2 913 24
	movl	-16(%ebp), %eax
	jmp	L188
L183:
	.loc 2 920 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 920 12
	testb	%al, %al
	jne	L186
	.loc 2 925 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 925 16
	cmpl	$0, -16(%ebp)
	je	L182
	.loc 2 926 24
	movl	-16(%ebp), %eax
	jmp	L188
L186:
	.loc 2 928 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 928 17
	testb	%al, %al
	jle	L187
	.loc 2 933 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 933 16
	cmpl	$0, -16(%ebp)
	je	L182
	.loc 2 934 24
	movl	-16(%ebp), %eax
	jmp	L188
L187:
	.loc 2 941 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 941 16
	cmpl	$0, -16(%ebp)
	je	L182
	.loc 2 942 24
	movl	-16(%ebp), %eax
	jmp	L188
L182:
	.loc 2 945 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 946 12
	movl	$0, %eax
L188:
	.loc 2 947 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4246:
	.globl	_PMC_Subtruct_L_X@16
	.def	_PMC_Subtruct_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_L_X@16:
LFB4247:
	.loc 2 950 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 951 8
	cmpl	$0, 16(%ebp)
	jne	L190
	.loc 2 952 16
	movl	$-1, %eax
	jmp	L202
L190:
	.loc 2 953 8
	cmpl	$0, 20(%ebp)
	jne	L192
	.loc 2 954 16
	movl	$-1, %eax
	jmp	L202
L192:
	.loc 2 956 20
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 958 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 958 8
	cmpl	$0, -16(%ebp)
	je	L193
	.loc 2 959 16
	movl	-16(%ebp), %eax
	jmp	L202
L193:
	.loc 2 961 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 962 16
	movzbl	-29(%ebp), %eax
	.loc 2 962 8
	testb	%al, %al
	jne	L194
	.loc 2 966 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 966 12
	testb	%al, %al
	jne	L195
	.loc 2 971 16
	movl	$_number_zero, -28(%ebp)
	jmp	L196
L195:
	.loc 2 978 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 978 16
	cmpl	$0, -16(%ebp)
	je	L196
	.loc 2 979 24
	movl	-16(%ebp), %eax
	jmp	L202
L194:
	.loc 2 982 21
	movzbl	-29(%ebp), %eax
	.loc 2 982 13
	testb	%al, %al
	jle	L197
	.loc 2 986 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 986 12
	testb	%al, %al
	jne	L198
	.loc 2 991 27
	movzbl	-29(%ebp), %eax
	movsbl	%al, %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 991 16
	cmpl	$0, -16(%ebp)
	je	L196
	.loc 2 992 24
	movl	-16(%ebp), %eax
	jmp	L202
L198:
	.loc 2 994 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 994 17
	testb	%al, %al
	jle	L199
	.loc 2 999 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 999 16
	cmpl	$0, -16(%ebp)
	je	L196
	.loc 2 1000 24
	movl	-16(%ebp), %eax
	jmp	L202
L199:
	.loc 2 1007 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1007 16
	cmpl	$0, -16(%ebp)
	je	L196
	.loc 2 1008 24
	movl	-16(%ebp), %eax
	jmp	L202
L197:
	.loc 2 1015 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1015 12
	testb	%al, %al
	jne	L200
	.loc 2 1020 27
	movzbl	-29(%ebp), %eax
	movsbl	%al, %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1020 16
	cmpl	$0, -16(%ebp)
	je	L196
	.loc 2 1021 24
	movl	-16(%ebp), %eax
	jmp	L202
L200:
	.loc 2 1023 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1023 17
	testb	%al, %al
	jle	L201
	.loc 2 1028 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1028 16
	cmpl	$0, -16(%ebp)
	je	L196
	.loc 2 1029 24
	movl	-16(%ebp), %eax
	jmp	L202
L201:
	.loc 2 1036 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1036 16
	cmpl	$0, -16(%ebp)
	je	L196
	.loc 2 1037 24
	movl	-16(%ebp), %eax
	jmp	L202
L196:
	.loc 2 1040 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1041 12
	movl	$0, %eax
L202:
	.loc 2 1042 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4247:
	.globl	_PMC_Subtruct_UX_X@12
	.def	_PMC_Subtruct_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_UX_X@12:
LFB4248:
	.loc 2 1045 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 1046 8
	cmpl	$0, 8(%ebp)
	jne	L204
	.loc 2 1047 16
	movl	$-1, %eax
	jmp	L218
L204:
	.loc 2 1048 8
	cmpl	$0, 12(%ebp)
	jne	L206
	.loc 2 1049 16
	movl	$-1, %eax
	jmp	L218
L206:
	.loc 2 1050 8
	cmpl	$0, 16(%ebp)
	jne	L207
	.loc 2 1051 16
	movl	$-1, %eax
	jmp	L218
L207:
	.loc 2 1053 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1055 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1055 8
	cmpl	$0, -16(%ebp)
	je	L208
	.loc 2 1056 16
	movl	-16(%ebp), %eax
	jmp	L218
L208:
	.loc 2 1058 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsZero_UINT
	movl	%eax, -16(%ebp)
	.loc 2 1058 8
	cmpl	$0, -16(%ebp)
	je	L209
	.loc 2 1059 16
	movl	-16(%ebp), %eax
	jmp	L218
L209:
	.loc 2 1060 9
	movzbl	-21(%ebp), %eax
	.loc 2 1060 8
	testb	%al, %al
	je	L210
	.loc 2 1064 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1064 12
	testb	%al, %al
	jne	L211
	.loc 2 1069 16
	movl	$_number_zero, -20(%ebp)
	jmp	L212
L211:
	.loc 2 1076 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1076 16
	cmpl	$0, -16(%ebp)
	je	L212
	.loc 2 1077 24
	movl	-16(%ebp), %eax
	jmp	L218
L210:
	.loc 2 1084 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1084 12
	testb	%al, %al
	jne	L213
LBB10:
	.loc 2 1090 34
	movl	_ep_uint+44, %eax
	.loc 2 1090 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL28:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 1090 16
	cmpl	$0, -16(%ebp)
	je	L214
	.loc 2 1091 24
	movl	-16(%ebp), %eax
	jmp	L218
L214:
	.loc 2 1092 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1092 16
	cmpl	$0, -16(%ebp)
	je	L212
	.loc 2 1094 24
	movl	_ep_uint+16, %eax
	.loc 2 1094 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL29:
	subl	$4, %esp
	.loc 2 1095 24
	movl	-16(%ebp), %eax
	jmp	L218
L213:
LBE10:
	.loc 2 1098 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1098 17
	testb	%al, %al
	jle	L217
	.loc 2 1103 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1103 16
	cmpl	$0, -16(%ebp)
	je	L212
	.loc 2 1104 24
	movl	-16(%ebp), %eax
	jmp	L218
L217:
	.loc 2 1111 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1111 16
	cmpl	$0, -16(%ebp)
	je	L212
	.loc 2 1112 24
	movl	-16(%ebp), %eax
	jmp	L218
L212:
	.loc 2 1115 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1116 12
	movl	$0, %eax
L218:
	.loc 2 1117 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4248:
	.globl	_PMC_Subtruct_X_I@12
	.def	_PMC_Subtruct_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_I@12:
LFB4249:
	.loc 2 1120 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 1121 8
	cmpl	$0, 8(%ebp)
	jne	L220
	.loc 2 1122 16
	movl	$-1, %eax
	jmp	L232
L220:
	.loc 2 1123 8
	cmpl	$0, 16(%ebp)
	jne	L222
	.loc 2 1124 16
	movl	$-1, %eax
	jmp	L232
L222:
	.loc 2 1126 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1128 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1128 8
	cmpl	$0, -16(%ebp)
	je	L223
	.loc 2 1129 16
	movl	-16(%ebp), %eax
	jmp	L232
L223:
	.loc 2 1131 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 1132 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1132 8
	testb	%al, %al
	jne	L224
	.loc 2 1136 20
	movzbl	-25(%ebp), %eax
	.loc 2 1136 12
	testb	%al, %al
	jne	L225
	.loc 2 1141 16
	movl	$_number_zero, -24(%ebp)
	jmp	L226
L225:
	.loc 2 1148 27
	movzbl	-25(%ebp), %eax
	negl	%eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1148 16
	cmpl	$0, -16(%ebp)
	je	L226
	.loc 2 1149 24
	movl	-16(%ebp), %eax
	jmp	L232
L224:
	.loc 2 1152 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1152 13
	testb	%al, %al
	jle	L227
	.loc 2 1156 20
	movzbl	-25(%ebp), %eax
	.loc 2 1156 12
	testb	%al, %al
	jne	L228
	.loc 2 1161 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1161 16
	cmpl	$0, -16(%ebp)
	je	L226
	.loc 2 1162 24
	movl	-16(%ebp), %eax
	jmp	L232
L228:
	.loc 2 1164 25
	movzbl	-25(%ebp), %eax
	.loc 2 1164 17
	testb	%al, %al
	jle	L229
	.loc 2 1169 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1169 16
	cmpl	$0, -16(%ebp)
	je	L226
	.loc 2 1170 24
	movl	-16(%ebp), %eax
	jmp	L232
L229:
	.loc 2 1177 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1177 16
	cmpl	$0, -16(%ebp)
	je	L226
	.loc 2 1178 24
	movl	-16(%ebp), %eax
	jmp	L232
L227:
	.loc 2 1185 20
	movzbl	-25(%ebp), %eax
	.loc 2 1185 12
	testb	%al, %al
	jne	L230
	.loc 2 1190 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1190 16
	cmpl	$0, -16(%ebp)
	je	L226
	.loc 2 1191 24
	movl	-16(%ebp), %eax
	jmp	L232
L230:
	.loc 2 1193 25
	movzbl	-25(%ebp), %eax
	.loc 2 1193 17
	testb	%al, %al
	jle	L231
	.loc 2 1198 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1198 16
	cmpl	$0, -16(%ebp)
	je	L226
	.loc 2 1199 24
	movl	-16(%ebp), %eax
	jmp	L232
L231:
	.loc 2 1206 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1206 16
	cmpl	$0, -16(%ebp)
	je	L226
	.loc 2 1207 24
	movl	-16(%ebp), %eax
	jmp	L232
L226:
	.loc 2 1210 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1211 12
	movl	$0, %eax
L232:
	.loc 2 1212 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4249:
	.globl	_PMC_Subtruct_X_L@16
	.def	_PMC_Subtruct_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_L@16:
LFB4250:
	.loc 2 1215 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 1216 8
	cmpl	$0, 8(%ebp)
	jne	L234
	.loc 2 1217 16
	movl	$-1, %eax
	jmp	L246
L234:
	.loc 2 1218 8
	cmpl	$0, 20(%ebp)
	jne	L236
	.loc 2 1219 16
	movl	$-1, %eax
	jmp	L246
L236:
	.loc 2 1221 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1223 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1223 8
	cmpl	$0, -16(%ebp)
	je	L237
	.loc 2 1224 16
	movl	-16(%ebp), %eax
	jmp	L246
L237:
	.loc 2 1226 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 1227 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1227 8
	testb	%al, %al
	jne	L238
	.loc 2 1231 20
	movzbl	-29(%ebp), %eax
	.loc 2 1231 12
	testb	%al, %al
	jne	L239
	.loc 2 1236 16
	movl	$_number_zero, -28(%ebp)
	jmp	L240
L239:
	.loc 2 1243 27
	movzbl	-29(%ebp), %eax
	negl	%eax
	movsbl	%al, %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1243 16
	cmpl	$0, -16(%ebp)
	je	L240
	.loc 2 1244 24
	movl	-16(%ebp), %eax
	jmp	L246
L238:
	.loc 2 1247 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1247 13
	testb	%al, %al
	jle	L241
	.loc 2 1251 20
	movzbl	-29(%ebp), %eax
	.loc 2 1251 12
	testb	%al, %al
	jne	L242
	.loc 2 1256 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1256 16
	cmpl	$0, -16(%ebp)
	je	L240
	.loc 2 1257 24
	movl	-16(%ebp), %eax
	jmp	L246
L242:
	.loc 2 1259 25
	movzbl	-29(%ebp), %eax
	.loc 2 1259 17
	testb	%al, %al
	jle	L243
	.loc 2 1264 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1264 16
	cmpl	$0, -16(%ebp)
	je	L240
	.loc 2 1265 24
	movl	-16(%ebp), %eax
	jmp	L246
L243:
	.loc 2 1272 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1272 16
	cmpl	$0, -16(%ebp)
	je	L240
	.loc 2 1273 24
	movl	-16(%ebp), %eax
	jmp	L246
L241:
	.loc 2 1280 20
	movzbl	-29(%ebp), %eax
	.loc 2 1280 12
	testb	%al, %al
	jne	L244
	.loc 2 1285 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1285 16
	cmpl	$0, -16(%ebp)
	je	L240
	.loc 2 1286 24
	movl	-16(%ebp), %eax
	jmp	L246
L244:
	.loc 2 1288 25
	movzbl	-29(%ebp), %eax
	.loc 2 1288 17
	testb	%al, %al
	jle	L245
	.loc 2 1293 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1293 16
	cmpl	$0, -16(%ebp)
	je	L240
	.loc 2 1294 24
	movl	-16(%ebp), %eax
	jmp	L246
L245:
	.loc 2 1301 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1301 16
	cmpl	$0, -16(%ebp)
	je	L240
	.loc 2 1302 24
	movl	-16(%ebp), %eax
	jmp	L246
L240:
	.loc 2 1305 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1306 12
	movl	$0, %eax
L246:
	.loc 2 1307 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4250:
	.globl	_PMC_Subtruct_X_UX@12
	.def	_PMC_Subtruct_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_UX@12:
LFB4251:
	.loc 2 1310 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 1311 8
	cmpl	$0, 8(%ebp)
	jne	L248
	.loc 2 1312 16
	movl	$-1, %eax
	jmp	L264
L248:
	.loc 2 1313 8
	cmpl	$0, 12(%ebp)
	jne	L250
	.loc 2 1314 16
	movl	$-1, %eax
	jmp	L264
L250:
	.loc 2 1315 8
	cmpl	$0, 16(%ebp)
	jne	L251
	.loc 2 1316 16
	movl	$-1, %eax
	jmp	L264
L251:
	.loc 2 1318 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1320 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1320 8
	cmpl	$0, -16(%ebp)
	je	L252
	.loc 2 1321 16
	movl	-16(%ebp), %eax
	jmp	L264
L252:
	.loc 2 1323 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsZero_UINT
	movl	%eax, -16(%ebp)
	.loc 2 1323 8
	cmpl	$0, -16(%ebp)
	je	L253
	.loc 2 1324 16
	movl	-16(%ebp), %eax
	jmp	L264
L253:
	.loc 2 1325 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1325 8
	testb	%al, %al
	jne	L254
	.loc 2 1329 13
	movzbl	-21(%ebp), %eax
	.loc 2 1329 12
	testb	%al, %al
	je	L255
	.loc 2 1334 16
	movl	$_number_zero, -20(%ebp)
	jmp	L260
L255:
LBB11:
	.loc 2 1342 34
	movl	_ep_uint+44, %eax
	.loc 2 1342 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL30:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 1342 16
	cmpl	$0, -16(%ebp)
	je	L257
	.loc 2 1343 24
	movl	-16(%ebp), %eax
	jmp	L264
L257:
	.loc 2 1344 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$-1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1344 16
	cmpl	$0, -16(%ebp)
	je	L260
	.loc 2 1346 24
	movl	_ep_uint+16, %eax
	.loc 2 1346 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL31:
	subl	$4, %esp
	.loc 2 1347 24
	movl	-16(%ebp), %eax
	jmp	L264
L254:
LBE11:
	.loc 2 1352 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1352 13
	testb	%al, %al
	jle	L261
	.loc 2 1356 13
	movzbl	-21(%ebp), %eax
	.loc 2 1356 12
	testb	%al, %al
	je	L262
	.loc 2 1361 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1361 16
	cmpl	$0, -16(%ebp)
	je	L260
	.loc 2 1362 24
	movl	-16(%ebp), %eax
	jmp	L264
L262:
	.loc 2 1369 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1369 16
	cmpl	$0, -16(%ebp)
	je	L260
	.loc 2 1370 24
	movl	-16(%ebp), %eax
	jmp	L264
L261:
	.loc 2 1378 13
	movzbl	-21(%ebp), %eax
	.loc 2 1378 12
	testb	%al, %al
	je	L263
	.loc 2 1383 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1383 16
	cmpl	$0, -16(%ebp)
	je	L260
	.loc 2 1384 24
	movl	-16(%ebp), %eax
	jmp	L264
L263:
	.loc 2 1391 27
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1391 16
	cmpl	$0, -16(%ebp)
	je	L260
	.loc 2 1392 24
	movl	-16(%ebp), %eax
	jmp	L264
L260:
	.loc 2 1395 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1396 12
	movl	$0, %eax
L264:
	.loc 2 1397 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4251:
	.globl	_PMC_Subtruct_X_X@12
	.def	_PMC_Subtruct_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_X@12:
LFB4252:
	.loc 2 1400 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 1401 8
	cmpl	$0, 8(%ebp)
	jne	L266
	.loc 2 1402 16
	movl	$-1, %eax
	jmp	L280
L266:
	.loc 2 1403 8
	cmpl	$0, 12(%ebp)
	jne	L268
	.loc 2 1404 16
	movl	$-1, %eax
	jmp	L280
L268:
	.loc 2 1405 8
	cmpl	$0, 16(%ebp)
	jne	L269
	.loc 2 1406 16
	movl	$-1, %eax
	jmp	L280
L269:
	.loc 2 1408 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1409 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 1411 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 1411 8
	cmpl	$0, -20(%ebp)
	je	L270
	.loc 2 1412 16
	movl	-20(%ebp), %eax
	jmp	L280
L270:
	.loc 2 1413 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 1413 8
	cmpl	$0, -20(%ebp)
	je	L271
	.loc 2 1414 16
	movl	-20(%ebp), %eax
	jmp	L280
L271:
	.loc 2 1415 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1415 8
	testb	%al, %al
	jne	L272
	.loc 2 1419 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1419 12
	testb	%al, %al
	jne	L273
	.loc 2 1424 16
	movl	$_number_zero, -24(%ebp)
	jmp	L274
L273:
	.loc 2 1431 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1431 16
	cmpl	$0, -20(%ebp)
	je	L274
	.loc 2 1432 24
	movl	-20(%ebp), %eax
	jmp	L280
L272:
	.loc 2 1435 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1435 13
	testb	%al, %al
	jle	L275
	.loc 2 1439 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1439 12
	testb	%al, %al
	jne	L276
	.loc 2 1444 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 1444 16
	cmpl	$0, -20(%ebp)
	je	L274
	.loc 2 1445 24
	movl	-20(%ebp), %eax
	jmp	L280
L276:
	.loc 2 1447 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1447 17
	testb	%al, %al
	jle	L277
	.loc 2 1452 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1452 16
	cmpl	$0, -20(%ebp)
	je	L274
	.loc 2 1453 24
	movl	-20(%ebp), %eax
	jmp	L280
L277:
	.loc 2 1460 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1460 16
	cmpl	$0, -20(%ebp)
	je	L274
	.loc 2 1461 24
	movl	-20(%ebp), %eax
	jmp	L280
L275:
	.loc 2 1468 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1468 12
	testb	%al, %al
	jne	L278
	.loc 2 1473 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 1473 16
	cmpl	$0, -20(%ebp)
	je	L274
	.loc 2 1474 24
	movl	-20(%ebp), %eax
	jmp	L280
L278:
	.loc 2 1476 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1476 17
	testb	%al, %al
	jle	L279
	.loc 2 1481 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1481 16
	cmpl	$0, -20(%ebp)
	je	L274
	.loc 2 1482 24
	movl	-20(%ebp), %eax
	jmp	L280
L279:
	.loc 2 1489 27
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1489 16
	cmpl	$0, -20(%ebp)
	je	L274
	.loc 2 1490 24
	movl	-20(%ebp), %eax
	jmp	L280
L274:
	.loc 2 1493 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1494 12
	movl	$0, %eax
L280:
	.loc 2 1495 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4252:
Letext0:
	.file 3 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/crtdefs.h"
	.file 4 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/excpt.h"
	.file 5 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 6 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/ctype.h"
	.file 7 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/guiddef.h"
	.file 8 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winnt.h"
	.file 9 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/rpcdce.h"
	.file 10 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/stdlib.h"
	.file 11 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/malloc.h"
	.file 12 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/wtypesbase.h"
	.file 13 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/unknwnbase.h"
	.file 14 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/objidlbase.h"
	.file 15 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/cguid.h"
	.file 16 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/wtypes.h"
	.file 17 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/objidl.h"
	.file 18 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oleidl.h"
	.file 19 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/servprov.h"
	.file 20 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oaidl.h"
	.file 21 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/msxml.h"
	.file 22 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/urlmon.h"
	.file 23 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/propidl.h"
	.file 24 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oleauto.h"
	.file 25 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winioctl.h"
	.file 26 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winsmcrd.h"
	.file 27 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winscard.h"
	.file 28 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/commdlg.h"
	.file 29 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 30 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc.h"
	.file 31 "../pmc_sint_internal.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x674d
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=generic -march=i686 -g\0"
	.byte	0xc
	.ascii "../pmc_add_sub.c\0"
	.ascii "Z:\\\\Sources\\\\Lunor\\\\Repos\\\\rougemeilland\\\\Palmtree.Math.Core.Sint\\\\Palmtree.Math.Core.Sint\\\\myproject\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x3
	.byte	0x25
	.byte	0x16
	.long	0xd3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x3
	.ascii "wchar_t\0"
	.byte	0x3
	.byte	0x62
	.byte	0x18
	.long	0xfa
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0xfa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x5
	.ascii "pthreadlocinfo\0"
	.byte	0x3
	.word	0x1a8
	.byte	0x28
	.long	0x14a
	.uleb128 0x6
	.byte	0x4
	.long	0x150
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.byte	0xd8
	.byte	0x3
	.word	0x1bc
	.byte	0x10
	.long	0x2ed
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x3
	.word	0x1bd
	.byte	0x7
	.long	0xe3
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x3
	.word	0x1be
	.byte	0x10
	.long	0xd3
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x3
	.word	0x1bf
	.byte	0x10
	.long	0xd3
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x3
	.word	0x1c0
	.byte	0x11
	.long	0x43a
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x3
	.word	0x1c1
	.byte	0x9
	.long	0x45f
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x3
	.word	0x1c7
	.byte	0x5
	.long	0x46f
	.byte	0x48
	.uleb128 0x9
	.ascii "lc_clike\0"
	.byte	0x3
	.word	0x1c8
	.byte	0x7
	.long	0xe3
	.byte	0xa8
	.uleb128 0x9
	.ascii "mb_cur_max\0"
	.byte	0x3
	.word	0x1c9
	.byte	0x7
	.long	0xe3
	.byte	0xac
	.uleb128 0x9
	.ascii "lconv_intl_refcount\0"
	.byte	0x3
	.word	0x1ca
	.byte	0x8
	.long	0x434
	.byte	0xb0
	.uleb128 0x9
	.ascii "lconv_num_refcount\0"
	.byte	0x3
	.word	0x1cb
	.byte	0x8
	.long	0x434
	.byte	0xb4
	.uleb128 0x9
	.ascii "lconv_mon_refcount\0"
	.byte	0x3
	.word	0x1cc
	.byte	0x8
	.long	0x434
	.byte	0xb8
	.uleb128 0x9
	.ascii "lconv\0"
	.byte	0x3
	.word	0x1cd
	.byte	0x11
	.long	0x486
	.byte	0xbc
	.uleb128 0x9
	.ascii "ctype1_refcount\0"
	.byte	0x3
	.word	0x1ce
	.byte	0x8
	.long	0x434
	.byte	0xc0
	.uleb128 0x9
	.ascii "ctype1\0"
	.byte	0x3
	.word	0x1cf
	.byte	0x13
	.long	0x48c
	.byte	0xc4
	.uleb128 0x9
	.ascii "pctype\0"
	.byte	0x3
	.word	0x1d0
	.byte	0x19
	.long	0x492
	.byte	0xc8
	.uleb128 0x9
	.ascii "pclmap\0"
	.byte	0x3
	.word	0x1d1
	.byte	0x18
	.long	0x498
	.byte	0xcc
	.uleb128 0x9
	.ascii "pcumap\0"
	.byte	0x3
	.word	0x1d2
	.byte	0x18
	.long	0x498
	.byte	0xd0
	.uleb128 0x9
	.ascii "lc_time_curr\0"
	.byte	0x3
	.word	0x1d3
	.byte	0x1a
	.long	0x4c4
	.byte	0xd4
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x3
	.word	0x1a9
	.byte	0x25
	.long	0x305
	.uleb128 0x6
	.byte	0x4
	.long	0x30b
	.uleb128 0xa
	.ascii "threadmbcinfostruct\0"
	.uleb128 0x7
	.ascii "localeinfo_struct\0"
	.byte	0x8
	.byte	0x3
	.word	0x1ac
	.byte	0x10
	.long	0x361
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x3
	.word	0x1ad
	.byte	0x12
	.long	0x132
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x3
	.word	0x1ae
	.byte	0x12
	.long	0x2ed
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x3
	.word	0x1af
	.byte	0x3
	.long	0x320
	.uleb128 0x7
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x3
	.word	0x1b3
	.byte	0x10
	.long	0x3c9
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x3
	.word	0x1b4
	.byte	0x12
	.long	0xfa
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x3
	.word	0x1b5
	.byte	0x12
	.long	0xfa
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x3
	.word	0x1b6
	.byte	0x12
	.long	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x3
	.word	0x1b7
	.byte	0x3
	.long	0x37a
	.uleb128 0xb
	.byte	0x10
	.byte	0x3
	.word	0x1c2
	.byte	0x3
	.long	0x428
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x3
	.word	0x1c3
	.byte	0xb
	.long	0x428
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x3
	.word	0x1c4
	.byte	0xe
	.long	0x42e
	.byte	0x4
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x3
	.word	0x1c5
	.byte	0xa
	.long	0x434
	.byte	0x8
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x3
	.word	0x1c6
	.byte	0xa
	.long	0x434
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xbc
	.uleb128 0x6
	.byte	0x4
	.long	0xea
	.uleb128 0x6
	.byte	0x4
	.long	0xe3
	.uleb128 0xc
	.long	0x44a
	.long	0x44a
	.uleb128 0xd
	.long	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xc
	.long	0x3c9
	.long	0x46f
	.uleb128 0xd
	.long	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x3d8
	.long	0x47f
	.uleb128 0xd
	.long	0xd3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x47f
	.uleb128 0x6
	.byte	0x4
	.long	0xfa
	.uleb128 0x6
	.byte	0x4
	.long	0x110
	.uleb128 0x6
	.byte	0x4
	.long	0x4af
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x49e
	.uleb128 0xa
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x4b4
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x4
	.byte	0x3f
	.byte	0x2e
	.long	0x4da
	.uleb128 0x6
	.byte	0x4
	.long	0x4e0
	.uleb128 0xe
	.long	0x4eb
	.uleb128 0xf
	.long	0xe3
	.byte	0
	.uleb128 0x10
	.ascii "_XCPT_ACTION\0"
	.byte	0xc
	.byte	0x4
	.byte	0x41
	.byte	0xa
	.long	0x537
	.uleb128 0x11
	.ascii "XcptNum\0"
	.byte	0x4
	.byte	0x42
	.byte	0x13
	.long	0x44a
	.byte	0
	.uleb128 0x11
	.ascii "SigNum\0"
	.byte	0x4
	.byte	0x43
	.byte	0x9
	.long	0xe3
	.byte	0x4
	.uleb128 0x11
	.ascii "XcptAction\0"
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.long	0x4ca
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x4eb
	.long	0x542
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.ascii "_XcptActTab\0"
	.byte	0x4
	.byte	0x47
	.byte	0x1e
	.long	0x537
	.uleb128 0x13
	.ascii "_XcptActTabCount\0"
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.long	0xe3
	.uleb128 0x13
	.ascii "_XcptActTabSize\0"
	.byte	0x4
	.byte	0x49
	.byte	0xe
	.long	0xe3
	.uleb128 0x13
	.ascii "_First_FPE_Indx\0"
	.byte	0x4
	.byte	0x4a
	.byte	0xe
	.long	0xe3
	.uleb128 0x13
	.ascii "_Num_FPE\0"
	.byte	0x4
	.byte	0x4b
	.byte	0xe
	.long	0xe3
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x5
	.byte	0x8d
	.byte	0x19
	.long	0x44a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xd3
	.uleb128 0x13
	.ascii "_imp___pctype\0"
	.byte	0x6
	.byte	0x2b
	.byte	0x1c
	.long	0x5e5
	.uleb128 0x6
	.byte	0x4
	.long	0x48c
	.uleb128 0x13
	.ascii "_imp___wctype\0"
	.byte	0x6
	.byte	0x3b
	.byte	0x1c
	.long	0x5e5
	.uleb128 0x13
	.ascii "_imp___pwctype\0"
	.byte	0x6
	.byte	0x47
	.byte	0x1c
	.long	0x5e5
	.uleb128 0xc
	.long	0x4af
	.long	0x623
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x618
	.uleb128 0x13
	.ascii "__newclmap\0"
	.byte	0x6
	.byte	0x50
	.byte	0x1e
	.long	0x623
	.uleb128 0x13
	.ascii "__newcumap\0"
	.byte	0x6
	.byte	0x51
	.byte	0x1e
	.long	0x623
	.uleb128 0x13
	.ascii "__ptlocinfo\0"
	.byte	0x6
	.byte	0x52
	.byte	0x19
	.long	0x132
	.uleb128 0x13
	.ascii "__ptmbcinfo\0"
	.byte	0x6
	.byte	0x53
	.byte	0x19
	.long	0x2ed
	.uleb128 0x13
	.ascii "__globallocalestatus\0"
	.byte	0x6
	.byte	0x54
	.byte	0xe
	.long	0xe3
	.uleb128 0x13
	.ascii "__locale_changed\0"
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.long	0xe3
	.uleb128 0x13
	.ascii "__initiallocinfo\0"
	.byte	0x6
	.byte	0x56
	.byte	0x28
	.long	0x150
	.uleb128 0x13
	.ascii "__initiallocalestructinfo\0"
	.byte	0x6
	.byte	0x57
	.byte	0x1a
	.long	0x361
	.uleb128 0x13
	.ascii "_imp____mb_cur_max\0"
	.byte	0x6
	.byte	0xcb
	.byte	0x10
	.long	0x434
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x49e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x10
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x7
	.byte	0x13
	.byte	0x10
	.long	0x78a
	.uleb128 0x11
	.ascii "Data1\0"
	.byte	0x7
	.byte	0x14
	.byte	0x11
	.long	0x44a
	.byte	0
	.uleb128 0x11
	.ascii "Data2\0"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.long	0xfa
	.byte	0x4
	.uleb128 0x11
	.ascii "Data3\0"
	.byte	0x7
	.byte	0x16
	.byte	0x12
	.long	0xfa
	.byte	0x6
	.uleb128 0x11
	.ascii "Data4\0"
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.long	0x78a
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x49e
	.long	0x79a
	.uleb128 0xd
	.long	0xd3
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x73e
	.uleb128 0x4
	.long	0x79a
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x7
	.byte	0x53
	.byte	0xe
	.long	0x79a
	.uleb128 0x4
	.long	0x7ac
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x79a
	.uleb128 0x4
	.long	0x7bd
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.long	0x79a
	.uleb128 0x4
	.long	0x7d0
	.uleb128 0x15
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13a9
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13aa
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13ab
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0x8
	.word	0x13ac
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0x8
	.word	0x13ad
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0x8
	.word	0x13ae
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0x8
	.word	0x13af
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0x8
	.word	0x13b0
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0x8
	.word	0x13b1
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13b2
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0x8
	.word	0x13b3
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0x8
	.word	0x13b4
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13b5
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0x8
	.word	0x13b6
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0x8
	.word	0x13b7
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0x8
	.word	0x13b8
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0x8
	.word	0x13b9
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0x8
	.word	0x13ba
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bb
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bc
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bd
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13be
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0x8
	.word	0x13bf
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0x8
	.word	0x13c0
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0x8
	.word	0x13c1
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0x8
	.word	0x13c2
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0x8
	.word	0x13c3
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0x8
	.word	0x13c4
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13c5
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0x8
	.word	0x13c6
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0x8
	.word	0x13c7
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0x8
	.word	0x13c8
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0x8
	.word	0x13c9
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ca
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0x8
	.word	0x13cb
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0x8
	.word	0x13cc
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0x8
	.word	0x13cd
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0x8
	.word	0x13ce
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0x8
	.word	0x13cf
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0x8
	.word	0x13d0
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0x8
	.word	0x13d1
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0x8
	.word	0x13d2
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0x8
	.word	0x13d3
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0x8
	.word	0x13d4
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0x8
	.word	0x13d5
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d6
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d7
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d8
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0x8
	.word	0x13d9
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0x8
	.word	0x13da
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0x8
	.word	0x13db
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0x8
	.word	0x13dc
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0x8
	.word	0x13dd
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0x8
	.word	0x13de
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0x8
	.word	0x13df
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0x8
	.word	0x13e0
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0x8
	.word	0x13e1
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0x8
	.word	0x13e2
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0x8
	.word	0x13e3
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0x8
	.word	0x13e4
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0x8
	.word	0x13e5
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0x8
	.word	0x13e6
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0x8
	.word	0x13e7
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0x8
	.word	0x13e8
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0x8
	.word	0x13e9
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0x8
	.word	0x13ea
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0x8
	.word	0x13eb
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0x8
	.word	0x13ec
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0x8
	.word	0x13ed
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0x8
	.word	0x13ee
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ef
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13f0
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0x8
	.word	0x13f1
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0x8
	.word	0x13f2
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0x8
	.word	0x13f3
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0x8
	.word	0x13f4
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0x8
	.word	0x13f5
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0x8
	.word	0x13f6
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0x8
	.word	0x13f7
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0x8
	.word	0x13f8
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0x8
	.word	0x13f9
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0x8
	.word	0x13fa
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0x8
	.word	0x13fb
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fc
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fd
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fe
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ff
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0x8
	.word	0x1400
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0x8
	.word	0x1401
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0x8
	.word	0x1402
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0x8
	.word	0x1403
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0x8
	.word	0x1404
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0x8
	.word	0x1405
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0x8
	.word	0x1406
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0x8
	.word	0x1407
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0x8
	.word	0x1408
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0x8
	.word	0x1409
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0x8
	.word	0x140a
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0x8
	.word	0x140b
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0x8
	.word	0x140c
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0x8
	.word	0x140d
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0x8
	.word	0x140e
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0x8
	.word	0x140f
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0x8
	.word	0x1410
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0x8
	.word	0x1411
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0x8
	.word	0x1412
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0x8
	.word	0x1413
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0x8
	.word	0x1414
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0x8
	.word	0x1415
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0x8
	.word	0x1416
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0x8
	.word	0x1417
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0x8
	.word	0x1418
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0x8
	.word	0x1419
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0x8
	.word	0x141a
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0x8
	.word	0x141b
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0x8
	.word	0x141c
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0x8
	.word	0x141d
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0x8
	.word	0x141e
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0x8
	.word	0x141f
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0x8
	.word	0x1420
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0x8
	.word	0x1421
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0x8
	.word	0x1422
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1620
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1621
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1622
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0x8
	.word	0x1623
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0x8
	.word	0x1624
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0x8
	.word	0x1625
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0x8
	.word	0x1626
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0x8
	.word	0x1627
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0x8
	.word	0x1628
	.byte	0x17
	.long	0x7a7
	.uleb128 0x15
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1629
	.byte	0x17
	.long	0x7a7
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0x9
	.byte	0x42
	.byte	0x11
	.long	0x5b0
	.uleb128 0x6
	.byte	0x4
	.long	0x428
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xc
	.long	0x428
	.long	0x1d4b
	.uleb128 0xd
	.long	0xd3
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "_sys_errlist\0"
	.byte	0xa
	.byte	0xac
	.byte	0x2b
	.long	0x1d3b
	.uleb128 0x13
	.ascii "_sys_nerr\0"
	.byte	0xa
	.byte	0xad
	.byte	0x29
	.long	0xe3
	.uleb128 0x15
	.ascii "_imp____argc\0"
	.byte	0xa
	.word	0x119
	.byte	0x10
	.long	0x434
	.uleb128 0x15
	.ascii "_imp____argv\0"
	.byte	0xa
	.word	0x11d
	.byte	0x13
	.long	0x1d9e
	.uleb128 0x6
	.byte	0x4
	.long	0x1d1c
	.uleb128 0x15
	.ascii "_imp____wargv\0"
	.byte	0xa
	.word	0x121
	.byte	0x16
	.long	0x1dbb
	.uleb128 0x6
	.byte	0x4
	.long	0x1dc1
	.uleb128 0x6
	.byte	0x4
	.long	0x42e
	.uleb128 0x15
	.ascii "_imp___environ\0"
	.byte	0xa
	.word	0x127
	.byte	0x13
	.long	0x1d9e
	.uleb128 0x15
	.ascii "_imp___wenviron\0"
	.byte	0xa
	.word	0x12c
	.byte	0x16
	.long	0x1dbb
	.uleb128 0x15
	.ascii "_imp___pgmptr\0"
	.byte	0xa
	.word	0x132
	.byte	0x12
	.long	0x1d1c
	.uleb128 0x15
	.ascii "_imp___wpgmptr\0"
	.byte	0xa
	.word	0x137
	.byte	0x15
	.long	0x1dc1
	.uleb128 0x15
	.ascii "_imp___osplatform\0"
	.byte	0xa
	.word	0x13c
	.byte	0x19
	.long	0x5c9
	.uleb128 0x15
	.ascii "_imp___osver\0"
	.byte	0xa
	.word	0x141
	.byte	0x19
	.long	0x5c9
	.uleb128 0x15
	.ascii "_imp___winver\0"
	.byte	0xa
	.word	0x146
	.byte	0x19
	.long	0x5c9
	.uleb128 0x15
	.ascii "_imp___winmajor\0"
	.byte	0xa
	.word	0x14b
	.byte	0x19
	.long	0x5c9
	.uleb128 0x15
	.ascii "_imp___winminor\0"
	.byte	0xa
	.word	0x150
	.byte	0x19
	.long	0x5c9
	.uleb128 0x13
	.ascii "_amblksiz\0"
	.byte	0xb
	.byte	0x35
	.byte	0x17
	.long	0xd3
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xc
	.byte	0x29
	.byte	0x16
	.long	0x1d06
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xc
	.byte	0x2a
	.byte	0x16
	.long	0x1d06
	.uleb128 0x13
	.ascii "IID_IUnknown\0"
	.byte	0xd
	.byte	0x57
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xd
	.byte	0xbd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IClassFactory\0"
	.byte	0xd
	.word	0x16d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMarshal\0"
	.byte	0xe
	.word	0x16e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_INoMarshal\0"
	.byte	0xe
	.word	0x255
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAgileObject\0"
	.byte	0xe
	.word	0x294
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAgileReference\0"
	.byte	0xe
	.word	0x2d2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMarshal2\0"
	.byte	0xe
	.word	0x32d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMalloc\0"
	.byte	0xe
	.word	0x3b2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xe
	.word	0x469
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IExternalConnection\0"
	.byte	0xe
	.word	0x4cc
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMultiQI\0"
	.byte	0xe
	.word	0x547
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xe
	.word	0x59e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternalUnknown\0"
	.byte	0xe
	.word	0x60c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumUnknown\0"
	.byte	0xe
	.word	0x668
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumString\0"
	.byte	0xe
	.word	0x706
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISequentialStream\0"
	.byte	0xe
	.word	0x7a2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IStream\0"
	.byte	0xe
	.word	0x84d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xe
	.word	0x991
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xe
	.word	0xa3b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xe
	.word	0xabd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xe
	.word	0xb7f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xe
	.word	0xc99
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xe
	.word	0xcee
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xe
	.word	0xd56
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xe
	.word	0xe1c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IChannelHook\0"
	.byte	0xe
	.word	0xe9f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IClientSecurity\0"
	.byte	0xe
	.word	0xfc3
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IServerSecurity\0"
	.byte	0xe
	.word	0x106d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcOptions\0"
	.byte	0xe
	.word	0x1113
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IGlobalOptions\0"
	.byte	0xe
	.word	0x11ae
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISurrogate\0"
	.byte	0xe
	.word	0x1221
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xe
	.word	0x1289
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISynchronize\0"
	.byte	0xe
	.word	0x1312
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xe
	.word	0x138c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xe
	.word	0x13e1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xe
	.word	0x1441
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xe
	.word	0x14af
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xe
	.word	0x151e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAsyncManager\0"
	.byte	0xe
	.word	0x158a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICallFactory\0"
	.byte	0xe
	.word	0x1608
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRpcHelper\0"
	.byte	0xe
	.word	0x1666
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xe
	.word	0x16d1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWaitMultiple\0"
	.byte	0xe
	.word	0x172c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xe
	.word	0x1798
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xe
	.word	0x17fd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPipeByte\0"
	.byte	0xe
	.word	0x1868
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPipeLong\0"
	.byte	0xe
	.word	0x18d9
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPipeDouble\0"
	.byte	0xe
	.word	0x194a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xe
	.word	0x1b24
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IProcessInitControl\0"
	.byte	0xe
	.word	0x1bb2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IFastRundown\0"
	.byte	0xe
	.word	0x1c07
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMarshalingStream\0"
	.byte	0xe
	.word	0x1c4a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xe
	.word	0x1d09
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_NULL\0"
	.byte	0xf
	.byte	0xd
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "CATID_MARSHALER\0"
	.byte	0xf
	.byte	0xe
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IRpcChannel\0"
	.byte	0xf
	.byte	0xf
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IRpcStub\0"
	.byte	0xf
	.byte	0x10
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IStubManager\0"
	.byte	0xf
	.byte	0x11
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IRpcProxy\0"
	.byte	0xf
	.byte	0x12
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IProxyManager\0"
	.byte	0xf
	.byte	0x13
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IPSFactory\0"
	.byte	0xf
	.byte	0x14
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IInternalMoniker\0"
	.byte	0xf
	.byte	0x15
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IDfReserved1\0"
	.byte	0xf
	.byte	0x16
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IDfReserved2\0"
	.byte	0xf
	.byte	0x17
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IDfReserved3\0"
	.byte	0xf
	.byte	0x18
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "CLSID_StdMarshal\0"
	.byte	0xf
	.byte	0x19
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xf
	.byte	0x1a
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xf
	.byte	0x1b
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "IID_IStub\0"
	.byte	0xf
	.byte	0x1c
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IProxy\0"
	.byte	0xf
	.byte	0x1d
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IEnumGeneric\0"
	.byte	0xf
	.byte	0x1e
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IEnumHolder\0"
	.byte	0xf
	.byte	0x1f
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IEnumCallback\0"
	.byte	0xf
	.byte	0x20
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IOleManager\0"
	.byte	0xf
	.byte	0x21
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IOlePresObj\0"
	.byte	0xf
	.byte	0x22
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IDebug\0"
	.byte	0xf
	.byte	0x23
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "IID_IDebugStream\0"
	.byte	0xf
	.byte	0x24
	.byte	0x14
	.long	0x7b8
	.uleb128 0x13
	.ascii "CLSID_PSGenObject\0"
	.byte	0xf
	.byte	0x25
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_PSClientSite\0"
	.byte	0xf
	.byte	0x26
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_PSClassObject\0"
	.byte	0xf
	.byte	0x27
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xf
	.byte	0x2a
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xf
	.byte	0x2b
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xf
	.byte	0x2c
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xf
	.byte	0x2d
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_StaticDib\0"
	.byte	0xf
	.byte	0x2e
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CID_CDfsVolume\0"
	.byte	0xf
	.byte	0x2f
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xf
	.byte	0x30
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xf
	.byte	0x31
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xf
	.byte	0x32
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_ComBinding\0"
	.byte	0xf
	.byte	0x33
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_StdEvent\0"
	.byte	0xf
	.byte	0x34
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xf
	.byte	0x35
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xf
	.byte	0x36
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_AddrControl\0"
	.byte	0xf
	.byte	0x37
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xf
	.byte	0x38
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xf
	.byte	0x39
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xf
	.byte	0x3a
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xf
	.byte	0x3b
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xf
	.byte	0x3c
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xf
	.byte	0x3d
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xf
	.byte	0x3e
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDLabel\0"
	.byte	0xf
	.byte	0x3f
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xf
	.byte	0x40
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDListBox\0"
	.byte	0xf
	.byte	0x41
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xf
	.byte	0x42
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xf
	.byte	0x43
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xf
	.byte	0x45
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xf
	.byte	0x46
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xf
	.byte	0x47
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xf
	.byte	0x48
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xf
	.byte	0x49
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4a
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4b
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4c
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4d
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4e
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xf
	.byte	0x4f
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xf
	.byte	0x50
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xf
	.byte	0x51
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xf
	.byte	0x52
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xf
	.byte	0x53
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xf
	.byte	0x54
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xf
	.byte	0x55
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_CSystemPage\0"
	.byte	0xf
	.byte	0x56
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xf
	.byte	0x57
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xf
	.byte	0x58
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xf
	.byte	0x59
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xf
	.byte	0x5a
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xf
	.byte	0x5b
	.byte	0x16
	.long	0x7cb
	.uleb128 0x13
	.ascii "GUID_TRISTATE\0"
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x7a7
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0x10
	.byte	0x28
	.byte	0x16
	.long	0x1d06
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0x10
	.byte	0x29
	.byte	0x16
	.long	0x1d06
	.uleb128 0x15
	.ascii "IID_IMallocSpy\0"
	.byte	0x11
	.word	0x1dbd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindCtx\0"
	.byte	0x11
	.word	0x1f3a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumMoniker\0"
	.byte	0x11
	.word	0x204a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRunnableObject\0"
	.byte	0x11
	.word	0x20e8
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x11
	.word	0x218e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersist\0"
	.byte	0x11
	.word	0x2269
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersistStream\0"
	.byte	0x11
	.word	0x22be
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMoniker\0"
	.byte	0x11
	.word	0x236a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IROTData\0"
	.byte	0x11
	.word	0x2558
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x11
	.word	0x25b5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IStorage\0"
	.byte	0x11
	.word	0x2658
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersistFile\0"
	.byte	0x11
	.word	0x2841
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersistStorage\0"
	.byte	0x11
	.word	0x28f1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ILockBytes\0"
	.byte	0x11
	.word	0x29b1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x11
	.word	0x2ac0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x11
	.word	0x2b6c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRootStorage\0"
	.byte	0x11
	.word	0x2c08
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAdviseSink\0"
	.byte	0x11
	.word	0x2cb3
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x11
	.word	0x2d73
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAdviseSink2\0"
	.byte	0x11
	.word	0x2ea9
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x11
	.word	0x2f2e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDataObject\0"
	.byte	0x11
	.word	0x2ff4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x11
	.word	0x3118
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMessageFilter\0"
	.byte	0x11
	.word	0x31d3
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x11
	.word	0x325d
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x11
	.word	0x325f
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x11
	.word	0x3261
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x11
	.word	0x3263
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x11
	.word	0x3265
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x11
	.word	0x3267
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x11
	.word	0x3269
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x11
	.word	0x326b
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "IID_IClassActivator\0"
	.byte	0x11
	.word	0x3273
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IFillLockBytes\0"
	.byte	0x11
	.word	0x32d5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IProgressNotify\0"
	.byte	0x11
	.word	0x3389
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ILayoutStorage\0"
	.byte	0x11
	.word	0x33ee
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBlockingLock\0"
	.byte	0x11
	.word	0x3492
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x11
	.word	0x34f7
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOplockStorage\0"
	.byte	0x11
	.word	0x354e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x11
	.word	0x35d5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IUrlMon\0"
	.byte	0x11
	.word	0x364d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x11
	.word	0x36bc
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x11
	.word	0x3710
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x11
	.word	0x3786
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IProcessLock\0"
	.byte	0x11
	.word	0x37e5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISurrogateService\0"
	.byte	0x11
	.word	0x3848
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInitializeSpy\0"
	.byte	0x11
	.word	0x38f2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x11
	.word	0x398a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x12
	.byte	0xab
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleCache\0"
	.byte	0x12
	.word	0x162
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleCache2\0"
	.byte	0x12
	.word	0x229
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleCacheControl\0"
	.byte	0x12
	.word	0x2d4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IParseDisplayName\0"
	.byte	0x12
	.word	0x33c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleContainer\0"
	.byte	0x12
	.word	0x39c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleClientSite\0"
	.byte	0x12
	.word	0x417
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleObject\0"
	.byte	0x12
	.word	0x4fe
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x12
	.word	0x6fe
	.byte	0x16
	.long	0x1d06
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x12
	.word	0x6ff
	.byte	0x16
	.long	0x1d06
	.uleb128 0x15
	.ascii "IID_IOleWindow\0"
	.byte	0x12
	.word	0x724
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleLink\0"
	.byte	0x12
	.word	0x79a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleItemContainer\0"
	.byte	0x12
	.word	0x8bf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x12
	.word	0x976
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x12
	.word	0xa1c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x12
	.word	0xaf8
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x12
	.word	0xbf1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x12
	.word	0xc91
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IContinue\0"
	.byte	0x12
	.word	0xda4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IViewObject\0"
	.byte	0x12
	.word	0xdf9
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IViewObject2\0"
	.byte	0x12
	.word	0xf2a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDropSource\0"
	.byte	0x12
	.word	0xfd2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDropTarget\0"
	.byte	0x12
	.word	0x105b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x12
	.word	0x10ff
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x12
	.word	0x1176
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_IServiceProvider\0"
	.byte	0x13
	.byte	0x4d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x14
	.byte	0xf1
	.byte	0x16
	.long	0x1d06
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x14
	.byte	0xf2
	.byte	0x16
	.long	0x1d06
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x14
	.word	0x33b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x14
	.word	0x562
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x14
	.word	0x7b2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x14
	.word	0x8ba
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDispatch\0"
	.byte	0x14
	.word	0x9b6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x14
	.word	0xa87
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeComp\0"
	.byte	0x14
	.word	0xb35
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeInfo\0"
	.byte	0x14
	.word	0xbd9
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeInfo2\0"
	.byte	0x14
	.word	0xe50
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeLib\0"
	.byte	0x14
	.word	0x10d6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeLib2\0"
	.byte	0x14
	.word	0x123d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x14
	.word	0x1361
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IErrorInfo\0"
	.byte	0x14
	.word	0x13da
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x14
	.word	0x147d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x14
	.word	0x1520
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeFactory\0"
	.byte	0x14
	.word	0x1575
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeMarshal\0"
	.byte	0x14
	.word	0x15d0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRecordInfo\0"
	.byte	0x14
	.word	0x1684
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IErrorLog\0"
	.byte	0x14
	.word	0x1820
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPropertyBag\0"
	.byte	0x14
	.word	0x187a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x15
	.byte	0xeb
	.byte	0x18
	.long	0x1d06
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.long	0x1d06
	.uleb128 0x13
	.ascii "LIBID_MSXML\0"
	.byte	0x15
	.byte	0xfc
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x15
	.word	0x100
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x15
	.word	0x127
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x15
	.word	0x1fd
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x15
	.word	0x266
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x15
	.word	0x375
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x15
	.word	0x3b0
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x15
	.word	0x404
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x15
	.word	0x496
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x15
	.word	0x50f
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMText\0"
	.byte	0x15
	.word	0x5a6
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x15
	.word	0x625
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x15
	.word	0x69e
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x15
	.word	0x717
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x15
	.word	0x792
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x15
	.word	0x80b
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x15
	.word	0x87f
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x15
	.word	0x8f8
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x15
	.word	0x961
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXTLRuntime\0"
	.byte	0x15
	.word	0x9a6
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x15
	.word	0xa3d
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_DOMDocument\0"
	.byte	0x15
	.word	0xa5c
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x15
	.word	0xa60
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x15
	.word	0xa67
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x15
	.word	0xacd
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x15
	.word	0xad4
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x15
	.word	0xb0d
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x15
	.word	0xb14
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDocument\0"
	.byte	0x15
	.word	0xb4a
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDocument2\0"
	.byte	0x15
	.word	0xbb2
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLElement\0"
	.byte	0x15
	.word	0xc24
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLElement2\0"
	.byte	0x15
	.word	0xc82
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLAttribute\0"
	.byte	0x15
	.word	0xce5
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLError\0"
	.byte	0x15
	.word	0xd11
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_XMLDocument\0"
	.byte	0x15
	.word	0xd2e
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x16
	.word	0x17e
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x16
	.word	0x17f
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x16
	.word	0x180
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x16
	.word	0x181
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x16
	.word	0x182
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x16
	.word	0x183
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x16
	.word	0x184
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x185
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x16
	.word	0x186
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x16
	.word	0x187
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x16
	.word	0x188
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x16
	.word	0x189
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x16
	.word	0x18a
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x16
	.word	0x193
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x16
	.word	0x194
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x16
	.word	0x195
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x16
	.word	0x196
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x16
	.word	0x197
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x16
	.word	0x198
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_FileProtocol\0"
	.byte	0x16
	.word	0x199
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_MkProtocol\0"
	.byte	0x16
	.word	0x19a
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x16
	.word	0x19b
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x19c
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x16
	.word	0x19d
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x16
	.word	0x19e
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x16
	.word	0x19f
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IPersistMoniker\0"
	.byte	0x16
	.word	0x250
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMonikerProp\0"
	.byte	0x16
	.word	0x321
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindProtocol\0"
	.byte	0x16
	.word	0x37f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBinding\0"
	.byte	0x16
	.word	0x3e0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x16
	.word	0x575
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x16
	.word	0x6a5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAuthenticate\0"
	.byte	0x16
	.word	0x764
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x16
	.word	0x7d0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x16
	.word	0x841
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x16
	.word	0x8c1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x16
	.word	0x93b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x16
	.word	0x9bf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x16
	.word	0xa30
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICodeInstall\0"
	.byte	0x16
	.word	0xa9b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetInfo\0"
	.byte	0x16
	.word	0x10a5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpSecurity\0"
	.byte	0x16
	.word	0x1112
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x16
	.word	0x1179
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x16
	.word	0x11f8
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "SID_BindHost\0"
	.byte	0x16
	.word	0x1335
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindHost\0"
	.byte	0x16
	.word	0x133f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternet\0"
	.byte	0x16
	.word	0x144d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x16
	.word	0x14ac
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x16
	.word	0x1526
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x16
	.word	0x15bf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocol\0"
	.byte	0x16
	.word	0x1684
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x16
	.word	0x181a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x16
	.word	0x18bd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetSession\0"
	.byte	0x16
	.word	0x193f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x16
	.word	0x1a48
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetPriority\0"
	.byte	0x16
	.word	0x1ab2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x16
	.word	0x1b4e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x16
	.word	0x1cb2
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x16
	.word	0x1cb3
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x16
	.word	0x1ccb
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x16
	.word	0x1d69
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x16
	.word	0x210f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x16
	.word	0x22c4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x16
	.word	0x269c
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_ISoftDistExt\0"
	.byte	0x16
	.word	0x26cc
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x16
	.word	0x2778
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDataFilter\0"
	.byte	0x16
	.word	0x27e6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x16
	.word	0x28a6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x16
	.word	0x2933
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x16
	.word	0x2941
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IGetBindHandle\0"
	.byte	0x16
	.word	0x29a5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x16
	.word	0x2a0d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPropertyStorage\0"
	.byte	0x17
	.word	0x1b7
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x17
	.word	0x304
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x17
	.word	0x3a6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x17
	.word	0x444
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_StdOle\0"
	.byte	0x18
	.byte	0x15
	.byte	0x12
	.long	0x7b8
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x19
	.byte	0xc
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x19
	.byte	0xd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x19
	.byte	0xe
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x19
	.byte	0xf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x19
	.byte	0x10
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x19
	.byte	0x11
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x19
	.byte	0x12
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x19
	.byte	0x13
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x19
	.byte	0x14
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x19
	.byte	0x15
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x19
	.byte	0x16
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x19
	.byte	0x17
	.byte	0x13
	.long	0x7a7
	.uleb128 0x10
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1a
	.byte	0xa1
	.byte	0x12
	.long	0x48aa
	.uleb128 0x11
	.ascii "dwProtocol\0"
	.byte	0x1a
	.byte	0xa2
	.byte	0xb
	.long	0x5b2
	.byte	0
	.uleb128 0x11
	.ascii "cbPciLength\0"
	.byte	0x1a
	.byte	0xa3
	.byte	0xb
	.long	0x5b2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1a
	.byte	0xa4
	.byte	0x5
	.long	0x4865
	.uleb128 0x4
	.long	0x48aa
	.uleb128 0x13
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x3c
	.long	0x48c3
	.uleb128 0x13
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x4b
	.long	0x48c3
	.uleb128 0x13
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x5a
	.long	0x48c3
	.uleb128 0x13
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1c
	.byte	0xe
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1c
	.byte	0xf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1d
	.byte	0x27
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1d
	.byte	0x28
	.byte	0x12
	.long	0xd3
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1d
	.byte	0x29
	.byte	0x21
	.long	0x121
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1d
	.byte	0x2a
	.byte	0x2a
	.long	0x724
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1e
	.byte	0x5a
	.byte	0x11
	.long	0x495d
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1e
	.byte	0x5b
	.byte	0x11
	.long	0x497e
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1e
	.byte	0x5e
	.byte	0x12
	.long	0x496d
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1e
	.byte	0x5f
	.byte	0x12
	.long	0x498e
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1e
	.byte	0x6a
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "PMC_NUMBER_TYPE_CODE\0"
	.byte	0x1e
	.byte	0x6c
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1e
	.byte	0x6e
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1e
	.byte	0x70
	.byte	0xd
	.long	0xe3
	.uleb128 0x10
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x72
	.byte	0x8
	.long	0x4a87
	.uleb128 0x11
	.ascii "dummy\0"
	.byte	0x1e
	.byte	0x75
	.byte	0xf
	.long	0x49c1
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x1e
	.byte	0x7c
	.byte	0x27
	.long	0x4a9f
	.uleb128 0x6
	.byte	0x4
	.long	0x4a58
	.uleb128 0x10
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x7e
	.byte	0x8
	.long	0x4ad4
	.uleb128 0x11
	.ascii "dummy\0"
	.byte	0x1e
	.byte	0x81
	.byte	0xf
	.long	0x49c1
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x1e
	.byte	0x88
	.byte	0x27
	.long	0x4aec
	.uleb128 0x6
	.byte	0x4
	.long	0x4aa5
	.uleb128 0x10
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x8a
	.byte	0x10
	.long	0x4b6e
	.uleb128 0x11
	.ascii "COUNT_MULTI64\0"
	.byte	0x1e
	.byte	0x8c
	.byte	0xa
	.long	0x115
	.byte	0
	.uleb128 0x11
	.ascii "COUNT_MULTI32\0"
	.byte	0x1e
	.byte	0x8d
	.byte	0xa
	.long	0x115
	.byte	0x4
	.uleb128 0x11
	.ascii "COUNT_DIV64\0"
	.byte	0x1e
	.byte	0x8e
	.byte	0xa
	.long	0x115
	.byte	0x8
	.uleb128 0x11
	.ascii "COUNT_DIV32\0"
	.byte	0x1e
	.byte	0x8f
	.byte	0xa
	.long	0x115
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1e
	.byte	0x90
	.byte	0x3
	.long	0x4af2
	.uleb128 0x10
	.ascii "__tag_PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x28
	.byte	0x1e
	.byte	0x92
	.byte	0x10
	.long	0x4c3c
	.uleb128 0x11
	.ascii "DecimalDigits\0"
	.byte	0x1e
	.byte	0x94
	.byte	0x9
	.long	0xe3
	.byte	0
	.uleb128 0x11
	.ascii "GroupSeparator\0"
	.byte	0x1e
	.byte	0x95
	.byte	0xd
	.long	0x4c3c
	.byte	0x4
	.uleb128 0x11
	.ascii "DecimalSeparator\0"
	.byte	0x1e
	.byte	0x96
	.byte	0xd
	.long	0x4c3c
	.byte	0xa
	.uleb128 0x11
	.ascii "PositiveSign\0"
	.byte	0x1e
	.byte	0x97
	.byte	0xd
	.long	0x4c3c
	.byte	0x10
	.uleb128 0x11
	.ascii "NegativeSign\0"
	.byte	0x1e
	.byte	0x98
	.byte	0xd
	.long	0x4c3c
	.byte	0x16
	.uleb128 0x11
	.ascii "GroupSizes\0"
	.byte	0x1e
	.byte	0x99
	.byte	0xa
	.long	0x4c4c
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.long	0xea
	.long	0x4c4c
	.uleb128 0xd
	.long	0xd3
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xbc
	.long	0x4c5c
	.uleb128 0xd
	.long	0xd3
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x1e
	.byte	0x9a
	.byte	0x3
	.long	0x4b8a
	.uleb128 0x16
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x118
	.byte	0x1e
	.byte	0x9c
	.byte	0x10
	.long	0x5375
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x1e
	.byte	0x9f
	.byte	0xe
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x1e
	.byte	0xa0
	.byte	0xe
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x1e
	.byte	0xa1
	.byte	0xe
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x1e
	.byte	0xa2
	.byte	0xe
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x1e
	.byte	0xa3
	.byte	0xe
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "GetStatisticsInfo\0"
	.byte	0x1e
	.byte	0xa6
	.byte	0x2a
	.long	0x5386
	.byte	0x4
	.uleb128 0x11
	.ascii "From_I\0"
	.byte	0x1e
	.byte	0xa9
	.byte	0x35
	.long	0x53a6
	.byte	0x8
	.uleb128 0x11
	.ascii "From_L\0"
	.byte	0x1e
	.byte	0xac
	.byte	0x35
	.long	0x53c0
	.byte	0xc
	.uleb128 0x11
	.ascii "Dispose\0"
	.byte	0x1e
	.byte	0xaf
	.byte	0x2a
	.long	0x53d1
	.byte	0x10
	.uleb128 0x11
	.ascii "GetNumberType_X\0"
	.byte	0x1e
	.byte	0xb2
	.byte	0x35
	.long	0x53f1
	.byte	0x14
	.uleb128 0x11
	.ascii "GetConstantValue_I\0"
	.byte	0x1e
	.byte	0xb5
	.byte	0x35
	.long	0x540b
	.byte	0x18
	.uleb128 0x11
	.ascii "FromByteArray\0"
	.byte	0x1e
	.byte	0xb8
	.byte	0x35
	.long	0x542a
	.byte	0x1c
	.uleb128 0x11
	.ascii "ToByteArray\0"
	.byte	0x1e
	.byte	0xb9
	.byte	0x35
	.long	0x5454
	.byte	0x20
	.uleb128 0x11
	.ascii "FromByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xba
	.byte	0x34
	.long	0x5478
	.byte	0x24
	.uleb128 0x11
	.ascii "ToByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xbb
	.byte	0x34
	.long	0x54a1
	.byte	0x28
	.uleb128 0x11
	.ascii "Clone_X\0"
	.byte	0x1e
	.byte	0xbe
	.byte	0x35
	.long	0x54bb
	.byte	0x2c
	.uleb128 0x11
	.ascii "To_X_I\0"
	.byte	0x1e
	.byte	0xc1
	.byte	0x35
	.long	0x54db
	.byte	0x30
	.uleb128 0x11
	.ascii "To_X_L\0"
	.byte	0x1e
	.byte	0xc2
	.byte	0x35
	.long	0x54fb
	.byte	0x34
	.uleb128 0x11
	.ascii "ToString\0"
	.byte	0x1e
	.byte	0xc5
	.byte	0x35
	.long	0x552f
	.byte	0x38
	.uleb128 0x11
	.ascii "TryParse\0"
	.byte	0x1e
	.byte	0xc8
	.byte	0x35
	.long	0x5553
	.byte	0x3c
	.uleb128 0x11
	.ascii "Add_I_X\0"
	.byte	0x1e
	.byte	0xcb
	.byte	0x35
	.long	0x5572
	.byte	0x40
	.uleb128 0x11
	.ascii "Add_L_X\0"
	.byte	0x1e
	.byte	0xcc
	.byte	0x35
	.long	0x5591
	.byte	0x44
	.uleb128 0x11
	.ascii "Add_X_I\0"
	.byte	0x1e
	.byte	0xcd
	.byte	0x35
	.long	0x55b0
	.byte	0x48
	.uleb128 0x11
	.ascii "Add_X_L\0"
	.byte	0x1e
	.byte	0xce
	.byte	0x35
	.long	0x55cf
	.byte	0x4c
	.uleb128 0x11
	.ascii "Add_X_X\0"
	.byte	0x1e
	.byte	0xcf
	.byte	0x35
	.long	0x55ee
	.byte	0x50
	.uleb128 0x11
	.ascii "Subtruct_I_X\0"
	.byte	0x1e
	.byte	0xd2
	.byte	0x35
	.long	0x560d
	.byte	0x54
	.uleb128 0x11
	.ascii "Subtruct_L_X\0"
	.byte	0x1e
	.byte	0xd3
	.byte	0x35
	.long	0x562c
	.byte	0x58
	.uleb128 0x11
	.ascii "Subtruct_X_I\0"
	.byte	0x1e
	.byte	0xd4
	.byte	0x35
	.long	0x55b0
	.byte	0x5c
	.uleb128 0x11
	.ascii "Subtruct_X_L\0"
	.byte	0x1e
	.byte	0xd5
	.byte	0x35
	.long	0x55cf
	.byte	0x60
	.uleb128 0x11
	.ascii "Subtruct_X_X\0"
	.byte	0x1e
	.byte	0xd6
	.byte	0x35
	.long	0x55ee
	.byte	0x64
	.uleb128 0x11
	.ascii "Multiply_I_X\0"
	.byte	0x1e
	.byte	0xd9
	.byte	0x35
	.long	0x5572
	.byte	0x68
	.uleb128 0x11
	.ascii "Multiply_L_X\0"
	.byte	0x1e
	.byte	0xda
	.byte	0x35
	.long	0x5591
	.byte	0x6c
	.uleb128 0x11
	.ascii "Multiply_X_I\0"
	.byte	0x1e
	.byte	0xdb
	.byte	0x35
	.long	0x55b0
	.byte	0x70
	.uleb128 0x11
	.ascii "Multiply_X_L\0"
	.byte	0x1e
	.byte	0xdc
	.byte	0x35
	.long	0x55cf
	.byte	0x74
	.uleb128 0x11
	.ascii "Multiply_X_X\0"
	.byte	0x1e
	.byte	0xdd
	.byte	0x35
	.long	0x55ee
	.byte	0x78
	.uleb128 0x11
	.ascii "DivRem_I_X\0"
	.byte	0x1e
	.byte	0xe0
	.byte	0x35
	.long	0x5650
	.byte	0x7c
	.uleb128 0x11
	.ascii "DivRem_L_X\0"
	.byte	0x1e
	.byte	0xe1
	.byte	0x35
	.long	0x5674
	.byte	0x80
	.uleb128 0x11
	.ascii "DivRem_X_I\0"
	.byte	0x1e
	.byte	0xe2
	.byte	0x35
	.long	0x5698
	.byte	0x84
	.uleb128 0x11
	.ascii "DivRem_X_L\0"
	.byte	0x1e
	.byte	0xe3
	.byte	0x35
	.long	0x56bc
	.byte	0x88
	.uleb128 0x11
	.ascii "DivRem_X_X\0"
	.byte	0x1e
	.byte	0xe4
	.byte	0x35
	.long	0x56e0
	.byte	0x8c
	.uleb128 0x11
	.ascii "LeftShift_X_I\0"
	.byte	0x1e
	.byte	0xe7
	.byte	0x35
	.long	0x55b0
	.byte	0x90
	.uleb128 0x11
	.ascii "RightShift_X_I\0"
	.byte	0x1e
	.byte	0xea
	.byte	0x35
	.long	0x55b0
	.byte	0x94
	.uleb128 0x11
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x1e
	.byte	0xed
	.byte	0x35
	.long	0x560d
	.byte	0x98
	.uleb128 0x11
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x1e
	.byte	0xee
	.byte	0x35
	.long	0x562c
	.byte	0x9c
	.uleb128 0x11
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x1e
	.byte	0xef
	.byte	0x35
	.long	0x56ff
	.byte	0xa0
	.uleb128 0x11
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x1e
	.byte	0xf0
	.byte	0x35
	.long	0x571e
	.byte	0xa4
	.uleb128 0x11
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x1e
	.byte	0xf1
	.byte	0x35
	.long	0x55ee
	.byte	0xa8
	.uleb128 0x11
	.ascii "BitwiseOr_I_X\0"
	.byte	0x1e
	.byte	0xf4
	.byte	0x35
	.long	0x5572
	.byte	0xac
	.uleb128 0x11
	.ascii "BitwiseOr_L_X\0"
	.byte	0x1e
	.byte	0xf5
	.byte	0x35
	.long	0x5591
	.byte	0xb0
	.uleb128 0x11
	.ascii "BitwiseOr_X_I\0"
	.byte	0x1e
	.byte	0xf6
	.byte	0x35
	.long	0x55b0
	.byte	0xb4
	.uleb128 0x11
	.ascii "BitwiseOr_X_L\0"
	.byte	0x1e
	.byte	0xf7
	.byte	0x35
	.long	0x55cf
	.byte	0xb8
	.uleb128 0x11
	.ascii "BitwiseOr_X_X\0"
	.byte	0x1e
	.byte	0xf8
	.byte	0x35
	.long	0x55ee
	.byte	0xbc
	.uleb128 0x11
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x1e
	.byte	0xfb
	.byte	0x35
	.long	0x5572
	.byte	0xc0
	.uleb128 0x11
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x1e
	.byte	0xfc
	.byte	0x35
	.long	0x5591
	.byte	0xc4
	.uleb128 0x11
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x1e
	.byte	0xfd
	.byte	0x35
	.long	0x55b0
	.byte	0xc8
	.uleb128 0x11
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x1e
	.byte	0xfe
	.byte	0x35
	.long	0x55cf
	.byte	0xcc
	.uleb128 0x11
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x1e
	.byte	0xff
	.byte	0x35
	.long	0x55ee
	.byte	0xd0
	.uleb128 0x9
	.ascii "Compare_I_X\0"
	.byte	0x1e
	.word	0x102
	.byte	0x35
	.long	0x5743
	.byte	0xd4
	.uleb128 0x9
	.ascii "Compare_L_X\0"
	.byte	0x1e
	.word	0x103
	.byte	0x35
	.long	0x5762
	.byte	0xd8
	.uleb128 0x9
	.ascii "Compare_X_I\0"
	.byte	0x1e
	.word	0x104
	.byte	0x35
	.long	0x5781
	.byte	0xdc
	.uleb128 0x9
	.ascii "Compare_X_L\0"
	.byte	0x1e
	.word	0x105
	.byte	0x35
	.long	0x57a0
	.byte	0xe0
	.uleb128 0x9
	.ascii "Compare_X_X\0"
	.byte	0x1e
	.word	0x106
	.byte	0x35
	.long	0x57bf
	.byte	0xe4
	.uleb128 0x9
	.ascii "Equals_I_X\0"
	.byte	0x1e
	.word	0x109
	.byte	0x35
	.long	0x5743
	.byte	0xe8
	.uleb128 0x9
	.ascii "Equals_L_X\0"
	.byte	0x1e
	.word	0x10a
	.byte	0x35
	.long	0x5762
	.byte	0xec
	.uleb128 0x9
	.ascii "Equals_X_I\0"
	.byte	0x1e
	.word	0x10b
	.byte	0x35
	.long	0x5781
	.byte	0xf0
	.uleb128 0x9
	.ascii "Equals_X_L\0"
	.byte	0x1e
	.word	0x10c
	.byte	0x35
	.long	0x57a0
	.byte	0xf4
	.uleb128 0x9
	.ascii "Equals_X_X\0"
	.byte	0x1e
	.word	0x10d
	.byte	0x35
	.long	0x57bf
	.byte	0xf8
	.uleb128 0x9
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x1e
	.word	0x110
	.byte	0x35
	.long	0x5572
	.byte	0xfc
	.uleb128 0x18
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x1e
	.word	0x111
	.byte	0x35
	.long	0x5591
	.word	0x100
	.uleb128 0x18
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x1e
	.word	0x112
	.byte	0x35
	.long	0x55b0
	.word	0x104
	.uleb128 0x18
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x1e
	.word	0x113
	.byte	0x35
	.long	0x55cf
	.word	0x108
	.uleb128 0x18
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x1e
	.word	0x114
	.byte	0x35
	.long	0x55ee
	.word	0x10c
	.uleb128 0x18
	.ascii "Pow_X_I\0"
	.byte	0x1e
	.word	0x117
	.byte	0x35
	.long	0x55b0
	.word	0x110
	.uleb128 0x18
	.ascii "ModPow_X_X_X\0"
	.byte	0x1e
	.word	0x11a
	.byte	0x35
	.long	0x57e3
	.word	0x114
	.byte	0
	.uleb128 0xe
	.long	0x5380
	.uleb128 0xf
	.long	0x5380
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4b6e
	.uleb128 0x6
	.byte	0x4
	.long	0x5375
	.uleb128 0x19
	.long	0x49e5
	.long	0x53a0
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4a87
	.uleb128 0x6
	.byte	0x4
	.long	0x538c
	.uleb128 0x19
	.long	0x49e5
	.long	0x53c0
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x53ac
	.uleb128 0xe
	.long	0x53d1
	.uleb128 0xf
	.long	0x4a87
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x53c6
	.uleb128 0x19
	.long	0x49e5
	.long	0x53eb
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x53eb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x49fd
	.uleb128 0x6
	.byte	0x4
	.long	0x53d7
	.uleb128 0x19
	.long	0x49e5
	.long	0x540b
	.uleb128 0xf
	.long	0x4a1a
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x53f7
	.uleb128 0x19
	.long	0x49e5
	.long	0x542a
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5411
	.uleb128 0x19
	.long	0x49e5
	.long	0x544e
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x544e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc4
	.uleb128 0x6
	.byte	0x4
	.long	0x5430
	.uleb128 0x19
	.long	0x49e5
	.long	0x5478
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x428
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x545a
	.uleb128 0x19
	.long	0x49e5
	.long	0x54a1
	.uleb128 0xf
	.long	0xbc
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x544e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x547e
	.uleb128 0x19
	.long	0x49e5
	.long	0x54bb
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x54a7
	.uleb128 0x19
	.long	0x49e5
	.long	0x54d5
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x54d5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x49c1
	.uleb128 0x6
	.byte	0x4
	.long	0x54c1
	.uleb128 0x19
	.long	0x49e5
	.long	0x54f5
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x54f5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x49d3
	.uleb128 0x6
	.byte	0x4
	.long	0x54e1
	.uleb128 0x19
	.long	0x49e5
	.long	0x5529
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0xbc
	.uleb128 0xf
	.long	0xe3
	.uleb128 0xf
	.long	0x5529
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c5c
	.uleb128 0x6
	.byte	0x4
	.long	0x5501
	.uleb128 0x19
	.long	0x49e5
	.long	0x5553
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0x4a3a
	.uleb128 0xf
	.long	0x5529
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5535
	.uleb128 0x19
	.long	0x49e5
	.long	0x5572
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5559
	.uleb128 0x19
	.long	0x49e5
	.long	0x5591
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5578
	.uleb128 0x19
	.long	0x49e5
	.long	0x55b0
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5597
	.uleb128 0x19
	.long	0x49e5
	.long	0x55cf
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x55b6
	.uleb128 0x19
	.long	0x49e5
	.long	0x55ee
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x55d5
	.uleb128 0x19
	.long	0x49e5
	.long	0x560d
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x54d5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x55f4
	.uleb128 0x19
	.long	0x49e5
	.long	0x562c
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x54f5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5613
	.uleb128 0x19
	.long	0x49e5
	.long	0x5650
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x54d5
	.uleb128 0xf
	.long	0x54d5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5632
	.uleb128 0x19
	.long	0x49e5
	.long	0x5674
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x54f5
	.uleb128 0xf
	.long	0x54f5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5656
	.uleb128 0x19
	.long	0x49e5
	.long	0x5698
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x53a0
	.uleb128 0xf
	.long	0x54d5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x567a
	.uleb128 0x19
	.long	0x49e5
	.long	0x56bc
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x53a0
	.uleb128 0xf
	.long	0x54f5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x569e
	.uleb128 0x19
	.long	0x49e5
	.long	0x56e0
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x53a0
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56c2
	.uleb128 0x19
	.long	0x49e5
	.long	0x56ff
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x54d5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56e6
	.uleb128 0x19
	.long	0x49e5
	.long	0x571e
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x54f5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5705
	.uleb128 0x19
	.long	0x49e5
	.long	0x573d
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x573d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x499f
	.uleb128 0x6
	.byte	0x4
	.long	0x5724
	.uleb128 0x19
	.long	0x49e5
	.long	0x5762
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x573d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5749
	.uleb128 0x19
	.long	0x49e5
	.long	0x5781
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49c1
	.uleb128 0xf
	.long	0x573d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5768
	.uleb128 0x19
	.long	0x49e5
	.long	0x57a0
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x49d3
	.uleb128 0xf
	.long	0x573d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5787
	.uleb128 0x19
	.long	0x49e5
	.long	0x57bf
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x573d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57a6
	.uleb128 0x19
	.long	0x49e5
	.long	0x57e3
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x4a87
	.uleb128 0xf
	.long	0x53a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57c5
	.uleb128 0x5
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x11c
	.byte	0x3
	.long	0x4c7d
	.uleb128 0x6
	.byte	0x4
	.long	0x4ad4
	.uleb128 0x10
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x14
	.byte	0x1f
	.byte	0x2b
	.byte	0x14
	.long	0x58f5
	.uleb128 0x11
	.ascii "SIGNATURE1\0"
	.byte	0x1f
	.byte	0x2d
	.byte	0x13
	.long	0x49c1
	.byte	0
	.uleb128 0x11
	.ascii "SIGNATURE2\0"
	.byte	0x1f
	.byte	0x2e
	.byte	0x13
	.long	0x49c1
	.byte	0x4
	.uleb128 0x11
	.ascii "ABS\0"
	.byte	0x1f
	.byte	0x2f
	.byte	0x19
	.long	0x4a87
	.byte	0x8
	.uleb128 0x11
	.ascii "SIGN\0"
	.byte	0x1f
	.byte	0x30
	.byte	0xe
	.long	0xbc
	.byte	0xc
	.uleb128 0x17
	.ascii "IS_STATIC\0"
	.byte	0x1f
	.byte	0x31
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.uleb128 0x17
	.ascii "IS_ZERO\0"
	.byte	0x1f
	.byte	0x32
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x10
	.uleb128 0x17
	.ascii "IS_ONE\0"
	.byte	0x1f
	.byte	0x33
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x10
	.uleb128 0x17
	.ascii "IS_MINUS_ONE\0"
	.byte	0x1f
	.byte	0x34
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x10
	.uleb128 0x17
	.ascii "IS_EVEN\0"
	.byte	0x1f
	.byte	0x35
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.uleb128 0x17
	.ascii "IS_POWER_OF_TWO\0"
	.byte	0x1f
	.byte	0x36
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.ascii "NUMBER_HEADER\0"
	.byte	0x1f
	.byte	0x37
	.byte	0x7
	.long	0x580e
	.uleb128 0x13
	.ascii "ep_uint\0"
	.byte	0x1f
	.byte	0x3d
	.byte	0x22
	.long	0x57e9
	.uleb128 0x13
	.ascii "number_zero\0"
	.byte	0x1f
	.byte	0x40
	.byte	0x1a
	.long	0x58f5
	.uleb128 0x13
	.ascii "number_one\0"
	.byte	0x1f
	.byte	0x43
	.byte	0x1a
	.long	0x58f5
	.uleb128 0x13
	.ascii "number_minus_one\0"
	.byte	0x1f
	.byte	0x46
	.byte	0x1a
	.long	0x58f5
	.uleb128 0x13
	.ascii "statistics_info\0"
	.byte	0x1f
	.byte	0x49
	.byte	0x20
	.long	0x4b6e
	.uleb128 0x1a
	.ascii "PMC_Subtruct_X_X\0"
	.byte	0x2
	.word	0x577
	.byte	0x2e
	.ascii "PMC_Subtruct_X_X@12\0"
	.long	0x49e5
	.long	LFB4252
	.long	LFE4252-LFB4252
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a17
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x577
	.byte	0x4f
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x577
	.byte	0x62
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x577
	.byte	0x76
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x57f
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x580
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x581
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x582
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58f5
	.uleb128 0x1a
	.ascii "PMC_Subtruct_X_UX\0"
	.byte	0x2
	.word	0x51d
	.byte	0x2e
	.ascii "PMC_Subtruct_X_UX@12\0"
	.long	0x49e5
	.long	LFB4251
	.long	LFE4251-LFB4251
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ae0
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x51d
	.byte	0x50
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x51d
	.byte	0x63
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x51d
	.byte	0x77
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x525
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x526
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x527
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x2
	.word	0x52a
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.long	LBB11
	.long	LBE11-LBB11
	.uleb128 0x1d
	.ascii "new_v\0"
	.byte	0x2
	.word	0x53d
	.byte	0x1d
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_X_L\0"
	.byte	0x2
	.word	0x4be
	.byte	0x2e
	.ascii "PMC_Subtruct_X_L@16\0"
	.long	0x49e5
	.long	LFB4250
	.long	LFE4250-LFB4250
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b95
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x4be
	.byte	0x4f
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x4be
	.byte	0x5b
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x4be
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x4c4
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x4c5
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x4c6
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x4c9
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x4ca
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_X_I\0"
	.byte	0x2
	.word	0x45f
	.byte	0x2e
	.ascii "PMC_Subtruct_X_I@12\0"
	.long	0x49e5
	.long	LFB4249
	.long	LFE4249-LFB4249
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c4a
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x45f
	.byte	0x4f
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x45f
	.byte	0x5b
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x45f
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x465
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x466
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x467
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x46a
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x46b
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_UX_X\0"
	.byte	0x2
	.word	0x414
	.byte	0x2e
	.ascii "PMC_Subtruct_UX_X@12\0"
	.long	0x49e5
	.long	LFB4248
	.long	LFE4248-LFB4248
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d0d
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x414
	.byte	0x50
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x414
	.byte	0x63
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x414
	.byte	0x77
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x41c
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x41d
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x41e
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF5
	.byte	0x2
	.word	0x421
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.long	LBB10
	.long	LBE10-LBB10
	.uleb128 0x1d
	.ascii "new_u\0"
	.byte	0x2
	.word	0x441
	.byte	0x1d
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_L_X\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x2e
	.ascii "PMC_Subtruct_L_X@16\0"
	.long	0x49e5
	.long	LFB4247
	.long	LFE4247-LFB4247
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dc2
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x48
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x5b
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x3b5
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x3bb
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x3bc
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x3bd
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF6
	.byte	0x2
	.word	0x3c0
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x2
	.word	0x3c1
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_I_X\0"
	.byte	0x2
	.word	0x356
	.byte	0x2e
	.ascii "PMC_Subtruct_I_X@12\0"
	.long	0x49e5
	.long	LFB4246
	.long	LFE4246-LFB4246
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e77
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x356
	.byte	0x48
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x356
	.byte	0x5b
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x356
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x35c
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x35d
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x35e
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.secrel32	LASF6
	.byte	0x2
	.word	0x361
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x2
	.word	0x362
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_X_X\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x2e
	.ascii "PMC_Add_X_X@12\0"
	.long	0x49e5
	.long	LFB4245
	.long	LFE4245-LFB4245
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f11
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x4a
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x5d
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x2f4
	.byte	0x71
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x2fc
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x2fd
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x2fe
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x2ff
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_X_UX\0"
	.byte	0x2
	.word	0x298
	.byte	0x2e
	.ascii "PMC_Add_X_UX@12\0"
	.long	0x49e5
	.long	LFB4244
	.long	LFE4244-LFB4244
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fdb
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x298
	.byte	0x4b
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x298
	.byte	0x5e
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x298
	.byte	0x72
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x2a0
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x2a1
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x2a2
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x2
	.word	0x2a5
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.long	LBB9
	.long	LBE9-LBB9
	.uleb128 0x1d
	.ascii "new_v\0"
	.byte	0x2
	.word	0x2b8
	.byte	0x1d
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.ascii "type\0"
	.byte	0x2
	.word	0x2bb
	.byte	0x22
	.long	0x49fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_X_L\0"
	.byte	0x2
	.word	0x239
	.byte	0x2e
	.ascii "PMC_Add_X_L@16\0"
	.long	0x49e5
	.long	LFB4243
	.long	LFE4243-LFB4243
	.uleb128 0x1
	.byte	0x9c
	.long	0x6086
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x239
	.byte	0x4a
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x239
	.byte	0x56
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x239
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x23f
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x240
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x241
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x244
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x245
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_X_I\0"
	.byte	0x2
	.word	0x1da
	.byte	0x2e
	.ascii "PMC_Add_X_I@12\0"
	.long	0x49e5
	.long	LFB4242
	.long	LFE4242-LFB4242
	.uleb128 0x1
	.byte	0x9c
	.long	0x6131
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x1da
	.byte	0x4a
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x1da
	.byte	0x56
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x1da
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x1e0
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x1e1
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x1e5
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x1e6
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_UX_X\0"
	.byte	0x2
	.word	0x191
	.byte	0x2e
	.ascii "PMC_Add_UX_X@12\0"
	.long	0x49e5
	.long	LFB4241
	.long	LFE4241-LFB4241
	.uleb128 0x1
	.byte	0x9c
	.long	0x61ea
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x191
	.byte	0x4b
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x191
	.byte	0x5e
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x191
	.byte	0x72
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x197
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x198
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x199
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF5
	.byte	0x2
	.word	0x19c
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.long	LBB8
	.long	LBE8-LBB8
	.uleb128 0x1d
	.ascii "new_u\0"
	.byte	0x2
	.word	0x1bc
	.byte	0x1d
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_L_X\0"
	.byte	0x2
	.word	0x132
	.byte	0x2e
	.ascii "PMC_Add_L_X@16\0"
	.long	0x49e5
	.long	LFB4240
	.long	LFE4240-LFB4240
	.uleb128 0x1
	.byte	0x9c
	.long	0x6295
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x132
	.byte	0x43
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x132
	.byte	0x56
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x132
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x138
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x139
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x13a
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF6
	.byte	0x2
	.word	0x13d
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x2
	.word	0x13e
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.ascii "PMC_Add_I_X\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x2e
	.ascii "PMC_Add_I_X@12\0"
	.long	0x49e5
	.long	LFB4239
	.long	LFE4239-LFB4239
	.uleb128 0x1
	.byte	0x9c
	.long	0x6337
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x43
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x56
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0xd3
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0xd9
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.ascii "nv\0"
	.byte	0x2
	.byte	0xda
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "nw\0"
	.byte	0x2
	.byte	0xdb
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.secrel32	LASF6
	.byte	0x2
	.byte	0xde
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x21
	.secrel32	LASF7
	.byte	0x2
	.byte	0xdf
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.ascii "SubtructU_X_X_Imp\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x18
	.long	0x49e5
	.long	LFB4238
	.long	LFE4238-LFB4238
	.uleb128 0x1
	.byte	0x9c
	.long	0x63e8
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0xa7
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x45
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x58
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0xa7
	.byte	0x6b
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0xa9
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "c\0"
	.byte	0x2
	.byte	0xaa
	.byte	0xe
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	LBB6
	.long	LBE6-LBB6
	.long	0x63ce
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0xb2
	.byte	0x19
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	LBB7
	.long	LBE7-LBB7
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0xc7
	.byte	0x19
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a17
	.uleb128 0x23
	.ascii "SubtructU_X_L_Imp\0"
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.long	0x49e5
	.long	LFB4237
	.long	LFE4237-LFB4237
	.uleb128 0x1
	.byte	0x9c
	.long	0x64ac
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x78
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x78
	.byte	0x45
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x78
	.byte	0x52
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x78
	.byte	0x65
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x7a
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "c\0"
	.byte	0x2
	.byte	0x7b
	.byte	0xe
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	LBB4
	.long	LBE4-LBB4
	.long	0x6485
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x83
	.byte	0x19
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	LBB5
	.long	LBE5-LBB5
	.uleb128 0x22
	.ascii "t\0"
	.byte	0x2
	.byte	0x98
	.byte	0x13
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x9b
	.byte	0x19
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "SubtructU_X_I_Imp\0"
	.byte	0x2
	.byte	0x49
	.byte	0x18
	.long	0x49e5
	.long	LFB4236
	.long	LFE4236-LFB4236
	.uleb128 0x1
	.byte	0x9c
	.long	0x656a
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x49
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x49
	.byte	0x45
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x49
	.byte	0x52
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x49
	.byte	0x65
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x4b
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "c\0"
	.byte	0x2
	.byte	0x4c
	.byte	0xe
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	LBB2
	.long	LBE2-LBB2
	.long	0x6543
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x54
	.byte	0x19
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x22
	.ascii "t\0"
	.byte	0x2
	.byte	0x69
	.byte	0x13
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x6c
	.byte	0x19
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "AddU_X_X_Imp\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x18
	.long	0x49e5
	.long	LFB4235
	.long	LFE4235-LFB4235
	.uleb128 0x1
	.byte	0x9c
	.long	0x65e2
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x3b
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x40
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x53
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x3b
	.byte	0x66
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x3d
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x3e
	.byte	0x15
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.ascii "AddU_X_L_Imp\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x18
	.long	0x49e5
	.long	LFB4234
	.long	LFE4234-LFB4234
	.uleb128 0x1
	.byte	0x9c
	.long	0x665a
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x2d
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x40
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x4d
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x2d
	.byte	0x60
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x2f
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x30
	.byte	0x15
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.ascii "AddU_X_I_Imp\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x18
	.long	0x49e5
	.long	LFB4233
	.long	LFE4233-LFB4233
	.uleb128 0x1
	.byte	0x9c
	.long	0x66d2
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x1f
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x40
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x4d
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x60
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.ascii "GET_ABS_64\0"
	.byte	0x1
	.word	0x31f
	.byte	0x1f
	.long	0x49d3
	.long	LFB4232
	.long	LFE4232-LFB4232
	.uleb128 0x1
	.byte	0x9c
	.long	0x6713
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x1
	.word	0x31f
	.byte	0x33
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.secrel32	LASF8
	.byte	0x1
	.word	0x31f
	.byte	0x3b
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x28
	.ascii "GET_ABS_32\0"
	.byte	0x1
	.word	0x30b
	.byte	0x1f
	.long	0x49c1
	.long	LFB4231
	.long	LFE4231-LFB4231
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x1
	.word	0x30b
	.byte	0x33
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.secrel32	LASF8
	.byte	0x1
	.word	0x30b
	.byte	0x3b
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
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
	.uleb128 0x6
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF3:
	.ascii "v_sign\0"
LASF7:
	.ascii "u_abs\0"
LASF1:
	.ascii "result\0"
LASF4:
	.ascii "v_abs\0"
LASF5:
	.ascii "u_is_zero\0"
LASF2:
	.ascii "v_is_zero\0"
LASF9:
	.ascii "w_abs\0"
LASF6:
	.ascii "u_sign\0"
LASF8:
	.ascii "sign\0"
LASF0:
	.ascii "refcount\0"
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	_IsZero_UINT;	.scl	2;	.type	32;	.endef
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
