	.file	"pmc_divrem.c"
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
	.globl	_PMC_DivRem_I_X@16
	.def	_PMC_DivRem_I_X@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_I_X@16:
LFB4233:
	.file 2 "../pmc_divrem.c"
	.loc 2 32 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 2 35 8
	cmpl	$0, 12(%ebp)
	jne	L14
	.loc 2 36 16
	movl	$-1, %eax
	jmp	L40
L14:
	.loc 2 37 8
	cmpl	$0, 20(%ebp)
	jne	L16
	.loc 2 38 16
	movl	$-1, %eax
	jmp	L40
L16:
	.loc 2 40 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 43 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 43 8
	cmpl	$0, -16(%ebp)
	je	L17
	.loc 2 44 16
	movl	-16(%ebp), %eax
	jmp	L40
L17:
	.loc 2 46 23
	leal	-33(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 47 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 47 8
	testb	%al, %al
	jne	L18
	.loc 2 52 16
	movl	$-3, %eax
	jmp	L40
L18:
	.loc 2 54 16
	movzbl	-33(%ebp), %eax
	.loc 2 54 8
	testb	%al, %al
	jne	L19
	.loc 2 58 38
	cmpl	$0, 16(%ebp)
	je	L20
	.loc 2 58 38 is_stmt 0 discriminator 1
	movl	$_number_zero, %eax
	jmp	L21
L20:
	.loc 2 58 38 discriminator 2
	movl	$0, %eax
L21:
	.loc 2 58 12 is_stmt 1 discriminator 4
	movl	%eax, -28(%ebp)
	.loc 2 59 12 discriminator 4
	movl	$_number_zero, -32(%ebp)
	jmp	L22
L19:
	.loc 2 65 12
	cmpl	$0, 16(%ebp)
	je	L23
LBB2:
	.loc 2 67 34
	movzbl	-33(%ebp), %eax
	.loc 2 67 18
	testb	%al, %al
	jle	L24
	.loc 2 67 18 is_stmt 0 discriminator 1
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	jmp	L25
L24:
	.loc 2 67 54 is_stmt 1 discriminator 2
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 67 18 discriminator 2
	negl	%eax
L25:
	.loc 2 67 18 is_stmt 0 discriminator 4
	movb	%al, -21(%ebp)
	.loc 2 68 18 is_stmt 1 discriminator 4
	movzbl	-33(%ebp), %eax
	movb	%al, -22(%ebp)
	.loc 2 71 34 discriminator 4
	movl	_ep_uint+116, %eax
	.loc 2 71 27 discriminator 4
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-44(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-40(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL0:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 71 16 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L26
	.loc 2 72 24
	movl	-16(%ebp), %eax
	jmp	L40
L26:
	.loc 2 73 27
	movl	-40(%ebp), %edx
	.loc 2 73 44
	movl	-40(%ebp), %eax
	.loc 2 73 27
	testl	%eax, %eax
	je	L28
	.loc 2 73 27 is_stmt 0 discriminator 1
	movsbl	-21(%ebp), %eax
	jmp	L29
L28:
	.loc 2 73 27 discriminator 2
	movl	$0, %eax
L29:
	.loc 2 73 27 discriminator 4
	leal	-28(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 73 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L30
	.loc 2 74 24
	movl	-16(%ebp), %eax
	jmp	L40
L30:
	.loc 2 75 27
	movl	-44(%ebp), %edx
	.loc 2 75 44
	movl	-44(%ebp), %eax
	.loc 2 75 27
	testl	%eax, %eax
	je	L31
	.loc 2 75 27 is_stmt 0 discriminator 1
	movsbl	-22(%ebp), %eax
	jmp	L32
L31:
	.loc 2 75 27 discriminator 2
	movl	$0, %eax
L32:
	.loc 2 75 27 discriminator 4
	leal	-32(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 75 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L22
	.loc 2 77 17
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeallocateNumber
	.loc 2 78 24
	movl	-16(%ebp), %eax
	jmp	L40
L23:
LBE2:
LBB3:
	.loc 2 83 18
	movzbl	-33(%ebp), %eax
	movb	%al, -23(%ebp)
	.loc 2 85 34
	movl	_ep_uint+116, %eax
	.loc 2 85 27
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-48(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL1:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 85 16
	cmpl	$0, -16(%ebp)
	je	L34
	.loc 2 86 24
	movl	-16(%ebp), %eax
	jmp	L40
L34:
	.loc 2 87 16
	movl	$0, -28(%ebp)
	.loc 2 88 27
	movl	-48(%ebp), %edx
	.loc 2 88 44
	movl	-48(%ebp), %eax
	.loc 2 88 27
	testl	%eax, %eax
	je	L36
	.loc 2 88 27 is_stmt 0 discriminator 1
	movsbl	-23(%ebp), %eax
	jmp	L37
L36:
	.loc 2 88 27 discriminator 2
	movl	$0, %eax
L37:
	.loc 2 88 27 discriminator 4
	leal	-32(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 88 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L22
	.loc 2 89 24
	movl	-16(%ebp), %eax
	jmp	L40
L22:
LBE3:
	.loc 2 92 8
	cmpl	$0, 16(%ebp)
	je	L39
	.loc 2 93 12
	movl	-28(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
L39:
	.loc 2 94 8
	movl	-32(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 95 12
	movl	$0, %eax
L40:
	.loc 2 96 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4233:
	.globl	_PMC_DivRem_L_X@20
	.def	_PMC_DivRem_L_X@20;	.scl	2;	.type	32;	.endef
_PMC_DivRem_L_X@20:
LFB4234:
	.loc 2 99 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 2 102 8
	cmpl	$0, 16(%ebp)
	jne	L42
	.loc 2 103 16
	movl	$-1, %eax
	jmp	L68
L42:
	.loc 2 104 8
	cmpl	$0, 24(%ebp)
	jne	L44
	.loc 2 105 16
	movl	$-1, %eax
	jmp	L68
L44:
	.loc 2 107 20
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 2 110 19
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -32(%ebp)
	.loc 2 110 8
	cmpl	$0, -32(%ebp)
	je	L45
	.loc 2 111 16
	movl	-32(%ebp), %eax
	jmp	L68
L45:
	.loc 2 113 23
	leal	-53(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 2 114 11
	movl	-28(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 114 8
	testb	%al, %al
	jne	L46
	.loc 2 119 16
	movl	$-3, %eax
	jmp	L68
L46:
	.loc 2 121 16
	movzbl	-53(%ebp), %eax
	.loc 2 121 8
	testb	%al, %al
	jne	L47
	.loc 2 125 38
	cmpl	$0, 20(%ebp)
	je	L48
	.loc 2 125 38 is_stmt 0 discriminator 1
	movl	$_number_zero, %eax
	jmp	L49
L48:
	.loc 2 125 38 discriminator 2
	movl	$0, %eax
L49:
	.loc 2 125 12 is_stmt 1 discriminator 4
	movl	%eax, -48(%ebp)
	.loc 2 126 12 discriminator 4
	movl	$_number_zero, -52(%ebp)
	jmp	L50
L47:
	.loc 2 132 12
	cmpl	$0, 20(%ebp)
	je	L51
LBB4:
	.loc 2 134 34
	movzbl	-53(%ebp), %eax
	.loc 2 134 18
	testb	%al, %al
	jle	L52
	.loc 2 134 18 is_stmt 0 discriminator 1
	movl	-28(%ebp), %eax
	movzbl	16(%eax), %eax
	jmp	L53
L52:
	.loc 2 134 54 is_stmt 1 discriminator 2
	movl	-28(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 134 18 discriminator 2
	negl	%eax
L53:
	.loc 2 134 18 is_stmt 0 discriminator 4
	movb	%al, -41(%ebp)
	.loc 2 135 18 is_stmt 1 discriminator 4
	movzbl	-53(%ebp), %eax
	movb	%al, -42(%ebp)
	.loc 2 138 34 discriminator 4
	movl	_ep_uint+120, %ecx
	.loc 2 138 27 discriminator 4
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	leal	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL2:
	subl	$20, %esp
	movl	%eax, -32(%ebp)
	.loc 2 138 16 discriminator 4
	cmpl	$0, -32(%ebp)
	je	L54
	.loc 2 139 24
	movl	-32(%ebp), %eax
	jmp	L68
L54:
	.loc 2 140 27
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %ebx
	.loc 2 140 44
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	.loc 2 140 27
	movl	%eax, %edi
	xorl	$0, %edi
	movl	%edi, -104(%ebp)
	movl	%edx, %eax
	xorb	$0, %ah
	movl	%eax, -100(%ebp)
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	je	L56
	.loc 2 140 27 is_stmt 0 discriminator 1
	movsbl	-41(%ebp), %eax
	jmp	L57
L56:
	.loc 2 140 27 discriminator 2
	movl	$0, %eax
L57:
	.loc 2 140 27 discriminator 4
	leal	-48(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	call	_From_L_Imp
	movl	%eax, -32(%ebp)
	.loc 2 140 16 is_stmt 1 discriminator 4
	cmpl	$0, -32(%ebp)
	je	L58
	.loc 2 141 24
	movl	-32(%ebp), %eax
	jmp	L68
L58:
	.loc 2 142 27
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	.loc 2 142 44
	movl	-72(%ebp), %ecx
	movl	-68(%ebp), %ebx
	.loc 2 142 27
	movl	%ecx, %edi
	xorl	$0, %edi
	movl	%edi, -112(%ebp)
	xorb	$0, %bh
	movl	%ebx, -108(%ebp)
	movl	-112(%ebp), %ebx
	movl	-108(%ebp), %esi
	movl	%esi, %ecx
	orl	%ebx, %ecx
	testl	%ecx, %ecx
	je	L59
	.loc 2 142 27 is_stmt 0 discriminator 1
	movsbl	-42(%ebp), %ecx
	jmp	L60
L59:
	.loc 2 142 27 discriminator 2
	movl	$0, %ecx
L60:
	.loc 2 142 27 discriminator 4
	leal	-52(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -32(%ebp)
	.loc 2 142 16 is_stmt 1 discriminator 4
	cmpl	$0, -32(%ebp)
	je	L50
	.loc 2 144 17
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeallocateNumber
	.loc 2 145 24
	movl	-32(%ebp), %eax
	jmp	L68
L51:
LBE4:
LBB5:
	.loc 2 150 18
	movzbl	-53(%ebp), %eax
	movb	%al, -43(%ebp)
	.loc 2 152 34
	movl	_ep_uint+120, %ecx
	.loc 2 152 27
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	-80(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL3:
	subl	$20, %esp
	movl	%eax, -32(%ebp)
	.loc 2 152 16
	cmpl	$0, -32(%ebp)
	je	L62
	.loc 2 153 24
	movl	-32(%ebp), %eax
	jmp	L68
L62:
	.loc 2 154 16
	movl	$0, -48(%ebp)
	.loc 2 155 27
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 2 155 44
	movl	-80(%ebp), %ecx
	movl	-76(%ebp), %ebx
	.loc 2 155 27
	movl	%ecx, %eax
	xorb	$0, %ah
	movl	%eax, %esi
	movl	%ebx, %eax
	xorb	$0, %ah
	movl	%eax, %edi
	movl	%edi, %ecx
	orl	%esi, %ecx
	testl	%ecx, %ecx
	je	L64
	.loc 2 155 27 is_stmt 0 discriminator 1
	movsbl	-43(%ebp), %ecx
	jmp	L65
L64:
	.loc 2 155 27 discriminator 2
	movl	$0, %ecx
L65:
	.loc 2 155 27 discriminator 4
	leal	-52(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	movl	%eax, -32(%ebp)
	.loc 2 155 16 is_stmt 1 discriminator 4
	cmpl	$0, -32(%ebp)
	je	L50
	.loc 2 156 24
	movl	-32(%ebp), %eax
	jmp	L68
L50:
LBE5:
	.loc 2 159 8
	cmpl	$0, 20(%ebp)
	je	L67
	.loc 2 160 12
	movl	-48(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L67:
	.loc 2 161 8
	movl	-52(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 162 12
	movl	$0, %eax
L68:
	.loc 2 163 1 discriminator 2
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$20
	.cfi_endproc
LFE4234:
	.globl	_PMC_DivRem_UX_X@16
	.def	_PMC_DivRem_UX_X@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_UX_X@16:
LFB4235:
	.loc 2 166 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 167 8
	cmpl	$0, 8(%ebp)
	jne	L70
	.loc 2 168 16
	movl	$-1, %eax
	jmp	L88
L70:
	.loc 2 169 8
	cmpl	$0, 12(%ebp)
	jne	L72
	.loc 2 170 16
	movl	$-1, %eax
	jmp	L88
L72:
	.loc 2 171 8
	cmpl	$0, 20(%ebp)
	jne	L73
	.loc 2 172 16
	movl	$-1, %eax
	jmp	L88
L73:
	.loc 2 174 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 176 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 176 8
	cmpl	$0, -16(%ebp)
	je	L74
	.loc 2 177 16
	movl	-16(%ebp), %eax
	jmp	L88
L74:
	.loc 2 178 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 178 8
	testb	%al, %al
	jne	L75
	.loc 2 183 16
	movl	$-3, %eax
	jmp	L88
L75:
	.loc 2 185 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 185 8
	testb	%al, %al
	je	L76
	.loc 2 189 43
	cmpl	$0, 16(%ebp)
	je	L77
	.loc 2 189 28 discriminator 1
	movl	$_number_zero, -24(%ebp)
	.loc 2 189 43 discriminator 1
	movl	-24(%ebp), %eax
	jmp	L78
L77:
	.loc 2 189 43 is_stmt 0 discriminator 2
	movl	$0, %eax
L78:
	.loc 2 189 12 is_stmt 1 discriminator 4
	movl	%eax, -24(%ebp)
	.loc 2 190 12 discriminator 4
	movl	_uint_number_zero, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L79
L76:
	.loc 2 196 12
	cmpl	$0, 16(%ebp)
	je	L80
LBB6:
	.loc 2 198 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -17(%ebp)
	.loc 2 200 34
	movl	_ep_uint+132, %eax
	.loc 2 200 27
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	movl	20(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-28(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL4:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 200 16
	cmpl	$0, -16(%ebp)
	je	L81
	.loc 2 201 24
	movl	-16(%ebp), %eax
	jmp	L88
L81:
	.loc 2 202 27
	movl	-28(%ebp), %edx
	.loc 2 202 52
	movl	-28(%ebp), %eax
	.loc 2 202 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 202 27
	testb	%al, %al
	jne	L83
	.loc 2 202 27 is_stmt 0 discriminator 1
	movsbl	-17(%ebp), %eax
	jmp	L84
L83:
	.loc 2 202 27 discriminator 2
	movl	$0, %eax
L84:
	.loc 2 202 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 202 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L79
	.loc 2 204 24
	movl	_ep_uint+16, %eax
	.loc 2 204 17
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	subl	$4, %esp
	.loc 2 205 24
	movl	_ep_uint+16, %eax
	.loc 2 205 17
	movl	20(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL6:
	subl	$4, %esp
	.loc 2 206 24
	movl	-16(%ebp), %eax
	jmp	L88
L80:
LBE6:
	.loc 2 211 34
	movl	_ep_uint+132, %eax
	.loc 2 211 27
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	movl	20(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL7:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 211 16
	cmpl	$0, -16(%ebp)
	je	L86
	.loc 2 212 24
	movl	-16(%ebp), %eax
	jmp	L88
L86:
	.loc 2 213 16
	movl	$0, -24(%ebp)
L79:
	.loc 2 216 8
	cmpl	$0, 16(%ebp)
	je	L87
	.loc 2 217 12
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
L87:
	.loc 2 218 12
	movl	$0, %eax
L88:
	.loc 2 219 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4235:
	.globl	_PMC_DivRem_X_I@16
	.def	_PMC_DivRem_X_I@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_I@16:
LFB4236:
	.loc 2 222 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 2 223 8
	cmpl	$0, 8(%ebp)
	jne	L90
	.loc 2 224 16
	movl	$-1, %eax
	jmp	L113
L90:
	.loc 2 225 8
	cmpl	$0, 20(%ebp)
	jne	L92
	.loc 2 226 16
	movl	$-1, %eax
	jmp	L113
L92:
	.loc 2 228 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 230 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 230 8
	cmpl	$0, -16(%ebp)
	je	L93
	.loc 2 231 16
	movl	-16(%ebp), %eax
	jmp	L113
L93:
	.loc 2 233 23
	leal	-29(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 234 16
	movzbl	-29(%ebp), %eax
	.loc 2 234 8
	testb	%al, %al
	jne	L94
	.loc 2 239 16
	movl	$-3, %eax
	jmp	L113
L94:
	.loc 2 241 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 241 8
	testb	%al, %al
	jne	L95
	.loc 2 245 43
	cmpl	$0, 16(%ebp)
	je	L96
	.loc 2 245 28 discriminator 1
	movl	$_number_zero, -28(%ebp)
	.loc 2 245 43 discriminator 1
	movl	-28(%ebp), %eax
	jmp	L97
L96:
	.loc 2 245 43 is_stmt 0 discriminator 2
	movl	$0, %eax
L97:
	.loc 2 245 12 is_stmt 1 discriminator 4
	movl	%eax, -28(%ebp)
	.loc 2 246 12 discriminator 4
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	jmp	L98
L95:
	.loc 2 252 12
	cmpl	$0, 16(%ebp)
	je	L99
LBB7:
	.loc 2 254 29
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 254 18
	testb	%al, %al
	jg	L100
	.loc 2 254 18 is_stmt 0 discriminator 1
	movzbl	-29(%ebp), %eax
	negl	%eax
	jmp	L101
L100:
	.loc 2 254 18 discriminator 2
	movzbl	-29(%ebp), %eax
L101:
	.loc 2 254 18 discriminator 4
	movb	%al, -21(%ebp)
	.loc 2 255 18 is_stmt 1 discriminator 4
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -22(%ebp)
	.loc 2 258 34 discriminator 4
	movl	_ep_uint+124, %eax
	.loc 2 258 27 discriminator 4
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-40(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-36(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL8:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 258 16 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L102
	.loc 2 259 24
	movl	-16(%ebp), %eax
	jmp	L113
L102:
	.loc 2 260 27
	movl	-36(%ebp), %edx
	.loc 2 260 52
	movl	-36(%ebp), %eax
	.loc 2 260 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 260 27
	testb	%al, %al
	jne	L104
	.loc 2 260 27 is_stmt 0 discriminator 1
	movsbl	-21(%ebp), %eax
	jmp	L105
L104:
	.loc 2 260 27 discriminator 2
	movl	$0, %eax
L105:
	.loc 2 260 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 260 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L106
	.loc 2 262 24
	movl	_ep_uint+16, %eax
	.loc 2 262 17
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL9:
	subl	$4, %esp
	.loc 2 263 24
	movl	-16(%ebp), %eax
	jmp	L113
L106:
	.loc 2 265 47
	cmpb	$0, -22(%ebp)
	jg	L107
	.loc 2 265 50 discriminator 1
	movl	-40(%ebp), %eax
	.loc 2 265 47 discriminator 1
	negl	%eax
	movl	%eax, %edx
	jmp	L108
L107:
	.loc 2 265 31 discriminator 2
	movl	-40(%ebp), %eax
	.loc 2 265 47 discriminator 2
	movl	%eax, %edx
L108:
	.loc 2 265 16 discriminator 4
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
LBE7:
	jmp	L98
L99:
LBB8:
	.loc 2 269 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -23(%ebp)
	.loc 2 271 34
	movl	_ep_uint+124, %eax
	.loc 2 271 27
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-44(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL10:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 271 16
	cmpl	$0, -16(%ebp)
	je	L109
	.loc 2 272 24
	movl	-16(%ebp), %eax
	jmp	L113
L109:
	.loc 2 273 16
	movl	$0, -28(%ebp)
	.loc 2 274 47
	cmpb	$0, -23(%ebp)
	jg	L110
	.loc 2 274 50 discriminator 1
	movl	-44(%ebp), %eax
	.loc 2 274 47 discriminator 1
	negl	%eax
	movl	%eax, %edx
	jmp	L111
L110:
	.loc 2 274 31 discriminator 2
	movl	-44(%ebp), %eax
	.loc 2 274 47 discriminator 2
	movl	%eax, %edx
L111:
	.loc 2 274 16 discriminator 4
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L98:
LBE8:
	.loc 2 277 8
	cmpl	$0, 16(%ebp)
	je	L112
	.loc 2 278 12
	movl	-28(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
L112:
	.loc 2 279 12
	movl	$0, %eax
L113:
	.loc 2 280 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4236:
	.globl	_PMC_DivRem_X_L@20
	.def	_PMC_DivRem_X_L@20;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_L@20:
LFB4237:
	.loc 2 283 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$100, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 2 284 8
	cmpl	$0, 8(%ebp)
	jne	L115
	.loc 2 285 16
	movl	$-1, %eax
	jmp	L138
L115:
	.loc 2 286 8
	cmpl	$0, 24(%ebp)
	jne	L117
	.loc 2 287 16
	movl	$-1, %eax
	jmp	L138
L117:
	.loc 2 289 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 291 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 291 8
	cmpl	$0, -16(%ebp)
	je	L118
	.loc 2 292 16
	movl	-16(%ebp), %eax
	jmp	L138
L118:
	.loc 2 294 23
	leal	-33(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 295 16
	movzbl	-33(%ebp), %eax
	.loc 2 295 8
	testb	%al, %al
	jne	L119
	.loc 2 300 16
	movl	$-3, %eax
	jmp	L138
L119:
	.loc 2 302 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 302 8
	testb	%al, %al
	jne	L120
	.loc 2 306 43
	cmpl	$0, 20(%ebp)
	je	L121
	.loc 2 306 28 discriminator 1
	movl	$_number_zero, -32(%ebp)
	.loc 2 306 43 discriminator 1
	movl	-32(%ebp), %eax
	jmp	L122
L121:
	.loc 2 306 43 is_stmt 0 discriminator 2
	movl	$0, %eax
L122:
	.loc 2 306 12 is_stmt 1 discriminator 4
	movl	%eax, -32(%ebp)
	.loc 2 307 12 discriminator 4
	movl	24(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	L123
L120:
	.loc 2 313 12
	cmpl	$0, 20(%ebp)
	je	L124
LBB9:
	.loc 2 315 29
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 315 18
	testb	%al, %al
	jg	L125
	.loc 2 315 18 is_stmt 0 discriminator 1
	movzbl	-33(%ebp), %eax
	negl	%eax
	jmp	L126
L125:
	.loc 2 315 18 discriminator 2
	movzbl	-33(%ebp), %eax
L126:
	.loc 2 315 18 discriminator 4
	movb	%al, -25(%ebp)
	.loc 2 316 18 is_stmt 1 discriminator 4
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -26(%ebp)
	.loc 2 319 34 discriminator 4
	movl	_ep_uint+128, %ecx
	.loc 2 319 27 discriminator 4
	movl	-12(%ebp), %eax
	movl	12(%eax), %ebx
	leal	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, (%esp)
	call	*%ecx
LVL11:
	subl	$20, %esp
	movl	%eax, -16(%ebp)
	.loc 2 319 16 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L127
	.loc 2 320 24
	movl	-16(%ebp), %eax
	jmp	L138
L127:
	.loc 2 321 27
	movl	-40(%ebp), %edx
	.loc 2 321 52
	movl	-40(%ebp), %eax
	.loc 2 321 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 321 27
	testb	%al, %al
	jne	L129
	.loc 2 321 27 is_stmt 0 discriminator 1
	movsbl	-25(%ebp), %eax
	jmp	L130
L129:
	.loc 2 321 27 discriminator 2
	movl	$0, %eax
L130:
	.loc 2 321 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 321 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L131
	.loc 2 323 24
	movl	_ep_uint+16, %eax
	.loc 2 323 17
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL12:
	subl	$4, %esp
	.loc 2 324 24
	movl	-16(%ebp), %eax
	jmp	L138
L131:
	.loc 2 326 47
	cmpb	$0, -26(%ebp)
	jg	L132
	.loc 2 326 50 discriminator 1
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	.loc 2 326 47 discriminator 1
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	jmp	L133
L132:
	.loc 2 326 31 discriminator 2
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
L133:
	.loc 2 326 16 discriminator 4
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
LBE9:
	jmp	L123
L124:
LBB10:
	.loc 2 330 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -27(%ebp)
	.loc 2 332 34
	movl	_ep_uint+128, %ecx
	.loc 2 332 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %ebx
	leal	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, (%esp)
	call	*%ecx
LVL13:
	subl	$20, %esp
	movl	%eax, -16(%ebp)
	.loc 2 332 16
	cmpl	$0, -16(%ebp)
	je	L134
	.loc 2 333 24
	movl	-16(%ebp), %eax
	jmp	L138
L134:
	.loc 2 334 16
	movl	$0, -32(%ebp)
	.loc 2 335 47
	cmpb	$0, -27(%ebp)
	jg	L135
	.loc 2 335 50 discriminator 1
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	.loc 2 335 47 discriminator 1
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	jmp	L136
L135:
	.loc 2 335 31 discriminator 2
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
L136:
	.loc 2 335 16 discriminator 4
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
L123:
LBE10:
	.loc 2 338 8
	cmpl	$0, 20(%ebp)
	je	L137
	.loc 2 339 12
	movl	-32(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L137:
	.loc 2 340 12
	movl	$0, %eax
L138:
	.loc 2 341 1 discriminator 2
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$20
	.cfi_endproc
LFE4237:
	.globl	_PMC_DivRem_X_UX@16
	.def	_PMC_DivRem_X_UX@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_UX@16:
LFB4238:
	.loc 2 344 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 2 345 8
	cmpl	$0, 8(%ebp)
	jne	L140
	.loc 2 346 16
	movl	$-1, %eax
	jmp	L165
L140:
	.loc 2 347 8
	cmpl	$0, 12(%ebp)
	jne	L142
	.loc 2 348 16
	movl	$-1, %eax
	jmp	L165
L142:
	.loc 2 349 8
	cmpl	$0, 20(%ebp)
	jne	L143
	.loc 2 350 16
	movl	$-1, %eax
	jmp	L165
L143:
	.loc 2 352 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 355 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 355 8
	cmpl	$0, -16(%ebp)
	je	L144
	.loc 2 356 16
	movl	-16(%ebp), %eax
	jmp	L165
L144:
	.loc 2 357 9
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 357 8
	testb	%al, %al
	je	L145
	.loc 2 362 16
	movl	$-3, %eax
	jmp	L165
L145:
	.loc 2 364 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 364 8
	testb	%al, %al
	jne	L146
	.loc 2 368 43
	cmpl	$0, 16(%ebp)
	je	L147
	.loc 2 368 28 discriminator 1
	movl	$_number_zero, -24(%ebp)
	.loc 2 368 43 discriminator 1
	movl	-24(%ebp), %eax
	jmp	L148
L147:
	.loc 2 368 43 is_stmt 0 discriminator 2
	movl	$0, %eax
L148:
	.loc 2 368 12 is_stmt 1 discriminator 4
	movl	%eax, -24(%ebp)
	.loc 2 369 12 discriminator 4
	movl	$_number_zero, -28(%ebp)
	jmp	L149
L146:
	.loc 2 375 12
	cmpl	$0, 16(%ebp)
	je	L150
LBB11:
	.loc 2 377 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -17(%ebp)
	.loc 2 378 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -18(%ebp)
	.loc 2 381 34
	movl	_ep_uint+132, %eax
	.loc 2 381 27
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-36(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-32(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL14:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 381 16
	cmpl	$0, -16(%ebp)
	je	L151
	.loc 2 382 24
	movl	-16(%ebp), %eax
	jmp	L165
L151:
	.loc 2 383 27
	movl	-32(%ebp), %edx
	.loc 2 383 52
	movl	-32(%ebp), %eax
	.loc 2 383 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 383 27
	testb	%al, %al
	jne	L153
	.loc 2 383 27 is_stmt 0 discriminator 1
	movsbl	-17(%ebp), %eax
	jmp	L154
L153:
	.loc 2 383 27 discriminator 2
	movl	$0, %eax
L154:
	.loc 2 383 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 383 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L155
	.loc 2 385 24
	movl	_ep_uint+16, %eax
	.loc 2 385 17
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL15:
	subl	$4, %esp
	.loc 2 386 24
	movl	_ep_uint+16, %eax
	.loc 2 386 17
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL16:
	subl	$4, %esp
	.loc 2 387 24
	movl	-16(%ebp), %eax
	jmp	L165
L155:
	.loc 2 389 27
	movl	-36(%ebp), %edx
	.loc 2 389 52
	movl	-36(%ebp), %eax
	.loc 2 389 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 389 27
	testb	%al, %al
	jne	L156
	.loc 2 389 27 is_stmt 0 discriminator 1
	movsbl	-18(%ebp), %eax
	jmp	L157
L156:
	.loc 2 389 27 discriminator 2
	movl	$0, %eax
L157:
	.loc 2 389 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 389 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L149
	.loc 2 391 24
	movl	_ep_uint+16, %eax
	.loc 2 391 17
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL17:
	subl	$4, %esp
	.loc 2 392 24
	movl	_ep_uint+16, %eax
	.loc 2 392 17
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL18:
	subl	$4, %esp
	.loc 2 393 17
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeallocateNumber
	.loc 2 394 24
	movl	-16(%ebp), %eax
	jmp	L165
L150:
LBE11:
LBB12:
	.loc 2 399 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -19(%ebp)
	.loc 2 401 34
	movl	_ep_uint+132, %eax
	.loc 2 401 27
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-40(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL19:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 401 16
	cmpl	$0, -16(%ebp)
	je	L159
	.loc 2 402 24
	movl	-16(%ebp), %eax
	jmp	L165
L159:
	.loc 2 403 16
	movl	$0, -24(%ebp)
	.loc 2 404 27
	movl	-40(%ebp), %edx
	.loc 2 404 52
	movl	-40(%ebp), %eax
	.loc 2 404 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 404 27
	testb	%al, %al
	jne	L161
	.loc 2 404 27 is_stmt 0 discriminator 1
	movsbl	-19(%ebp), %eax
	jmp	L162
L161:
	.loc 2 404 27 discriminator 2
	movl	$0, %eax
L162:
	.loc 2 404 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -16(%ebp)
	.loc 2 404 16 is_stmt 1 discriminator 4
	cmpl	$0, -16(%ebp)
	je	L149
	.loc 2 406 24
	movl	_ep_uint+16, %eax
	.loc 2 406 17
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL20:
	subl	$4, %esp
	.loc 2 407 24
	movl	-16(%ebp), %eax
	jmp	L165
L149:
LBE12:
	.loc 2 411 8
	cmpl	$0, 16(%ebp)
	je	L164
	.loc 2 412 12
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
L164:
	.loc 2 413 8
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 414 12
	movl	$0, %eax
L165:
	.loc 2 415 1 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4238:
	.globl	_PMC_DivRem_X_X@16
	.def	_PMC_DivRem_X_X@16;	.scl	2;	.type	32;	.endef
_PMC_DivRem_X_X@16:
LFB4239:
	.loc 2 418 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	.loc 2 419 8
	cmpl	$0, 8(%ebp)
	jne	L167
	.loc 2 420 16
	movl	$-1, %eax
	jmp	L195
L167:
	.loc 2 421 8
	cmpl	$0, 12(%ebp)
	jne	L169
	.loc 2 422 16
	movl	$-1, %eax
	jmp	L195
L169:
	.loc 2 423 8
	cmpl	$0, 20(%ebp)
	jne	L170
	.loc 2 424 16
	movl	$-1, %eax
	jmp	L195
L170:
	.loc 2 426 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 427 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 430 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 430 8
	cmpl	$0, -20(%ebp)
	je	L171
	.loc 2 431 16
	movl	-20(%ebp), %eax
	jmp	L195
L171:
	.loc 2 432 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 432 8
	cmpl	$0, -20(%ebp)
	je	L172
	.loc 2 433 16
	movl	-20(%ebp), %eax
	jmp	L195
L172:
	.loc 2 434 9
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 434 8
	testb	%al, %al
	je	L173
	.loc 2 439 16
	movl	$-3, %eax
	jmp	L195
L173:
	.loc 2 441 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 441 8
	testb	%al, %al
	jne	L174
	.loc 2 445 43
	cmpl	$0, 16(%ebp)
	je	L175
	.loc 2 445 28 discriminator 1
	movl	$_number_zero, -28(%ebp)
	.loc 2 445 43 discriminator 1
	movl	-28(%ebp), %eax
	jmp	L176
L175:
	.loc 2 445 43 is_stmt 0 discriminator 2
	movl	$0, %eax
L176:
	.loc 2 445 12 is_stmt 1 discriminator 4
	movl	%eax, -28(%ebp)
	.loc 2 446 12 discriminator 4
	movl	$_number_zero, -32(%ebp)
	jmp	L177
L174:
	.loc 2 452 12
	cmpl	$0, 16(%ebp)
	je	L178
LBB13:
	.loc 2 454 29
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 454 18
	testb	%al, %al
	jle	L179
	.loc 2 454 18 is_stmt 0 discriminator 1
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	jmp	L180
L179:
	.loc 2 454 56 is_stmt 1 discriminator 2
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 454 18 discriminator 2
	negl	%eax
L180:
	.loc 2 454 18 is_stmt 0 discriminator 4
	movb	%al, -21(%ebp)
	.loc 2 455 18 is_stmt 1 discriminator 4
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -22(%ebp)
	.loc 2 458 34 discriminator 4
	movl	_ep_uint+132, %eax
	.loc 2 458 27 discriminator 4
	movl	-16(%ebp), %edx
	movl	12(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-40(%ebp), %ebx
	movl	%ebx, 12(%esp)
	leal	-36(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL21:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 458 16 discriminator 4
	cmpl	$0, -20(%ebp)
	je	L181
	.loc 2 459 24
	movl	-20(%ebp), %eax
	jmp	L195
L181:
	.loc 2 460 27
	movl	-36(%ebp), %edx
	.loc 2 460 52
	movl	-36(%ebp), %eax
	.loc 2 460 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 460 27
	testb	%al, %al
	jne	L183
	.loc 2 460 27 is_stmt 0 discriminator 1
	movsbl	-21(%ebp), %eax
	jmp	L184
L183:
	.loc 2 460 27 discriminator 2
	movl	$0, %eax
L184:
	.loc 2 460 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -20(%ebp)
	.loc 2 460 16 is_stmt 1 discriminator 4
	cmpl	$0, -20(%ebp)
	je	L185
	.loc 2 462 24
	movl	_ep_uint+16, %eax
	.loc 2 462 17
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL22:
	subl	$4, %esp
	.loc 2 463 24
	movl	_ep_uint+16, %eax
	.loc 2 463 17
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL23:
	subl	$4, %esp
	.loc 2 464 24
	movl	-20(%ebp), %eax
	jmp	L195
L185:
	.loc 2 466 27
	movl	-40(%ebp), %edx
	.loc 2 466 52
	movl	-40(%ebp), %eax
	.loc 2 466 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 466 27
	testb	%al, %al
	jne	L186
	.loc 2 466 27 is_stmt 0 discriminator 1
	movsbl	-22(%ebp), %eax
	jmp	L187
L186:
	.loc 2 466 27 discriminator 2
	movl	$0, %eax
L187:
	.loc 2 466 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -20(%ebp)
	.loc 2 466 16 is_stmt 1 discriminator 4
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 468 24
	movl	_ep_uint+16, %eax
	.loc 2 468 17
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL24:
	subl	$4, %esp
	.loc 2 469 24
	movl	_ep_uint+16, %eax
	.loc 2 469 17
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL25:
	subl	$4, %esp
	.loc 2 470 17
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeallocateNumber
	.loc 2 471 24
	movl	-20(%ebp), %eax
	jmp	L195
L178:
LBE13:
LBB14:
	.loc 2 476 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movb	%al, -23(%ebp)
	.loc 2 478 34
	movl	_ep_uint+132, %eax
	.loc 2 478 27
	movl	-16(%ebp), %edx
	movl	12(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	12(%edx), %edx
	leal	-44(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL26:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 478 16
	cmpl	$0, -20(%ebp)
	je	L189
	.loc 2 479 24
	movl	-20(%ebp), %eax
	jmp	L195
L189:
	.loc 2 480 16
	movl	$0, -28(%ebp)
	.loc 2 481 27
	movl	-44(%ebp), %edx
	.loc 2 481 52
	movl	-44(%ebp), %eax
	.loc 2 481 68
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 481 27
	testb	%al, %al
	jne	L191
	.loc 2 481 27 is_stmt 0 discriminator 1
	movsbl	-23(%ebp), %eax
	jmp	L192
L191:
	.loc 2 481 27 discriminator 2
	movl	$0, %eax
L192:
	.loc 2 481 27 discriminator 4
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -20(%ebp)
	.loc 2 481 16 is_stmt 1 discriminator 4
	cmpl	$0, -20(%ebp)
	je	L177
	.loc 2 483 24
	movl	_ep_uint+16, %eax
	.loc 2 483 17
	movl	-44(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL27:
	subl	$4, %esp
	.loc 2 484 24
	movl	-20(%ebp), %eax
	jmp	L195
L177:
LBE14:
	.loc 2 488 8
	cmpl	$0, 16(%ebp)
	je	L194
	.loc 2 489 12
	movl	-28(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
L194:
	.loc 2 490 8
	movl	-32(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 491 12
	movl	$0, %eax
L195:
	.loc 2 492 1 discriminator 2
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4239:
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
	.long	0x67ed
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=generic -march=i686 -g\0"
	.byte	0xc
	.ascii "../pmc_divrem.c\0"
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
	.long	0xd2
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
	.long	0xf9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0xf9
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
	.long	0x149
	.uleb128 0x6
	.byte	0x4
	.long	0x14f
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.byte	0xd8
	.byte	0x3
	.word	0x1bc
	.byte	0x10
	.long	0x2ec
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x3
	.word	0x1bd
	.byte	0x7
	.long	0xe2
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x3
	.word	0x1be
	.byte	0x10
	.long	0xd2
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x3
	.word	0x1bf
	.byte	0x10
	.long	0xd2
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x3
	.word	0x1c0
	.byte	0x11
	.long	0x439
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x3
	.word	0x1c1
	.byte	0x9
	.long	0x45e
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x3
	.word	0x1c7
	.byte	0x5
	.long	0x46e
	.byte	0x48
	.uleb128 0x9
	.ascii "lc_clike\0"
	.byte	0x3
	.word	0x1c8
	.byte	0x7
	.long	0xe2
	.byte	0xa8
	.uleb128 0x9
	.ascii "mb_cur_max\0"
	.byte	0x3
	.word	0x1c9
	.byte	0x7
	.long	0xe2
	.byte	0xac
	.uleb128 0x9
	.ascii "lconv_intl_refcount\0"
	.byte	0x3
	.word	0x1ca
	.byte	0x8
	.long	0x433
	.byte	0xb0
	.uleb128 0x9
	.ascii "lconv_num_refcount\0"
	.byte	0x3
	.word	0x1cb
	.byte	0x8
	.long	0x433
	.byte	0xb4
	.uleb128 0x9
	.ascii "lconv_mon_refcount\0"
	.byte	0x3
	.word	0x1cc
	.byte	0x8
	.long	0x433
	.byte	0xb8
	.uleb128 0x9
	.ascii "lconv\0"
	.byte	0x3
	.word	0x1cd
	.byte	0x11
	.long	0x485
	.byte	0xbc
	.uleb128 0x9
	.ascii "ctype1_refcount\0"
	.byte	0x3
	.word	0x1ce
	.byte	0x8
	.long	0x433
	.byte	0xc0
	.uleb128 0x9
	.ascii "ctype1\0"
	.byte	0x3
	.word	0x1cf
	.byte	0x13
	.long	0x48b
	.byte	0xc4
	.uleb128 0x9
	.ascii "pctype\0"
	.byte	0x3
	.word	0x1d0
	.byte	0x19
	.long	0x491
	.byte	0xc8
	.uleb128 0x9
	.ascii "pclmap\0"
	.byte	0x3
	.word	0x1d1
	.byte	0x18
	.long	0x497
	.byte	0xcc
	.uleb128 0x9
	.ascii "pcumap\0"
	.byte	0x3
	.word	0x1d2
	.byte	0x18
	.long	0x497
	.byte	0xd0
	.uleb128 0x9
	.ascii "lc_time_curr\0"
	.byte	0x3
	.word	0x1d3
	.byte	0x1a
	.long	0x4c3
	.byte	0xd4
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x3
	.word	0x1a9
	.byte	0x25
	.long	0x304
	.uleb128 0x6
	.byte	0x4
	.long	0x30a
	.uleb128 0xa
	.ascii "threadmbcinfostruct\0"
	.uleb128 0x7
	.ascii "localeinfo_struct\0"
	.byte	0x8
	.byte	0x3
	.word	0x1ac
	.byte	0x10
	.long	0x360
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x3
	.word	0x1ad
	.byte	0x12
	.long	0x131
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x3
	.word	0x1ae
	.byte	0x12
	.long	0x2ec
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x3
	.word	0x1af
	.byte	0x3
	.long	0x31f
	.uleb128 0x7
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x3
	.word	0x1b3
	.byte	0x10
	.long	0x3c8
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x3
	.word	0x1b4
	.byte	0x12
	.long	0xf9
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x3
	.word	0x1b5
	.byte	0x12
	.long	0xf9
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x3
	.word	0x1b6
	.byte	0x12
	.long	0xf9
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x3
	.word	0x1b7
	.byte	0x3
	.long	0x379
	.uleb128 0xb
	.byte	0x10
	.byte	0x3
	.word	0x1c2
	.byte	0x3
	.long	0x427
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x3
	.word	0x1c3
	.byte	0xb
	.long	0x427
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x3
	.word	0x1c4
	.byte	0xe
	.long	0x42d
	.byte	0x4
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x3
	.word	0x1c5
	.byte	0xa
	.long	0x433
	.byte	0x8
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x3
	.word	0x1c6
	.byte	0xa
	.long	0x433
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xbb
	.uleb128 0x6
	.byte	0x4
	.long	0xe9
	.uleb128 0x6
	.byte	0x4
	.long	0xe2
	.uleb128 0xc
	.long	0x449
	.long	0x449
	.uleb128 0xd
	.long	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xc
	.long	0x3c8
	.long	0x46e
	.uleb128 0xd
	.long	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x3d7
	.long	0x47e
	.uleb128 0xd
	.long	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x47e
	.uleb128 0x6
	.byte	0x4
	.long	0xf9
	.uleb128 0x6
	.byte	0x4
	.long	0x10f
	.uleb128 0x6
	.byte	0x4
	.long	0x4ae
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x49d
	.uleb128 0xa
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x4b3
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x4
	.byte	0x3f
	.byte	0x2e
	.long	0x4d9
	.uleb128 0x6
	.byte	0x4
	.long	0x4df
	.uleb128 0xe
	.long	0x4ea
	.uleb128 0xf
	.long	0xe2
	.byte	0
	.uleb128 0x10
	.ascii "_XCPT_ACTION\0"
	.byte	0xc
	.byte	0x4
	.byte	0x41
	.byte	0xa
	.long	0x536
	.uleb128 0x11
	.ascii "XcptNum\0"
	.byte	0x4
	.byte	0x42
	.byte	0x13
	.long	0x449
	.byte	0
	.uleb128 0x11
	.ascii "SigNum\0"
	.byte	0x4
	.byte	0x43
	.byte	0x9
	.long	0xe2
	.byte	0x4
	.uleb128 0x11
	.ascii "XcptAction\0"
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.long	0x4c9
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x4ea
	.long	0x541
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.ascii "_XcptActTab\0"
	.byte	0x4
	.byte	0x47
	.byte	0x1e
	.long	0x536
	.uleb128 0x13
	.ascii "_XcptActTabCount\0"
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "_XcptActTabSize\0"
	.byte	0x4
	.byte	0x49
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "_First_FPE_Indx\0"
	.byte	0x4
	.byte	0x4a
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "_Num_FPE\0"
	.byte	0x4
	.byte	0x4b
	.byte	0xe
	.long	0xe2
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x5
	.byte	0x8d
	.byte	0x19
	.long	0x449
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xd2
	.uleb128 0x13
	.ascii "_imp___pctype\0"
	.byte	0x6
	.byte	0x2b
	.byte	0x1c
	.long	0x5e4
	.uleb128 0x6
	.byte	0x4
	.long	0x48b
	.uleb128 0x13
	.ascii "_imp___wctype\0"
	.byte	0x6
	.byte	0x3b
	.byte	0x1c
	.long	0x5e4
	.uleb128 0x13
	.ascii "_imp___pwctype\0"
	.byte	0x6
	.byte	0x47
	.byte	0x1c
	.long	0x5e4
	.uleb128 0xc
	.long	0x4ae
	.long	0x622
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x617
	.uleb128 0x13
	.ascii "__newclmap\0"
	.byte	0x6
	.byte	0x50
	.byte	0x1e
	.long	0x622
	.uleb128 0x13
	.ascii "__newcumap\0"
	.byte	0x6
	.byte	0x51
	.byte	0x1e
	.long	0x622
	.uleb128 0x13
	.ascii "__ptlocinfo\0"
	.byte	0x6
	.byte	0x52
	.byte	0x19
	.long	0x131
	.uleb128 0x13
	.ascii "__ptmbcinfo\0"
	.byte	0x6
	.byte	0x53
	.byte	0x19
	.long	0x2ec
	.uleb128 0x13
	.ascii "__globallocalestatus\0"
	.byte	0x6
	.byte	0x54
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "__locale_changed\0"
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "__initiallocinfo\0"
	.byte	0x6
	.byte	0x56
	.byte	0x28
	.long	0x14f
	.uleb128 0x13
	.ascii "__initiallocalestructinfo\0"
	.byte	0x6
	.byte	0x57
	.byte	0x1a
	.long	0x360
	.uleb128 0x13
	.ascii "_imp____mb_cur_max\0"
	.byte	0x6
	.byte	0xcb
	.byte	0x10
	.long	0x433
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
	.long	0x49d
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
	.long	0x789
	.uleb128 0x11
	.ascii "Data1\0"
	.byte	0x7
	.byte	0x14
	.byte	0x11
	.long	0x449
	.byte	0
	.uleb128 0x11
	.ascii "Data2\0"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.long	0xf9
	.byte	0x4
	.uleb128 0x11
	.ascii "Data3\0"
	.byte	0x7
	.byte	0x16
	.byte	0x12
	.long	0xf9
	.byte	0x6
	.uleb128 0x11
	.ascii "Data4\0"
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.long	0x789
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x49d
	.long	0x799
	.uleb128 0xd
	.long	0xd2
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x73d
	.uleb128 0x4
	.long	0x799
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x7
	.byte	0x53
	.byte	0xe
	.long	0x799
	.uleb128 0x4
	.long	0x7ab
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x799
	.uleb128 0x4
	.long	0x7bc
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.long	0x799
	.uleb128 0x4
	.long	0x7cf
	.uleb128 0x15
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13a9
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13aa
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13ab
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0x8
	.word	0x13ac
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0x8
	.word	0x13ad
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0x8
	.word	0x13ae
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0x8
	.word	0x13af
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0x8
	.word	0x13b0
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0x8
	.word	0x13b1
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13b2
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0x8
	.word	0x13b3
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0x8
	.word	0x13b4
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13b5
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0x8
	.word	0x13b6
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0x8
	.word	0x13b7
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0x8
	.word	0x13b8
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0x8
	.word	0x13b9
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0x8
	.word	0x13ba
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bb
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bc
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bd
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13be
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0x8
	.word	0x13bf
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0x8
	.word	0x13c0
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0x8
	.word	0x13c1
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0x8
	.word	0x13c2
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0x8
	.word	0x13c3
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0x8
	.word	0x13c4
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13c5
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0x8
	.word	0x13c6
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0x8
	.word	0x13c7
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0x8
	.word	0x13c8
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0x8
	.word	0x13c9
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ca
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0x8
	.word	0x13cb
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0x8
	.word	0x13cc
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0x8
	.word	0x13cd
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0x8
	.word	0x13ce
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0x8
	.word	0x13cf
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0x8
	.word	0x13d0
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0x8
	.word	0x13d1
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0x8
	.word	0x13d2
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0x8
	.word	0x13d3
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0x8
	.word	0x13d4
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0x8
	.word	0x13d5
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d6
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d7
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d8
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0x8
	.word	0x13d9
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0x8
	.word	0x13da
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0x8
	.word	0x13db
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0x8
	.word	0x13dc
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0x8
	.word	0x13dd
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0x8
	.word	0x13de
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0x8
	.word	0x13df
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0x8
	.word	0x13e0
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0x8
	.word	0x13e1
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0x8
	.word	0x13e2
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0x8
	.word	0x13e3
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0x8
	.word	0x13e4
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0x8
	.word	0x13e5
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0x8
	.word	0x13e6
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0x8
	.word	0x13e7
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0x8
	.word	0x13e8
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0x8
	.word	0x13e9
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0x8
	.word	0x13ea
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0x8
	.word	0x13eb
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0x8
	.word	0x13ec
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0x8
	.word	0x13ed
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0x8
	.word	0x13ee
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ef
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13f0
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0x8
	.word	0x13f1
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0x8
	.word	0x13f2
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0x8
	.word	0x13f3
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0x8
	.word	0x13f4
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0x8
	.word	0x13f5
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0x8
	.word	0x13f6
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0x8
	.word	0x13f7
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0x8
	.word	0x13f8
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0x8
	.word	0x13f9
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0x8
	.word	0x13fa
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0x8
	.word	0x13fb
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fc
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fd
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fe
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ff
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0x8
	.word	0x1400
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0x8
	.word	0x1401
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0x8
	.word	0x1402
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0x8
	.word	0x1403
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0x8
	.word	0x1404
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0x8
	.word	0x1405
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0x8
	.word	0x1406
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0x8
	.word	0x1407
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0x8
	.word	0x1408
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0x8
	.word	0x1409
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0x8
	.word	0x140a
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0x8
	.word	0x140b
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0x8
	.word	0x140c
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0x8
	.word	0x140d
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0x8
	.word	0x140e
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0x8
	.word	0x140f
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0x8
	.word	0x1410
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0x8
	.word	0x1411
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0x8
	.word	0x1412
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0x8
	.word	0x1413
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0x8
	.word	0x1414
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0x8
	.word	0x1415
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0x8
	.word	0x1416
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0x8
	.word	0x1417
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0x8
	.word	0x1418
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0x8
	.word	0x1419
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0x8
	.word	0x141a
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0x8
	.word	0x141b
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0x8
	.word	0x141c
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0x8
	.word	0x141d
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0x8
	.word	0x141e
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0x8
	.word	0x141f
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0x8
	.word	0x1420
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0x8
	.word	0x1421
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0x8
	.word	0x1422
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1620
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1621
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1622
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0x8
	.word	0x1623
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0x8
	.word	0x1624
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0x8
	.word	0x1625
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0x8
	.word	0x1626
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0x8
	.word	0x1627
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0x8
	.word	0x1628
	.byte	0x17
	.long	0x7a6
	.uleb128 0x15
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1629
	.byte	0x17
	.long	0x7a6
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0x9
	.byte	0x42
	.byte	0x11
	.long	0x5af
	.uleb128 0x6
	.byte	0x4
	.long	0x427
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xc
	.long	0x427
	.long	0x1d4a
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "_sys_errlist\0"
	.byte	0xa
	.byte	0xac
	.byte	0x2b
	.long	0x1d3a
	.uleb128 0x13
	.ascii "_sys_nerr\0"
	.byte	0xa
	.byte	0xad
	.byte	0x29
	.long	0xe2
	.uleb128 0x15
	.ascii "_imp____argc\0"
	.byte	0xa
	.word	0x119
	.byte	0x10
	.long	0x433
	.uleb128 0x15
	.ascii "_imp____argv\0"
	.byte	0xa
	.word	0x11d
	.byte	0x13
	.long	0x1d9d
	.uleb128 0x6
	.byte	0x4
	.long	0x1d1b
	.uleb128 0x15
	.ascii "_imp____wargv\0"
	.byte	0xa
	.word	0x121
	.byte	0x16
	.long	0x1dba
	.uleb128 0x6
	.byte	0x4
	.long	0x1dc0
	.uleb128 0x6
	.byte	0x4
	.long	0x42d
	.uleb128 0x15
	.ascii "_imp___environ\0"
	.byte	0xa
	.word	0x127
	.byte	0x13
	.long	0x1d9d
	.uleb128 0x15
	.ascii "_imp___wenviron\0"
	.byte	0xa
	.word	0x12c
	.byte	0x16
	.long	0x1dba
	.uleb128 0x15
	.ascii "_imp___pgmptr\0"
	.byte	0xa
	.word	0x132
	.byte	0x12
	.long	0x1d1b
	.uleb128 0x15
	.ascii "_imp___wpgmptr\0"
	.byte	0xa
	.word	0x137
	.byte	0x15
	.long	0x1dc0
	.uleb128 0x15
	.ascii "_imp___osplatform\0"
	.byte	0xa
	.word	0x13c
	.byte	0x19
	.long	0x5c8
	.uleb128 0x15
	.ascii "_imp___osver\0"
	.byte	0xa
	.word	0x141
	.byte	0x19
	.long	0x5c8
	.uleb128 0x15
	.ascii "_imp___winver\0"
	.byte	0xa
	.word	0x146
	.byte	0x19
	.long	0x5c8
	.uleb128 0x15
	.ascii "_imp___winmajor\0"
	.byte	0xa
	.word	0x14b
	.byte	0x19
	.long	0x5c8
	.uleb128 0x15
	.ascii "_imp___winminor\0"
	.byte	0xa
	.word	0x150
	.byte	0x19
	.long	0x5c8
	.uleb128 0x13
	.ascii "_amblksiz\0"
	.byte	0xb
	.byte	0x35
	.byte	0x17
	.long	0xd2
	.uleb128 0x16
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0xd2
	.byte	0x11
	.byte	0x95
	.byte	0xe
	.long	0x1eea
	.uleb128 0x17
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xc
	.byte	0x29
	.byte	0x16
	.long	0x1d05
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xc
	.byte	0x2a
	.byte	0x16
	.long	0x1d05
	.uleb128 0x13
	.ascii "IID_IUnknown\0"
	.byte	0xd
	.byte	0x57
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xd
	.byte	0xbd
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IClassFactory\0"
	.byte	0xd
	.word	0x16d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMarshal\0"
	.byte	0xe
	.word	0x16e
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_INoMarshal\0"
	.byte	0xe
	.word	0x255
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAgileObject\0"
	.byte	0xe
	.word	0x294
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAgileReference\0"
	.byte	0xe
	.word	0x2d2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMarshal2\0"
	.byte	0xe
	.word	0x32d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMalloc\0"
	.byte	0xe
	.word	0x3b2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xe
	.word	0x469
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IExternalConnection\0"
	.byte	0xe
	.word	0x4cc
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMultiQI\0"
	.byte	0xe
	.word	0x547
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xe
	.word	0x59e
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternalUnknown\0"
	.byte	0xe
	.word	0x60c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumUnknown\0"
	.byte	0xe
	.word	0x668
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumString\0"
	.byte	0xe
	.word	0x706
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISequentialStream\0"
	.byte	0xe
	.word	0x7a2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IStream\0"
	.byte	0xe
	.word	0x84d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xe
	.word	0x991
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xe
	.word	0xa3b
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xe
	.word	0xabd
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xe
	.word	0xb7f
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xe
	.word	0xc99
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xe
	.word	0xcee
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xe
	.word	0xd56
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xe
	.word	0xe1c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IChannelHook\0"
	.byte	0xe
	.word	0xe9f
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IClientSecurity\0"
	.byte	0xe
	.word	0xfc3
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IServerSecurity\0"
	.byte	0xe
	.word	0x106d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcOptions\0"
	.byte	0xe
	.word	0x1113
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IGlobalOptions\0"
	.byte	0xe
	.word	0x11ae
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISurrogate\0"
	.byte	0xe
	.word	0x1221
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xe
	.word	0x1289
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISynchronize\0"
	.byte	0xe
	.word	0x1312
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xe
	.word	0x138c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xe
	.word	0x13e1
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xe
	.word	0x1441
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xe
	.word	0x14af
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xe
	.word	0x151e
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAsyncManager\0"
	.byte	0xe
	.word	0x158a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICallFactory\0"
	.byte	0xe
	.word	0x1608
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRpcHelper\0"
	.byte	0xe
	.word	0x1666
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xe
	.word	0x16d1
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IWaitMultiple\0"
	.byte	0xe
	.word	0x172c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xe
	.word	0x1798
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xe
	.word	0x17fd
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPipeByte\0"
	.byte	0xe
	.word	0x1868
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPipeLong\0"
	.byte	0xe
	.word	0x18d9
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPipeDouble\0"
	.byte	0xe
	.word	0x194a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xe
	.word	0x1b24
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IProcessInitControl\0"
	.byte	0xe
	.word	0x1bb2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IFastRundown\0"
	.byte	0xe
	.word	0x1c07
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMarshalingStream\0"
	.byte	0xe
	.word	0x1c4a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xe
	.word	0x1d09
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_NULL\0"
	.byte	0xf
	.byte	0xd
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "CATID_MARSHALER\0"
	.byte	0xf
	.byte	0xe
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IRpcChannel\0"
	.byte	0xf
	.byte	0xf
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IRpcStub\0"
	.byte	0xf
	.byte	0x10
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IStubManager\0"
	.byte	0xf
	.byte	0x11
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IRpcProxy\0"
	.byte	0xf
	.byte	0x12
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IProxyManager\0"
	.byte	0xf
	.byte	0x13
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IPSFactory\0"
	.byte	0xf
	.byte	0x14
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IInternalMoniker\0"
	.byte	0xf
	.byte	0x15
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IDfReserved1\0"
	.byte	0xf
	.byte	0x16
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IDfReserved2\0"
	.byte	0xf
	.byte	0x17
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IDfReserved3\0"
	.byte	0xf
	.byte	0x18
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "CLSID_StdMarshal\0"
	.byte	0xf
	.byte	0x19
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xf
	.byte	0x1a
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xf
	.byte	0x1b
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "IID_IStub\0"
	.byte	0xf
	.byte	0x1c
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IProxy\0"
	.byte	0xf
	.byte	0x1d
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IEnumGeneric\0"
	.byte	0xf
	.byte	0x1e
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IEnumHolder\0"
	.byte	0xf
	.byte	0x1f
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IEnumCallback\0"
	.byte	0xf
	.byte	0x20
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IOleManager\0"
	.byte	0xf
	.byte	0x21
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IOlePresObj\0"
	.byte	0xf
	.byte	0x22
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IDebug\0"
	.byte	0xf
	.byte	0x23
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "IID_IDebugStream\0"
	.byte	0xf
	.byte	0x24
	.byte	0x14
	.long	0x7b7
	.uleb128 0x13
	.ascii "CLSID_PSGenObject\0"
	.byte	0xf
	.byte	0x25
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_PSClientSite\0"
	.byte	0xf
	.byte	0x26
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_PSClassObject\0"
	.byte	0xf
	.byte	0x27
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xf
	.byte	0x2a
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xf
	.byte	0x2b
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xf
	.byte	0x2c
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xf
	.byte	0x2d
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_StaticDib\0"
	.byte	0xf
	.byte	0x2e
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CID_CDfsVolume\0"
	.byte	0xf
	.byte	0x2f
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xf
	.byte	0x30
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xf
	.byte	0x31
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xf
	.byte	0x32
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_ComBinding\0"
	.byte	0xf
	.byte	0x33
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_StdEvent\0"
	.byte	0xf
	.byte	0x34
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xf
	.byte	0x35
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xf
	.byte	0x36
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_AddrControl\0"
	.byte	0xf
	.byte	0x37
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xf
	.byte	0x38
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xf
	.byte	0x39
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xf
	.byte	0x3a
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xf
	.byte	0x3b
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xf
	.byte	0x3c
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xf
	.byte	0x3d
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xf
	.byte	0x3e
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDLabel\0"
	.byte	0xf
	.byte	0x3f
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xf
	.byte	0x40
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDListBox\0"
	.byte	0xf
	.byte	0x41
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xf
	.byte	0x42
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xf
	.byte	0x43
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xf
	.byte	0x45
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xf
	.byte	0x46
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xf
	.byte	0x47
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xf
	.byte	0x48
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xf
	.byte	0x49
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4a
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4b
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4c
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4d
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4e
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xf
	.byte	0x4f
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xf
	.byte	0x50
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xf
	.byte	0x51
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xf
	.byte	0x52
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xf
	.byte	0x53
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xf
	.byte	0x54
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xf
	.byte	0x55
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_CSystemPage\0"
	.byte	0xf
	.byte	0x56
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xf
	.byte	0x57
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xf
	.byte	0x58
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xf
	.byte	0x59
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xf
	.byte	0x5a
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xf
	.byte	0x5b
	.byte	0x16
	.long	0x7ca
	.uleb128 0x13
	.ascii "GUID_TRISTATE\0"
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x7a6
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0x10
	.byte	0x28
	.byte	0x16
	.long	0x1d05
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0x10
	.byte	0x29
	.byte	0x16
	.long	0x1d05
	.uleb128 0x18
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0xd2
	.byte	0x10
	.word	0x200
	.byte	0x6
	.long	0x3100
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
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBindCtx\0"
	.byte	0x12
	.word	0x1f3a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumMoniker\0"
	.byte	0x12
	.word	0x204a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRunnableObject\0"
	.byte	0x12
	.word	0x20e8
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x12
	.word	0x218e
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPersist\0"
	.byte	0x12
	.word	0x2269
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPersistStream\0"
	.byte	0x12
	.word	0x22be
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMoniker\0"
	.byte	0x12
	.word	0x236a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IROTData\0"
	.byte	0x12
	.word	0x2558
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x12
	.word	0x25b5
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IStorage\0"
	.byte	0x12
	.word	0x2658
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPersistFile\0"
	.byte	0x12
	.word	0x2841
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPersistStorage\0"
	.byte	0x12
	.word	0x28f1
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ILockBytes\0"
	.byte	0x12
	.word	0x29b1
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x12
	.word	0x2ac0
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x12
	.word	0x2b6c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRootStorage\0"
	.byte	0x12
	.word	0x2c08
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAdviseSink\0"
	.byte	0x12
	.word	0x2cb3
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x12
	.word	0x2d73
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAdviseSink2\0"
	.byte	0x12
	.word	0x2ea9
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x12
	.word	0x2f2e
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDataObject\0"
	.byte	0x12
	.word	0x2ff4
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x12
	.word	0x3118
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMessageFilter\0"
	.byte	0x12
	.word	0x31d3
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x12
	.word	0x325d
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x12
	.word	0x325f
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x12
	.word	0x3261
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x12
	.word	0x3263
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x12
	.word	0x3265
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x12
	.word	0x3267
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x12
	.word	0x3269
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x12
	.word	0x326b
	.byte	0x14
	.long	0x7dd
	.uleb128 0x15
	.ascii "IID_IClassActivator\0"
	.byte	0x12
	.word	0x3273
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IFillLockBytes\0"
	.byte	0x12
	.word	0x32d5
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IProgressNotify\0"
	.byte	0x12
	.word	0x3389
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ILayoutStorage\0"
	.byte	0x12
	.word	0x33ee
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBlockingLock\0"
	.byte	0x12
	.word	0x3492
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x12
	.word	0x34f7
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOplockStorage\0"
	.byte	0x12
	.word	0x354e
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x12
	.word	0x35d5
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IUrlMon\0"
	.byte	0x12
	.word	0x364d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x12
	.word	0x36bc
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x12
	.word	0x3710
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x12
	.word	0x3786
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IProcessLock\0"
	.byte	0x12
	.word	0x37e5
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISurrogateService\0"
	.byte	0x12
	.word	0x3848
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInitializeSpy\0"
	.byte	0x12
	.word	0x38f2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x12
	.word	0x398a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x13
	.byte	0xab
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleCache\0"
	.byte	0x13
	.word	0x162
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleCache2\0"
	.byte	0x13
	.word	0x229
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleCacheControl\0"
	.byte	0x13
	.word	0x2d4
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IParseDisplayName\0"
	.byte	0x13
	.word	0x33c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleContainer\0"
	.byte	0x13
	.word	0x39c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleClientSite\0"
	.byte	0x13
	.word	0x417
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleObject\0"
	.byte	0x13
	.word	0x4fe
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x13
	.word	0x6fe
	.byte	0x16
	.long	0x1d05
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x13
	.word	0x6ff
	.byte	0x16
	.long	0x1d05
	.uleb128 0x15
	.ascii "IID_IOleWindow\0"
	.byte	0x13
	.word	0x724
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleLink\0"
	.byte	0x13
	.word	0x79a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleItemContainer\0"
	.byte	0x13
	.word	0x8bf
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x13
	.word	0x976
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x13
	.word	0xa1c
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x13
	.word	0xaf8
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x13
	.word	0xbf1
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x13
	.word	0xc91
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IContinue\0"
	.byte	0x13
	.word	0xda4
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IViewObject\0"
	.byte	0x13
	.word	0xdf9
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IViewObject2\0"
	.byte	0x13
	.word	0xf2a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDropSource\0"
	.byte	0x13
	.word	0xfd2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDropTarget\0"
	.byte	0x13
	.word	0x105b
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x13
	.word	0x10ff
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x13
	.word	0x1176
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "IID_IServiceProvider\0"
	.byte	0x14
	.byte	0x4d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x15
	.byte	0xf1
	.byte	0x16
	.long	0x1d05
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x15
	.byte	0xf2
	.byte	0x16
	.long	0x1d05
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x15
	.word	0x33b
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x15
	.word	0x562
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x15
	.word	0x7b2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x15
	.word	0x8ba
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDispatch\0"
	.byte	0x15
	.word	0x9b6
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x15
	.word	0xa87
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeComp\0"
	.byte	0x15
	.word	0xb35
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeInfo\0"
	.byte	0x15
	.word	0xbd9
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeInfo2\0"
	.byte	0x15
	.word	0xe50
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeLib\0"
	.byte	0x15
	.word	0x10d6
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeLib2\0"
	.byte	0x15
	.word	0x123d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x15
	.word	0x1361
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IErrorInfo\0"
	.byte	0x15
	.word	0x13da
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x15
	.word	0x147d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x15
	.word	0x1520
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeFactory\0"
	.byte	0x15
	.word	0x1575
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ITypeMarshal\0"
	.byte	0x15
	.word	0x15d0
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IRecordInfo\0"
	.byte	0x15
	.word	0x1684
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IErrorLog\0"
	.byte	0x15
	.word	0x1820
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPropertyBag\0"
	.byte	0x15
	.word	0x187a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x16
	.byte	0xeb
	.byte	0x18
	.long	0x1d05
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x16
	.byte	0xec
	.byte	0x18
	.long	0x1d05
	.uleb128 0x13
	.ascii "LIBID_MSXML\0"
	.byte	0x16
	.byte	0xfc
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x16
	.word	0x100
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x16
	.word	0x127
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x16
	.word	0x1fd
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x16
	.word	0x266
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x16
	.word	0x375
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x16
	.word	0x3b0
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x16
	.word	0x404
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x16
	.word	0x496
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x16
	.word	0x50f
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMText\0"
	.byte	0x16
	.word	0x5a6
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x16
	.word	0x625
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x16
	.word	0x69e
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x16
	.word	0x717
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x16
	.word	0x792
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x16
	.word	0x80b
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x16
	.word	0x87f
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x16
	.word	0x8f8
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x16
	.word	0x961
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXTLRuntime\0"
	.byte	0x16
	.word	0x9a6
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x16
	.word	0xa3d
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_DOMDocument\0"
	.byte	0x16
	.word	0xa5c
	.byte	0x16
	.long	0x7ca
	.uleb128 0x15
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x16
	.word	0xa60
	.byte	0x16
	.long	0x7ca
	.uleb128 0x15
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x16
	.word	0xa67
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x16
	.word	0xacd
	.byte	0x16
	.long	0x7ca
	.uleb128 0x15
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x16
	.word	0xad4
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x16
	.word	0xb0d
	.byte	0x16
	.long	0x7ca
	.uleb128 0x15
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x16
	.word	0xb14
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDocument\0"
	.byte	0x16
	.word	0xb4a
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLDocument2\0"
	.byte	0x16
	.word	0xbb2
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLElement\0"
	.byte	0x16
	.word	0xc24
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLElement2\0"
	.byte	0x16
	.word	0xc82
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLAttribute\0"
	.byte	0x16
	.word	0xce5
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IXMLError\0"
	.byte	0x16
	.word	0xd11
	.byte	0x14
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_XMLDocument\0"
	.byte	0x16
	.word	0xd2e
	.byte	0x16
	.long	0x7ca
	.uleb128 0x15
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x17
	.word	0x17e
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x17
	.word	0x17f
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x17
	.word	0x180
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x17
	.word	0x181
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x17
	.word	0x182
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x17
	.word	0x183
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x17
	.word	0x184
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x17
	.word	0x185
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x17
	.word	0x186
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x17
	.word	0x187
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x17
	.word	0x188
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x17
	.word	0x189
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x17
	.word	0x18a
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x17
	.word	0x193
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x17
	.word	0x194
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x17
	.word	0x195
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x17
	.word	0x196
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x17
	.word	0x197
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x17
	.word	0x198
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_FileProtocol\0"
	.byte	0x17
	.word	0x199
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_MkProtocol\0"
	.byte	0x17
	.word	0x19a
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x17
	.word	0x19b
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x17
	.word	0x19c
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x17
	.word	0x19d
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x17
	.word	0x19e
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x17
	.word	0x19f
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IPersistMoniker\0"
	.byte	0x17
	.word	0x250
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IMonikerProp\0"
	.byte	0x17
	.word	0x321
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBindProtocol\0"
	.byte	0x17
	.word	0x37f
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBinding\0"
	.byte	0x17
	.word	0x3e0
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x17
	.word	0x575
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x17
	.word	0x6a5
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAuthenticate\0"
	.byte	0x17
	.word	0x764
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x17
	.word	0x7d0
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x17
	.word	0x841
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x17
	.word	0x8c1
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x17
	.word	0x93b
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x17
	.word	0x9bf
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x17
	.word	0xa30
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICodeInstall\0"
	.byte	0x17
	.word	0xa9b
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IWinInetInfo\0"
	.byte	0x17
	.word	0x10a5
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IHttpSecurity\0"
	.byte	0x17
	.word	0x1112
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x17
	.word	0x1179
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x17
	.word	0x11f8
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "SID_BindHost\0"
	.byte	0x17
	.word	0x1335
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBindHost\0"
	.byte	0x17
	.word	0x133f
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternet\0"
	.byte	0x17
	.word	0x144d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x17
	.word	0x14ac
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x17
	.word	0x1526
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x17
	.word	0x15bf
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetProtocol\0"
	.byte	0x17
	.word	0x1684
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x17
	.word	0x181a
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x17
	.word	0x18bd
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetSession\0"
	.byte	0x17
	.word	0x193f
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x17
	.word	0x1a48
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetPriority\0"
	.byte	0x17
	.word	0x1ab2
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x17
	.word	0x1b4e
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x17
	.word	0x1cb2
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x17
	.word	0x1cb3
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x17
	.word	0x1ccb
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x17
	.word	0x1d69
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x17
	.word	0x210f
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x17
	.word	0x22c4
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x17
	.word	0x269c
	.byte	0x12
	.long	0x7b7
	.uleb128 0x15
	.ascii "IID_ISoftDistExt\0"
	.byte	0x17
	.word	0x26cc
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x17
	.word	0x2778
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IDataFilter\0"
	.byte	0x17
	.word	0x27e6
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x17
	.word	0x28a6
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x17
	.word	0x2933
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x17
	.word	0x2941
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IGetBindHandle\0"
	.byte	0x17
	.word	0x29a5
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x17
	.word	0x2a0d
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPropertyStorage\0"
	.byte	0x18
	.word	0x1b7
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x18
	.word	0x304
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x18
	.word	0x3a6
	.byte	0x13
	.long	0x7a6
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x18
	.word	0x444
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "IID_StdOle\0"
	.byte	0x19
	.byte	0x15
	.byte	0x12
	.long	0x7b7
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x1a
	.byte	0xc
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x1a
	.byte	0xd
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x1a
	.byte	0xe
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x1a
	.byte	0xf
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x1a
	.byte	0x10
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x1a
	.byte	0x11
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x1a
	.byte	0x12
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x1a
	.byte	0x13
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x1a
	.byte	0x14
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x1a
	.byte	0x15
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x1a
	.byte	0x16
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x1a
	.byte	0x17
	.byte	0x13
	.long	0x7a6
	.uleb128 0x10
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1b
	.byte	0xa1
	.byte	0x12
	.long	0x4b6d
	.uleb128 0x11
	.ascii "dwProtocol\0"
	.byte	0x1b
	.byte	0xa2
	.byte	0xb
	.long	0x5b1
	.byte	0
	.uleb128 0x11
	.ascii "cbPciLength\0"
	.byte	0x1b
	.byte	0xa3
	.byte	0xb
	.long	0x5b1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1b
	.byte	0xa4
	.byte	0x5
	.long	0x4b28
	.uleb128 0x4
	.long	0x4b6d
	.uleb128 0x13
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x3c
	.long	0x4b86
	.uleb128 0x13
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x4b
	.long	0x4b86
	.uleb128 0x13
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x5a
	.long	0x4b86
	.uleb128 0x13
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1d
	.byte	0xe
	.byte	0x13
	.long	0x7a6
	.uleb128 0x13
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1d
	.byte	0xf
	.byte	0x13
	.long	0x7a6
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1e
	.byte	0x27
	.byte	0xd
	.long	0xe2
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1e
	.byte	0x28
	.byte	0x12
	.long	0xd2
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1e
	.byte	0x29
	.byte	0x21
	.long	0x120
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1e
	.byte	0x2a
	.byte	0x2a
	.long	0x723
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1f
	.byte	0x55
	.byte	0x11
	.long	0x4c20
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1f
	.byte	0x56
	.byte	0x11
	.long	0x4c41
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1f
	.byte	0x59
	.byte	0x12
	.long	0x4c30
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1f
	.byte	0x5a
	.byte	0x12
	.long	0x4c51
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1f
	.byte	0x65
	.byte	0xd
	.long	0xe2
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1f
	.byte	0x67
	.byte	0xd
	.long	0xe2
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1f
	.byte	0x69
	.byte	0xd
	.long	0xe2
	.uleb128 0x10
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1f
	.byte	0x6b
	.byte	0x10
	.long	0x4d7a
	.uleb128 0x11
	.ascii "COUNT_MULTI64\0"
	.byte	0x1f
	.byte	0x6d
	.byte	0xa
	.long	0x114
	.byte	0
	.uleb128 0x11
	.ascii "COUNT_MULTI32\0"
	.byte	0x1f
	.byte	0x6e
	.byte	0xa
	.long	0x114
	.byte	0x4
	.uleb128 0x11
	.ascii "COUNT_DIV64\0"
	.byte	0x1f
	.byte	0x6f
	.byte	0xa
	.long	0x114
	.byte	0x8
	.uleb128 0x11
	.ascii "COUNT_DIV32\0"
	.byte	0x1f
	.byte	0x70
	.byte	0xa
	.long	0x114
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1f
	.byte	0x71
	.byte	0x3
	.long	0x4cfe
	.uleb128 0x10
	.ascii "__tag_PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1f
	.byte	0x73
	.byte	0x10
	.long	0x4e14
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1f
	.byte	0x75
	.byte	0x9
	.long	0xe2
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1f
	.byte	0x76
	.byte	0xd
	.long	0x4e14
	.byte	0x4
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1f
	.byte	0x77
	.byte	0xd
	.long	0x4e14
	.byte	0xa
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1f
	.byte	0x78
	.byte	0xd
	.long	0x4e24
	.byte	0x10
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1f
	.byte	0x79
	.byte	0x9
	.long	0xe2
	.byte	0x28
	.uleb128 0x1a
	.secrel32	LASF6
	.byte	0x1f
	.byte	0x7a
	.byte	0x9
	.long	0xe2
	.byte	0x2c
	.byte	0
	.uleb128 0xc
	.long	0xe9
	.long	0x4e24
	.uleb128 0xd
	.long	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xe9
	.long	0x4e34
	.uleb128 0xd
	.long	0xd2
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x7b
	.byte	0x3
	.long	0x4d96
	.uleb128 0x10
	.ascii "__tag_PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x2c
	.byte	0x1f
	.byte	0x7d
	.byte	0x10
	.long	0x4ecc
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1f
	.byte	0x7f
	.byte	0x9
	.long	0xe2
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1f
	.byte	0x80
	.byte	0xd
	.long	0x4e14
	.byte	0x4
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1f
	.byte	0x81
	.byte	0xd
	.long	0x4e14
	.byte	0xa
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1f
	.byte	0x82
	.byte	0xd
	.long	0x4e24
	.byte	0x10
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1f
	.byte	0x83
	.byte	0x9
	.long	0xe2
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.ascii "PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x84
	.byte	0x3
	.long	0x4e5c
	.uleb128 0x10
	.ascii "__tag_PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1f
	.byte	0x86
	.byte	0x10
	.long	0x4f70
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1f
	.byte	0x88
	.byte	0x9
	.long	0xe2
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1f
	.byte	0x89
	.byte	0xd
	.long	0x4e14
	.byte	0x4
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1f
	.byte	0x8a
	.byte	0xd
	.long	0x4e14
	.byte	0xa
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1f
	.byte	0x8b
	.byte	0xd
	.long	0x4e24
	.byte	0x10
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1f
	.byte	0x8c
	.byte	0x9
	.long	0xe2
	.byte	0x28
	.uleb128 0x1a
	.secrel32	LASF6
	.byte	0x1f
	.byte	0x8d
	.byte	0x9
	.long	0xe2
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.ascii "PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x8e
	.byte	0x3
	.long	0x4ef3
	.uleb128 0x10
	.ascii "__tag_PMC_NUMBER_FORMAT_INFO\0"
	.byte	0xc0
	.byte	0x1f
	.byte	0x90
	.byte	0x10
	.long	0x507a
	.uleb128 0x11
	.ascii "Currency\0"
	.byte	0x1f
	.byte	0x92
	.byte	0x25
	.long	0x4e34
	.byte	0
	.uleb128 0x11
	.ascii "Number\0"
	.byte	0x1f
	.byte	0x93
	.byte	0x24
	.long	0x4ecc
	.byte	0x30
	.uleb128 0x11
	.ascii "Percent\0"
	.byte	0x1f
	.byte	0x94
	.byte	0x24
	.long	0x4f70
	.byte	0x5c
	.uleb128 0x11
	.ascii "CurrencySymbol\0"
	.byte	0x1f
	.byte	0x95
	.byte	0xd
	.long	0x4e14
	.byte	0x8c
	.uleb128 0x11
	.ascii "NativeDigits\0"
	.byte	0x1f
	.byte	0x96
	.byte	0xd
	.long	0x4e24
	.byte	0x92
	.uleb128 0x11
	.ascii "NegativeSign\0"
	.byte	0x1f
	.byte	0x97
	.byte	0xd
	.long	0x4e14
	.byte	0xa8
	.uleb128 0x11
	.ascii "PositiveSign\0"
	.byte	0x1f
	.byte	0x98
	.byte	0xd
	.long	0x4e14
	.byte	0xae
	.uleb128 0x11
	.ascii "PercentSymbol\0"
	.byte	0x1f
	.byte	0x99
	.byte	0xd
	.long	0x4e14
	.byte	0xb4
	.uleb128 0x11
	.ascii "PerMilleSymbol\0"
	.byte	0x1f
	.byte	0x9a
	.byte	0xd
	.long	0x4e14
	.byte	0xba
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x9b
	.byte	0x3
	.long	0x4f97
	.uleb128 0x10
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x20
	.byte	0x26
	.byte	0x16
	.long	0x50f4
	.uleb128 0x1b
	.secrel32	LASF7
	.byte	0x20
	.byte	0x28
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF8
	.byte	0x20
	.byte	0x29
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF9
	.byte	0x20
	.byte	0x2a
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF10
	.byte	0x20
	.byte	0x2b
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x5099
	.uleb128 0x1c
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x4
	.byte	0x20
	.byte	0x24
	.byte	0xb
	.long	0x5137
	.uleb128 0x1d
	.ascii "FLAGS\0"
	.byte	0x20
	.byte	0x2c
	.byte	0xb
	.long	0x50f4
	.uleb128 0x1d
	.ascii "__dummy\0"
	.byte	0x20
	.byte	0x2e
	.byte	0x13
	.long	0x4c84
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x20
	.byte	0x35
	.byte	0x2a
	.long	0x514f
	.uleb128 0x6
	.byte	0x4
	.long	0x50f9
	.uleb128 0x1e
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x11c
	.byte	0x20
	.byte	0x37
	.byte	0x14
	.long	0x5861
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x20
	.byte	0x3a
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x20
	.byte	0x3b
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x20
	.byte	0x3c
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x20
	.byte	0x3d
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1f
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x20
	.byte	0x3e
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "GetStatisticsInfo\0"
	.byte	0x20
	.byte	0x41
	.byte	0x2e
	.long	0x5872
	.byte	0x4
	.uleb128 0x11
	.ascii "From_I\0"
	.byte	0x20
	.byte	0x44
	.byte	0x39
	.long	0x5892
	.byte	0x8
	.uleb128 0x11
	.ascii "From_L\0"
	.byte	0x20
	.byte	0x47
	.byte	0x39
	.long	0x58ac
	.byte	0xc
	.uleb128 0x11
	.ascii "Dispose\0"
	.byte	0x20
	.byte	0x4a
	.byte	0x2e
	.long	0x58bd
	.byte	0x10
	.uleb128 0x11
	.ascii "GetConstantValue_I\0"
	.byte	0x20
	.byte	0x4d
	.byte	0x39
	.long	0x58d7
	.byte	0x14
	.uleb128 0x11
	.ascii "FromByteArray\0"
	.byte	0x20
	.byte	0x50
	.byte	0x39
	.long	0x58f6
	.byte	0x18
	.uleb128 0x11
	.ascii "ToByteArray\0"
	.byte	0x20
	.byte	0x51
	.byte	0x39
	.long	0x5920
	.byte	0x1c
	.uleb128 0x11
	.ascii "Clone_X\0"
	.byte	0x20
	.byte	0x54
	.byte	0x39
	.long	0x593a
	.byte	0x20
	.uleb128 0x11
	.ascii "To_X_I\0"
	.byte	0x20
	.byte	0x57
	.byte	0x39
	.long	0x595a
	.byte	0x24
	.uleb128 0x11
	.ascii "To_X_L\0"
	.byte	0x20
	.byte	0x58
	.byte	0x39
	.long	0x597a
	.byte	0x28
	.uleb128 0x11
	.ascii "InitializeNumberFormatInfo\0"
	.byte	0x20
	.byte	0x5b
	.byte	0x2e
	.long	0x5991
	.byte	0x2c
	.uleb128 0x11
	.ascii "ToString\0"
	.byte	0x20
	.byte	0x5c
	.byte	0x3a
	.long	0x59bf
	.byte	0x30
	.uleb128 0x11
	.ascii "TryParse\0"
	.byte	0x20
	.byte	0x5d
	.byte	0x39
	.long	0x59e3
	.byte	0x34
	.uleb128 0x11
	.ascii "Add_I_X\0"
	.byte	0x20
	.byte	0x60
	.byte	0x39
	.long	0x5a02
	.byte	0x38
	.uleb128 0x11
	.ascii "Add_L_X\0"
	.byte	0x20
	.byte	0x61
	.byte	0x39
	.long	0x5a21
	.byte	0x3c
	.uleb128 0x11
	.ascii "Add_X_I\0"
	.byte	0x20
	.byte	0x62
	.byte	0x39
	.long	0x5a40
	.byte	0x40
	.uleb128 0x11
	.ascii "Add_X_L\0"
	.byte	0x20
	.byte	0x63
	.byte	0x39
	.long	0x5a5f
	.byte	0x44
	.uleb128 0x11
	.ascii "Add_X_X\0"
	.byte	0x20
	.byte	0x64
	.byte	0x39
	.long	0x5a7e
	.byte	0x48
	.uleb128 0x11
	.ascii "Subtruct_I_X\0"
	.byte	0x20
	.byte	0x67
	.byte	0x39
	.long	0x5a9d
	.byte	0x4c
	.uleb128 0x11
	.ascii "Subtruct_L_X\0"
	.byte	0x20
	.byte	0x68
	.byte	0x39
	.long	0x5abc
	.byte	0x50
	.uleb128 0x11
	.ascii "Subtruct_X_I\0"
	.byte	0x20
	.byte	0x69
	.byte	0x39
	.long	0x5a40
	.byte	0x54
	.uleb128 0x11
	.ascii "Subtruct_X_L\0"
	.byte	0x20
	.byte	0x6a
	.byte	0x39
	.long	0x5a5f
	.byte	0x58
	.uleb128 0x11
	.ascii "Subtruct_X_X\0"
	.byte	0x20
	.byte	0x6b
	.byte	0x39
	.long	0x5a7e
	.byte	0x5c
	.uleb128 0x11
	.ascii "Multiply_I_X\0"
	.byte	0x20
	.byte	0x6e
	.byte	0x39
	.long	0x5a02
	.byte	0x60
	.uleb128 0x11
	.ascii "Multiply_L_X\0"
	.byte	0x20
	.byte	0x6f
	.byte	0x39
	.long	0x5a21
	.byte	0x64
	.uleb128 0x11
	.ascii "Multiply_X_I\0"
	.byte	0x20
	.byte	0x70
	.byte	0x39
	.long	0x5a40
	.byte	0x68
	.uleb128 0x11
	.ascii "Multiply_X_L\0"
	.byte	0x20
	.byte	0x71
	.byte	0x39
	.long	0x5a5f
	.byte	0x6c
	.uleb128 0x11
	.ascii "Multiply_X_X\0"
	.byte	0x20
	.byte	0x72
	.byte	0x39
	.long	0x5a7e
	.byte	0x70
	.uleb128 0x11
	.ascii "DivRem_I_X\0"
	.byte	0x20
	.byte	0x75
	.byte	0x39
	.long	0x5ae0
	.byte	0x74
	.uleb128 0x11
	.ascii "DivRem_L_X\0"
	.byte	0x20
	.byte	0x76
	.byte	0x39
	.long	0x5b04
	.byte	0x78
	.uleb128 0x11
	.ascii "DivRem_X_I\0"
	.byte	0x20
	.byte	0x77
	.byte	0x39
	.long	0x5b28
	.byte	0x7c
	.uleb128 0x11
	.ascii "DivRem_X_L\0"
	.byte	0x20
	.byte	0x78
	.byte	0x39
	.long	0x5b4c
	.byte	0x80
	.uleb128 0x11
	.ascii "DivRem_X_X\0"
	.byte	0x20
	.byte	0x79
	.byte	0x39
	.long	0x5b70
	.byte	0x84
	.uleb128 0x11
	.ascii "LeftShift_X_I\0"
	.byte	0x20
	.byte	0x7c
	.byte	0x39
	.long	0x5a40
	.byte	0x88
	.uleb128 0x11
	.ascii "RightShift_X_I\0"
	.byte	0x20
	.byte	0x7f
	.byte	0x39
	.long	0x5a40
	.byte	0x8c
	.uleb128 0x11
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x20
	.byte	0x82
	.byte	0x39
	.long	0x5a9d
	.byte	0x90
	.uleb128 0x11
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x20
	.byte	0x83
	.byte	0x39
	.long	0x5abc
	.byte	0x94
	.uleb128 0x11
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x20
	.byte	0x84
	.byte	0x39
	.long	0x5b8f
	.byte	0x98
	.uleb128 0x11
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x20
	.byte	0x85
	.byte	0x39
	.long	0x5bae
	.byte	0x9c
	.uleb128 0x11
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x20
	.byte	0x86
	.byte	0x39
	.long	0x5a7e
	.byte	0xa0
	.uleb128 0x11
	.ascii "BitwiseOr_I_X\0"
	.byte	0x20
	.byte	0x89
	.byte	0x39
	.long	0x5a02
	.byte	0xa4
	.uleb128 0x11
	.ascii "BitwiseOr_L_X\0"
	.byte	0x20
	.byte	0x8a
	.byte	0x39
	.long	0x5a21
	.byte	0xa8
	.uleb128 0x11
	.ascii "BitwiseOr_X_I\0"
	.byte	0x20
	.byte	0x8b
	.byte	0x39
	.long	0x5a40
	.byte	0xac
	.uleb128 0x11
	.ascii "BitwiseOr_X_L\0"
	.byte	0x20
	.byte	0x8c
	.byte	0x39
	.long	0x5a5f
	.byte	0xb0
	.uleb128 0x11
	.ascii "BitwiseOr_X_X\0"
	.byte	0x20
	.byte	0x8d
	.byte	0x39
	.long	0x5a7e
	.byte	0xb4
	.uleb128 0x11
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x20
	.byte	0x90
	.byte	0x39
	.long	0x5a02
	.byte	0xb8
	.uleb128 0x11
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x20
	.byte	0x91
	.byte	0x39
	.long	0x5a21
	.byte	0xbc
	.uleb128 0x11
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x20
	.byte	0x92
	.byte	0x39
	.long	0x5a40
	.byte	0xc0
	.uleb128 0x11
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x20
	.byte	0x93
	.byte	0x39
	.long	0x5a5f
	.byte	0xc4
	.uleb128 0x11
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x20
	.byte	0x94
	.byte	0x39
	.long	0x5a7e
	.byte	0xc8
	.uleb128 0x11
	.ascii "Compare_I_X\0"
	.byte	0x20
	.byte	0x97
	.byte	0x39
	.long	0x5bd3
	.byte	0xcc
	.uleb128 0x11
	.ascii "Compare_L_X\0"
	.byte	0x20
	.byte	0x98
	.byte	0x39
	.long	0x5bf2
	.byte	0xd0
	.uleb128 0x11
	.ascii "Compare_X_I\0"
	.byte	0x20
	.byte	0x99
	.byte	0x39
	.long	0x5c11
	.byte	0xd4
	.uleb128 0x11
	.ascii "Compare_X_L\0"
	.byte	0x20
	.byte	0x9a
	.byte	0x39
	.long	0x5c30
	.byte	0xd8
	.uleb128 0x11
	.ascii "Compare_X_X\0"
	.byte	0x20
	.byte	0x9b
	.byte	0x39
	.long	0x5c4f
	.byte	0xdc
	.uleb128 0x11
	.ascii "Equals_I_X\0"
	.byte	0x20
	.byte	0x9e
	.byte	0x39
	.long	0x5bd3
	.byte	0xe0
	.uleb128 0x11
	.ascii "Equals_L_X\0"
	.byte	0x20
	.byte	0x9f
	.byte	0x39
	.long	0x5bf2
	.byte	0xe4
	.uleb128 0x11
	.ascii "Equals_X_I\0"
	.byte	0x20
	.byte	0xa0
	.byte	0x39
	.long	0x5c11
	.byte	0xe8
	.uleb128 0x11
	.ascii "Equals_X_L\0"
	.byte	0x20
	.byte	0xa1
	.byte	0x39
	.long	0x5c30
	.byte	0xec
	.uleb128 0x11
	.ascii "Equals_X_X\0"
	.byte	0x20
	.byte	0xa2
	.byte	0x39
	.long	0x5c4f
	.byte	0xf0
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x20
	.byte	0xa5
	.byte	0x39
	.long	0x5a02
	.byte	0xf4
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x20
	.byte	0xa6
	.byte	0x39
	.long	0x5a21
	.byte	0xf8
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x20
	.byte	0xa7
	.byte	0x39
	.long	0x5a40
	.byte	0xfc
	.uleb128 0x20
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x20
	.byte	0xa8
	.byte	0x39
	.long	0x5a5f
	.word	0x100
	.uleb128 0x20
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x20
	.byte	0xa9
	.byte	0x39
	.long	0x5a7e
	.word	0x104
	.uleb128 0x20
	.ascii "Pow_X_I\0"
	.byte	0x20
	.byte	0xac
	.byte	0x39
	.long	0x5a40
	.word	0x108
	.uleb128 0x20
	.ascii "ModPow_X_X_X\0"
	.byte	0x20
	.byte	0xaf
	.byte	0x39
	.long	0x5c73
	.word	0x10c
	.uleb128 0x20
	.ascii "FromByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb2
	.byte	0x39
	.long	0x5c97
	.word	0x110
	.uleb128 0x20
	.ascii "ToByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb3
	.byte	0x39
	.long	0x5cc0
	.word	0x114
	.uleb128 0x20
	.ascii "TryParseForSINT\0"
	.byte	0x20
	.byte	0xb4
	.byte	0x39
	.long	0x5ce9
	.word	0x118
	.byte	0
	.uleb128 0xe
	.long	0x586c
	.uleb128 0xf
	.long	0x586c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4d7a
	.uleb128 0x6
	.byte	0x4
	.long	0x5861
	.uleb128 0x21
	.long	0x4ca8
	.long	0x588c
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5137
	.uleb128 0x6
	.byte	0x4
	.long	0x5878
	.uleb128 0x21
	.long	0x4ca8
	.long	0x58ac
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5898
	.uleb128 0xe
	.long	0x58bd
	.uleb128 0xf
	.long	0x5137
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58b2
	.uleb128 0x21
	.long	0x4ca8
	.long	0x58d7
	.uleb128 0xf
	.long	0x4cc0
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58c3
	.uleb128 0x21
	.long	0x4ca8
	.long	0x58f6
	.uleb128 0xf
	.long	0x71d
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58dd
	.uleb128 0x21
	.long	0x4ca8
	.long	0x591a
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x71d
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x591a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc3
	.uleb128 0x6
	.byte	0x4
	.long	0x58fc
	.uleb128 0x21
	.long	0x4ca8
	.long	0x593a
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5926
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5954
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5954
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c84
	.uleb128 0x6
	.byte	0x4
	.long	0x5940
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5974
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5974
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c96
	.uleb128 0x6
	.byte	0x4
	.long	0x5960
	.uleb128 0xe
	.long	0x598b
	.uleb128 0xf
	.long	0x598b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x507a
	.uleb128 0x6
	.byte	0x4
	.long	0x5980
	.uleb128 0x21
	.long	0x4ca8
	.long	0x59bf
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x42d
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0xbb
	.uleb128 0xf
	.long	0xe2
	.uleb128 0xf
	.long	0x598b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5997
	.uleb128 0x21
	.long	0x4ca8
	.long	0x59e3
	.uleb128 0xf
	.long	0x42d
	.uleb128 0xf
	.long	0x4ce0
	.uleb128 0xf
	.long	0x598b
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59c5
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5a02
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59e9
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5a21
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a08
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5a40
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a27
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5a5f
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a46
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5a7e
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a65
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5a9d
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5954
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a84
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5abc
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5974
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5aa3
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5ae0
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5954
	.uleb128 0xf
	.long	0x5954
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ac2
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5b04
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5974
	.uleb128 0xf
	.long	0x5974
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ae6
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5b28
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x588c
	.uleb128 0xf
	.long	0x5954
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b0a
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5b4c
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x588c
	.uleb128 0xf
	.long	0x5974
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b2e
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5b70
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x588c
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b52
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5b8f
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x5954
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b76
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5bae
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x5974
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b95
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5bcd
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5bcd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c62
	.uleb128 0x6
	.byte	0x4
	.long	0x5bb4
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5bf2
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5bcd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5bd9
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5c11
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c84
	.uleb128 0xf
	.long	0x5bcd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5bf8
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5c30
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x4c96
	.uleb128 0xf
	.long	0x5bcd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c17
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5c4f
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5bcd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c36
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5c73
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c55
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5c97
	.uleb128 0xf
	.long	0x71d
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x427
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c79
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5cc0
	.uleb128 0xf
	.long	0xbb
	.uleb128 0xf
	.long	0x5137
	.uleb128 0xf
	.long	0x71d
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x591a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c9d
	.uleb128 0x21
	.long	0x4ca8
	.long	0x5ce9
	.uleb128 0xf
	.long	0x42d
	.uleb128 0xf
	.long	0x4ce0
	.uleb128 0xf
	.long	0x598b
	.uleb128 0xf
	.long	0x427
	.uleb128 0xf
	.long	0x588c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5cc6
	.uleb128 0x3
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x20
	.byte	0xb5
	.byte	0x7
	.long	0x5155
	.uleb128 0x10
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x21
	.byte	0x28
	.byte	0x16
	.long	0x5d78
	.uleb128 0x1b
	.secrel32	LASF7
	.byte	0x21
	.byte	0x2a
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF8
	.byte	0x21
	.byte	0x2b
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF11
	.byte	0x21
	.byte	0x2c
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF9
	.byte	0x21
	.byte	0x2d
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF10
	.byte	0x21
	.byte	0x2e
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x5d0d
	.uleb128 0x1c
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x4
	.byte	0x21
	.byte	0x26
	.byte	0xb
	.long	0x5dbb
	.uleb128 0x1d
	.ascii "FLAGS\0"
	.byte	0x21
	.byte	0x2f
	.byte	0xb
	.long	0x5d78
	.uleb128 0x1d
	.ascii "__dummy\0"
	.byte	0x21
	.byte	0x31
	.byte	0x13
	.long	0x4c84
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x21
	.byte	0x38
	.byte	0x2a
	.long	0x5dd3
	.uleb128 0x6
	.byte	0x4
	.long	0x5d7d
	.uleb128 0x6
	.byte	0x4
	.long	0x5dbb
	.uleb128 0x6
	.byte	0x4
	.long	0x4c73
	.uleb128 0x10
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x18
	.byte	0x22
	.byte	0x2d
	.byte	0x14
	.long	0x5eac
	.uleb128 0x1b
	.secrel32	LASF7
	.byte	0x22
	.byte	0x2f
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF8
	.byte	0x22
	.byte	0x30
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF11
	.byte	0x22
	.byte	0x31
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF9
	.byte	0x22
	.byte	0x32
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF10
	.byte	0x22
	.byte	0x33
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "SIGNATURE1\0"
	.byte	0x22
	.byte	0x35
	.byte	0x13
	.long	0x4c84
	.byte	0x4
	.uleb128 0x11
	.ascii "SIGNATURE2\0"
	.byte	0x22
	.byte	0x36
	.byte	0x13
	.long	0x4c84
	.byte	0x8
	.uleb128 0x11
	.ascii "ABS\0"
	.byte	0x22
	.byte	0x38
	.byte	0x19
	.long	0x5137
	.byte	0xc
	.uleb128 0x11
	.ascii "SIGN\0"
	.byte	0x22
	.byte	0x39
	.byte	0xe
	.long	0xbb
	.byte	0x10
	.uleb128 0x1f
	.ascii "IS_STATIC\0"
	.byte	0x22
	.byte	0x3b
	.byte	0x12
	.long	0xd2
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
	.long	0x5de5
	.uleb128 0x13
	.ascii "ep_uint\0"
	.byte	0x22
	.byte	0x42
	.byte	0x22
	.long	0x5cef
	.uleb128 0x13
	.ascii "number_zero\0"
	.byte	0x22
	.byte	0x45
	.byte	0x1a
	.long	0x5eac
	.uleb128 0x13
	.ascii "number_one\0"
	.byte	0x22
	.byte	0x48
	.byte	0x1a
	.long	0x5eac
	.uleb128 0x13
	.ascii "number_minus_one\0"
	.byte	0x22
	.byte	0x4b
	.byte	0x1a
	.long	0x5eac
	.uleb128 0x22
	.ascii "uint_number_zero\0"
	.byte	0x22
	.byte	0x4e
	.byte	0x15
	.long	0x5137
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_zero
	.uleb128 0x22
	.ascii "uint_number_one\0"
	.byte	0x22
	.byte	0x51
	.byte	0x15
	.long	0x5137
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_one
	.uleb128 0x13
	.ascii "statistics_info\0"
	.byte	0x22
	.byte	0x54
	.byte	0x20
	.long	0x4d7a
	.uleb128 0x23
	.ascii "PMC_DivRem_X_X\0"
	.byte	0x2
	.word	0x1a1
	.byte	0x2e
	.ascii "PMC_DivRem_X_X@16\0"
	.long	0x4ca8
	.long	LFB4239
	.long	LFE4239-LFB4239
	.uleb128 0x1
	.byte	0x9c
	.long	0x609c
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x1a1
	.byte	0x4d
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x1a1
	.byte	0x60
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "q\0"
	.byte	0x2
	.word	0x1a1
	.byte	0x74
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.ascii "r\0"
	.byte	0x2
	.word	0x1a1
	.byte	0x88
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x1a9
	.byte	0x15
	.long	0x4ca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x1aa
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nv\0"
	.byte	0x2
	.word	0x1ab
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nq\0"
	.byte	0x2
	.word	0x1ac
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii "nr\0"
	.byte	0x2
	.word	0x1ad
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	LBB13
	.long	LBE13-LBB13
	.long	0x6071
	.uleb128 0x25
	.secrel32	LASF13
	.byte	0x2
	.word	0x1c6
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x1c7
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x1c8
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x1c9
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	LBB14
	.long	LBE14-LBB14
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x1dc
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x1dd
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5eac
	.uleb128 0x23
	.ascii "PMC_DivRem_X_UX\0"
	.byte	0x2
	.word	0x157
	.byte	0x2e
	.ascii "PMC_DivRem_X_UX@16\0"
	.long	0x4ca8
	.long	LFB4238
	.long	LFE4238-LFB4238
	.uleb128 0x1
	.byte	0x9c
	.long	0x61ca
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x157
	.byte	0x4e
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x157
	.byte	0x61
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.ascii "q\0"
	.byte	0x2
	.word	0x157
	.byte	0x75
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.ascii "r\0"
	.byte	0x2
	.word	0x157
	.byte	0x89
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x15f
	.byte	0x15
	.long	0x4ca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x160
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nq\0"
	.byte	0x2
	.word	0x161
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.ascii "nr\0"
	.byte	0x2
	.word	0x162
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	LBB11
	.long	LBE11-LBB11
	.long	0x619f
	.uleb128 0x25
	.secrel32	LASF13
	.byte	0x2
	.word	0x179
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x17a
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x17b
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x17c
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x28
	.long	LBB12
	.long	LBE12-LBB12
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x18f
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x190
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "PMC_DivRem_X_L\0"
	.byte	0x2
	.word	0x11a
	.byte	0x2e
	.ascii "PMC_DivRem_X_L@20\0"
	.long	0x4ca8
	.long	LFB4237
	.long	LFE4237-LFB4237
	.uleb128 0x1
	.byte	0x9c
	.long	0x6307
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x2
	.word	0x11a
	.byte	0x4d
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "v\0"
	.byte	0x2
	.word	0x11a
	.byte	0x59
	.long	0x4c73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.ascii "q\0"
	.byte	0x2
	.word	0x11a
	.byte	0x6d
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.ascii "r\0"
	.byte	0x2
	.word	0x11a
	.byte	0x7a
	.long	0x5ddf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.secrel32	LASF12
	.byte	0x2
	.word	0x120
	.byte	0x15
	.long	0x4ca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.ascii "nu\0"
	.byte	0x2
	.word	0x121
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.ascii "nq\0"
	.byte	0x2
	.word	0x122
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.ascii "v_sign\0"
	.byte	0x2
	.word	0x125
	.byte	0xa
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x26
	.ascii "v_abs\0"
	.byte	0x2
	.word	0x126
	.byte	0xf
	.long	0x4c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	LBB9
	.long	LBE9-LBB9
	.long	0x62dc
	.uleb128 0x25
	.secrel32	LASF13
	.byte	0x2
	.word	0x13b
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x13c
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x13d
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x13e
	.byte	0x17
	.long	0x4c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x28
	.long	LBB10
	.long	LBE10-LBB10
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x14a
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x14b
	.byte	0x17
	.long	0x4c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x29
	.ascii "PMC_DivRem_X_I\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x2e
	.ascii "PMC_DivRem_X_I@16\0"
	.long	0x4ca8
	.long	LFB4236
	.long	LFE4236-LFB4236
	.uleb128 0x1
	.byte	0x9c
	.long	0x6437
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x4d
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x59
	.long	0x4c62
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.ascii "q\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x6d
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "r\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x7a
	.long	0x5bcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.secrel32	LASF12
	.byte	0x2
	.byte	0xe3
	.byte	0x15
	.long	0x4ca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.ascii "nu\0"
	.byte	0x2
	.byte	0xe4
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.ascii "nq\0"
	.byte	0x2
	.byte	0xe5
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.ascii "v_sign\0"
	.byte	0x2
	.byte	0xe8
	.byte	0xa
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2c
	.ascii "v_abs\0"
	.byte	0x2
	.byte	0xe9
	.byte	0xf
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	LBB7
	.long	LBE7-LBB7
	.long	0x640c
	.uleb128 0x2b
	.secrel32	LASF13
	.byte	0x2
	.byte	0xfe
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2b
	.secrel32	LASF14
	.byte	0x2
	.byte	0xff
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x25
	.secrel32	LASF15
	.byte	0x2
	.word	0x100
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x101
	.byte	0x17
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	LBB8
	.long	LBE8-LBB8
	.uleb128 0x25
	.secrel32	LASF14
	.byte	0x2
	.word	0x10d
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x25
	.secrel32	LASF16
	.byte	0x2
	.word	0x10e
	.byte	0x17
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x29
	.ascii "PMC_DivRem_UX_X\0"
	.byte	0x2
	.byte	0xa5
	.byte	0x2e
	.ascii "PMC_DivRem_UX_X@16\0"
	.long	0x4ca8
	.long	LFB4235
	.long	LFE4235-LFB4235
	.uleb128 0x1
	.byte	0x9c
	.long	0x64f8
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0xa5
	.byte	0x4e
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0xa5
	.byte	0x61
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.ascii "q\0"
	.byte	0x2
	.byte	0xa5
	.byte	0x75
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "r\0"
	.byte	0x2
	.byte	0xa5
	.byte	0x89
	.long	0x588c
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.secrel32	LASF12
	.byte	0x2
	.byte	0xad
	.byte	0x15
	.long	0x4ca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.ascii "nv\0"
	.byte	0x2
	.byte	0xae
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.ascii "nq\0"
	.byte	0x2
	.byte	0xaf
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	LBB6
	.long	LBE6-LBB6
	.uleb128 0x2b
	.secrel32	LASF13
	.byte	0x2
	.byte	0xc6
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2b
	.secrel32	LASF15
	.byte	0x2
	.byte	0xc7
	.byte	0x1d
	.long	0x5137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x29
	.ascii "PMC_DivRem_L_X\0"
	.byte	0x2
	.byte	0x62
	.byte	0x2e
	.ascii "PMC_DivRem_L_X@20\0"
	.long	0x4ca8
	.long	LFB4234
	.long	LFE4234-LFB4234
	.uleb128 0x1
	.byte	0x9c
	.long	0x6636
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0x62
	.byte	0x46
	.long	0x4c73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0x62
	.byte	0x59
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "q\0"
	.byte	0x2
	.byte	0x62
	.byte	0x6d
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.ascii "r\0"
	.byte	0x2
	.byte	0x62
	.byte	0x81
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.secrel32	LASF12
	.byte	0x2
	.byte	0x6a
	.byte	0x15
	.long	0x4ca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.ascii "nv\0"
	.byte	0x2
	.byte	0x6b
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.ascii "nq\0"
	.byte	0x2
	.byte	0x6c
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.ascii "nr\0"
	.byte	0x2
	.byte	0x6d
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.ascii "u_sign\0"
	.byte	0x2
	.byte	0x70
	.byte	0xa
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x2c
	.ascii "u_abs\0"
	.byte	0x2
	.byte	0x71
	.byte	0xf
	.long	0x4c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	LBB4
	.long	LBE4-LBB4
	.long	0x660c
	.uleb128 0x2b
	.secrel32	LASF13
	.byte	0x2
	.byte	0x86
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x2b
	.secrel32	LASF14
	.byte	0x2
	.byte	0x87
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2b
	.secrel32	LASF15
	.byte	0x2
	.byte	0x88
	.byte	0x17
	.long	0x4c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.secrel32	LASF16
	.byte	0x2
	.byte	0x89
	.byte	0x17
	.long	0x4c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.long	LBB5
	.long	LBE5-LBB5
	.uleb128 0x2b
	.secrel32	LASF14
	.byte	0x2
	.byte	0x96
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -51
	.uleb128 0x2b
	.secrel32	LASF16
	.byte	0x2
	.byte	0x97
	.byte	0x17
	.long	0x4c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x29
	.ascii "PMC_DivRem_I_X\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x2e
	.ascii "PMC_DivRem_I_X@16\0"
	.long	0x4ca8
	.long	LFB4233
	.long	LFE4233-LFB4233
	.uleb128 0x1
	.byte	0x9c
	.long	0x6770
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x46
	.long	0x4c62
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x59
	.long	0x5dbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.ascii "q\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x6d
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "r\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x80
	.long	0x5dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.secrel32	LASF12
	.byte	0x2
	.byte	0x27
	.byte	0x15
	.long	0x4ca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.ascii "nv\0"
	.byte	0x2
	.byte	0x28
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.ascii "nq\0"
	.byte	0x2
	.byte	0x29
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.ascii "nr\0"
	.byte	0x2
	.byte	0x2a
	.byte	0x14
	.long	0x609c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.ascii "u_sign\0"
	.byte	0x2
	.byte	0x2d
	.byte	0xa
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2c
	.ascii "u_abs\0"
	.byte	0x2
	.byte	0x2e
	.byte	0xf
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	LBB2
	.long	LBE2-LBB2
	.long	0x6747
	.uleb128 0x2b
	.secrel32	LASF13
	.byte	0x2
	.byte	0x43
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x2b
	.secrel32	LASF14
	.byte	0x2
	.byte	0x44
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x2b
	.secrel32	LASF15
	.byte	0x2
	.byte	0x45
	.byte	0x17
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.secrel32	LASF16
	.byte	0x2
	.byte	0x46
	.byte	0x17
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x28
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x2b
	.secrel32	LASF14
	.byte	0x2
	.byte	0x53
	.byte	0x12
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x2b
	.secrel32	LASF16
	.byte	0x2
	.byte	0x54
	.byte	0x17
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2d
	.ascii "GET_ABS_64\0"
	.byte	0x1
	.word	0x31f
	.byte	0x1f
	.long	0x4c96
	.long	LFB4232
	.long	LFE4232-LFB4232
	.uleb128 0x1
	.byte	0x9c
	.long	0x67b2
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x1
	.word	0x31f
	.byte	0x33
	.long	0x4c73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.ascii "sign\0"
	.byte	0x1
	.word	0x31f
	.byte	0x3b
	.long	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2e
	.ascii "GET_ABS_32\0"
	.byte	0x1
	.word	0x30b
	.byte	0x1f
	.long	0x4c84
	.long	LFB4231
	.long	LFE4231-LFB4231
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.ascii "u\0"
	.byte	0x1
	.word	0x30b
	.byte	0x33
	.long	0x4c62
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.ascii "sign\0"
	.byte	0x1
	.word	0x30b
	.byte	0x3b
	.long	0x427
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
LASF13:
	.ascii "q_sign\0"
LASF11:
	.ascii "IS_MINUS_ONE\0"
LASF1:
	.ascii "DecimalDigits\0"
LASF10:
	.ascii "IS_POWER_OF_TWO\0"
LASF14:
	.ascii "r_sign\0"
LASF0:
	.ascii "refcount\0"
LASF4:
	.ascii "GroupSizes\0"
LASF9:
	.ascii "IS_EVEN\0"
LASF12:
	.ascii "result\0"
LASF8:
	.ascii "IS_ONE\0"
LASF15:
	.ascii "q_abs\0"
LASF2:
	.ascii "DecimalSeparator\0"
LASF3:
	.ascii "GroupSeparator\0"
LASF5:
	.ascii "NegativePattern\0"
LASF6:
	.ascii "PositivePattern\0"
LASF7:
	.ascii "IS_ZERO\0"
LASF16:
	.ascii "r_abs\0"
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	_DeallocateNumber;	.scl	2;	.type	32;	.endef
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
