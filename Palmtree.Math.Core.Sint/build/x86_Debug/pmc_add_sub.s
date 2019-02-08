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
	.def	_IS_ZERO_UINT;	.scl	3;	.type	32;	.endef
_IS_ZERO_UINT:
LFB4233:
	.file 2 "../pmc_add_sub.c"
	.loc 2 32 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 35 26
	movl	_ep_uint+20, %eax
	.loc 2 35 19
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL0:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 2 35 8
	cmpl	$0, -12(%ebp)
	je	L14
	.loc 2 36 16
	movl	-12(%ebp), %eax
	jmp	L16
L14:
	.loc 2 37 38
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	.loc 2 37 14
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 2 38 12
	movl	$0, %eax
L16:
	.loc 2 39 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4233:
	.def	_AddU_X_I_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_I_Imp:
LFB4234:
	.loc 2 42 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 45 26
	movl	_ep_uint+72, %eax
	.loc 2 45 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL1:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 45 8
	cmpl	$0, -12(%ebp)
	je	L18
	.loc 2 46 16
	movl	-12(%ebp), %eax
	jmp	L21
L18:
	.loc 2 47 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 47 8
	cmpl	$0, -12(%ebp)
	je	L20
	.loc 2 49 16
	movl	_ep_uint+16, %eax
	.loc 2 49 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL2:
	subl	$4, %esp
	.loc 2 50 16
	movl	-12(%ebp), %eax
	jmp	L21
L20:
	.loc 2 52 12
	movl	$0, %eax
L21:
	.loc 2 53 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4234:
	.def	_AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_L_Imp:
LFB4235:
	.loc 2 56 1
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
	.loc 2 59 26
	movl	_ep_uint+76, %ecx
	.loc 2 59 19
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
LVL3:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 59 8
	cmpl	$0, -12(%ebp)
	je	L23
	.loc 2 60 16
	movl	-12(%ebp), %eax
	jmp	L26
L23:
	.loc 2 61 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 61 8
	cmpl	$0, -12(%ebp)
	je	L25
	.loc 2 63 16
	movl	_ep_uint+16, %eax
	.loc 2 63 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL4:
	subl	$4, %esp
	.loc 2 64 16
	movl	-12(%ebp), %eax
	jmp	L26
L25:
	.loc 2 66 12
	movl	$0, %eax
L26:
	.loc 2 67 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4235:
	.def	_AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_X_Imp:
LFB4236:
	.loc 2 70 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 73 26
	movl	_ep_uint+80, %eax
	.loc 2 73 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 73 8
	cmpl	$0, -12(%ebp)
	je	L28
	.loc 2 74 16
	movl	-12(%ebp), %eax
	jmp	L31
L28:
	.loc 2 75 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 75 8
	cmpl	$0, -12(%ebp)
	je	L30
	.loc 2 77 16
	movl	_ep_uint+16, %eax
	.loc 2 77 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL6:
	subl	$4, %esp
	.loc 2 78 16
	movl	-12(%ebp), %eax
	jmp	L31
L30:
	.loc 2 80 12
	movl	$0, %eax
L31:
	.loc 2 81 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4236:
	.def	_SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_I_Imp:
LFB4237:
	.loc 2 84 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movb	%al, -44(%ebp)
	.loc 2 87 26
	movl	_ep_uint+220, %eax
	.loc 2 87 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL7:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 87 8
	cmpl	$0, -12(%ebp)
	je	L33
	.loc 2 88 16
	movl	-12(%ebp), %eax
	jmp	L45
L33:
	.loc 2 89 11
	movl	-16(%ebp), %eax
	.loc 2 89 8
	testl	%eax, %eax
	jle	L35
LBB2:
	.loc 2 95 30
	movl	_ep_uint+92, %eax
	.loc 2 95 23
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL8:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 95 12
	cmpl	$0, -12(%ebp)
	je	L36
	.loc 2 96 20
	movl	-12(%ebp), %eax
	jmp	L45
L36:
	.loc 2 97 23
	movl	-20(%ebp), %edx
	movsbl	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 97 12
	cmpl	$0, -12(%ebp)
	je	L39
	.loc 2 99 20
	movl	_ep_uint+16, %eax
	.loc 2 99 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL9:
	subl	$4, %esp
	.loc 2 100 20
	movl	-12(%ebp), %eax
	jmp	L45
L35:
LBE2:
	.loc 2 103 16
	movl	-16(%ebp), %eax
	.loc 2 103 13
	testl	%eax, %eax
	jne	L40
	.loc 2 108 12
	movl	20(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L39
L40:
LBB3:
	.loc 2 116 30
	movl	_ep_uint+84, %eax
	.loc 2 116 23
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL10:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 116 12
	cmpl	$0, -12(%ebp)
	je	L41
	.loc 2 117 20
	movl	-12(%ebp), %eax
	jmp	L45
L41:
	.loc 2 119 30
	movl	_ep_uint+8, %eax
	.loc 2 119 23
	movl	-24(%ebp), %edx
	leal	-28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL11:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 2 119 12
	cmpl	$0, -12(%ebp)
	je	L43
	.loc 2 120 20
	movl	-12(%ebp), %eax
	jmp	L45
L43:
	.loc 2 121 23
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
	.loc 2 121 12
	cmpl	$0, -12(%ebp)
	je	L39
	.loc 2 123 20
	movl	_ep_uint+16, %eax
	.loc 2 123 13
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL12:
	subl	$4, %esp
	.loc 2 124 20
	movl	-12(%ebp), %eax
	jmp	L45
L39:
LBE3:
	.loc 2 127 12
	movl	$0, %eax
L45:
	.loc 2 128 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4237:
	.def	_SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_L_Imp:
LFB4238:
	.loc 2 131 1
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
	.loc 2 134 26
	movl	_ep_uint+224, %ecx
	.loc 2 134 19
	leal	-16(%ebp), %eax
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
	.loc 2 134 8
	cmpl	$0, -12(%ebp)
	je	L47
	.loc 2 135 16
	movl	-12(%ebp), %eax
	jmp	L59
L47:
	.loc 2 136 11
	movl	-16(%ebp), %eax
	.loc 2 136 8
	testl	%eax, %eax
	jle	L49
LBB4:
	.loc 2 142 30
	movl	_ep_uint+96, %ecx
	.loc 2 142 23
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
LVL14:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 142 12
	cmpl	$0, -12(%ebp)
	je	L50
	.loc 2 143 20
	movl	-12(%ebp), %eax
	jmp	L59
L50:
	.loc 2 144 23
	movl	-20(%ebp), %edx
	movsbl	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 144 12
	cmpl	$0, -12(%ebp)
	je	L53
	.loc 2 146 20
	movl	_ep_uint+16, %eax
	.loc 2 146 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL15:
	subl	$4, %esp
	.loc 2 147 20
	movl	-12(%ebp), %eax
	jmp	L59
L49:
LBE4:
	.loc 2 150 16
	movl	-16(%ebp), %eax
	.loc 2 150 13
	testl	%eax, %eax
	jne	L54
	.loc 2 155 12
	movl	24(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L53
L54:
LBB5:
	.loc 2 163 30
	movl	_ep_uint+88, %ecx
	.loc 2 163 23
	leal	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL16:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 163 12
	cmpl	$0, -12(%ebp)
	je	L55
	.loc 2 164 20
	movl	-12(%ebp), %eax
	jmp	L59
L55:
	.loc 2 166 30
	movl	_ep_uint+12, %ecx
	.loc 2 166 23
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	leal	-36(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL17:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 166 12
	cmpl	$0, -12(%ebp)
	je	L57
	.loc 2 167 20
	movl	-12(%ebp), %eax
	jmp	L59
L57:
	.loc 2 168 23
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
	.loc 2 168 12
	cmpl	$0, -12(%ebp)
	je	L53
	.loc 2 170 20
	movl	_ep_uint+16, %eax
	.loc 2 170 13
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL18:
	subl	$4, %esp
	.loc 2 171 20
	movl	-12(%ebp), %eax
	jmp	L59
L53:
LBE5:
	.loc 2 174 12
	movl	$0, %eax
L59:
	.loc 2 175 1 discriminator 2
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4238:
	.def	_SubtructU_X_X_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_X_Imp:
LFB4239:
	.loc 2 178 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 181 26
	movl	_ep_uint+228, %eax
	.loc 2 181 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL19:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 181 8
	cmpl	$0, -12(%ebp)
	je	L61
	.loc 2 182 16
	movl	-12(%ebp), %eax
	jmp	L72
L61:
	.loc 2 183 11
	movl	-16(%ebp), %eax
	.loc 2 183 8
	testl	%eax, %eax
	jle	L63
LBB6:
	.loc 2 189 30
	movl	_ep_uint+100, %eax
	.loc 2 189 23
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL20:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 189 12
	cmpl	$0, -12(%ebp)
	je	L64
	.loc 2 190 20
	movl	-12(%ebp), %eax
	jmp	L72
L64:
	.loc 2 191 23
	movl	-20(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 191 12
	cmpl	$0, -12(%ebp)
	je	L67
	.loc 2 193 20
	movl	_ep_uint+16, %eax
	.loc 2 193 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL21:
	subl	$4, %esp
	.loc 2 194 20
	movl	-12(%ebp), %eax
	jmp	L72
L63:
LBE6:
	.loc 2 197 16
	movl	-16(%ebp), %eax
	.loc 2 197 13
	testl	%eax, %eax
	jne	L68
	.loc 2 202 12
	movl	20(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L67
L68:
LBB7:
	.loc 2 210 30
	movl	_ep_uint+100, %eax
	.loc 2 210 23
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL22:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 210 12
	cmpl	$0, -12(%ebp)
	je	L69
	.loc 2 211 20
	movl	-12(%ebp), %eax
	jmp	L72
L69:
	.loc 2 212 23
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
	.loc 2 212 12
	cmpl	$0, -12(%ebp)
	je	L67
	.loc 2 214 20
	movl	_ep_uint+16, %eax
	.loc 2 214 13
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL23:
	subl	$4, %esp
	.loc 2 215 20
	movl	-12(%ebp), %eax
	jmp	L72
L67:
LBE7:
	.loc 2 218 12
	movl	$0, %eax
L72:
	.loc 2 219 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4239:
	.globl	_PMC_Add_I_X@12
	.def	_PMC_Add_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_I_X@12:
LFB4240:
	.loc 2 222 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 223 8
	cmpl	$0, 12(%ebp)
	jne	L74
	.loc 2 224 16
	movl	$-1, %eax
	jmp	L86
L74:
	.loc 2 225 8
	cmpl	$0, 16(%ebp)
	jne	L76
	.loc 2 226 16
	movl	$-1, %eax
	jmp	L86
L76:
	.loc 2 228 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 230 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 230 8
	cmpl	$0, -16(%ebp)
	je	L77
	.loc 2 231 16
	movl	-16(%ebp), %eax
	jmp	L86
L77:
	.loc 2 233 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 234 16
	movzbl	-25(%ebp), %eax
	.loc 2 234 8
	testb	%al, %al
	jne	L78
	.loc 2 238 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 238 12
	testb	%al, %al
	jne	L79
	.loc 2 242 16
	movl	$_number_zero, -24(%ebp)
	jmp	L80
L79:
	.loc 2 249 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 249 16
	cmpl	$0, -16(%ebp)
	je	L80
	.loc 2 250 24
	movl	-16(%ebp), %eax
	jmp	L86
L78:
	.loc 2 253 21
	movzbl	-25(%ebp), %eax
	.loc 2 253 13
	testb	%al, %al
	jle	L81
	.loc 2 257 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 257 12
	testb	%al, %al
	jne	L82
	.loc 2 262 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 262 16
	cmpl	$0, -16(%ebp)
	je	L80
	.loc 2 263 24
	movl	-16(%ebp), %eax
	jmp	L86
L82:
	.loc 2 265 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 265 17
	testb	%al, %al
	jle	L83
	.loc 2 270 27
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
	.loc 2 270 16
	cmpl	$0, -16(%ebp)
	je	L80
	.loc 2 271 24
	movl	-16(%ebp), %eax
	jmp	L86
L83:
	.loc 2 278 27
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
	.loc 2 278 16
	cmpl	$0, -16(%ebp)
	je	L80
	.loc 2 279 24
	movl	-16(%ebp), %eax
	jmp	L86
L81:
	.loc 2 286 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 286 12
	testb	%al, %al
	jne	L84
	.loc 2 291 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 291 16
	cmpl	$0, -16(%ebp)
	je	L80
	.loc 2 292 24
	movl	-16(%ebp), %eax
	jmp	L86
L84:
	.loc 2 294 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 294 17
	testb	%al, %al
	jle	L85
	.loc 2 299 27
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
	.loc 2 299 16
	cmpl	$0, -16(%ebp)
	je	L80
	.loc 2 300 24
	movl	-16(%ebp), %eax
	jmp	L86
L85:
	.loc 2 307 27
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
	.loc 2 307 16
	cmpl	$0, -16(%ebp)
	je	L80
	.loc 2 308 24
	movl	-16(%ebp), %eax
	jmp	L86
L80:
	.loc 2 311 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 312 12
	movl	$0, %eax
L86:
	.loc 2 313 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4240:
	.globl	_PMC_Add_L_X@16
	.def	_PMC_Add_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Add_L_X@16:
LFB4241:
	.loc 2 316 1
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
	.loc 2 317 8
	cmpl	$0, 16(%ebp)
	jne	L88
	.loc 2 318 16
	movl	$-1, %eax
	jmp	L100
L88:
	.loc 2 319 8
	cmpl	$0, 20(%ebp)
	jne	L90
	.loc 2 320 16
	movl	$-1, %eax
	jmp	L100
L90:
	.loc 2 322 20
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 324 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 324 8
	cmpl	$0, -16(%ebp)
	je	L91
	.loc 2 325 16
	movl	-16(%ebp), %eax
	jmp	L100
L91:
	.loc 2 327 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 328 16
	movzbl	-29(%ebp), %eax
	.loc 2 328 8
	testb	%al, %al
	jne	L92
	.loc 2 332 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 332 12
	testb	%al, %al
	jne	L93
	.loc 2 336 16
	movl	$_number_zero, -28(%ebp)
	jmp	L94
L93:
	.loc 2 343 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 343 16
	cmpl	$0, -16(%ebp)
	je	L94
	.loc 2 344 24
	movl	-16(%ebp), %eax
	jmp	L100
L92:
	.loc 2 347 21
	movzbl	-29(%ebp), %eax
	.loc 2 347 13
	testb	%al, %al
	jle	L95
	.loc 2 351 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 351 12
	testb	%al, %al
	jne	L96
	.loc 2 356 27
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
	.loc 2 356 16
	cmpl	$0, -16(%ebp)
	je	L94
	.loc 2 357 24
	movl	-16(%ebp), %eax
	jmp	L100
L96:
	.loc 2 359 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 359 17
	testb	%al, %al
	jle	L97
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
	movl	$1, (%esp)
	call	_AddU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 364 16
	cmpl	$0, -16(%ebp)
	je	L94
	.loc 2 365 24
	movl	-16(%ebp), %eax
	jmp	L100
L97:
	.loc 2 372 27
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
	.loc 2 372 16
	cmpl	$0, -16(%ebp)
	je	L94
	.loc 2 373 24
	movl	-16(%ebp), %eax
	jmp	L100
L95:
	.loc 2 380 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 380 12
	testb	%al, %al
	jne	L98
	.loc 2 385 27
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
	.loc 2 385 16
	cmpl	$0, -16(%ebp)
	je	L94
	.loc 2 386 24
	movl	-16(%ebp), %eax
	jmp	L100
L98:
	.loc 2 388 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 388 17
	testb	%al, %al
	jle	L99
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
	movl	$1, (%esp)
	call	_SubtructU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 393 16
	cmpl	$0, -16(%ebp)
	je	L94
	.loc 2 394 24
	movl	-16(%ebp), %eax
	jmp	L100
L99:
	.loc 2 401 27
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
	.loc 2 401 16
	cmpl	$0, -16(%ebp)
	je	L94
	.loc 2 402 24
	movl	-16(%ebp), %eax
	jmp	L100
L94:
	.loc 2 405 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 406 12
	movl	$0, %eax
L100:
	.loc 2 407 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4241:
	.globl	_PMC_Add_UX_X@12
	.def	_PMC_Add_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_UX_X@12:
LFB4242:
	.loc 2 410 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 411 8
	cmpl	$0, 12(%ebp)
	jne	L102
	.loc 2 412 16
	movl	$-1, %eax
	jmp	L115
L102:
	.loc 2 413 8
	cmpl	$0, 16(%ebp)
	jne	L104
	.loc 2 414 16
	movl	$-1, %eax
	jmp	L115
L104:
	.loc 2 416 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 418 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 418 8
	cmpl	$0, -16(%ebp)
	je	L105
	.loc 2 419 16
	movl	-16(%ebp), %eax
	jmp	L115
L105:
	.loc 2 421 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_ZERO_UINT
	movl	%eax, -16(%ebp)
	.loc 2 421 8
	cmpl	$0, -16(%ebp)
	je	L106
	.loc 2 422 16
	movl	-16(%ebp), %eax
	jmp	L115
L106:
	.loc 2 423 9
	movzbl	-21(%ebp), %eax
	.loc 2 423 8
	testb	%al, %al
	je	L107
	.loc 2 427 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 427 12
	testb	%al, %al
	jne	L108
	.loc 2 432 16
	movl	$_number_zero, -20(%ebp)
	jmp	L109
L108:
	.loc 2 439 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 439 16
	cmpl	$0, -16(%ebp)
	je	L109
	.loc 2 440 24
	movl	-16(%ebp), %eax
	jmp	L115
L107:
	.loc 2 447 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 447 12
	testb	%al, %al
	jne	L110
LBB8:
	.loc 2 453 34
	movl	_ep_uint+44, %eax
	.loc 2 453 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL24:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 453 16
	cmpl	$0, -16(%ebp)
	je	L111
	.loc 2 454 24
	movl	-16(%ebp), %eax
	jmp	L115
L111:
	.loc 2 455 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 455 16
	cmpl	$0, -16(%ebp)
	je	L109
	.loc 2 457 24
	movl	_ep_uint+16, %eax
	.loc 2 457 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL25:
	subl	$4, %esp
	.loc 2 458 24
	movl	-16(%ebp), %eax
	jmp	L115
L110:
LBE8:
	.loc 2 461 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 461 17
	testb	%al, %al
	jle	L114
	.loc 2 466 27
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
	.loc 2 466 16
	cmpl	$0, -16(%ebp)
	je	L109
	.loc 2 467 24
	movl	-16(%ebp), %eax
	jmp	L115
L114:
	.loc 2 474 27
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
	.loc 2 474 16
	cmpl	$0, -16(%ebp)
	je	L109
	.loc 2 475 24
	movl	-16(%ebp), %eax
	jmp	L115
L109:
	.loc 2 478 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 479 12
	movl	$0, %eax
L115:
	.loc 2 480 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4242:
	.globl	_PMC_Add_X_I@12
	.def	_PMC_Add_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_I@12:
LFB4243:
	.loc 2 483 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 484 8
	cmpl	$0, 8(%ebp)
	jne	L117
	.loc 2 485 16
	movl	$-1, %eax
	jmp	L130
L117:
	.loc 2 486 8
	cmpl	$0, 16(%ebp)
	jne	L119
	.loc 2 487 16
	movl	$-1, %eax
	jmp	L130
L119:
	.loc 2 489 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 491 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 491 8
	cmpl	$0, -16(%ebp)
	je	L120
	.loc 2 492 16
	movl	-16(%ebp), %eax
	jmp	L130
L120:
	.loc 2 494 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 495 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 495 8
	testb	%al, %al
	jne	L121
	.loc 2 499 20
	movzbl	-25(%ebp), %eax
	.loc 2 499 12
	testb	%al, %al
	jne	L122
	.loc 2 503 16
	movl	$_number_zero, -24(%ebp)
	jmp	L123
L122:
	.loc 2 505 25
	movzbl	-25(%ebp), %eax
	.loc 2 505 17
	testb	%al, %al
	jle	L124
	.loc 2 510 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 510 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 511 24
	movl	-16(%ebp), %eax
	jmp	L130
L124:
	.loc 2 518 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 518 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 519 24
	movl	-16(%ebp), %eax
	jmp	L130
L121:
	.loc 2 522 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 522 13
	testb	%al, %al
	jle	L125
	.loc 2 526 20
	movzbl	-25(%ebp), %eax
	.loc 2 526 12
	testb	%al, %al
	jne	L126
	.loc 2 531 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 531 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 532 24
	movl	-16(%ebp), %eax
	jmp	L130
L126:
	.loc 2 534 25
	movzbl	-25(%ebp), %eax
	.loc 2 534 17
	testb	%al, %al
	jle	L127
	.loc 2 539 27
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
	.loc 2 539 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 540 24
	movl	-16(%ebp), %eax
	jmp	L130
L127:
	.loc 2 547 27
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
	.loc 2 547 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 548 24
	movl	-16(%ebp), %eax
	jmp	L130
L125:
	.loc 2 555 20
	movzbl	-25(%ebp), %eax
	.loc 2 555 12
	testb	%al, %al
	jne	L128
	.loc 2 560 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 560 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 561 24
	movl	-16(%ebp), %eax
	jmp	L130
L128:
	.loc 2 563 25
	movzbl	-25(%ebp), %eax
	.loc 2 563 17
	testb	%al, %al
	jle	L129
	.loc 2 568 27
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
	.loc 2 568 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 569 24
	movl	-16(%ebp), %eax
	jmp	L130
L129:
	.loc 2 576 27
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
	.loc 2 576 16
	cmpl	$0, -16(%ebp)
	je	L123
	.loc 2 577 24
	movl	-16(%ebp), %eax
	jmp	L130
L123:
	.loc 2 580 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 581 12
	movl	$0, %eax
L130:
	.loc 2 582 1 discriminator 4
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4243:
	.globl	_PMC_Add_X_L@16
	.def	_PMC_Add_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Add_X_L@16:
LFB4244:
	.loc 2 585 1
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
	.loc 2 586 8
	cmpl	$0, 8(%ebp)
	jne	L132
	.loc 2 587 16
	movl	$-1, %eax
	jmp	L145
L132:
	.loc 2 588 8
	cmpl	$0, 20(%ebp)
	jne	L134
	.loc 2 589 16
	movl	$-1, %eax
	jmp	L145
L134:
	.loc 2 591 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 593 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 593 8
	cmpl	$0, -16(%ebp)
	je	L135
	.loc 2 594 16
	movl	-16(%ebp), %eax
	jmp	L145
L135:
	.loc 2 596 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 597 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 597 8
	testb	%al, %al
	jne	L136
	.loc 2 601 20
	movzbl	-29(%ebp), %eax
	.loc 2 601 12
	testb	%al, %al
	jne	L137
	.loc 2 605 16
	movl	$_number_zero, -28(%ebp)
	jmp	L138
L137:
	.loc 2 607 25
	movzbl	-29(%ebp), %eax
	.loc 2 607 17
	testb	%al, %al
	jle	L139
	.loc 2 612 27
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
	.loc 2 612 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 613 24
	movl	-16(%ebp), %eax
	jmp	L145
L139:
	.loc 2 620 27
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
	.loc 2 620 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 621 24
	movl	-16(%ebp), %eax
	jmp	L145
L136:
	.loc 2 624 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 624 13
	testb	%al, %al
	jle	L140
	.loc 2 628 20
	movzbl	-29(%ebp), %eax
	.loc 2 628 12
	testb	%al, %al
	jne	L141
	.loc 2 633 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 633 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 634 24
	movl	-16(%ebp), %eax
	jmp	L145
L141:
	.loc 2 636 25
	movzbl	-29(%ebp), %eax
	.loc 2 636 17
	testb	%al, %al
	jle	L142
	.loc 2 641 27
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
	.loc 2 641 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 642 24
	movl	-16(%ebp), %eax
	jmp	L145
L142:
	.loc 2 649 27
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
	.loc 2 649 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 650 24
	movl	-16(%ebp), %eax
	jmp	L145
L140:
	.loc 2 657 20
	movzbl	-29(%ebp), %eax
	.loc 2 657 12
	testb	%al, %al
	jne	L143
	.loc 2 662 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 662 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 663 24
	movl	-16(%ebp), %eax
	jmp	L145
L143:
	.loc 2 665 25
	movzbl	-29(%ebp), %eax
	.loc 2 665 17
	testb	%al, %al
	jle	L144
	.loc 2 670 27
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
	.loc 2 670 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 671 24
	movl	-16(%ebp), %eax
	jmp	L145
L144:
	.loc 2 678 27
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
	.loc 2 678 16
	cmpl	$0, -16(%ebp)
	je	L138
	.loc 2 679 24
	movl	-16(%ebp), %eax
	jmp	L145
L138:
	.loc 2 682 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 683 12
	movl	$0, %eax
L145:
	.loc 2 684 1 discriminator 4
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4244:
	.globl	_PMC_Add_X_UX@12
	.def	_PMC_Add_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_UX@12:
LFB4245:
	.loc 2 687 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 688 8
	cmpl	$0, 8(%ebp)
	jne	L147
	.loc 2 689 16
	movl	$-1, %eax
	jmp	L164
L147:
	.loc 2 690 8
	cmpl	$0, 12(%ebp)
	jne	L149
	.loc 2 691 16
	movl	$-1, %eax
	jmp	L164
L149:
	.loc 2 692 8
	cmpl	$0, 16(%ebp)
	jne	L150
	.loc 2 693 16
	movl	$-1, %eax
	jmp	L164
L150:
	.loc 2 695 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 697 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 697 8
	cmpl	$0, -16(%ebp)
	je	L151
	.loc 2 698 16
	movl	-16(%ebp), %eax
	jmp	L164
L151:
	.loc 2 700 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_ZERO_UINT
	movl	%eax, -16(%ebp)
	.loc 2 700 8
	cmpl	$0, -16(%ebp)
	je	L152
	.loc 2 701 16
	movl	-16(%ebp), %eax
	jmp	L164
L152:
	.loc 2 702 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 702 8
	testb	%al, %al
	jne	L153
	.loc 2 706 13
	movzbl	-21(%ebp), %eax
	.loc 2 706 12
	testb	%al, %al
	je	L154
	.loc 2 711 16
	movl	$_number_zero, -20(%ebp)
	jmp	L160
L154:
LBB9:
	.loc 2 719 34
	movl	_ep_uint+44, %eax
	.loc 2 719 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL26:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 719 16
	cmpl	$0, -16(%ebp)
	je	L156
	.loc 2 720 24
	movl	-16(%ebp), %eax
	jmp	L164
L156:
	.loc 2 722 34
	movl	_ep_uint+20, %eax
	.loc 2 722 27
	movl	-28(%ebp), %edx
	leal	-32(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL27:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 722 16
	cmpl	$0, -16(%ebp)
	je	L158
	.loc 2 723 24
	movl	-16(%ebp), %eax
	jmp	L164
L158:
	.loc 2 724 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 724 16
	cmpl	$0, -16(%ebp)
	je	L160
	.loc 2 726 24
	movl	_ep_uint+16, %eax
	.loc 2 726 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL28:
	subl	$4, %esp
	.loc 2 727 24
	movl	-16(%ebp), %eax
	jmp	L164
L153:
LBE9:
	.loc 2 731 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 731 13
	testb	%al, %al
	jle	L161
	.loc 2 735 13
	movzbl	-21(%ebp), %eax
	.loc 2 735 12
	testb	%al, %al
	je	L162
	.loc 2 740 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 740 16
	cmpl	$0, -16(%ebp)
	je	L160
	.loc 2 741 24
	movl	-16(%ebp), %eax
	jmp	L164
L162:
	.loc 2 748 27
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
	.loc 2 748 16
	cmpl	$0, -16(%ebp)
	je	L160
	.loc 2 749 24
	movl	-16(%ebp), %eax
	jmp	L164
L161:
	.loc 2 756 13
	movzbl	-21(%ebp), %eax
	.loc 2 756 12
	testb	%al, %al
	je	L163
	.loc 2 761 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 761 16
	cmpl	$0, -16(%ebp)
	je	L160
	.loc 2 762 24
	movl	-16(%ebp), %eax
	jmp	L164
L163:
	.loc 2 769 27
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
	.loc 2 769 16
	cmpl	$0, -16(%ebp)
	je	L160
	.loc 2 770 24
	movl	-16(%ebp), %eax
	jmp	L164
L160:
	.loc 2 774 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 775 12
	movl	$0, %eax
L164:
	.loc 2 776 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4245:
	.globl	_PMC_Add_X_X@12
	.def	_PMC_Add_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_X@12:
LFB4246:
	.loc 2 779 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 780 8
	cmpl	$0, 8(%ebp)
	jne	L166
	.loc 2 781 16
	movl	$-1, %eax
	jmp	L180
L166:
	.loc 2 782 8
	cmpl	$0, 12(%ebp)
	jne	L168
	.loc 2 783 16
	movl	$-1, %eax
	jmp	L180
L168:
	.loc 2 784 8
	cmpl	$0, 16(%ebp)
	jne	L169
	.loc 2 785 16
	movl	$-1, %eax
	jmp	L180
L169:
	.loc 2 787 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 788 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 790 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 790 8
	cmpl	$0, -20(%ebp)
	je	L170
	.loc 2 791 16
	movl	-20(%ebp), %eax
	jmp	L180
L170:
	.loc 2 792 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 792 8
	cmpl	$0, -20(%ebp)
	je	L171
	.loc 2 793 16
	movl	-20(%ebp), %eax
	jmp	L180
L171:
	.loc 2 794 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 794 8
	testb	%al, %al
	jne	L172
	.loc 2 798 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 798 12
	testb	%al, %al
	jne	L173
	.loc 2 802 16
	movl	$_number_zero, -24(%ebp)
	jmp	L174
L173:
	.loc 2 809 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 809 16
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 810 24
	movl	-20(%ebp), %eax
	jmp	L180
L172:
	.loc 2 813 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 813 13
	testb	%al, %al
	jle	L175
	.loc 2 817 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 817 12
	testb	%al, %al
	jne	L176
	.loc 2 822 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 822 16
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 823 24
	movl	-20(%ebp), %eax
	jmp	L180
L176:
	.loc 2 825 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 825 17
	testb	%al, %al
	jle	L177
	.loc 2 830 27
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
	.loc 2 830 16
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 831 24
	movl	-20(%ebp), %eax
	jmp	L180
L177:
	.loc 2 838 27
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
	.loc 2 838 16
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 839 24
	movl	-20(%ebp), %eax
	jmp	L180
L175:
	.loc 2 846 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 846 12
	testb	%al, %al
	jne	L178
	.loc 2 851 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 851 16
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 852 24
	movl	-20(%ebp), %eax
	jmp	L180
L178:
	.loc 2 854 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 854 17
	testb	%al, %al
	jle	L179
	.loc 2 859 27
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
	.loc 2 859 16
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 860 24
	movl	-20(%ebp), %eax
	jmp	L180
L179:
	.loc 2 867 27
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
	.loc 2 867 16
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 868 24
	movl	-20(%ebp), %eax
	jmp	L180
L174:
	.loc 2 871 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 872 12
	movl	$0, %eax
L180:
	.loc 2 873 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4246:
	.globl	_PMC_Subtruct_I_X@12
	.def	_PMC_Subtruct_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_I_X@12:
LFB4247:
	.loc 2 876 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 877 8
	cmpl	$0, 12(%ebp)
	jne	L182
	.loc 2 878 16
	movl	$-1, %eax
	jmp	L194
L182:
	.loc 2 879 8
	cmpl	$0, 16(%ebp)
	jne	L184
	.loc 2 880 16
	movl	$-1, %eax
	jmp	L194
L184:
	.loc 2 882 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 884 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 884 8
	cmpl	$0, -16(%ebp)
	je	L185
	.loc 2 885 16
	movl	-16(%ebp), %eax
	jmp	L194
L185:
	.loc 2 887 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 888 16
	movzbl	-25(%ebp), %eax
	.loc 2 888 8
	testb	%al, %al
	jne	L186
	.loc 2 892 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 892 12
	testb	%al, %al
	jne	L187
	.loc 2 896 16
	movl	$_number_zero, -24(%ebp)
	jmp	L188
L187:
	.loc 2 903 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 903 16
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 904 24
	movl	-16(%ebp), %eax
	jmp	L194
L186:
	.loc 2 907 21
	movzbl	-25(%ebp), %eax
	.loc 2 907 13
	testb	%al, %al
	jle	L189
	.loc 2 911 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 911 12
	testb	%al, %al
	jne	L190
	.loc 2 916 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 916 16
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 917 24
	movl	-16(%ebp), %eax
	jmp	L194
L190:
	.loc 2 919 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 919 17
	testb	%al, %al
	jle	L191
	.loc 2 924 27
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
	.loc 2 924 16
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 925 24
	movl	-16(%ebp), %eax
	jmp	L194
L191:
	.loc 2 932 27
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
	.loc 2 932 16
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 933 24
	movl	-16(%ebp), %eax
	jmp	L194
L189:
	.loc 2 940 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 940 12
	testb	%al, %al
	jne	L192
	.loc 2 945 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 945 16
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 946 24
	movl	-16(%ebp), %eax
	jmp	L194
L192:
	.loc 2 948 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 948 17
	testb	%al, %al
	jle	L193
	.loc 2 953 27
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
	.loc 2 953 16
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 954 24
	movl	-16(%ebp), %eax
	jmp	L194
L193:
	.loc 2 961 27
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
	.loc 2 961 16
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 962 24
	movl	-16(%ebp), %eax
	jmp	L194
L188:
	.loc 2 965 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 966 12
	movl	$0, %eax
L194:
	.loc 2 967 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4247:
	.globl	_PMC_Subtruct_L_X@16
	.def	_PMC_Subtruct_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_L_X@16:
LFB4248:
	.loc 2 970 1
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
	.loc 2 971 8
	cmpl	$0, 16(%ebp)
	jne	L196
	.loc 2 972 16
	movl	$-1, %eax
	jmp	L208
L196:
	.loc 2 973 8
	cmpl	$0, 20(%ebp)
	jne	L198
	.loc 2 974 16
	movl	$-1, %eax
	jmp	L208
L198:
	.loc 2 976 20
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 978 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 978 8
	cmpl	$0, -16(%ebp)
	je	L199
	.loc 2 979 16
	movl	-16(%ebp), %eax
	jmp	L208
L199:
	.loc 2 981 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 982 16
	movzbl	-29(%ebp), %eax
	.loc 2 982 8
	testb	%al, %al
	jne	L200
	.loc 2 986 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 986 12
	testb	%al, %al
	jne	L201
	.loc 2 990 16
	movl	$_number_zero, -28(%ebp)
	jmp	L202
L201:
	.loc 2 997 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 997 16
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 998 24
	movl	-16(%ebp), %eax
	jmp	L208
L200:
	.loc 2 1001 21
	movzbl	-29(%ebp), %eax
	.loc 2 1001 13
	testb	%al, %al
	jle	L203
	.loc 2 1005 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1005 12
	testb	%al, %al
	jne	L204
	.loc 2 1010 27
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
	.loc 2 1010 16
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 1011 24
	movl	-16(%ebp), %eax
	jmp	L208
L204:
	.loc 2 1013 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1013 17
	testb	%al, %al
	jle	L205
	.loc 2 1018 27
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
	.loc 2 1018 16
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 1019 24
	movl	-16(%ebp), %eax
	jmp	L208
L205:
	.loc 2 1026 27
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
	.loc 2 1026 16
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 1027 24
	movl	-16(%ebp), %eax
	jmp	L208
L203:
	.loc 2 1034 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1034 12
	testb	%al, %al
	jne	L206
	.loc 2 1039 27
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
	.loc 2 1039 16
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 1040 24
	movl	-16(%ebp), %eax
	jmp	L208
L206:
	.loc 2 1042 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1042 17
	testb	%al, %al
	jle	L207
	.loc 2 1047 27
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
	.loc 2 1047 16
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 1048 24
	movl	-16(%ebp), %eax
	jmp	L208
L207:
	.loc 2 1055 27
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
	.loc 2 1055 16
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 1056 24
	movl	-16(%ebp), %eax
	jmp	L208
L202:
	.loc 2 1059 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1060 12
	movl	$0, %eax
L208:
	.loc 2 1061 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4248:
	.globl	_PMC_Subtruct_UX_X@12
	.def	_PMC_Subtruct_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_UX_X@12:
LFB4249:
	.loc 2 1064 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 1065 8
	cmpl	$0, 8(%ebp)
	jne	L210
	.loc 2 1066 16
	movl	$-1, %eax
	jmp	L225
L210:
	.loc 2 1067 8
	cmpl	$0, 12(%ebp)
	jne	L212
	.loc 2 1068 16
	movl	$-1, %eax
	jmp	L225
L212:
	.loc 2 1069 8
	cmpl	$0, 16(%ebp)
	jne	L213
	.loc 2 1070 16
	movl	$-1, %eax
	jmp	L225
L213:
	.loc 2 1072 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1074 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1074 8
	cmpl	$0, -16(%ebp)
	je	L214
	.loc 2 1075 16
	movl	-16(%ebp), %eax
	jmp	L225
L214:
	.loc 2 1077 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_ZERO_UINT
	movl	%eax, -16(%ebp)
	.loc 2 1077 8
	cmpl	$0, -16(%ebp)
	je	L215
	.loc 2 1078 16
	movl	-16(%ebp), %eax
	jmp	L225
L215:
	.loc 2 1079 9
	movzbl	-21(%ebp), %eax
	.loc 2 1079 8
	testb	%al, %al
	je	L216
	.loc 2 1083 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1083 12
	testb	%al, %al
	jne	L217
	.loc 2 1088 16
	movl	$_number_zero, -20(%ebp)
	jmp	L218
L217:
	.loc 2 1090 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1090 17
	testb	%al, %al
	jle	L219
	.loc 2 1095 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1095 16
	cmpl	$0, -16(%ebp)
	je	L218
	.loc 2 1096 24
	movl	-16(%ebp), %eax
	jmp	L225
L219:
	.loc 2 1103 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1103 16
	cmpl	$0, -16(%ebp)
	je	L218
	.loc 2 1104 24
	movl	-16(%ebp), %eax
	jmp	L225
L216:
	.loc 2 1111 15
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1111 12
	testb	%al, %al
	jne	L220
LBB10:
	.loc 2 1117 34
	movl	_ep_uint+44, %eax
	.loc 2 1117 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL29:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 1117 16
	cmpl	$0, -16(%ebp)
	je	L221
	.loc 2 1118 24
	movl	-16(%ebp), %eax
	jmp	L225
L221:
	.loc 2 1119 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1119 16
	cmpl	$0, -16(%ebp)
	je	L218
	.loc 2 1121 24
	movl	_ep_uint+16, %eax
	.loc 2 1121 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL30:
	subl	$4, %esp
	.loc 2 1122 24
	movl	-16(%ebp), %eax
	jmp	L225
L220:
LBE10:
	.loc 2 1125 20
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1125 17
	testb	%al, %al
	jle	L224
	.loc 2 1130 27
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
	.loc 2 1130 16
	cmpl	$0, -16(%ebp)
	je	L218
	.loc 2 1131 24
	movl	-16(%ebp), %eax
	jmp	L225
L224:
	.loc 2 1138 27
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
	.loc 2 1138 16
	cmpl	$0, -16(%ebp)
	je	L218
	.loc 2 1139 24
	movl	-16(%ebp), %eax
	jmp	L225
L218:
	.loc 2 1142 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1143 12
	movl	$0, %eax
L225:
	.loc 2 1144 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4249:
	.globl	_PMC_Subtruct_X_I@12
	.def	_PMC_Subtruct_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_I@12:
LFB4250:
	.loc 2 1147 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 1148 8
	cmpl	$0, 8(%ebp)
	jne	L227
	.loc 2 1149 16
	movl	$-1, %eax
	jmp	L240
L227:
	.loc 2 1150 8
	cmpl	$0, 16(%ebp)
	jne	L229
	.loc 2 1151 16
	movl	$-1, %eax
	jmp	L240
L229:
	.loc 2 1153 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1155 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1155 8
	cmpl	$0, -16(%ebp)
	je	L230
	.loc 2 1156 16
	movl	-16(%ebp), %eax
	jmp	L240
L230:
	.loc 2 1158 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 1159 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1159 8
	testb	%al, %al
	jne	L231
	.loc 2 1163 20
	movzbl	-25(%ebp), %eax
	.loc 2 1163 12
	testb	%al, %al
	jne	L232
	.loc 2 1167 16
	movl	$_number_zero, -24(%ebp)
	jmp	L233
L232:
	.loc 2 1169 25
	movzbl	-25(%ebp), %eax
	.loc 2 1169 17
	testb	%al, %al
	jle	L234
	.loc 2 1174 27
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
	.loc 2 1174 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1175 24
	movl	-16(%ebp), %eax
	jmp	L240
L234:
	.loc 2 1182 27
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
	.loc 2 1182 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1183 24
	movl	-16(%ebp), %eax
	jmp	L240
L231:
	.loc 2 1186 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1186 13
	testb	%al, %al
	jle	L235
	.loc 2 1190 20
	movzbl	-25(%ebp), %eax
	.loc 2 1190 12
	testb	%al, %al
	jne	L236
	.loc 2 1195 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1195 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1196 24
	movl	-16(%ebp), %eax
	jmp	L240
L236:
	.loc 2 1198 25
	movzbl	-25(%ebp), %eax
	.loc 2 1198 17
	testb	%al, %al
	jle	L237
	.loc 2 1203 27
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
	.loc 2 1203 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1204 24
	movl	-16(%ebp), %eax
	jmp	L240
L237:
	.loc 2 1211 27
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
	.loc 2 1211 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1212 24
	movl	-16(%ebp), %eax
	jmp	L240
L235:
	.loc 2 1219 20
	movzbl	-25(%ebp), %eax
	.loc 2 1219 12
	testb	%al, %al
	jne	L238
	.loc 2 1224 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1224 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1225 24
	movl	-16(%ebp), %eax
	jmp	L240
L238:
	.loc 2 1227 25
	movzbl	-25(%ebp), %eax
	.loc 2 1227 17
	testb	%al, %al
	jle	L239
	.loc 2 1232 27
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
	.loc 2 1232 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1233 24
	movl	-16(%ebp), %eax
	jmp	L240
L239:
	.loc 2 1240 27
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
	.loc 2 1240 16
	cmpl	$0, -16(%ebp)
	je	L233
	.loc 2 1241 24
	movl	-16(%ebp), %eax
	jmp	L240
L233:
	.loc 2 1244 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1245 12
	movl	$0, %eax
L240:
	.loc 2 1246 1 discriminator 4
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4250:
	.globl	_PMC_Subtruct_X_L@16
	.def	_PMC_Subtruct_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_L@16:
LFB4251:
	.loc 2 1249 1
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
	.loc 2 1250 8
	cmpl	$0, 8(%ebp)
	jne	L242
	.loc 2 1251 16
	movl	$-1, %eax
	jmp	L255
L242:
	.loc 2 1252 8
	cmpl	$0, 20(%ebp)
	jne	L244
	.loc 2 1253 16
	movl	$-1, %eax
	jmp	L255
L244:
	.loc 2 1255 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1257 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1257 8
	cmpl	$0, -16(%ebp)
	je	L245
	.loc 2 1258 16
	movl	-16(%ebp), %eax
	jmp	L255
L245:
	.loc 2 1260 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 1261 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1261 8
	testb	%al, %al
	jne	L246
	.loc 2 1265 20
	movzbl	-29(%ebp), %eax
	.loc 2 1265 12
	testb	%al, %al
	jne	L247
	.loc 2 1269 16
	movl	$_number_zero, -28(%ebp)
	jmp	L248
L247:
	.loc 2 1271 25
	movzbl	-29(%ebp), %eax
	.loc 2 1271 17
	testb	%al, %al
	jle	L249
	.loc 2 1276 27
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
	.loc 2 1276 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1277 24
	movl	-16(%ebp), %eax
	jmp	L255
L249:
	.loc 2 1284 27
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
	.loc 2 1284 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1285 24
	movl	-16(%ebp), %eax
	jmp	L255
L246:
	.loc 2 1288 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1288 13
	testb	%al, %al
	jle	L250
	.loc 2 1292 20
	movzbl	-29(%ebp), %eax
	.loc 2 1292 12
	testb	%al, %al
	jne	L251
	.loc 2 1297 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1297 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1298 24
	movl	-16(%ebp), %eax
	jmp	L255
L251:
	.loc 2 1300 25
	movzbl	-29(%ebp), %eax
	.loc 2 1300 17
	testb	%al, %al
	jle	L252
	.loc 2 1305 27
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
	.loc 2 1305 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1306 24
	movl	-16(%ebp), %eax
	jmp	L255
L252:
	.loc 2 1313 27
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
	.loc 2 1313 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1314 24
	movl	-16(%ebp), %eax
	jmp	L255
L250:
	.loc 2 1321 20
	movzbl	-29(%ebp), %eax
	.loc 2 1321 12
	testb	%al, %al
	jne	L253
	.loc 2 1326 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1326 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1327 24
	movl	-16(%ebp), %eax
	jmp	L255
L253:
	.loc 2 1329 25
	movzbl	-29(%ebp), %eax
	.loc 2 1329 17
	testb	%al, %al
	jle	L254
	.loc 2 1334 27
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
	.loc 2 1334 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1335 24
	movl	-16(%ebp), %eax
	jmp	L255
L254:
	.loc 2 1342 27
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
	.loc 2 1342 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1343 24
	movl	-16(%ebp), %eax
	jmp	L255
L248:
	.loc 2 1346 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1347 12
	movl	$0, %eax
L255:
	.loc 2 1348 1 discriminator 4
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4251:
	.globl	_PMC_Subtruct_X_UX@12
	.def	_PMC_Subtruct_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_UX@12:
LFB4252:
	.loc 2 1351 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 1352 8
	cmpl	$0, 8(%ebp)
	jne	L257
	.loc 2 1353 16
	movl	$-1, %eax
	jmp	L273
L257:
	.loc 2 1354 8
	cmpl	$0, 12(%ebp)
	jne	L259
	.loc 2 1355 16
	movl	$-1, %eax
	jmp	L273
L259:
	.loc 2 1356 8
	cmpl	$0, 16(%ebp)
	jne	L260
	.loc 2 1357 16
	movl	$-1, %eax
	jmp	L273
L260:
	.loc 2 1359 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1361 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1361 8
	cmpl	$0, -16(%ebp)
	je	L261
	.loc 2 1362 16
	movl	-16(%ebp), %eax
	jmp	L273
L261:
	.loc 2 1364 19
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_ZERO_UINT
	movl	%eax, -16(%ebp)
	.loc 2 1364 8
	cmpl	$0, -16(%ebp)
	je	L262
	.loc 2 1365 16
	movl	-16(%ebp), %eax
	jmp	L273
L262:
	.loc 2 1366 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1366 8
	testb	%al, %al
	jne	L263
	.loc 2 1370 13
	movzbl	-21(%ebp), %eax
	.loc 2 1370 12
	testb	%al, %al
	je	L264
	.loc 2 1375 16
	movl	$_number_zero, -20(%ebp)
	jmp	L269
L264:
LBB11:
	.loc 2 1383 34
	movl	_ep_uint+44, %eax
	.loc 2 1383 27
	leal	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL31:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 1383 16
	cmpl	$0, -16(%ebp)
	je	L266
	.loc 2 1384 24
	movl	-16(%ebp), %eax
	jmp	L273
L266:
	.loc 2 1385 27
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$-1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1385 16
	cmpl	$0, -16(%ebp)
	je	L269
	.loc 2 1387 24
	movl	_ep_uint+16, %eax
	.loc 2 1387 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL32:
	subl	$4, %esp
	.loc 2 1388 24
	movl	-16(%ebp), %eax
	jmp	L273
L263:
LBE11:
	.loc 2 1393 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1393 13
	testb	%al, %al
	jle	L270
	.loc 2 1397 13
	movzbl	-21(%ebp), %eax
	.loc 2 1397 12
	testb	%al, %al
	je	L271
	.loc 2 1402 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1402 16
	cmpl	$0, -16(%ebp)
	je	L269
	.loc 2 1403 24
	movl	-16(%ebp), %eax
	jmp	L273
L271:
	.loc 2 1410 27
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
	.loc 2 1410 16
	cmpl	$0, -16(%ebp)
	je	L269
	.loc 2 1411 24
	movl	-16(%ebp), %eax
	jmp	L273
L270:
	.loc 2 1419 13
	movzbl	-21(%ebp), %eax
	.loc 2 1419 12
	testb	%al, %al
	je	L272
	.loc 2 1424 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1424 16
	cmpl	$0, -16(%ebp)
	je	L269
	.loc 2 1425 24
	movl	-16(%ebp), %eax
	jmp	L273
L272:
	.loc 2 1432 27
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
	.loc 2 1432 16
	cmpl	$0, -16(%ebp)
	je	L269
	.loc 2 1433 24
	movl	-16(%ebp), %eax
	jmp	L273
L269:
	.loc 2 1436 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1437 12
	movl	$0, %eax
L273:
	.loc 2 1438 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4252:
	.globl	_PMC_Subtruct_X_X@12
	.def	_PMC_Subtruct_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_X@12:
LFB4253:
	.loc 2 1441 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 1442 8
	cmpl	$0, 8(%ebp)
	jne	L275
	.loc 2 1443 16
	movl	$-1, %eax
	jmp	L289
L275:
	.loc 2 1444 8
	cmpl	$0, 12(%ebp)
	jne	L277
	.loc 2 1445 16
	movl	$-1, %eax
	jmp	L289
L277:
	.loc 2 1446 8
	cmpl	$0, 16(%ebp)
	jne	L278
	.loc 2 1447 16
	movl	$-1, %eax
	jmp	L289
L278:
	.loc 2 1449 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1450 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 1452 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 1452 8
	cmpl	$0, -20(%ebp)
	je	L279
	.loc 2 1453 16
	movl	-20(%ebp), %eax
	jmp	L289
L279:
	.loc 2 1454 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 1454 8
	cmpl	$0, -20(%ebp)
	je	L280
	.loc 2 1455 16
	movl	-20(%ebp), %eax
	jmp	L289
L280:
	.loc 2 1456 11
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1456 8
	testb	%al, %al
	jne	L281
	.loc 2 1460 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1460 12
	testb	%al, %al
	jne	L282
	.loc 2 1464 16
	movl	$_number_zero, -24(%ebp)
	jmp	L283
L282:
	.loc 2 1471 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1471 16
	cmpl	$0, -20(%ebp)
	je	L283
	.loc 2 1472 24
	movl	-20(%ebp), %eax
	jmp	L289
L281:
	.loc 2 1475 16
	movl	-12(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1475 13
	testb	%al, %al
	jle	L284
	.loc 2 1479 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1479 12
	testb	%al, %al
	jne	L285
	.loc 2 1484 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 1484 16
	cmpl	$0, -20(%ebp)
	je	L283
	.loc 2 1485 24
	movl	-20(%ebp), %eax
	jmp	L289
L285:
	.loc 2 1487 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1487 17
	testb	%al, %al
	jle	L286
	.loc 2 1492 27
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
	.loc 2 1492 16
	cmpl	$0, -20(%ebp)
	je	L283
	.loc 2 1493 24
	movl	-20(%ebp), %eax
	jmp	L289
L286:
	.loc 2 1500 27
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
	.loc 2 1500 16
	cmpl	$0, -20(%ebp)
	je	L283
	.loc 2 1501 24
	movl	-20(%ebp), %eax
	jmp	L289
L284:
	.loc 2 1508 15
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1508 12
	testb	%al, %al
	jne	L287
	.loc 2 1513 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 1513 16
	cmpl	$0, -20(%ebp)
	je	L283
	.loc 2 1514 24
	movl	-20(%ebp), %eax
	jmp	L289
L287:
	.loc 2 1516 20
	movl	-16(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 2 1516 17
	testb	%al, %al
	jle	L288
	.loc 2 1521 27
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
	.loc 2 1521 16
	cmpl	$0, -20(%ebp)
	je	L283
	.loc 2 1522 24
	movl	-20(%ebp), %eax
	jmp	L289
L288:
	.loc 2 1529 27
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
	.loc 2 1529 16
	cmpl	$0, -20(%ebp)
	je	L283
	.loc 2 1530 24
	movl	-20(%ebp), %eax
	jmp	L289
L283:
	.loc 2 1533 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1534 12
	movl	$0, %eax
L289:
	.loc 2 1535 1 discriminator 3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4253:
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
	.long	0x67b0
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
	.word	0x5a0
	.byte	0x2e
	.ascii "PMC_Subtruct_X_X@12\0"
	.long	0x49e5
	.long	LFB4253
	.long	LFE4253-LFB4253
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a17
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x5a0
	.byte	0x4f
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x5a0
	.byte	0x62
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x5a0
	.byte	0x76
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x5a8
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x5a9
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x5aa
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x5ab
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
	.word	0x546
	.byte	0x2e
	.ascii "PMC_Subtruct_X_UX@12\0"
	.long	0x49e5
	.long	LFB4252
	.long	LFE4252-LFB4252
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ae0
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x546
	.byte	0x50
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x546
	.byte	0x63
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x546
	.byte	0x77
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x54e
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x54f
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x550
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x2
	.word	0x553
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
	.word	0x566
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
	.word	0x4e0
	.byte	0x2e
	.ascii "PMC_Subtruct_X_L@16\0"
	.long	0x49e5
	.long	LFB4251
	.long	LFE4251-LFB4251
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b95
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x4e0
	.byte	0x4f
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x4e0
	.byte	0x5b
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x4e0
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x4e6
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x4e7
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x4e8
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x4eb
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x4ec
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_X_I\0"
	.byte	0x2
	.word	0x47a
	.byte	0x2e
	.ascii "PMC_Subtruct_X_I@12\0"
	.long	0x49e5
	.long	LFB4250
	.long	LFE4250-LFB4250
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c4a
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x47a
	.byte	0x4f
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x47a
	.byte	0x5b
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x47a
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x480
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x481
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x482
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x485
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x486
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_UX_X\0"
	.byte	0x2
	.word	0x427
	.byte	0x2e
	.ascii "PMC_Subtruct_UX_X@12\0"
	.long	0x49e5
	.long	LFB4249
	.long	LFE4249-LFB4249
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d0d
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x427
	.byte	0x50
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x427
	.byte	0x63
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x427
	.byte	0x77
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x42f
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x430
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x431
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF5
	.byte	0x2
	.word	0x434
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
	.word	0x45c
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
	.word	0x3c9
	.byte	0x2e
	.ascii "PMC_Subtruct_L_X@16\0"
	.long	0x49e5
	.long	LFB4248
	.long	LFE4248-LFB4248
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dc2
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x3c9
	.byte	0x48
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x3c9
	.byte	0x5b
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x3c9
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x3cf
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x3d0
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x3d1
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF6
	.byte	0x2
	.word	0x3d4
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x2
	.word	0x3d5
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Subtruct_I_X\0"
	.byte	0x2
	.word	0x36b
	.byte	0x2e
	.ascii "PMC_Subtruct_I_X@12\0"
	.long	0x49e5
	.long	LFB4247
	.long	LFE4247-LFB4247
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e77
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x36b
	.byte	0x48
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x36b
	.byte	0x5b
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x36b
	.byte	0x6f
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x371
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x372
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x373
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.secrel32	LASF6
	.byte	0x2
	.word	0x376
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x2
	.word	0x377
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_X_X\0"
	.byte	0x2
	.word	0x30a
	.byte	0x2e
	.ascii "PMC_Add_X_X@12\0"
	.long	0x49e5
	.long	LFB4246
	.long	LFE4246-LFB4246
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f11
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x30a
	.byte	0x4a
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x30a
	.byte	0x5d
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x30a
	.byte	0x71
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x312
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x313
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x314
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x315
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_X_UX\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x2e
	.ascii "PMC_Add_X_UX@12\0"
	.long	0x49e5
	.long	LFB4245
	.long	LFE4245-LFB4245
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fdb
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x4b
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x5e
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x2ae
	.byte	0x72
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x2b6
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x2b7
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x2b8
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x2
	.word	0x2bb
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
	.word	0x2ce
	.byte	0x1d
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.ascii "type\0"
	.byte	0x2
	.word	0x2d1
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
	.word	0x248
	.byte	0x2e
	.ascii "PMC_Add_X_L@16\0"
	.long	0x49e5
	.long	LFB4244
	.long	LFE4244-LFB4244
	.uleb128 0x1
	.byte	0x9c
	.long	0x6086
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x248
	.byte	0x4a
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x248
	.byte	0x56
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x248
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x24e
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x24f
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x250
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x253
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x254
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_X_I\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x2e
	.ascii "PMC_Add_X_I@12\0"
	.long	0x49e5
	.long	LFB4243
	.long	LFE4243-LFB4243
	.uleb128 0x1
	.byte	0x9c
	.long	0x6131
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x4a
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x56
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x1e2
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x1e8
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nu\0"
	.byte	0x2
	.word	0x1e9
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x1ea
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x2
	.word	0x1ed
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x2
	.word	0x1ee
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.ascii "PMC_Add_UX_X\0"
	.byte	0x2
	.word	0x199
	.byte	0x2e
	.ascii "PMC_Add_UX_X@12\0"
	.long	0x49e5
	.long	LFB4242
	.long	LFE4242-LFB4242
	.uleb128 0x1
	.byte	0x9c
	.long	0x61ea
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x199
	.byte	0x4b
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x199
	.byte	0x5e
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x199
	.byte	0x72
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x19f
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x1a0
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x1a1
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.secrel32	LASF5
	.byte	0x2
	.word	0x1a4
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
	.word	0x1c4
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
	.word	0x13b
	.byte	0x2e
	.ascii "PMC_Add_L_X@16\0"
	.long	0x49e5
	.long	LFB4241
	.long	LFE4241-LFB4241
	.uleb128 0x1
	.byte	0x9c
	.long	0x6295
	.uleb128 0x1b
	.ascii "u\0"
	.byte	0x2
	.word	0x13b
	.byte	0x43
	.long	0x49b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.ascii "v\0"
	.byte	0x2
	.word	0x13b
	.byte	0x56
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.ascii "w\0"
	.byte	0x2
	.word	0x13b
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x2
	.word	0x141
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "nv\0"
	.byte	0x2
	.word	0x142
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "nw\0"
	.byte	0x2
	.word	0x143
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.secrel32	LASF6
	.byte	0x2
	.word	0x146
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x2
	.word	0x147
	.byte	0xf
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.ascii "PMC_Add_I_X\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x2e
	.ascii "PMC_Add_I_X@12\0"
	.long	0x49e5
	.long	LFB4240
	.long	LFE4240-LFB4240
	.uleb128 0x1
	.byte	0x9c
	.long	0x6337
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x43
	.long	0x499f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x56
	.long	0x4ad4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x6a
	.long	0x5808
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0xe3
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.ascii "nv\0"
	.byte	0x2
	.byte	0xe4
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "nw\0"
	.byte	0x2
	.byte	0xe5
	.byte	0x14
	.long	0x5a17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.secrel32	LASF6
	.byte	0x2
	.byte	0xe8
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x21
	.secrel32	LASF7
	.byte	0x2
	.byte	0xe9
	.byte	0xf
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.ascii "SubtructU_X_X_Imp\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x18
	.long	0x49e5
	.long	LFB4239
	.long	LFE4239-LFB4239
	.uleb128 0x1
	.byte	0x9c
	.long	0x63e8
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0xb1
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x45
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x58
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x6b
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0xb3
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "c\0"
	.byte	0x2
	.byte	0xb4
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
	.byte	0xbc
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
	.byte	0xd1
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
	.byte	0x82
	.byte	0x18
	.long	0x49e5
	.long	LFB4238
	.long	LFE4238-LFB4238
	.uleb128 0x1
	.byte	0x9c
	.long	0x64ac
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x82
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x82
	.byte	0x45
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x82
	.byte	0x52
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x82
	.byte	0x65
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x84
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "c\0"
	.byte	0x2
	.byte	0x85
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
	.byte	0x8d
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
	.byte	0xa2
	.byte	0x13
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0xa5
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
	.byte	0x53
	.byte	0x18
	.long	0x49e5
	.long	LFB4237
	.long	LFE4237-LFB4237
	.uleb128 0x1
	.byte	0x9c
	.long	0x656a
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x53
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x53
	.byte	0x45
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x53
	.byte	0x52
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x53
	.byte	0x65
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x55
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "c\0"
	.byte	0x2
	.byte	0x56
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
	.byte	0x5e
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
	.byte	0x73
	.byte	0x13
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x76
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
	.byte	0x45
	.byte	0x18
	.long	0x49e5
	.long	LFB4236
	.long	LFE4236-LFB4236
	.uleb128 0x1
	.byte	0x9c
	.long	0x65e2
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x45
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x45
	.byte	0x40
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x45
	.byte	0x53
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x45
	.byte	0x66
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x47
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x48
	.byte	0x15
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.ascii "AddU_X_L_Imp\0"
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.long	0x49e5
	.long	LFB4235
	.long	LFE4235-LFB4235
	.uleb128 0x1
	.byte	0x9c
	.long	0x665a
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x37
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x37
	.byte	0x40
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x37
	.byte	0x4d
	.long	0x49d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x37
	.byte	0x60
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x39
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x3a
	.byte	0x15
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.ascii "AddU_X_I_Imp\0"
	.byte	0x2
	.byte	0x29
	.byte	0x18
	.long	0x49e5
	.long	LFB4234
	.long	LFE4234-LFB4234
	.uleb128 0x1
	.byte	0x9c
	.long	0x66d2
	.uleb128 0x24
	.secrel32	LASF8
	.byte	0x2
	.byte	0x29
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.ascii "u\0"
	.byte	0x2
	.byte	0x29
	.byte	0x40
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.ascii "v\0"
	.byte	0x2
	.byte	0x29
	.byte	0x4d
	.long	0x49c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "w\0"
	.byte	0x2
	.byte	0x29
	.byte	0x60
	.long	0x63e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x2b
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.secrel32	LASF9
	.byte	0x2
	.byte	0x2c
	.byte	0x15
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.ascii "IS_ZERO_UINT\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x18
	.long	0x49e5
	.long	LFB4233
	.long	LFE4233-LFB4233
	.uleb128 0x1
	.byte	0x9c
	.long	0x6735
	.uleb128 0x20
	.ascii "x\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x35
	.long	0x4a87
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "is_zero\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x3e
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.secrel32	LASF1
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.long	0x49e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.ascii "type\0"
	.byte	0x2
	.byte	0x22
	.byte	0x1a
	.long	0x49fd
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
	.long	0x6776
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
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
