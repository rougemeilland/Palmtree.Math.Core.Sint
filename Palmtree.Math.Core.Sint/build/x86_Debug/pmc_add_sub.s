	.file	"pmc_add_sub.c"
	.text
Ltext0:
	.comm	_uint_number_zero, 4, 2
	.comm	_uint_number_one, 4, 2
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
	.loc 2 34 9
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 34 8
	testb	%al, %al
	je	L14
	.loc 2 35 16
	movl	$-256, %eax
	jmp	L19
L14:
	.loc 2 36 8
	cmpl	$0, 16(%ebp)
	jne	L16
	.loc 2 37 16
	movl	$-256, %eax
	jmp	L19
L16:
	.loc 2 41 26
	movl	_ep_uint+64, %eax
	.loc 2 41 19
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
	.loc 2 41 8
	cmpl	$0, -12(%ebp)
	je	L17
	.loc 2 42 16
	movl	-12(%ebp), %eax
	jmp	L19
L17:
	.loc 2 43 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 43 8
	cmpl	$0, -12(%ebp)
	je	L18
	.loc 2 45 16
	movl	_ep_uint+16, %eax
	.loc 2 45 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL1:
	subl	$4, %esp
	.loc 2 46 16
	movl	-12(%ebp), %eax
	jmp	L19
L18:
	.loc 2 48 12
	movl	$0, %eax
L19:
	.loc 2 49 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4233:
	.def	_AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_L_Imp:
LFB4234:
	.loc 2 52 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %ecx
	movb	%cl, -28(%ebp)
	movl	16(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	movl	20(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	.loc 2 54 9
	movl	12(%ebp), %ecx
	movzbl	(%ecx), %ecx
	andl	$1, %ecx
	.loc 2 54 8
	testb	%cl, %cl
	je	L21
	.loc 2 55 16
	movl	$-256, %eax
	jmp	L26
L21:
	.loc 2 56 8
	movl	-40(%ebp), %ecx
	xorb	$0, %ch
	movl	%ecx, %eax
	movl	-36(%ebp), %ecx
	xorb	$0, %ch
	movl	%ecx, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	L23
	.loc 2 57 16
	movl	$-256, %eax
	jmp	L26
L23:
	.loc 2 61 26
	movl	_ep_uint+68, %ecx
	.loc 2 61 19
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
	.loc 2 61 8
	cmpl	$0, -12(%ebp)
	je	L24
	.loc 2 62 16
	movl	-12(%ebp), %eax
	jmp	L26
L24:
	.loc 2 63 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 63 8
	cmpl	$0, -12(%ebp)
	je	L25
	.loc 2 65 16
	movl	_ep_uint+16, %eax
	.loc 2 65 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL3:
	subl	$4, %esp
	.loc 2 66 16
	movl	-12(%ebp), %eax
	jmp	L26
L25:
	.loc 2 68 12
	movl	$0, %eax
L26:
	.loc 2 69 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4234:
	.def	_AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_X_Imp:
LFB4235:
	.loc 2 72 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 74 9
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 74 8
	testb	%al, %al
	je	L28
	.loc 2 75 16
	movl	$-256, %eax
	jmp	L33
L28:
	.loc 2 76 9
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 76 8
	testb	%al, %al
	je	L30
	.loc 2 77 16
	movl	$-256, %eax
	jmp	L33
L30:
	.loc 2 81 26
	movl	_ep_uint+72, %eax
	.loc 2 81 19
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
	.loc 2 81 8
	cmpl	$0, -12(%ebp)
	je	L31
	.loc 2 82 16
	movl	-12(%ebp), %eax
	jmp	L33
L31:
	.loc 2 83 19
	movl	-16(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 83 8
	cmpl	$0, -12(%ebp)
	je	L32
	.loc 2 85 16
	movl	_ep_uint+16, %eax
	.loc 2 85 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	subl	$4, %esp
	.loc 2 86 16
	movl	-12(%ebp), %eax
	jmp	L33
L32:
	.loc 2 88 12
	movl	$0, %eax
L33:
	.loc 2 89 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4235:
	.def	_SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_I_Imp:
LFB4236:
	.loc 2 92 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movb	%al, -44(%ebp)
	.loc 2 94 9
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 94 8
	testb	%al, %al
	je	L35
	.loc 2 95 16
	movl	$-256, %eax
	jmp	L49
L35:
	.loc 2 96 8
	cmpl	$0, 16(%ebp)
	jne	L37
	.loc 2 97 16
	movl	$-256, %eax
	jmp	L49
L37:
	.loc 2 101 26
	movl	_ep_uint+212, %eax
	.loc 2 101 19
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
	.loc 2 101 8
	cmpl	$0, -12(%ebp)
	je	L38
	.loc 2 102 16
	movl	-12(%ebp), %eax
	jmp	L49
L38:
	.loc 2 103 11
	movl	-16(%ebp), %eax
	.loc 2 103 8
	testl	%eax, %eax
	jle	L39
LBB2:
	.loc 2 109 30
	movl	_ep_uint+84, %eax
	.loc 2 109 23
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
	.loc 2 109 12
	cmpl	$0, -12(%ebp)
	je	L40
	.loc 2 110 20
	movl	-12(%ebp), %eax
	jmp	L49
L40:
	.loc 2 111 23
	movl	-20(%ebp), %edx
	movsbl	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 111 12
	cmpl	$0, -12(%ebp)
	je	L43
	.loc 2 113 20
	movl	_ep_uint+16, %eax
	.loc 2 113 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL8:
	subl	$4, %esp
	.loc 2 114 20
	movl	-12(%ebp), %eax
	jmp	L49
L39:
LBE2:
	.loc 2 117 16
	movl	-16(%ebp), %eax
	.loc 2 117 13
	testl	%eax, %eax
	jne	L44
	.loc 2 122 12
	movl	20(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L43
L44:
LBB3:
	.loc 2 130 30
	movl	_ep_uint+76, %eax
	.loc 2 130 23
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
	.loc 2 130 12
	cmpl	$0, -12(%ebp)
	je	L45
	.loc 2 131 20
	movl	-12(%ebp), %eax
	jmp	L49
L45:
	.loc 2 133 30
	movl	_ep_uint+8, %eax
	.loc 2 133 23
	movl	-24(%ebp), %edx
	leal	-28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL10:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 2 133 12
	cmpl	$0, -12(%ebp)
	je	L47
	.loc 2 134 20
	movl	-12(%ebp), %eax
	jmp	L49
L47:
	.loc 2 135 23
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
	.loc 2 135 12
	cmpl	$0, -12(%ebp)
	je	L43
	.loc 2 137 20
	movl	_ep_uint+16, %eax
	.loc 2 137 13
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL11:
	subl	$4, %esp
	.loc 2 138 20
	movl	-12(%ebp), %eax
	jmp	L49
L43:
LBE3:
	.loc 2 141 12
	movl	$0, %eax
L49:
	.loc 2 142 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4236:
	.def	_SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_L_Imp:
LFB4237:
	.loc 2 145 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %ecx
	movb	%cl, -44(%ebp)
	movl	16(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	movl	20(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 2 147 9
	movl	12(%ebp), %ecx
	movzbl	(%ecx), %ecx
	andl	$1, %ecx
	.loc 2 147 8
	testb	%cl, %cl
	je	L51
	.loc 2 148 16
	movl	$-256, %eax
	jmp	L65
L51:
	.loc 2 149 8
	movl	-56(%ebp), %ecx
	xorb	$0, %ch
	movl	%ecx, %eax
	movl	-52(%ebp), %ecx
	xorb	$0, %ch
	movl	%ecx, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	L53
	.loc 2 150 16
	movl	$-256, %eax
	jmp	L65
L53:
	.loc 2 154 26
	movl	_ep_uint+216, %ecx
	.loc 2 154 19
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
	.loc 2 154 8
	cmpl	$0, -12(%ebp)
	je	L54
	.loc 2 155 16
	movl	-12(%ebp), %eax
	jmp	L65
L54:
	.loc 2 156 11
	movl	-16(%ebp), %eax
	.loc 2 156 8
	testl	%eax, %eax
	jle	L55
LBB4:
	.loc 2 162 30
	movl	_ep_uint+88, %ecx
	.loc 2 162 23
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
	.loc 2 162 12
	cmpl	$0, -12(%ebp)
	je	L56
	.loc 2 163 20
	movl	-12(%ebp), %eax
	jmp	L65
L56:
	.loc 2 164 23
	movl	-20(%ebp), %edx
	movsbl	-44(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 164 12
	cmpl	$0, -12(%ebp)
	je	L59
	.loc 2 166 20
	movl	_ep_uint+16, %eax
	.loc 2 166 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL14:
	subl	$4, %esp
	.loc 2 167 20
	movl	-12(%ebp), %eax
	jmp	L65
L55:
LBE4:
	.loc 2 170 16
	movl	-16(%ebp), %eax
	.loc 2 170 13
	testl	%eax, %eax
	jne	L60
	.loc 2 175 12
	movl	24(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L59
L60:
LBB5:
	.loc 2 183 30
	movl	_ep_uint+80, %ecx
	.loc 2 183 23
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
	.loc 2 183 12
	cmpl	$0, -12(%ebp)
	je	L61
	.loc 2 184 20
	movl	-12(%ebp), %eax
	jmp	L65
L61:
	.loc 2 186 30
	movl	_ep_uint+12, %ecx
	.loc 2 186 23
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
	.loc 2 186 12
	cmpl	$0, -12(%ebp)
	je	L63
	.loc 2 187 20
	movl	-12(%ebp), %eax
	jmp	L65
L63:
	.loc 2 188 23
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
	.loc 2 188 12
	cmpl	$0, -12(%ebp)
	je	L59
	.loc 2 190 20
	movl	_ep_uint+16, %eax
	.loc 2 190 13
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL17:
	subl	$4, %esp
	.loc 2 191 20
	movl	-12(%ebp), %eax
	jmp	L65
L59:
LBE5:
	.loc 2 194 12
	movl	$0, %eax
L65:
	.loc 2 195 1 discriminator 2
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
	.loc 2 198 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 200 9
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 200 8
	testb	%al, %al
	je	L67
	.loc 2 201 16
	movl	$-256, %eax
	jmp	L80
L67:
	.loc 2 202 9
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 202 8
	testb	%al, %al
	je	L69
	.loc 2 203 16
	movl	$-256, %eax
	jmp	L80
L69:
	.loc 2 207 26
	movl	_ep_uint+220, %eax
	.loc 2 207 19
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
	.loc 2 207 8
	cmpl	$0, -12(%ebp)
	je	L70
	.loc 2 208 16
	movl	-12(%ebp), %eax
	jmp	L80
L70:
	.loc 2 209 11
	movl	-16(%ebp), %eax
	.loc 2 209 8
	testl	%eax, %eax
	jle	L71
LBB6:
	.loc 2 215 30
	movl	_ep_uint+92, %eax
	.loc 2 215 23
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
	.loc 2 215 12
	cmpl	$0, -12(%ebp)
	je	L72
	.loc 2 216 20
	movl	-12(%ebp), %eax
	jmp	L80
L72:
	.loc 2 217 23
	movl	-20(%ebp), %edx
	movsbl	-28(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 2 217 12
	cmpl	$0, -12(%ebp)
	je	L75
	.loc 2 219 20
	movl	_ep_uint+16, %eax
	.loc 2 219 13
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL20:
	subl	$4, %esp
	.loc 2 220 20
	movl	-12(%ebp), %eax
	jmp	L80
L71:
LBE6:
	.loc 2 223 16
	movl	-16(%ebp), %eax
	.loc 2 223 13
	testl	%eax, %eax
	jne	L76
	.loc 2 228 12
	movl	20(%ebp), %eax
	movl	$_number_zero, (%eax)
	jmp	L75
L76:
LBB7:
	.loc 2 236 30
	movl	_ep_uint+92, %eax
	.loc 2 236 23
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
	.loc 2 236 12
	cmpl	$0, -12(%ebp)
	je	L77
	.loc 2 237 20
	movl	-12(%ebp), %eax
	jmp	L80
L77:
	.loc 2 238 23
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
	.loc 2 238 12
	cmpl	$0, -12(%ebp)
	je	L75
	.loc 2 240 20
	movl	_ep_uint+16, %eax
	.loc 2 240 13
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL22:
	subl	$4, %esp
	.loc 2 241 20
	movl	-12(%ebp), %eax
	jmp	L80
L75:
LBE7:
	.loc 2 244 12
	movl	$0, %eax
L80:
	.loc 2 245 1 discriminator 2
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
	.loc 2 248 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 249 8
	cmpl	$0, 12(%ebp)
	jne	L82
	.loc 2 250 16
	movl	$-1, %eax
	jmp	L94
L82:
	.loc 2 251 8
	cmpl	$0, 16(%ebp)
	jne	L84
	.loc 2 252 16
	movl	$-1, %eax
	jmp	L94
L84:
	.loc 2 254 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 256 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 256 8
	cmpl	$0, -16(%ebp)
	je	L85
	.loc 2 257 16
	movl	-16(%ebp), %eax
	jmp	L94
L85:
	.loc 2 259 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 260 16
	movzbl	-25(%ebp), %eax
	.loc 2 260 8
	testb	%al, %al
	jne	L86
	.loc 2 264 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 264 12
	testb	%al, %al
	jne	L87
	.loc 2 269 16
	movl	$_number_zero, -24(%ebp)
	jmp	L88
L87:
	.loc 2 276 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 276 16
	cmpl	$0, -16(%ebp)
	je	L88
	.loc 2 277 24
	movl	-16(%ebp), %eax
	jmp	L94
L86:
	.loc 2 280 21
	movzbl	-25(%ebp), %eax
	.loc 2 280 13
	testb	%al, %al
	jle	L89
	.loc 2 284 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 284 12
	testb	%al, %al
	jne	L90
	.loc 2 289 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 289 16
	cmpl	$0, -16(%ebp)
	je	L88
	.loc 2 290 24
	movl	-16(%ebp), %eax
	jmp	L94
L90:
	.loc 2 292 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 292 17
	testb	%al, %al
	jle	L91
	.loc 2 297 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 297 16
	cmpl	$0, -16(%ebp)
	je	L88
	.loc 2 298 24
	movl	-16(%ebp), %eax
	jmp	L94
L91:
	.loc 2 305 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 305 16
	cmpl	$0, -16(%ebp)
	je	L88
	.loc 2 306 24
	movl	-16(%ebp), %eax
	jmp	L94
L89:
	.loc 2 313 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 313 12
	testb	%al, %al
	jne	L92
	.loc 2 318 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 318 16
	cmpl	$0, -16(%ebp)
	je	L88
	.loc 2 319 24
	movl	-16(%ebp), %eax
	jmp	L94
L92:
	.loc 2 321 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 321 17
	testb	%al, %al
	jle	L93
	.loc 2 326 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 326 16
	cmpl	$0, -16(%ebp)
	je	L88
	.loc 2 327 24
	movl	-16(%ebp), %eax
	jmp	L94
L93:
	.loc 2 334 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 334 16
	cmpl	$0, -16(%ebp)
	je	L88
	.loc 2 335 24
	movl	-16(%ebp), %eax
	jmp	L94
L88:
	.loc 2 338 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 339 12
	movl	$0, %eax
L94:
	.loc 2 340 1 discriminator 3
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
	.loc 2 343 1
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
	.loc 2 344 8
	cmpl	$0, 16(%ebp)
	jne	L96
	.loc 2 345 16
	movl	$-1, %eax
	jmp	L108
L96:
	.loc 2 346 8
	cmpl	$0, 20(%ebp)
	jne	L98
	.loc 2 347 16
	movl	$-1, %eax
	jmp	L108
L98:
	.loc 2 349 20
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 351 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 351 8
	cmpl	$0, -16(%ebp)
	je	L99
	.loc 2 352 16
	movl	-16(%ebp), %eax
	jmp	L108
L99:
	.loc 2 354 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 355 16
	movzbl	-29(%ebp), %eax
	.loc 2 355 8
	testb	%al, %al
	jne	L100
	.loc 2 359 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 359 12
	testb	%al, %al
	jne	L101
	.loc 2 364 16
	movl	$_number_zero, -28(%ebp)
	jmp	L102
L101:
	.loc 2 371 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 371 16
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 372 24
	movl	-16(%ebp), %eax
	jmp	L108
L100:
	.loc 2 375 21
	movzbl	-29(%ebp), %eax
	.loc 2 375 13
	testb	%al, %al
	jle	L103
	.loc 2 379 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 379 12
	testb	%al, %al
	jne	L104
	.loc 2 384 27
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
	.loc 2 384 16
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 385 24
	movl	-16(%ebp), %eax
	jmp	L108
L104:
	.loc 2 387 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 387 17
	testb	%al, %al
	jle	L105
	.loc 2 392 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 392 16
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 393 24
	movl	-16(%ebp), %eax
	jmp	L108
L105:
	.loc 2 400 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 400 16
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 401 24
	movl	-16(%ebp), %eax
	jmp	L108
L103:
	.loc 2 408 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 408 12
	testb	%al, %al
	jne	L106
	.loc 2 413 27
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
	.loc 2 413 16
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 414 24
	movl	-16(%ebp), %eax
	jmp	L108
L106:
	.loc 2 416 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 416 17
	testb	%al, %al
	jle	L107
	.loc 2 421 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 421 16
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 422 24
	movl	-16(%ebp), %eax
	jmp	L108
L107:
	.loc 2 429 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 429 16
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 430 24
	movl	-16(%ebp), %eax
	jmp	L108
L102:
	.loc 2 433 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 434 12
	movl	$0, %eax
L108:
	.loc 2 435 1 discriminator 3
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
	.loc 2 438 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 439 8
	cmpl	$0, 12(%ebp)
	jne	L110
	.loc 2 440 16
	movl	$-1, %eax
	jmp	L122
L110:
	.loc 2 441 8
	cmpl	$0, 16(%ebp)
	jne	L112
	.loc 2 442 16
	movl	$-1, %eax
	jmp	L122
L112:
	.loc 2 444 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 446 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 446 8
	cmpl	$0, -16(%ebp)
	je	L113
	.loc 2 447 16
	movl	-16(%ebp), %eax
	jmp	L122
L113:
	.loc 2 448 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 448 8
	testb	%al, %al
	je	L114
	.loc 2 452 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 452 12
	testb	%al, %al
	jne	L115
	.loc 2 457 16
	movl	$_number_zero, -20(%ebp)
	jmp	L116
L115:
	.loc 2 464 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 464 16
	cmpl	$0, -16(%ebp)
	je	L116
	.loc 2 465 24
	movl	-16(%ebp), %eax
	jmp	L122
L114:
	.loc 2 472 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 472 12
	testb	%al, %al
	jne	L117
LBB8:
	.loc 2 478 34
	movl	_ep_uint+32, %eax
	.loc 2 478 27
	leal	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL23:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 478 16
	cmpl	$0, -16(%ebp)
	je	L118
	.loc 2 479 24
	movl	-16(%ebp), %eax
	jmp	L122
L118:
	.loc 2 480 27
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 480 16
	cmpl	$0, -16(%ebp)
	je	L116
	.loc 2 482 24
	movl	_ep_uint+16, %eax
	.loc 2 482 17
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL24:
	subl	$4, %esp
	.loc 2 483 24
	movl	-16(%ebp), %eax
	jmp	L122
L117:
LBE8:
	.loc 2 486 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 486 17
	testb	%al, %al
	jle	L121
	.loc 2 491 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 491 16
	cmpl	$0, -16(%ebp)
	je	L116
	.loc 2 492 24
	movl	-16(%ebp), %eax
	jmp	L122
L121:
	.loc 2 499 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 499 16
	cmpl	$0, -16(%ebp)
	je	L116
	.loc 2 500 24
	movl	-16(%ebp), %eax
	jmp	L122
L116:
	.loc 2 503 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 504 12
	movl	$0, %eax
L122:
	.loc 2 505 1 discriminator 2
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
	.loc 2 508 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 509 8
	cmpl	$0, 8(%ebp)
	jne	L124
	.loc 2 510 16
	movl	$-1, %eax
	jmp	L136
L124:
	.loc 2 511 8
	cmpl	$0, 16(%ebp)
	jne	L126
	.loc 2 512 16
	movl	$-1, %eax
	jmp	L136
L126:
	.loc 2 514 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 516 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 516 8
	cmpl	$0, -16(%ebp)
	je	L127
	.loc 2 517 16
	movl	-16(%ebp), %eax
	jmp	L136
L127:
	.loc 2 519 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 520 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 520 8
	testb	%al, %al
	jne	L128
	.loc 2 524 20
	movzbl	-25(%ebp), %eax
	.loc 2 524 12
	testb	%al, %al
	jne	L129
	.loc 2 529 16
	movl	$_number_zero, -24(%ebp)
	jmp	L130
L129:
	.loc 2 536 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 536 16
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 537 24
	movl	-16(%ebp), %eax
	jmp	L136
L128:
	.loc 2 540 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 540 13
	testb	%al, %al
	jle	L131
	.loc 2 544 20
	movzbl	-25(%ebp), %eax
	.loc 2 544 12
	testb	%al, %al
	jne	L132
	.loc 2 549 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 549 16
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 550 24
	movl	-16(%ebp), %eax
	jmp	L136
L132:
	.loc 2 552 25
	movzbl	-25(%ebp), %eax
	.loc 2 552 17
	testb	%al, %al
	jle	L133
	.loc 2 557 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 557 16
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 558 24
	movl	-16(%ebp), %eax
	jmp	L136
L133:
	.loc 2 565 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 565 16
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 566 24
	movl	-16(%ebp), %eax
	jmp	L136
L131:
	.loc 2 573 20
	movzbl	-25(%ebp), %eax
	.loc 2 573 12
	testb	%al, %al
	jne	L134
	.loc 2 578 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 578 16
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 579 24
	movl	-16(%ebp), %eax
	jmp	L136
L134:
	.loc 2 581 25
	movzbl	-25(%ebp), %eax
	.loc 2 581 17
	testb	%al, %al
	jle	L135
	.loc 2 586 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 586 16
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 587 24
	movl	-16(%ebp), %eax
	jmp	L136
L135:
	.loc 2 594 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 594 16
	cmpl	$0, -16(%ebp)
	je	L130
	.loc 2 595 24
	movl	-16(%ebp), %eax
	jmp	L136
L130:
	.loc 2 598 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 599 12
	movl	$0, %eax
L136:
	.loc 2 600 1 discriminator 3
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
	.loc 2 603 1
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
	.loc 2 604 8
	cmpl	$0, 8(%ebp)
	jne	L138
	.loc 2 605 16
	movl	$-1, %eax
	jmp	L150
L138:
	.loc 2 606 8
	cmpl	$0, 20(%ebp)
	jne	L140
	.loc 2 607 16
	movl	$-1, %eax
	jmp	L150
L140:
	.loc 2 609 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 611 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 611 8
	cmpl	$0, -16(%ebp)
	je	L141
	.loc 2 612 16
	movl	-16(%ebp), %eax
	jmp	L150
L141:
	.loc 2 614 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 615 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 615 8
	testb	%al, %al
	jne	L142
	.loc 2 619 20
	movzbl	-29(%ebp), %eax
	.loc 2 619 12
	testb	%al, %al
	jne	L143
	.loc 2 624 16
	movl	$_number_zero, -28(%ebp)
	jmp	L144
L143:
	.loc 2 631 27
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
	.loc 2 631 16
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 632 24
	movl	-16(%ebp), %eax
	jmp	L150
L142:
	.loc 2 635 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 635 13
	testb	%al, %al
	jle	L145
	.loc 2 639 20
	movzbl	-29(%ebp), %eax
	.loc 2 639 12
	testb	%al, %al
	jne	L146
	.loc 2 644 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 644 16
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 645 24
	movl	-16(%ebp), %eax
	jmp	L150
L146:
	.loc 2 647 25
	movzbl	-29(%ebp), %eax
	.loc 2 647 17
	testb	%al, %al
	jle	L147
	.loc 2 652 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 652 16
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 653 24
	movl	-16(%ebp), %eax
	jmp	L150
L147:
	.loc 2 660 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 660 16
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 661 24
	movl	-16(%ebp), %eax
	jmp	L150
L145:
	.loc 2 668 20
	movzbl	-29(%ebp), %eax
	.loc 2 668 12
	testb	%al, %al
	jne	L148
	.loc 2 673 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 673 16
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 674 24
	movl	-16(%ebp), %eax
	jmp	L150
L148:
	.loc 2 676 25
	movzbl	-29(%ebp), %eax
	.loc 2 676 17
	testb	%al, %al
	jle	L149
	.loc 2 681 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 681 16
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 682 24
	movl	-16(%ebp), %eax
	jmp	L150
L149:
	.loc 2 689 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 689 16
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 690 24
	movl	-16(%ebp), %eax
	jmp	L150
L144:
	.loc 2 693 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 694 12
	movl	$0, %eax
L150:
	.loc 2 695 1 discriminator 3
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
	.loc 2 698 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 699 8
	cmpl	$0, 8(%ebp)
	jne	L152
	.loc 2 700 16
	movl	$-1, %eax
	jmp	L167
L152:
	.loc 2 701 8
	cmpl	$0, 12(%ebp)
	jne	L154
	.loc 2 702 16
	movl	$-1, %eax
	jmp	L167
L154:
	.loc 2 703 8
	cmpl	$0, 16(%ebp)
	jne	L155
	.loc 2 704 16
	movl	$-1, %eax
	jmp	L167
L155:
	.loc 2 706 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 708 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 708 8
	cmpl	$0, -16(%ebp)
	je	L156
	.loc 2 709 16
	movl	-16(%ebp), %eax
	jmp	L167
L156:
	.loc 2 710 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 710 8
	testb	%al, %al
	jne	L157
	.loc 2 714 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 714 12
	testb	%al, %al
	je	L158
	.loc 2 719 16
	movl	$_number_zero, -20(%ebp)
	jmp	L163
L158:
LBB9:
	.loc 2 727 34
	movl	_ep_uint+32, %eax
	.loc 2 727 27
	leal	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL25:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 727 16
	cmpl	$0, -16(%ebp)
	je	L160
	.loc 2 728 24
	movl	-16(%ebp), %eax
	jmp	L167
L160:
	.loc 2 729 27
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 729 16
	cmpl	$0, -16(%ebp)
	je	L163
	.loc 2 731 24
	movl	_ep_uint+16, %eax
	.loc 2 731 17
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL26:
	subl	$4, %esp
	.loc 2 732 24
	movl	-16(%ebp), %eax
	jmp	L167
L157:
LBE9:
	.loc 2 736 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 736 13
	testb	%al, %al
	jle	L164
	.loc 2 740 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 740 12
	testb	%al, %al
	je	L165
	.loc 2 745 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 745 16
	cmpl	$0, -16(%ebp)
	je	L163
	.loc 2 746 24
	movl	-16(%ebp), %eax
	jmp	L167
L165:
	.loc 2 753 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 753 16
	cmpl	$0, -16(%ebp)
	je	L163
	.loc 2 754 24
	movl	-16(%ebp), %eax
	jmp	L167
L164:
	.loc 2 761 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 761 12
	testb	%al, %al
	je	L166
	.loc 2 766 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 766 16
	cmpl	$0, -16(%ebp)
	je	L163
	.loc 2 767 24
	movl	-16(%ebp), %eax
	jmp	L167
L166:
	.loc 2 774 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 774 16
	cmpl	$0, -16(%ebp)
	je	L163
	.loc 2 775 24
	movl	-16(%ebp), %eax
	jmp	L167
L163:
	.loc 2 779 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 780 12
	movl	$0, %eax
L167:
	.loc 2 781 1 discriminator 3
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
	.loc 2 784 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 785 8
	cmpl	$0, 8(%ebp)
	jne	L169
	.loc 2 786 16
	movl	$-1, %eax
	jmp	L183
L169:
	.loc 2 787 8
	cmpl	$0, 12(%ebp)
	jne	L171
	.loc 2 788 16
	movl	$-1, %eax
	jmp	L183
L171:
	.loc 2 789 8
	cmpl	$0, 16(%ebp)
	jne	L172
	.loc 2 790 16
	movl	$-1, %eax
	jmp	L183
L172:
	.loc 2 792 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 793 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 795 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 795 8
	cmpl	$0, -20(%ebp)
	je	L173
	.loc 2 796 16
	movl	-20(%ebp), %eax
	jmp	L183
L173:
	.loc 2 797 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 797 8
	cmpl	$0, -20(%ebp)
	je	L174
	.loc 2 798 16
	movl	-20(%ebp), %eax
	jmp	L183
L174:
	.loc 2 799 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 799 8
	testb	%al, %al
	jne	L175
	.loc 2 803 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 803 12
	testb	%al, %al
	jne	L176
	.loc 2 808 16
	movl	$_number_zero, -24(%ebp)
	jmp	L177
L176:
	.loc 2 815 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 815 16
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 816 24
	movl	-20(%ebp), %eax
	jmp	L183
L175:
	.loc 2 819 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 819 13
	testb	%al, %al
	jle	L178
	.loc 2 823 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 823 12
	testb	%al, %al
	jne	L179
	.loc 2 828 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 828 16
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 829 24
	movl	-20(%ebp), %eax
	jmp	L183
L179:
	.loc 2 831 20
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 831 17
	testb	%al, %al
	jle	L180
	.loc 2 836 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 836 16
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 837 24
	movl	-20(%ebp), %eax
	jmp	L183
L180:
	.loc 2 844 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 844 16
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 845 24
	movl	-20(%ebp), %eax
	jmp	L183
L178:
	.loc 2 852 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 852 12
	testb	%al, %al
	jne	L181
	.loc 2 857 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 857 16
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 858 24
	movl	-20(%ebp), %eax
	jmp	L183
L181:
	.loc 2 860 20
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 860 17
	testb	%al, %al
	jle	L182
	.loc 2 865 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 865 16
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 866 24
	movl	-20(%ebp), %eax
	jmp	L183
L182:
	.loc 2 873 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 873 16
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 874 24
	movl	-20(%ebp), %eax
	jmp	L183
L177:
	.loc 2 877 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 878 12
	movl	$0, %eax
L183:
	.loc 2 879 1 discriminator 3
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
	.loc 2 882 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 883 8
	cmpl	$0, 12(%ebp)
	jne	L185
	.loc 2 884 16
	movl	$-1, %eax
	jmp	L197
L185:
	.loc 2 885 8
	cmpl	$0, 16(%ebp)
	jne	L187
	.loc 2 886 16
	movl	$-1, %eax
	jmp	L197
L187:
	.loc 2 888 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 890 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 890 8
	cmpl	$0, -16(%ebp)
	je	L188
	.loc 2 891 16
	movl	-16(%ebp), %eax
	jmp	L197
L188:
	.loc 2 893 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 894 16
	movzbl	-25(%ebp), %eax
	.loc 2 894 8
	testb	%al, %al
	jne	L189
	.loc 2 898 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 898 12
	testb	%al, %al
	jne	L190
	.loc 2 903 16
	movl	$_number_zero, -24(%ebp)
	jmp	L191
L190:
	.loc 2 910 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 910 16
	cmpl	$0, -16(%ebp)
	je	L191
	.loc 2 911 24
	movl	-16(%ebp), %eax
	jmp	L197
L189:
	.loc 2 914 21
	movzbl	-25(%ebp), %eax
	.loc 2 914 13
	testb	%al, %al
	jle	L192
	.loc 2 918 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 918 12
	testb	%al, %al
	jne	L193
	.loc 2 923 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 923 16
	cmpl	$0, -16(%ebp)
	je	L191
	.loc 2 924 24
	movl	-16(%ebp), %eax
	jmp	L197
L193:
	.loc 2 926 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 926 17
	testb	%al, %al
	jle	L194
	.loc 2 931 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 931 16
	cmpl	$0, -16(%ebp)
	je	L191
	.loc 2 932 24
	movl	-16(%ebp), %eax
	jmp	L197
L194:
	.loc 2 939 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 939 16
	cmpl	$0, -16(%ebp)
	je	L191
	.loc 2 940 24
	movl	-16(%ebp), %eax
	jmp	L197
L192:
	.loc 2 947 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 947 12
	testb	%al, %al
	jne	L195
	.loc 2 952 27
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 952 16
	cmpl	$0, -16(%ebp)
	je	L191
	.loc 2 953 24
	movl	-16(%ebp), %eax
	jmp	L197
L195:
	.loc 2 955 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 955 17
	testb	%al, %al
	jle	L196
	.loc 2 960 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 960 16
	cmpl	$0, -16(%ebp)
	je	L191
	.loc 2 961 24
	movl	-16(%ebp), %eax
	jmp	L197
L196:
	.loc 2 968 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 968 16
	cmpl	$0, -16(%ebp)
	je	L191
	.loc 2 969 24
	movl	-16(%ebp), %eax
	jmp	L197
L191:
	.loc 2 972 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 973 12
	movl	$0, %eax
L197:
	.loc 2 974 1 discriminator 3
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
	.loc 2 977 1
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
	.loc 2 978 8
	cmpl	$0, 16(%ebp)
	jne	L199
	.loc 2 979 16
	movl	$-1, %eax
	jmp	L211
L199:
	.loc 2 980 8
	cmpl	$0, 20(%ebp)
	jne	L201
	.loc 2 981 16
	movl	$-1, %eax
	jmp	L211
L201:
	.loc 2 983 20
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 985 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 985 8
	cmpl	$0, -16(%ebp)
	je	L202
	.loc 2 986 16
	movl	-16(%ebp), %eax
	jmp	L211
L202:
	.loc 2 988 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 989 16
	movzbl	-29(%ebp), %eax
	.loc 2 989 8
	testb	%al, %al
	jne	L203
	.loc 2 993 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 993 12
	testb	%al, %al
	jne	L204
	.loc 2 998 16
	movl	$_number_zero, -28(%ebp)
	jmp	L205
L204:
	.loc 2 1005 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1005 16
	cmpl	$0, -16(%ebp)
	je	L205
	.loc 2 1006 24
	movl	-16(%ebp), %eax
	jmp	L211
L203:
	.loc 2 1009 21
	movzbl	-29(%ebp), %eax
	.loc 2 1009 13
	testb	%al, %al
	jle	L206
	.loc 2 1013 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1013 12
	testb	%al, %al
	jne	L207
	.loc 2 1018 27
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
	.loc 2 1018 16
	cmpl	$0, -16(%ebp)
	je	L205
	.loc 2 1019 24
	movl	-16(%ebp), %eax
	jmp	L211
L207:
	.loc 2 1021 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1021 17
	testb	%al, %al
	jle	L208
	.loc 2 1026 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1026 16
	cmpl	$0, -16(%ebp)
	je	L205
	.loc 2 1027 24
	movl	-16(%ebp), %eax
	jmp	L211
L208:
	.loc 2 1034 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1034 16
	cmpl	$0, -16(%ebp)
	je	L205
	.loc 2 1035 24
	movl	-16(%ebp), %eax
	jmp	L211
L206:
	.loc 2 1042 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1042 12
	testb	%al, %al
	jne	L209
	.loc 2 1047 27
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
	.loc 2 1047 16
	cmpl	$0, -16(%ebp)
	je	L205
	.loc 2 1048 24
	movl	-16(%ebp), %eax
	jmp	L211
L209:
	.loc 2 1050 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1050 17
	testb	%al, %al
	jle	L210
	.loc 2 1055 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1055 16
	cmpl	$0, -16(%ebp)
	je	L205
	.loc 2 1056 24
	movl	-16(%ebp), %eax
	jmp	L211
L210:
	.loc 2 1063 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1063 16
	cmpl	$0, -16(%ebp)
	je	L205
	.loc 2 1064 24
	movl	-16(%ebp), %eax
	jmp	L211
L205:
	.loc 2 1067 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1068 12
	movl	$0, %eax
L211:
	.loc 2 1069 1 discriminator 3
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
	.loc 2 1072 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 1073 8
	cmpl	$0, 8(%ebp)
	jne	L213
	.loc 2 1074 16
	movl	$-1, %eax
	jmp	L226
L213:
	.loc 2 1075 8
	cmpl	$0, 12(%ebp)
	jne	L215
	.loc 2 1076 16
	movl	$-1, %eax
	jmp	L226
L215:
	.loc 2 1077 8
	cmpl	$0, 16(%ebp)
	jne	L216
	.loc 2 1078 16
	movl	$-1, %eax
	jmp	L226
L216:
	.loc 2 1080 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1082 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1082 8
	cmpl	$0, -16(%ebp)
	je	L217
	.loc 2 1083 16
	movl	-16(%ebp), %eax
	jmp	L226
L217:
	.loc 2 1084 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 1084 8
	testb	%al, %al
	je	L218
	.loc 2 1088 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1088 12
	testb	%al, %al
	jne	L219
	.loc 2 1093 16
	movl	$_number_zero, -20(%ebp)
	jmp	L220
L219:
	.loc 2 1100 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1100 16
	cmpl	$0, -16(%ebp)
	je	L220
	.loc 2 1101 24
	movl	-16(%ebp), %eax
	jmp	L226
L218:
	.loc 2 1108 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1108 12
	testb	%al, %al
	jne	L221
LBB10:
	.loc 2 1114 34
	movl	_ep_uint+32, %eax
	.loc 2 1114 27
	leal	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL27:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 1114 16
	cmpl	$0, -16(%ebp)
	je	L222
	.loc 2 1115 24
	movl	-16(%ebp), %eax
	jmp	L226
L222:
	.loc 2 1116 27
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1116 16
	cmpl	$0, -16(%ebp)
	je	L220
	.loc 2 1118 24
	movl	_ep_uint+16, %eax
	.loc 2 1118 17
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL28:
	subl	$4, %esp
	.loc 2 1119 24
	movl	-16(%ebp), %eax
	jmp	L226
L221:
LBE10:
	.loc 2 1122 20
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1122 17
	testb	%al, %al
	jle	L225
	.loc 2 1127 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1127 16
	cmpl	$0, -16(%ebp)
	je	L220
	.loc 2 1128 24
	movl	-16(%ebp), %eax
	jmp	L226
L225:
	.loc 2 1135 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1135 16
	cmpl	$0, -16(%ebp)
	je	L220
	.loc 2 1136 24
	movl	-16(%ebp), %eax
	jmp	L226
L220:
	.loc 2 1139 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1140 12
	movl	$0, %eax
L226:
	.loc 2 1141 1 discriminator 2
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
	.loc 2 1144 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 1145 8
	cmpl	$0, 8(%ebp)
	jne	L228
	.loc 2 1146 16
	movl	$-1, %eax
	jmp	L240
L228:
	.loc 2 1147 8
	cmpl	$0, 16(%ebp)
	jne	L230
	.loc 2 1148 16
	movl	$-1, %eax
	jmp	L240
L230:
	.loc 2 1150 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1152 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1152 8
	cmpl	$0, -16(%ebp)
	je	L231
	.loc 2 1153 16
	movl	-16(%ebp), %eax
	jmp	L240
L231:
	.loc 2 1155 23
	leal	-25(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 1156 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1156 8
	testb	%al, %al
	jne	L232
	.loc 2 1160 20
	movzbl	-25(%ebp), %eax
	.loc 2 1160 12
	testb	%al, %al
	jne	L233
	.loc 2 1165 16
	movl	$_number_zero, -24(%ebp)
	jmp	L234
L233:
	.loc 2 1172 27
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
	.loc 2 1172 16
	cmpl	$0, -16(%ebp)
	je	L234
	.loc 2 1173 24
	movl	-16(%ebp), %eax
	jmp	L240
L232:
	.loc 2 1176 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1176 13
	testb	%al, %al
	jle	L235
	.loc 2 1180 20
	movzbl	-25(%ebp), %eax
	.loc 2 1180 12
	testb	%al, %al
	jne	L236
	.loc 2 1185 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1185 16
	cmpl	$0, -16(%ebp)
	je	L234
	.loc 2 1186 24
	movl	-16(%ebp), %eax
	jmp	L240
L236:
	.loc 2 1188 25
	movzbl	-25(%ebp), %eax
	.loc 2 1188 17
	testb	%al, %al
	jle	L237
	.loc 2 1193 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1193 16
	cmpl	$0, -16(%ebp)
	je	L234
	.loc 2 1194 24
	movl	-16(%ebp), %eax
	jmp	L240
L237:
	.loc 2 1201 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1201 16
	cmpl	$0, -16(%ebp)
	je	L234
	.loc 2 1202 24
	movl	-16(%ebp), %eax
	jmp	L240
L235:
	.loc 2 1209 20
	movzbl	-25(%ebp), %eax
	.loc 2 1209 12
	testb	%al, %al
	jne	L238
	.loc 2 1214 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1214 16
	cmpl	$0, -16(%ebp)
	je	L234
	.loc 2 1215 24
	movl	-16(%ebp), %eax
	jmp	L240
L238:
	.loc 2 1217 25
	movzbl	-25(%ebp), %eax
	.loc 2 1217 17
	testb	%al, %al
	jle	L239
	.loc 2 1222 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1222 16
	cmpl	$0, -16(%ebp)
	je	L234
	.loc 2 1223 24
	movl	-16(%ebp), %eax
	jmp	L240
L239:
	.loc 2 1230 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1230 16
	cmpl	$0, -16(%ebp)
	je	L234
	.loc 2 1231 24
	movl	-16(%ebp), %eax
	jmp	L240
L234:
	.loc 2 1234 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1235 12
	movl	$0, %eax
L240:
	.loc 2 1236 1 discriminator 3
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
	.loc 2 1239 1
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
	.loc 2 1240 8
	cmpl	$0, 8(%ebp)
	jne	L242
	.loc 2 1241 16
	movl	$-1, %eax
	jmp	L254
L242:
	.loc 2 1242 8
	cmpl	$0, 20(%ebp)
	jne	L244
	.loc 2 1243 16
	movl	$-1, %eax
	jmp	L254
L244:
	.loc 2 1245 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1247 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1247 8
	cmpl	$0, -16(%ebp)
	je	L245
	.loc 2 1248 16
	movl	-16(%ebp), %eax
	jmp	L254
L245:
	.loc 2 1250 23
	leal	-29(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 1251 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1251 8
	testb	%al, %al
	jne	L246
	.loc 2 1255 20
	movzbl	-29(%ebp), %eax
	.loc 2 1255 12
	testb	%al, %al
	jne	L247
	.loc 2 1260 16
	movl	$_number_zero, -28(%ebp)
	jmp	L248
L247:
	.loc 2 1267 27
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
	.loc 2 1267 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1268 24
	movl	-16(%ebp), %eax
	jmp	L254
L246:
	.loc 2 1271 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1271 13
	testb	%al, %al
	jle	L249
	.loc 2 1275 20
	movzbl	-29(%ebp), %eax
	.loc 2 1275 12
	testb	%al, %al
	jne	L250
	.loc 2 1280 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1280 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1281 24
	movl	-16(%ebp), %eax
	jmp	L254
L250:
	.loc 2 1283 25
	movzbl	-29(%ebp), %eax
	.loc 2 1283 17
	testb	%al, %al
	jle	L251
	.loc 2 1288 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1288 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1289 24
	movl	-16(%ebp), %eax
	jmp	L254
L251:
	.loc 2 1296 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1296 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1297 24
	movl	-16(%ebp), %eax
	jmp	L254
L249:
	.loc 2 1304 20
	movzbl	-29(%ebp), %eax
	.loc 2 1304 12
	testb	%al, %al
	jne	L252
	.loc 2 1309 27
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1309 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1310 24
	movl	-16(%ebp), %eax
	jmp	L254
L252:
	.loc 2 1312 25
	movzbl	-29(%ebp), %eax
	.loc 2 1312 17
	testb	%al, %al
	jle	L253
	.loc 2 1317 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1317 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1318 24
	movl	-16(%ebp), %eax
	jmp	L254
L253:
	.loc 2 1325 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
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
	.loc 2 1325 16
	cmpl	$0, -16(%ebp)
	je	L248
	.loc 2 1326 24
	movl	-16(%ebp), %eax
	jmp	L254
L248:
	.loc 2 1329 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1330 12
	movl	$0, %eax
L254:
	.loc 2 1331 1 discriminator 3
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
	.loc 2 1334 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 1335 8
	cmpl	$0, 8(%ebp)
	jne	L256
	.loc 2 1336 16
	movl	$-1, %eax
	jmp	L271
L256:
	.loc 2 1337 8
	cmpl	$0, 12(%ebp)
	jne	L258
	.loc 2 1338 16
	movl	$-1, %eax
	jmp	L271
L258:
	.loc 2 1339 8
	cmpl	$0, 16(%ebp)
	jne	L259
	.loc 2 1340 16
	movl	$-1, %eax
	jmp	L271
L259:
	.loc 2 1342 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1344 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 1344 8
	cmpl	$0, -16(%ebp)
	je	L260
	.loc 2 1345 16
	movl	-16(%ebp), %eax
	jmp	L271
L260:
	.loc 2 1346 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1346 8
	testb	%al, %al
	jne	L261
	.loc 2 1350 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 1350 12
	testb	%al, %al
	je	L262
	.loc 2 1355 16
	movl	$_number_zero, -20(%ebp)
	jmp	L267
L262:
LBB11:
	.loc 2 1363 34
	movl	_ep_uint+32, %eax
	.loc 2 1363 27
	leal	-24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL29:
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	.loc 2 1363 16
	cmpl	$0, -16(%ebp)
	je	L264
	.loc 2 1364 24
	movl	-16(%ebp), %eax
	jmp	L271
L264:
	.loc 2 1365 27
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$-1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1365 16
	cmpl	$0, -16(%ebp)
	je	L267
	.loc 2 1367 24
	movl	_ep_uint+16, %eax
	.loc 2 1367 17
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL30:
	subl	$4, %esp
	.loc 2 1368 24
	movl	-16(%ebp), %eax
	jmp	L271
L261:
LBE11:
	.loc 2 1373 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1373 13
	testb	%al, %al
	jle	L268
	.loc 2 1377 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 1377 12
	testb	%al, %al
	je	L269
	.loc 2 1382 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1382 16
	cmpl	$0, -16(%ebp)
	je	L267
	.loc 2 1383 24
	movl	-16(%ebp), %eax
	jmp	L271
L269:
	.loc 2 1390 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1390 16
	cmpl	$0, -16(%ebp)
	je	L267
	.loc 2 1391 24
	movl	-16(%ebp), %eax
	jmp	L271
L268:
	.loc 2 1399 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 1399 12
	testb	%al, %al
	je	L270
	.loc 2 1404 27
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -16(%ebp)
	.loc 2 1404 16
	cmpl	$0, -16(%ebp)
	je	L267
	.loc 2 1405 24
	movl	-16(%ebp), %eax
	jmp	L271
L270:
	.loc 2 1412 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 1412 16
	cmpl	$0, -16(%ebp)
	je	L267
	.loc 2 1413 24
	movl	-16(%ebp), %eax
	jmp	L271
L267:
	.loc 2 1416 8
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1417 12
	movl	$0, %eax
L271:
	.loc 2 1418 1 discriminator 3
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
	.loc 2 1421 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 1422 8
	cmpl	$0, 8(%ebp)
	jne	L273
	.loc 2 1423 16
	movl	$-1, %eax
	jmp	L287
L273:
	.loc 2 1424 8
	cmpl	$0, 12(%ebp)
	jne	L275
	.loc 2 1425 16
	movl	$-1, %eax
	jmp	L287
L275:
	.loc 2 1426 8
	cmpl	$0, 16(%ebp)
	jne	L276
	.loc 2 1427 16
	movl	$-1, %eax
	jmp	L287
L276:
	.loc 2 1429 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1430 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 1432 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 1432 8
	cmpl	$0, -20(%ebp)
	je	L277
	.loc 2 1433 16
	movl	-20(%ebp), %eax
	jmp	L287
L277:
	.loc 2 1434 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 1434 8
	cmpl	$0, -20(%ebp)
	je	L278
	.loc 2 1435 16
	movl	-20(%ebp), %eax
	jmp	L287
L278:
	.loc 2 1436 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1436 8
	testb	%al, %al
	jne	L279
	.loc 2 1440 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1440 12
	testb	%al, %al
	jne	L280
	.loc 2 1445 16
	movl	$_number_zero, -24(%ebp)
	jmp	L281
L280:
	.loc 2 1452 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Negate_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1452 16
	cmpl	$0, -20(%ebp)
	je	L281
	.loc 2 1453 24
	movl	-20(%ebp), %eax
	jmp	L287
L279:
	.loc 2 1456 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1456 13
	testb	%al, %al
	jle	L282
	.loc 2 1460 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1460 12
	testb	%al, %al
	jne	L283
	.loc 2 1465 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 1465 16
	cmpl	$0, -20(%ebp)
	je	L281
	.loc 2 1466 24
	movl	-20(%ebp), %eax
	jmp	L287
L283:
	.loc 2 1468 20
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1468 17
	testb	%al, %al
	jle	L284
	.loc 2 1473 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1473 16
	cmpl	$0, -20(%ebp)
	je	L281
	.loc 2 1474 24
	movl	-20(%ebp), %eax
	jmp	L287
L284:
	.loc 2 1481 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1481 16
	cmpl	$0, -20(%ebp)
	je	L281
	.loc 2 1482 24
	movl	-20(%ebp), %eax
	jmp	L287
L282:
	.loc 2 1489 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1489 12
	testb	%al, %al
	jne	L285
	.loc 2 1494 27
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DuplicateNumber
	movl	%eax, -20(%ebp)
	.loc 2 1494 16
	cmpl	$0, -20(%ebp)
	je	L281
	.loc 2 1495 24
	movl	-20(%ebp), %eax
	jmp	L287
L285:
	.loc 2 1497 20
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 1497 17
	testb	%al, %al
	jle	L286
	.loc 2 1502 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_AddU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1502 16
	cmpl	$0, -20(%ebp)
	je	L281
	.loc 2 1503 24
	movl	-20(%ebp), %eax
	jmp	L287
L286:
	.loc 2 1510 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-24(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_SubtructU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 1510 16
	cmpl	$0, -20(%ebp)
	je	L281
	.loc 2 1511 24
	movl	-20(%ebp), %eax
	jmp	L287
L281:
	.loc 2 1514 8
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1515 12
	movl	$0, %eax
L287:
	.loc 2 1516 1 discriminator 3
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
	.file 17 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/combaseapi.h"
	.file 18 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/objidl.h"
	.file 19 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oleidl.h"
	.file 20 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/servprov.h"
	.file 21 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oaidl.h"
	.file 22 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/msxml.h"
	.file 23 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/urlmon.h"
	.file 24 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/propidl.h"
	.file 25 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oleauto.h"
	.file 26 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winioctl.h"
	.file 27 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winsmcrd.h"
	.file 28 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winscard.h"
	.file 29 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/commdlg.h"
	.file 30 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 31 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc.h"
	.file 32 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_uint.h"
	.file 33 "../pmc_sint.h"
	.file 34 "../pmc_sint_internal.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x6ced
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
	.uleb128 0x16
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0xd3
	.byte	0x11
	.byte	0x95
	.byte	0xe
	.long	0x1eeb
	.uleb128 0x17
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
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
	.uleb128 0x18
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0xd3
	.byte	0x10
	.word	0x200
	.byte	0x6
	.long	0x3101
	.uleb128 0x17
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0x17
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0x17
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0x17
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0x17
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0x17
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0x17
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0x17
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0x17
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0x17
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0x17
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0x17
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0x17
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0x17
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0x17
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0x17
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0x17
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0x17
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0x17
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0x17
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0x17
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0x17
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0x17
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0x17
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0x17
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0x17
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0x17
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0x17
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0x17
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0x17
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0x17
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0x17
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0x17
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0x17
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0x17
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0x17
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0x17
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0x17
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0x17
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0x17
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0x17
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0x17
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x17
	.ascii "VT_VERSIONED_STREAM\0"
	.byte	0x49
	.uleb128 0x19
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x19
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x19
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x19
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x19
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x19
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x19
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x19
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x15
	.ascii "IID_IMallocSpy\0"
	.byte	0x12
	.word	0x1dbd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindCtx\0"
	.byte	0x12
	.word	0x1f3a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumMoniker\0"
	.byte	0x12
	.word	0x204a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRunnableObject\0"
	.byte	0x12
	.word	0x20e8
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x12
	.word	0x218e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersist\0"
	.byte	0x12
	.word	0x2269
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersistStream\0"
	.byte	0x12
	.word	0x22be
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMoniker\0"
	.byte	0x12
	.word	0x236a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IROTData\0"
	.byte	0x12
	.word	0x2558
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x12
	.word	0x25b5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IStorage\0"
	.byte	0x12
	.word	0x2658
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersistFile\0"
	.byte	0x12
	.word	0x2841
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPersistStorage\0"
	.byte	0x12
	.word	0x28f1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ILockBytes\0"
	.byte	0x12
	.word	0x29b1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x12
	.word	0x2ac0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x12
	.word	0x2b6c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRootStorage\0"
	.byte	0x12
	.word	0x2c08
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAdviseSink\0"
	.byte	0x12
	.word	0x2cb3
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x12
	.word	0x2d73
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAdviseSink2\0"
	.byte	0x12
	.word	0x2ea9
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x12
	.word	0x2f2e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDataObject\0"
	.byte	0x12
	.word	0x2ff4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x12
	.word	0x3118
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMessageFilter\0"
	.byte	0x12
	.word	0x31d3
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x12
	.word	0x325d
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x12
	.word	0x325f
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x12
	.word	0x3261
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x12
	.word	0x3263
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x12
	.word	0x3265
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x12
	.word	0x3267
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x12
	.word	0x3269
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x12
	.word	0x326b
	.byte	0x14
	.long	0x7de
	.uleb128 0x15
	.ascii "IID_IClassActivator\0"
	.byte	0x12
	.word	0x3273
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IFillLockBytes\0"
	.byte	0x12
	.word	0x32d5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IProgressNotify\0"
	.byte	0x12
	.word	0x3389
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ILayoutStorage\0"
	.byte	0x12
	.word	0x33ee
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBlockingLock\0"
	.byte	0x12
	.word	0x3492
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x12
	.word	0x34f7
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOplockStorage\0"
	.byte	0x12
	.word	0x354e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x12
	.word	0x35d5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IUrlMon\0"
	.byte	0x12
	.word	0x364d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x12
	.word	0x36bc
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x12
	.word	0x3710
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x12
	.word	0x3786
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IProcessLock\0"
	.byte	0x12
	.word	0x37e5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISurrogateService\0"
	.byte	0x12
	.word	0x3848
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInitializeSpy\0"
	.byte	0x12
	.word	0x38f2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x12
	.word	0x398a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x13
	.byte	0xab
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleCache\0"
	.byte	0x13
	.word	0x162
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleCache2\0"
	.byte	0x13
	.word	0x229
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleCacheControl\0"
	.byte	0x13
	.word	0x2d4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IParseDisplayName\0"
	.byte	0x13
	.word	0x33c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleContainer\0"
	.byte	0x13
	.word	0x39c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleClientSite\0"
	.byte	0x13
	.word	0x417
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleObject\0"
	.byte	0x13
	.word	0x4fe
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x13
	.word	0x6fe
	.byte	0x16
	.long	0x1d06
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x13
	.word	0x6ff
	.byte	0x16
	.long	0x1d06
	.uleb128 0x15
	.ascii "IID_IOleWindow\0"
	.byte	0x13
	.word	0x724
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleLink\0"
	.byte	0x13
	.word	0x79a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleItemContainer\0"
	.byte	0x13
	.word	0x8bf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x13
	.word	0x976
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x13
	.word	0xa1c
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x13
	.word	0xaf8
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x13
	.word	0xbf1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x13
	.word	0xc91
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IContinue\0"
	.byte	0x13
	.word	0xda4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IViewObject\0"
	.byte	0x13
	.word	0xdf9
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IViewObject2\0"
	.byte	0x13
	.word	0xf2a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDropSource\0"
	.byte	0x13
	.word	0xfd2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDropTarget\0"
	.byte	0x13
	.word	0x105b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x13
	.word	0x10ff
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x13
	.word	0x1176
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_IServiceProvider\0"
	.byte	0x14
	.byte	0x4d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x15
	.byte	0xf1
	.byte	0x16
	.long	0x1d06
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x15
	.byte	0xf2
	.byte	0x16
	.long	0x1d06
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x15
	.word	0x33b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x15
	.word	0x562
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x15
	.word	0x7b2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x15
	.word	0x8ba
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDispatch\0"
	.byte	0x15
	.word	0x9b6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x15
	.word	0xa87
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeComp\0"
	.byte	0x15
	.word	0xb35
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeInfo\0"
	.byte	0x15
	.word	0xbd9
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeInfo2\0"
	.byte	0x15
	.word	0xe50
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeLib\0"
	.byte	0x15
	.word	0x10d6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeLib2\0"
	.byte	0x15
	.word	0x123d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x15
	.word	0x1361
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IErrorInfo\0"
	.byte	0x15
	.word	0x13da
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x15
	.word	0x147d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x15
	.word	0x1520
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeFactory\0"
	.byte	0x15
	.word	0x1575
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ITypeMarshal\0"
	.byte	0x15
	.word	0x15d0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IRecordInfo\0"
	.byte	0x15
	.word	0x1684
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IErrorLog\0"
	.byte	0x15
	.word	0x1820
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPropertyBag\0"
	.byte	0x15
	.word	0x187a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x16
	.byte	0xeb
	.byte	0x18
	.long	0x1d06
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x16
	.byte	0xec
	.byte	0x18
	.long	0x1d06
	.uleb128 0x13
	.ascii "LIBID_MSXML\0"
	.byte	0x16
	.byte	0xfc
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x16
	.word	0x100
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x16
	.word	0x127
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x16
	.word	0x1fd
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x16
	.word	0x266
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x16
	.word	0x375
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x16
	.word	0x3b0
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x16
	.word	0x404
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x16
	.word	0x496
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x16
	.word	0x50f
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMText\0"
	.byte	0x16
	.word	0x5a6
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x16
	.word	0x625
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x16
	.word	0x69e
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x16
	.word	0x717
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x16
	.word	0x792
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x16
	.word	0x80b
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x16
	.word	0x87f
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x16
	.word	0x8f8
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x16
	.word	0x961
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXTLRuntime\0"
	.byte	0x16
	.word	0x9a6
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x16
	.word	0xa3d
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_DOMDocument\0"
	.byte	0x16
	.word	0xa5c
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x16
	.word	0xa60
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x16
	.word	0xa67
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x16
	.word	0xacd
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x16
	.word	0xad4
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x16
	.word	0xb0d
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x16
	.word	0xb14
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDocument\0"
	.byte	0x16
	.word	0xb4a
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLDocument2\0"
	.byte	0x16
	.word	0xbb2
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLElement\0"
	.byte	0x16
	.word	0xc24
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLElement2\0"
	.byte	0x16
	.word	0xc82
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLAttribute\0"
	.byte	0x16
	.word	0xce5
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IXMLError\0"
	.byte	0x16
	.word	0xd11
	.byte	0x14
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_XMLDocument\0"
	.byte	0x16
	.word	0xd2e
	.byte	0x16
	.long	0x7cb
	.uleb128 0x15
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x17
	.word	0x17e
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x17
	.word	0x17f
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x17
	.word	0x180
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x17
	.word	0x181
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x17
	.word	0x182
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x17
	.word	0x183
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x17
	.word	0x184
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x17
	.word	0x185
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x17
	.word	0x186
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x17
	.word	0x187
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x17
	.word	0x188
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x17
	.word	0x189
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x17
	.word	0x18a
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x17
	.word	0x193
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x17
	.word	0x194
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x17
	.word	0x195
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x17
	.word	0x196
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x17
	.word	0x197
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x17
	.word	0x198
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_FileProtocol\0"
	.byte	0x17
	.word	0x199
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_MkProtocol\0"
	.byte	0x17
	.word	0x19a
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x17
	.word	0x19b
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x17
	.word	0x19c
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x17
	.word	0x19d
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x17
	.word	0x19e
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x17
	.word	0x19f
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IPersistMoniker\0"
	.byte	0x17
	.word	0x250
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IMonikerProp\0"
	.byte	0x17
	.word	0x321
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindProtocol\0"
	.byte	0x17
	.word	0x37f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBinding\0"
	.byte	0x17
	.word	0x3e0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x17
	.word	0x575
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x17
	.word	0x6a5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAuthenticate\0"
	.byte	0x17
	.word	0x764
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x17
	.word	0x7d0
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x17
	.word	0x841
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x17
	.word	0x8c1
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x17
	.word	0x93b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x17
	.word	0x9bf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x17
	.word	0xa30
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICodeInstall\0"
	.byte	0x17
	.word	0xa9b
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetInfo\0"
	.byte	0x17
	.word	0x10a5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IHttpSecurity\0"
	.byte	0x17
	.word	0x1112
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x17
	.word	0x1179
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x17
	.word	0x11f8
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "SID_BindHost\0"
	.byte	0x17
	.word	0x1335
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindHost\0"
	.byte	0x17
	.word	0x133f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternet\0"
	.byte	0x17
	.word	0x144d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x17
	.word	0x14ac
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x17
	.word	0x1526
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x17
	.word	0x15bf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocol\0"
	.byte	0x17
	.word	0x1684
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x17
	.word	0x181a
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x17
	.word	0x18bd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetSession\0"
	.byte	0x17
	.word	0x193f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x17
	.word	0x1a48
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetPriority\0"
	.byte	0x17
	.word	0x1ab2
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x17
	.word	0x1b4e
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x17
	.word	0x1cb2
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x17
	.word	0x1cb3
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x17
	.word	0x1ccb
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x17
	.word	0x1d69
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x17
	.word	0x210f
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x17
	.word	0x22c4
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x17
	.word	0x269c
	.byte	0x12
	.long	0x7b8
	.uleb128 0x15
	.ascii "IID_ISoftDistExt\0"
	.byte	0x17
	.word	0x26cc
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x17
	.word	0x2778
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IDataFilter\0"
	.byte	0x17
	.word	0x27e6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x17
	.word	0x28a6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x17
	.word	0x2933
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x17
	.word	0x2941
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IGetBindHandle\0"
	.byte	0x17
	.word	0x29a5
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x17
	.word	0x2a0d
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPropertyStorage\0"
	.byte	0x18
	.word	0x1b7
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x18
	.word	0x304
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x18
	.word	0x3a6
	.byte	0x13
	.long	0x7a7
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x18
	.word	0x444
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_StdOle\0"
	.byte	0x19
	.byte	0x15
	.byte	0x12
	.long	0x7b8
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x1a
	.byte	0xc
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x1a
	.byte	0xd
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x1a
	.byte	0xe
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x1a
	.byte	0xf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x1a
	.byte	0x10
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x1a
	.byte	0x11
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x1a
	.byte	0x12
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x1a
	.byte	0x13
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x1a
	.byte	0x14
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x1a
	.byte	0x15
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x1a
	.byte	0x16
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x1a
	.byte	0x17
	.byte	0x13
	.long	0x7a7
	.uleb128 0x10
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1b
	.byte	0xa1
	.byte	0x12
	.long	0x4b6e
	.uleb128 0x11
	.ascii "dwProtocol\0"
	.byte	0x1b
	.byte	0xa2
	.byte	0xb
	.long	0x5b2
	.byte	0
	.uleb128 0x11
	.ascii "cbPciLength\0"
	.byte	0x1b
	.byte	0xa3
	.byte	0xb
	.long	0x5b2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1b
	.byte	0xa4
	.byte	0x5
	.long	0x4b29
	.uleb128 0x4
	.long	0x4b6e
	.uleb128 0x13
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x3c
	.long	0x4b87
	.uleb128 0x13
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x4b
	.long	0x4b87
	.uleb128 0x13
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x5a
	.long	0x4b87
	.uleb128 0x13
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1d
	.byte	0xe
	.byte	0x13
	.long	0x7a7
	.uleb128 0x13
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1d
	.byte	0xf
	.byte	0x13
	.long	0x7a7
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1e
	.byte	0x27
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1e
	.byte	0x28
	.byte	0x12
	.long	0xd3
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1e
	.byte	0x29
	.byte	0x21
	.long	0x121
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1e
	.byte	0x2a
	.byte	0x2a
	.long	0x724
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1f
	.byte	0x55
	.byte	0x11
	.long	0x4c21
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1f
	.byte	0x56
	.byte	0x11
	.long	0x4c42
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1f
	.byte	0x59
	.byte	0x12
	.long	0x4c31
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1f
	.byte	0x5a
	.byte	0x12
	.long	0x4c52
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1f
	.byte	0x65
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1f
	.byte	0x67
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1f
	.byte	0x69
	.byte	0xd
	.long	0xe3
	.uleb128 0x10
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1f
	.byte	0x6b
	.byte	0x10
	.long	0x4d7b
	.uleb128 0x11
	.ascii "COUNT_MULTI64\0"
	.byte	0x1f
	.byte	0x6d
	.byte	0xa
	.long	0x115
	.byte	0
	.uleb128 0x11
	.ascii "COUNT_MULTI32\0"
	.byte	0x1f
	.byte	0x6e
	.byte	0xa
	.long	0x115
	.byte	0x4
	.uleb128 0x11
	.ascii "COUNT_DIV64\0"
	.byte	0x1f
	.byte	0x6f
	.byte	0xa
	.long	0x115
	.byte	0x8
	.uleb128 0x11
	.ascii "COUNT_DIV32\0"
	.byte	0x1f
	.byte	0x70
	.byte	0xa
	.long	0x115
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1f
	.byte	0x71
	.byte	0x3
	.long	0x4cff
	.uleb128 0x10
	.ascii "__tag_PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1f
	.byte	0x73
	.byte	0x10
	.long	0x4e15
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1f
	.byte	0x75
	.byte	0x9
	.long	0xe3
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1f
	.byte	0x76
	.byte	0xd
	.long	0x4e15
	.byte	0x4
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1f
	.byte	0x77
	.byte	0xd
	.long	0x4e15
	.byte	0xa
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1f
	.byte	0x78
	.byte	0xd
	.long	0x4e25
	.byte	0x10
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1f
	.byte	0x79
	.byte	0x9
	.long	0xe3
	.byte	0x28
	.uleb128 0x1a
	.secrel32	LASF6
	.byte	0x1f
	.byte	0x7a
	.byte	0x9
	.long	0xe3
	.byte	0x2c
	.byte	0
	.uleb128 0xc
	.long	0xea
	.long	0x4e25
	.uleb128 0xd
	.long	0xd3
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xea
	.long	0x4e35
	.uleb128 0xd
	.long	0xd3
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x7b
	.byte	0x3
	.long	0x4d97
	.uleb128 0x10
	.ascii "__tag_PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x2c
	.byte	0x1f
	.byte	0x7d
	.byte	0x10
	.long	0x4ecd
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1f
	.byte	0x7f
	.byte	0x9
	.long	0xe3
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1f
	.byte	0x80
	.byte	0xd
	.long	0x4e15
	.byte	0x4
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1f
	.byte	0x81
	.byte	0xd
	.long	0x4e15
	.byte	0xa
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1f
	.byte	0x82
	.byte	0xd
	.long	0x4e25
	.byte	0x10
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1f
	.byte	0x83
	.byte	0x9
	.long	0xe3
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.ascii "PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x84
	.byte	0x3
	.long	0x4e5d
	.uleb128 0x10
	.ascii "__tag_PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1f
	.byte	0x86
	.byte	0x10
	.long	0x4f71
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1f
	.byte	0x88
	.byte	0x9
	.long	0xe3
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1f
	.byte	0x89
	.byte	0xd
	.long	0x4e15
	.byte	0x4
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1f
	.byte	0x8a
	.byte	0xd
	.long	0x4e15
	.byte	0xa
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1f
	.byte	0x8b
	.byte	0xd
	.long	0x4e25
	.byte	0x10
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1f
	.byte	0x8c
	.byte	0x9
	.long	0xe3
	.byte	0x28
	.uleb128 0x1a
	.secrel32	LASF6
	.byte	0x1f
	.byte	0x8d
	.byte	0x9
	.long	0xe3
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.ascii "PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x8e
	.byte	0x3
	.long	0x4ef4
	.uleb128 0x10
	.ascii "__tag_PMC_NUMBER_FORMAT_INFO\0"
	.byte	0xc0
	.byte	0x1f
	.byte	0x90
	.byte	0x10
	.long	0x507b
	.uleb128 0x11
	.ascii "Currency\0"
	.byte	0x1f
	.byte	0x92
	.byte	0x25
	.long	0x4e35
	.byte	0
	.uleb128 0x11
	.ascii "Number\0"
	.byte	0x1f
	.byte	0x93
	.byte	0x24
	.long	0x4ecd
	.byte	0x30
	.uleb128 0x11
	.ascii "Percent\0"
	.byte	0x1f
	.byte	0x94
	.byte	0x24
	.long	0x4f71
	.byte	0x5c
	.uleb128 0x11
	.ascii "CurrencySymbol\0"
	.byte	0x1f
	.byte	0x95
	.byte	0xd
	.long	0x4e15
	.byte	0x8c
	.uleb128 0x11
	.ascii "NativeDigits\0"
	.byte	0x1f
	.byte	0x96
	.byte	0xd
	.long	0x4e25
	.byte	0x92
	.uleb128 0x11
	.ascii "NegativeSign\0"
	.byte	0x1f
	.byte	0x97
	.byte	0xd
	.long	0x4e15
	.byte	0xa8
	.uleb128 0x11
	.ascii "PositiveSign\0"
	.byte	0x1f
	.byte	0x98
	.byte	0xd
	.long	0x4e15
	.byte	0xae
	.uleb128 0x11
	.ascii "PercentSymbol\0"
	.byte	0x1f
	.byte	0x99
	.byte	0xd
	.long	0x4e15
	.byte	0xb4
	.uleb128 0x11
	.ascii "PerMilleSymbol\0"
	.byte	0x1f
	.byte	0x9a
	.byte	0xd
	.long	0x4e15
	.byte	0xba
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x9b
	.byte	0x3
	.long	0x4f98
	.uleb128 0x10
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x20
	.byte	0x26
	.byte	0x16
	.long	0x50f5
	.uleb128 0x1b
	.secrel32	LASF7
	.byte	0x20
	.byte	0x28
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF8
	.byte	0x20
	.byte	0x29
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF9
	.byte	0x20
	.byte	0x2a
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF10
	.byte	0x20
	.byte	0x2b
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x509a
	.uleb128 0x1c
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x4
	.byte	0x20
	.byte	0x24
	.byte	0xb
	.long	0x5138
	.uleb128 0x1d
	.ascii "FLAGS\0"
	.byte	0x20
	.byte	0x2c
	.byte	0xb
	.long	0x50f5
	.uleb128 0x1d
	.ascii "__dummy\0"
	.byte	0x20
	.byte	0x2e
	.byte	0x13
	.long	0x4c85
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x20
	.byte	0x35
	.byte	0x2a
	.long	0x5150
	.uleb128 0x6
	.byte	0x4
	.long	0x50fa
	.uleb128 0x1e
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x11c
	.byte	0x20
	.byte	0x37
	.byte	0x14
	.long	0x5862
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x20
	.byte	0x3a
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x20
	.byte	0x3b
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x20
	.byte	0x3c
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x20
	.byte	0x3d
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x20
	.byte	0x3e
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "GetStatisticsInfo\0"
	.byte	0x20
	.byte	0x41
	.byte	0x2e
	.long	0x5873
	.byte	0x4
	.uleb128 0x11
	.ascii "From_I\0"
	.byte	0x20
	.byte	0x44
	.byte	0x39
	.long	0x5893
	.byte	0x8
	.uleb128 0x11
	.ascii "From_L\0"
	.byte	0x20
	.byte	0x47
	.byte	0x39
	.long	0x58ad
	.byte	0xc
	.uleb128 0x11
	.ascii "Dispose\0"
	.byte	0x20
	.byte	0x4a
	.byte	0x2e
	.long	0x58be
	.byte	0x10
	.uleb128 0x11
	.ascii "GetConstantValue_I\0"
	.byte	0x20
	.byte	0x4d
	.byte	0x39
	.long	0x58d8
	.byte	0x14
	.uleb128 0x11
	.ascii "FromByteArray\0"
	.byte	0x20
	.byte	0x50
	.byte	0x39
	.long	0x58f7
	.byte	0x18
	.uleb128 0x11
	.ascii "ToByteArray\0"
	.byte	0x20
	.byte	0x51
	.byte	0x39
	.long	0x5921
	.byte	0x1c
	.uleb128 0x11
	.ascii "Clone_X\0"
	.byte	0x20
	.byte	0x54
	.byte	0x39
	.long	0x593b
	.byte	0x20
	.uleb128 0x11
	.ascii "To_X_I\0"
	.byte	0x20
	.byte	0x57
	.byte	0x39
	.long	0x595b
	.byte	0x24
	.uleb128 0x11
	.ascii "To_X_L\0"
	.byte	0x20
	.byte	0x58
	.byte	0x39
	.long	0x597b
	.byte	0x28
	.uleb128 0x11
	.ascii "InitializeNumberFormatInfo\0"
	.byte	0x20
	.byte	0x5b
	.byte	0x2e
	.long	0x5992
	.byte	0x2c
	.uleb128 0x11
	.ascii "ToString\0"
	.byte	0x20
	.byte	0x5c
	.byte	0x3a
	.long	0x59c0
	.byte	0x30
	.uleb128 0x11
	.ascii "TryParse\0"
	.byte	0x20
	.byte	0x5d
	.byte	0x39
	.long	0x59e4
	.byte	0x34
	.uleb128 0x11
	.ascii "Add_I_X\0"
	.byte	0x20
	.byte	0x60
	.byte	0x39
	.long	0x5a03
	.byte	0x38
	.uleb128 0x11
	.ascii "Add_L_X\0"
	.byte	0x20
	.byte	0x61
	.byte	0x39
	.long	0x5a22
	.byte	0x3c
	.uleb128 0x11
	.ascii "Add_X_I\0"
	.byte	0x20
	.byte	0x62
	.byte	0x39
	.long	0x5a41
	.byte	0x40
	.uleb128 0x11
	.ascii "Add_X_L\0"
	.byte	0x20
	.byte	0x63
	.byte	0x39
	.long	0x5a60
	.byte	0x44
	.uleb128 0x11
	.ascii "Add_X_X\0"
	.byte	0x20
	.byte	0x64
	.byte	0x39
	.long	0x5a7f
	.byte	0x48
	.uleb128 0x11
	.ascii "Subtruct_I_X\0"
	.byte	0x20
	.byte	0x67
	.byte	0x39
	.long	0x5a9e
	.byte	0x4c
	.uleb128 0x11
	.ascii "Subtruct_L_X\0"
	.byte	0x20
	.byte	0x68
	.byte	0x39
	.long	0x5abd
	.byte	0x50
	.uleb128 0x11
	.ascii "Subtruct_X_I\0"
	.byte	0x20
	.byte	0x69
	.byte	0x39
	.long	0x5a41
	.byte	0x54
	.uleb128 0x11
	.ascii "Subtruct_X_L\0"
	.byte	0x20
	.byte	0x6a
	.byte	0x39
	.long	0x5a60
	.byte	0x58
	.uleb128 0x11
	.ascii "Subtruct_X_X\0"
	.byte	0x20
	.byte	0x6b
	.byte	0x39
	.long	0x5a7f
	.byte	0x5c
	.uleb128 0x11
	.ascii "Multiply_I_X\0"
	.byte	0x20
	.byte	0x6e
	.byte	0x39
	.long	0x5a03
	.byte	0x60
	.uleb128 0x11
	.ascii "Multiply_L_X\0"
	.byte	0x20
	.byte	0x6f
	.byte	0x39
	.long	0x5a22
	.byte	0x64
	.uleb128 0x11
	.ascii "Multiply_X_I\0"
	.byte	0x20
	.byte	0x70
	.byte	0x39
	.long	0x5a41
	.byte	0x68
	.uleb128 0x11
	.ascii "Multiply_X_L\0"
	.byte	0x20
	.byte	0x71
	.byte	0x39
	.long	0x5a60
	.byte	0x6c
	.uleb128 0x11
	.ascii "Multiply_X_X\0"
	.byte	0x20
	.byte	0x72
	.byte	0x39
	.long	0x5a7f
	.byte	0x70
	.uleb128 0x11
	.ascii "DivRem_I_X\0"
	.byte	0x20
	.byte	0x75
	.byte	0x39
	.long	0x5ae1
	.byte	0x74
	.uleb128 0x11
	.ascii "DivRem_L_X\0"
	.byte	0x20
	.byte	0x76
	.byte	0x39
	.long	0x5b05
	.byte	0x78
	.uleb128 0x11
	.ascii "DivRem_X_I\0"
	.byte	0x20
	.byte	0x77
	.byte	0x39
	.long	0x5b29
	.byte	0x7c
	.uleb128 0x11
	.ascii "DivRem_X_L\0"
	.byte	0x20
	.byte	0x78
	.byte	0x39
	.long	0x5b4d
	.byte	0x80
	.uleb128 0x11
	.ascii "DivRem_X_X\0"
	.byte	0x20
	.byte	0x79
	.byte	0x39
	.long	0x5b71
	.byte	0x84
	.uleb128 0x11
	.ascii "LeftShift_X_I\0"
	.byte	0x20
	.byte	0x7c
	.byte	0x39
	.long	0x5a41
	.byte	0x88
	.uleb128 0x11
	.ascii "RightShift_X_I\0"
	.byte	0x20
	.byte	0x7f
	.byte	0x39
	.long	0x5a41
	.byte	0x8c
	.uleb128 0x11
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x20
	.byte	0x82
	.byte	0x39
	.long	0x5a9e
	.byte	0x90
	.uleb128 0x11
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x20
	.byte	0x83
	.byte	0x39
	.long	0x5abd
	.byte	0x94
	.uleb128 0x11
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x20
	.byte	0x84
	.byte	0x39
	.long	0x5b90
	.byte	0x98
	.uleb128 0x11
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x20
	.byte	0x85
	.byte	0x39
	.long	0x5baf
	.byte	0x9c
	.uleb128 0x11
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x20
	.byte	0x86
	.byte	0x39
	.long	0x5a7f
	.byte	0xa0
	.uleb128 0x11
	.ascii "BitwiseOr_I_X\0"
	.byte	0x20
	.byte	0x89
	.byte	0x39
	.long	0x5a03
	.byte	0xa4
	.uleb128 0x11
	.ascii "BitwiseOr_L_X\0"
	.byte	0x20
	.byte	0x8a
	.byte	0x39
	.long	0x5a22
	.byte	0xa8
	.uleb128 0x11
	.ascii "BitwiseOr_X_I\0"
	.byte	0x20
	.byte	0x8b
	.byte	0x39
	.long	0x5a41
	.byte	0xac
	.uleb128 0x11
	.ascii "BitwiseOr_X_L\0"
	.byte	0x20
	.byte	0x8c
	.byte	0x39
	.long	0x5a60
	.byte	0xb0
	.uleb128 0x11
	.ascii "BitwiseOr_X_X\0"
	.byte	0x20
	.byte	0x8d
	.byte	0x39
	.long	0x5a7f
	.byte	0xb4
	.uleb128 0x11
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x20
	.byte	0x90
	.byte	0x39
	.long	0x5a03
	.byte	0xb8
	.uleb128 0x11
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x20
	.byte	0x91
	.byte	0x39
	.long	0x5a22
	.byte	0xbc
	.uleb128 0x11
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x20
	.byte	0x92
	.byte	0x39
	.long	0x5a41
	.byte	0xc0
	.uleb128 0x11
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x20
	.byte	0x93
	.byte	0x39
	.long	0x5a60
	.byte	0xc4
	.uleb128 0x11
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x20
	.byte	0x94
	.byte	0x39
	.long	0x5a7f
	.byte	0xc8
	.uleb128 0x11
	.ascii "Compare_I_X\0"
	.byte	0x20
	.byte	0x97
	.byte	0x39
	.long	0x5bd4
	.byte	0xcc
	.uleb128 0x11
	.ascii "Compare_L_X\0"
	.byte	0x20
	.byte	0x98
	.byte	0x39
	.long	0x5bf3
	.byte	0xd0
	.uleb128 0x11
	.ascii "Compare_X_I\0"
	.byte	0x20
	.byte	0x99
	.byte	0x39
	.long	0x5c12
	.byte	0xd4
	.uleb128 0x11
	.ascii "Compare_X_L\0"
	.byte	0x20
	.byte	0x9a
	.byte	0x39
	.long	0x5c31
	.byte	0xd8
	.uleb128 0x11
	.ascii "Compare_X_X\0"
	.byte	0x20
	.byte	0x9b
	.byte	0x39
	.long	0x5c50
	.byte	0xdc
	.uleb128 0x11
	.ascii "Equals_I_X\0"
	.byte	0x20
	.byte	0x9e
	.byte	0x39
	.long	0x5bd4
	.byte	0xe0
	.uleb128 0x11
	.ascii "Equals_L_X\0"
	.byte	0x20
	.byte	0x9f
	.byte	0x39
	.long	0x5bf3
	.byte	0xe4
	.uleb128 0x11
	.ascii "Equals_X_I\0"
	.byte	0x20
	.byte	0xa0
	.byte	0x39
	.long	0x5c12
	.byte	0xe8
	.uleb128 0x11
	.ascii "Equals_X_L\0"
	.byte	0x20
	.byte	0xa1
	.byte	0x39
	.long	0x5c31
	.byte	0xec
	.uleb128 0x11
	.ascii "Equals_X_X\0"
	.byte	0x20
	.byte	0xa2
	.byte	0x39
	.long	0x5c50
	.byte	0xf0
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x20
	.byte	0xa5
	.byte	0x39
	.long	0x5a03
	.byte	0xf4
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x20
	.byte	0xa6
	.byte	0x39
	.long	0x5a22
	.byte	0xf8
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x20
	.byte	0xa7
	.byte	0x39
	.long	0x5a41
	.byte	0xfc
	.uleb128 0x20
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x20
	.byte	0xa8
	.byte	0x39
	.long	0x5a60
	.word	0x100
	.uleb128 0x20
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x20
	.byte	0xa9
	.byte	0x39
	.long	0x5a7f
	.word	0x104
	.uleb128 0x20
	.ascii "Pow_X_I\0"
	.byte	0x20
	.byte	0xac
	.byte	0x39
	.long	0x5a41
	.word	0x108
	.uleb128 0x20
	.ascii "ModPow_X_X_X\0"
	.byte	0x20
	.byte	0xaf
	.byte	0x39
	.long	0x5c74
	.word	0x10c
	.uleb128 0x20
	.ascii "FromByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb2
	.byte	0x39
	.long	0x5c98
	.word	0x110
	.uleb128 0x20
	.ascii "ToByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb3
	.byte	0x39
	.long	0x5cc1
	.word	0x114
	.uleb128 0x20
	.ascii "TryParseForSINT\0"
	.byte	0x20
	.byte	0xb4
	.byte	0x39
	.long	0x5cea
	.word	0x118
	.byte	0
	.uleb128 0xe
	.long	0x586d
	.uleb128 0xf
	.long	0x586d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4d7b
	.uleb128 0x6
	.byte	0x4
	.long	0x5862
	.uleb128 0x21
	.long	0x4ca9
	.long	0x588d
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5138
	.uleb128 0x6
	.byte	0x4
	.long	0x5879
	.uleb128 0x21
	.long	0x4ca9
	.long	0x58ad
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5899
	.uleb128 0xe
	.long	0x58be
	.uleb128 0xf
	.long	0x5138
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58b3
	.uleb128 0x21
	.long	0x4ca9
	.long	0x58d8
	.uleb128 0xf
	.long	0x4cc1
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58c4
	.uleb128 0x21
	.long	0x4ca9
	.long	0x58f7
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58de
	.uleb128 0x21
	.long	0x4ca9
	.long	0x591b
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x591b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc4
	.uleb128 0x6
	.byte	0x4
	.long	0x58fd
	.uleb128 0x21
	.long	0x4ca9
	.long	0x593b
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5927
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5955
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5955
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c85
	.uleb128 0x6
	.byte	0x4
	.long	0x5941
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5975
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5975
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c97
	.uleb128 0x6
	.byte	0x4
	.long	0x5961
	.uleb128 0xe
	.long	0x598c
	.uleb128 0xf
	.long	0x598c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x507b
	.uleb128 0x6
	.byte	0x4
	.long	0x5981
	.uleb128 0x21
	.long	0x4ca9
	.long	0x59c0
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0xbc
	.uleb128 0xf
	.long	0xe3
	.uleb128 0xf
	.long	0x598c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5998
	.uleb128 0x21
	.long	0x4ca9
	.long	0x59e4
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0x4ce1
	.uleb128 0xf
	.long	0x598c
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59c6
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5a03
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59ea
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5a22
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a09
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5a41
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a28
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5a60
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a47
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5a7f
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a66
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5a9e
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5955
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a85
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5abd
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5975
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5aa4
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5ae1
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5955
	.uleb128 0xf
	.long	0x5955
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ac3
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5b05
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5975
	.uleb128 0xf
	.long	0x5975
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ae7
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5b29
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x588d
	.uleb128 0xf
	.long	0x5955
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b0b
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5b4d
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x588d
	.uleb128 0xf
	.long	0x5975
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b2f
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5b71
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x588d
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b53
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5b90
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5955
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b77
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5baf
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5975
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b96
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5bce
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5bce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c63
	.uleb128 0x6
	.byte	0x4
	.long	0x5bb5
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5bf3
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5bce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5bda
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5c12
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5bce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5bf9
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5c31
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5bce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c18
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5c50
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5bce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c37
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5c74
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c56
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5c98
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x428
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c7a
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5cc1
	.uleb128 0xf
	.long	0xbc
	.uleb128 0xf
	.long	0x5138
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x591b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c9e
	.uleb128 0x21
	.long	0x4ca9
	.long	0x5cea
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0x4ce1
	.uleb128 0xf
	.long	0x598c
	.uleb128 0xf
	.long	0x428
	.uleb128 0xf
	.long	0x588d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5cc7
	.uleb128 0x3
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x20
	.byte	0xb5
	.byte	0x7
	.long	0x5156
	.uleb128 0x10
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x21
	.byte	0x28
	.byte	0x16
	.long	0x5d79
	.uleb128 0x1b
	.secrel32	LASF7
	.byte	0x21
	.byte	0x2a
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF8
	.byte	0x21
	.byte	0x2b
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF11
	.byte	0x21
	.byte	0x2c
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF9
	.byte	0x21
	.byte	0x2d
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF10
	.byte	0x21
	.byte	0x2e
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x5d0e
	.uleb128 0x1c
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x4
	.byte	0x21
	.byte	0x26
	.byte	0xb
	.long	0x5dbc
	.uleb128 0x1d
	.ascii "FLAGS\0"
	.byte	0x21
	.byte	0x2f
	.byte	0xb
	.long	0x5d79
	.uleb128 0x1d
	.ascii "__dummy\0"
	.byte	0x21
	.byte	0x31
	.byte	0x13
	.long	0x4c85
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x21
	.byte	0x38
	.byte	0x2a
	.long	0x5dd4
	.uleb128 0x6
	.byte	0x4
	.long	0x5d7e
	.uleb128 0x6
	.byte	0x4
	.long	0x5dbc
	.uleb128 0x10
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x18
	.byte	0x22
	.byte	0x2d
	.byte	0x14
	.long	0x5ea7
	.uleb128 0x1b
	.secrel32	LASF7
	.byte	0x22
	.byte	0x2f
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF8
	.byte	0x22
	.byte	0x30
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF11
	.byte	0x22
	.byte	0x31
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF9
	.byte	0x22
	.byte	0x32
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF10
	.byte	0x22
	.byte	0x33
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "SIGNATURE1\0"
	.byte	0x22
	.byte	0x35
	.byte	0x13
	.long	0x4c85
	.byte	0x4
	.uleb128 0x11
	.ascii "SIGNATURE2\0"
	.byte	0x22
	.byte	0x36
	.byte	0x13
	.long	0x4c85
	.byte	0x8
	.uleb128 0x11
	.ascii "ABS\0"
	.byte	0x22
	.byte	0x38
	.byte	0x19
	.long	0x5138
	.byte	0xc
	.uleb128 0x11
	.ascii "SIGN\0"
	.byte	0x22
	.byte	0x39
	.byte	0xe
	.long	0xbc
	.byte	0x10
	.uleb128 0x1f
	.ascii "IS_STATIC\0"
	.byte	0x22
	.byte	0x3b
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.ascii "NUMBER_HEADER\0"
	.byte	0x22
	.byte	0x3c
	.byte	0x7
	.long	0x5de0
	.uleb128 0x13
	.ascii "ep_uint\0"
	.byte	0x22
	.byte	0x42
	.byte	0x22
	.long	0x5cf0
	.uleb128 0x13
	.ascii "number_zero\0"
	.byte	0x22
	.byte	0x45
	.byte	0x1a
	.long	0x5ea7
	.uleb128 0x13
	.ascii "number_one\0"
	.byte	0x22
	.byte	0x48
	.byte	0x1a
	.long	0x5ea7
	.uleb128 0x13
	.ascii "number_minus_one\0"
	.byte	0x22
	.byte	0x4b
	.byte	0x1a
	.long	0x5ea7
	.uleb128 0x22
	.ascii "uint_number_zero\0"
	.byte	0x22
	.byte	0x4e
	.byte	0x15
	.long	0x5138
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_zero
	.uleb128 0x22
	.ascii "uint_number_one\0"
	.byte	0x22
	.byte	0x51
	.byte	0x15
	.long	0x5138
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_one
	.uleb128 0x13
	.ascii "statistics_info\0"
	.byte	0x22
	.byte	0x54
	.byte	0x20
	.long	0x4d7b
	.uleb128 0x23
	.ascii "PMC_Subtruct_X_X\0"
	.byte	0x2
	.word	0x58c
	.byte	0x2e
	.ascii "PMC_Subtruct_X_X@12\0"
	.long	0x4ca9
	.long	LFB4252
	.long	LFE4252-LFB4252
	.uleb128 0x1
	.byte	0x9c
	.long	0x6006
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x58c
	.byte	0x4f
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x58c
	.byte	0x62
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x58c
	.byte	0x76
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x594
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x595
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x596
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x597
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ea7
	.uleb128 0x23
	.ascii "PMC_Subtruct_X_UX\0"
	.byte	0x2
	.word	0x535
	.byte	0x2e
	.ascii "PMC_Subtruct_X_UX@12\0"
	.long	0x4ca9
	.long	LFB4251
	.long	LFE4251-LFB4251
	.uleb128 0x1
	.byte	0x9c
	.long	0x60bf
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x535
	.byte	0x50
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x535
	.byte	0x63
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x535
	.byte	0x77
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x53d
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x53e
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x53f
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	LBB11
	.long	LBE11-LBB11
	.uleb128 0x26
	.ascii "new_v\0"
	.byte	0x2
	.word	0x552
	.byte	0x1d
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Subtruct_X_L\0"
	.byte	0x2
	.word	0x4d6
	.byte	0x2e
	.ascii "PMC_Subtruct_X_L@16\0"
	.long	0x4ca9
	.long	LFB4250
	.long	LFE4250-LFB4250
	.uleb128 0x1
	.byte	0x9c
	.long	0x6174
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x4d6
	.byte	0x4f
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x4d6
	.byte	0x5b
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x4d6
	.byte	0x6f
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x4dc
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x4dd
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x4de
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.secrel32	LASF13
	.byte	0x2
	.word	0x4e1
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x4e2
	.byte	0xf
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Subtruct_X_I\0"
	.byte	0x2
	.word	0x477
	.byte	0x2e
	.ascii "PMC_Subtruct_X_I@12\0"
	.long	0x4ca9
	.long	LFB4249
	.long	LFE4249-LFB4249
	.uleb128 0x1
	.byte	0x9c
	.long	0x6229
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x477
	.byte	0x4f
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x477
	.byte	0x5b
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x477
	.byte	0x6f
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x47d
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x47e
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x47f
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.secrel32	LASF13
	.byte	0x2
	.word	0x482
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x483
	.byte	0xf
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Subtruct_UX_X\0"
	.byte	0x2
	.word	0x42f
	.byte	0x2e
	.ascii "PMC_Subtruct_UX_X@12\0"
	.long	0x4ca9
	.long	LFB4248
	.long	LFE4248-LFB4248
	.uleb128 0x1
	.byte	0x9c
	.long	0x62dc
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x42f
	.byte	0x50
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x42f
	.byte	0x63
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x42f
	.byte	0x77
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x437
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x438
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x439
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	LBB10
	.long	LBE10-LBB10
	.uleb128 0x26
	.ascii "new_u\0"
	.byte	0x2
	.word	0x459
	.byte	0x1d
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Subtruct_L_X\0"
	.byte	0x2
	.word	0x3d0
	.byte	0x2e
	.ascii "PMC_Subtruct_L_X@16\0"
	.long	0x4ca9
	.long	LFB4247
	.long	LFE4247-LFB4247
	.uleb128 0x1
	.byte	0x9c
	.long	0x6391
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x3d0
	.byte	0x48
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x3d0
	.byte	0x5b
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x3d0
	.byte	0x6f
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x3d6
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x3d7
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x3d8
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x3db
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x3dc
	.byte	0xf
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Subtruct_I_X\0"
	.byte	0x2
	.word	0x371
	.byte	0x2e
	.ascii "PMC_Subtruct_I_X@12\0"
	.long	0x4ca9
	.long	LFB4246
	.long	LFE4246-LFB4246
	.uleb128 0x1
	.byte	0x9c
	.long	0x6446
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x371
	.byte	0x48
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x371
	.byte	0x5b
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x371
	.byte	0x6f
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x377
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x378
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x379
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x37c
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x37d
	.byte	0xf
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Add_X_X\0"
	.byte	0x2
	.word	0x30f
	.byte	0x2e
	.ascii "PMC_Add_X_X@12\0"
	.long	0x4ca9
	.long	LFB4245
	.long	LFE4245-LFB4245
	.uleb128 0x1
	.byte	0x9c
	.long	0x64e0
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x30f
	.byte	0x4a
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x30f
	.byte	0x5d
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x30f
	.byte	0x71
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x317
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x318
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x319
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x31a
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Add_X_UX\0"
	.byte	0x2
	.word	0x2b9
	.byte	0x2e
	.ascii "PMC_Add_X_UX@12\0"
	.long	0x4ca9
	.long	LFB4244
	.long	LFE4244-LFB4244
	.uleb128 0x1
	.byte	0x9c
	.long	0x6589
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x2b9
	.byte	0x4b
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x2b9
	.byte	0x5e
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x2b9
	.byte	0x72
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x2c1
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x2c2
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x2c3
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	LBB9
	.long	LBE9-LBB9
	.uleb128 0x26
	.ascii "new_v\0"
	.byte	0x2
	.word	0x2d6
	.byte	0x1d
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Add_X_L\0"
	.byte	0x2
	.word	0x25a
	.byte	0x2e
	.ascii "PMC_Add_X_L@16\0"
	.long	0x4ca9
	.long	LFB4243
	.long	LFE4243-LFB4243
	.uleb128 0x1
	.byte	0x9c
	.long	0x6634
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x25a
	.byte	0x4a
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x25a
	.byte	0x56
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x25a
	.byte	0x6a
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x260
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x261
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x262
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.secrel32	LASF13
	.byte	0x2
	.word	0x265
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x266
	.byte	0xf
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Add_X_I\0"
	.byte	0x2
	.word	0x1fb
	.byte	0x2e
	.ascii "PMC_Add_X_I@12\0"
	.long	0x4ca9
	.long	LFB4242
	.long	LFE4242-LFB4242
	.uleb128 0x1
	.byte	0x9c
	.long	0x66df
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x1fb
	.byte	0x4a
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x1fb
	.byte	0x56
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x1fb
	.byte	0x6a
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x201
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x202
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x203
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.secrel32	LASF13
	.byte	0x2
	.word	0x206
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x207
	.byte	0xf
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Add_UX_X\0"
	.byte	0x2
	.word	0x1b5
	.byte	0x2e
	.ascii "PMC_Add_UX_X@12\0"
	.long	0x4ca9
	.long	LFB4241
	.long	LFE4241-LFB4241
	.uleb128 0x1
	.byte	0x9c
	.long	0x6788
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x1b5
	.byte	0x4b
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x1b5
	.byte	0x5e
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x1b5
	.byte	0x72
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x1bb
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x1bc
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x1bd
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	LBB8
	.long	LBE8-LBB8
	.uleb128 0x26
	.ascii "new_u\0"
	.byte	0x2
	.word	0x1dd
	.byte	0x1d
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "PMC_Add_L_X\0"
	.byte	0x2
	.word	0x156
	.byte	0x2e
	.ascii "PMC_Add_L_X@16\0"
	.long	0x4ca9
	.long	LFB4240
	.long	LFE4240-LFB4240
	.uleb128 0x1
	.byte	0x9c
	.long	0x6833
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x156
	.byte	0x43
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x156
	.byte	0x56
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.ascii "w\0"
	.byte	0x2
	.word	0x156
	.byte	0x6a
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x15c
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x15d
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nw\0"
	.byte	0x2
	.word	0x15e
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x161
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x162
	.byte	0xf
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.ascii "PMC_Add_I_X\0"
	.byte	0x2
	.byte	0xf7
	.byte	0x2e
	.ascii "PMC_Add_I_X@12\0"
	.long	0x4ca9
	.long	LFB4239
	.long	LFE4239-LFB4239
	.uleb128 0x1
	.byte	0x9c
	.long	0x68d7
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x2
	.byte	0xf7
	.byte	0x43
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x2
	.byte	0xf7
	.byte	0x56
	.long	0x5dbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.ascii "w\0"
	.byte	0x2
	.byte	0xf7
	.byte	0x6a
	.long	0x5dda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.secrel32	LASF12
	.byte	0x2
	.byte	0xfd
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.ascii "nv\0"
	.byte	0x2
	.byte	0xfe
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.ascii "nw\0"
	.byte	0x2
	.byte	0xff
	.byte	0x14
	.long	0x6006
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x102
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x103
	.byte	0xf
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.ascii "SubtructU_X_X_Imp\0"
	.byte	0x2
	.byte	0xc5
	.byte	0x18
	.long	0x4ca9
	.long	LFB4238
	.long	LFE4238-LFB4238
	.uleb128 0x1
	.byte	0x9c
	.long	0x6988
	.uleb128 0x2d
	.secrel32	LASF17
	.byte	0x2
	.byte	0xc5
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x2
	.byte	0xc5
	.byte	0x45
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x2
	.byte	0xc5
	.byte	0x58
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.ascii "w\0"
	.byte	0x2
	.byte	0xc5
	.byte	0x6b
	.long	0x6988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.secrel32	LASF12
	.byte	0x2
	.byte	0xcd
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.ascii "c\0"
	.byte	0x2
	.byte	0xce
	.byte	0xe
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	LBB6
	.long	LBE6-LBB6
	.long	0x696e
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0xd6
	.byte	0x19
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	LBB7
	.long	LBE7-LBB7
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0xeb
	.byte	0x19
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6006
	.uleb128 0x2c
	.ascii "SubtructU_X_L_Imp\0"
	.byte	0x2
	.byte	0x90
	.byte	0x18
	.long	0x4ca9
	.long	LFB4237
	.long	LFE4237-LFB4237
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a4c
	.uleb128 0x2d
	.secrel32	LASF17
	.byte	0x2
	.byte	0x90
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x2
	.byte	0x90
	.byte	0x45
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x2
	.byte	0x90
	.byte	0x52
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.ascii "w\0"
	.byte	0x2
	.byte	0x90
	.byte	0x65
	.long	0x6988
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.secrel32	LASF12
	.byte	0x2
	.byte	0x98
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.ascii "c\0"
	.byte	0x2
	.byte	0x99
	.byte	0xe
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	LBB4
	.long	LBE4-LBB4
	.long	0x6a25
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0xa1
	.byte	0x19
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	LBB5
	.long	LBE5-LBB5
	.uleb128 0x2b
	.ascii "t\0"
	.byte	0x2
	.byte	0xb6
	.byte	0x13
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0xb9
	.byte	0x19
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2c
	.ascii "SubtructU_X_I_Imp\0"
	.byte	0x2
	.byte	0x5b
	.byte	0x18
	.long	0x4ca9
	.long	LFB4236
	.long	LFE4236-LFB4236
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b0a
	.uleb128 0x2d
	.secrel32	LASF17
	.byte	0x2
	.byte	0x5b
	.byte	0x2f
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x2
	.byte	0x5b
	.byte	0x45
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x2
	.byte	0x5b
	.byte	0x52
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.ascii "w\0"
	.byte	0x2
	.byte	0x5b
	.byte	0x65
	.long	0x6988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.secrel32	LASF12
	.byte	0x2
	.byte	0x63
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.ascii "c\0"
	.byte	0x2
	.byte	0x64
	.byte	0xe
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	LBB2
	.long	LBE2-LBB2
	.long	0x6ae3
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0x6c
	.byte	0x19
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x2b
	.ascii "t\0"
	.byte	0x2
	.byte	0x81
	.byte	0x13
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0x84
	.byte	0x19
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2c
	.ascii "AddU_X_X_Imp\0"
	.byte	0x2
	.byte	0x47
	.byte	0x18
	.long	0x4ca9
	.long	LFB4235
	.long	LFE4235-LFB4235
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b82
	.uleb128 0x2d
	.secrel32	LASF17
	.byte	0x2
	.byte	0x47
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x2
	.byte	0x47
	.byte	0x40
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x2
	.byte	0x47
	.byte	0x53
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.ascii "w\0"
	.byte	0x2
	.byte	0x47
	.byte	0x66
	.long	0x6988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.secrel32	LASF12
	.byte	0x2
	.byte	0x4f
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0x50
	.byte	0x15
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.ascii "AddU_X_L_Imp\0"
	.byte	0x2
	.byte	0x33
	.byte	0x18
	.long	0x4ca9
	.long	LFB4234
	.long	LFE4234-LFB4234
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bfa
	.uleb128 0x2d
	.secrel32	LASF17
	.byte	0x2
	.byte	0x33
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x2
	.byte	0x33
	.byte	0x40
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x2
	.byte	0x33
	.byte	0x4d
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.ascii "w\0"
	.byte	0x2
	.byte	0x33
	.byte	0x60
	.long	0x6988
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.secrel32	LASF12
	.byte	0x2
	.byte	0x3b
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0x3c
	.byte	0x15
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.ascii "AddU_X_I_Imp\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x18
	.long	0x4ca9
	.long	LFB4233
	.long	LFE4233-LFB4233
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c72
	.uleb128 0x2d
	.secrel32	LASF17
	.byte	0x2
	.byte	0x1f
	.byte	0x2a
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x40
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x4d
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.ascii "w\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x60
	.long	0x6988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.secrel32	LASF12
	.byte	0x2
	.byte	0x27
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.secrel32	LASF18
	.byte	0x2
	.byte	0x28
	.byte	0x15
	.long	0x5138
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.ascii "GET_ABS_64\0"
	.byte	0x1
	.word	0x31f
	.byte	0x1f
	.long	0x4c97
	.long	LFB4232
	.long	LFE4232-LFB4232
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cb3
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x1
	.word	0x31f
	.byte	0x33
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.secrel32	LASF17
	.byte	0x1
	.word	0x31f
	.byte	0x3b
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x31
	.ascii "GET_ABS_32\0"
	.byte	0x1
	.word	0x30b
	.byte	0x1f
	.long	0x4c85
	.long	LFB4231
	.long	LFE4231-LFB4231
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x1
	.word	0x30b
	.byte	0x33
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.secrel32	LASF17
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
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
	.uleb128 0x1c
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
LASF10:
	.ascii "IS_POWER_OF_TWO\0"
LASF11:
	.ascii "IS_MINUS_ONE\0"
LASF1:
	.ascii "DecimalDigits\0"
LASF18:
	.ascii "w_abs\0"
LASF15:
	.ascii "u_sign\0"
LASF14:
	.ascii "v_abs\0"
LASF17:
	.ascii "sign\0"
LASF0:
	.ascii "refcount\0"
LASF4:
	.ascii "GroupSizes\0"
LASF9:
	.ascii "IS_EVEN\0"
LASF3:
	.ascii "GroupSeparator\0"
LASF13:
	.ascii "v_sign\0"
LASF12:
	.ascii "result\0"
LASF16:
	.ascii "u_abs\0"
LASF8:
	.ascii "IS_ONE\0"
LASF2:
	.ascii "DecimalSeparator\0"
LASF5:
	.ascii "NegativePattern\0"
LASF6:
	.ascii "PositivePattern\0"
LASF7:
	.ascii "IS_ZERO\0"
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
