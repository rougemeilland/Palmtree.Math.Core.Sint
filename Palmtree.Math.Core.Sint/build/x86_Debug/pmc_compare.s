	.file	"pmc_compare.c"
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
	.def	_CompareU_X_I_Imp;	.scl	3;	.type	32;	.endef
_CompareU_X_I_Imp:
LFB4233:
	.file 2 "../pmc_compare.c"
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
	movl	_ep_uint+208, %eax
	.loc 2 35 19
	movl	16(%ebp), %edx
	leal	-16(%ebp), %ecx
	movl	%ecx, 8(%esp)
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
	jmp	L19
L14:
	.loc 2 37 8
	cmpb	$0, -28(%ebp)
	jle	L16
	.loc 2 38 12
	movl	-16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L17
L16:
	.loc 2 40 13
	cmpb	$0, -28(%ebp)
	jne	L18
	.loc 2 41 16
	movl	$-256, %eax
	jmp	L19
L18:
	.loc 2 44 14
	movl	-16(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 44 12
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L17:
	.loc 2 45 12
	movl	$0, %eax
L19:
	.loc 2 46 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4233:
	.def	_CompareU_X_L_Imp;	.scl	3;	.type	32;	.endef
_CompareU_X_L_Imp:
LFB4234:
	.loc 2 49 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 2 52 26
	movl	_ep_uint+212, %ecx
	.loc 2 52 19
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	leal	-16(%ebp), %ebx
	movl	%ebx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
LVL1:
	subl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 2 52 8
	cmpl	$0, -12(%ebp)
	je	L21
	.loc 2 53 16
	movl	-12(%ebp), %eax
	jmp	L26
L21:
	.loc 2 54 8
	cmpb	$0, -28(%ebp)
	jle	L23
	.loc 2 55 12
	movl	-16(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L24
L23:
	.loc 2 57 13
	cmpb	$0, -28(%ebp)
	jne	L25
	.loc 2 58 16
	movl	$-256, %eax
	jmp	L26
L25:
	.loc 2 61 14
	movl	-16(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 61 12
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
L24:
	.loc 2 62 12
	movl	$0, %eax
L26:
	.loc 2 63 1 discriminator 1
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4234:
	.def	_CompareU_X_X_Imp;	.scl	3;	.type	32;	.endef
_CompareU_X_X_Imp:
LFB4235:
	.loc 2 66 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 2 69 26
	movl	_ep_uint+216, %eax
	.loc 2 69 19
	leal	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL2:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 69 8
	cmpl	$0, -12(%ebp)
	je	L28
	.loc 2 70 16
	movl	-12(%ebp), %eax
	jmp	L33
L28:
	.loc 2 71 8
	cmpb	$0, -28(%ebp)
	jle	L30
	.loc 2 72 12
	movl	-16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L31
L30:
	.loc 2 74 13
	cmpb	$0, -28(%ebp)
	jne	L32
	.loc 2 75 16
	movl	$-256, %eax
	jmp	L33
L32:
	.loc 2 78 14
	movl	-16(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 78 12
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
L31:
	.loc 2 79 12
	movl	$0, %eax
L33:
	.loc 2 80 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4235:
	.globl	_PMC_Compare_I_X@12
	.def	_PMC_Compare_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_I_X@12:
LFB4236:
	.loc 2 83 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 84 8
	cmpl	$0, 12(%ebp)
	jne	L35
	.loc 2 85 16
	movl	$-1, %eax
	jmp	L45
L35:
	.loc 2 86 8
	cmpl	$0, 16(%ebp)
	jne	L37
	.loc 2 87 16
	movl	$-1, %eax
	jmp	L45
L37:
	.loc 2 89 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 90 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 90 8
	cmpl	$0, -16(%ebp)
	je	L38
	.loc 2 91 16
	movl	-16(%ebp), %eax
	jmp	L45
L38:
	.loc 2 93 23
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 94 16
	movzbl	-21(%ebp), %eax
	.loc 2 94 8
	testb	%al, %al
	jne	L39
	.loc 2 99 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movsbl	%al, %eax
	.loc 2 99 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 99 12
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L40
L39:
	.loc 2 101 21
	movzbl	-21(%ebp), %eax
	.loc 2 101 13
	testb	%al, %al
	jle	L41
	.loc 2 105 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 105 12
	testb	%al, %al
	jg	L42
	.loc 2 110 16
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	jmp	L40
L42:
	.loc 2 117 27
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_CompareU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 117 16
	cmpl	$0, -16(%ebp)
	je	L40
	.loc 2 118 24
	movl	-16(%ebp), %eax
	jmp	L45
L41:
	.loc 2 125 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 125 12
	testb	%al, %al
	js	L43
	.loc 2 130 16
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	jmp	L40
L43:
	.loc 2 137 27
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_CompareU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 137 16
	cmpl	$0, -16(%ebp)
	je	L40
	.loc 2 138 24
	movl	-16(%ebp), %eax
	jmp	L45
L40:
	.loc 2 142 9
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 142 8
	testl	%eax, %eax
	je	L44
	.loc 2 142 20 discriminator 1
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 142 17 discriminator 1
	cmpl	$1, %eax
	je	L44
	.loc 2 142 31 discriminator 2
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 142 28 discriminator 2
	cmpl	$-1, %eax
	je	L44
	.loc 2 143 16
	movl	$-256, %eax
	jmp	L45
L44:
	.loc 2 145 12
	movl	$0, %eax
L45:
	.loc 2 146 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4236:
	.globl	_PMC_Compare_L_X@16
	.def	_PMC_Compare_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Compare_L_X@16:
LFB4237:
	.loc 2 149 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 150 8
	cmpl	$0, 16(%ebp)
	jne	L47
	.loc 2 151 16
	movl	$-1, %eax
	jmp	L57
L47:
	.loc 2 152 8
	cmpl	$0, 20(%ebp)
	jne	L49
	.loc 2 153 16
	movl	$-1, %eax
	jmp	L57
L49:
	.loc 2 155 20
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 156 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 156 8
	cmpl	$0, -16(%ebp)
	je	L50
	.loc 2 157 16
	movl	-16(%ebp), %eax
	jmp	L57
L50:
	.loc 2 159 23
	leal	-25(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 160 16
	movzbl	-25(%ebp), %eax
	.loc 2 160 8
	testb	%al, %al
	jne	L51
	.loc 2 165 18
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movsbl	%al, %eax
	.loc 2 165 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 165 12
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L52
L51:
	.loc 2 167 21
	movzbl	-25(%ebp), %eax
	.loc 2 167 13
	testb	%al, %al
	jle	L53
	.loc 2 171 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 171 12
	testb	%al, %al
	jg	L54
	.loc 2 176 16
	movl	20(%ebp), %eax
	movl	$1, (%eax)
	jmp	L52
L54:
	.loc 2 183 27
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	12(%ecx), %ecx
	movl	20(%ebp), %ebx
	movl	%ebx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_CompareU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 183 16
	cmpl	$0, -16(%ebp)
	je	L52
	.loc 2 184 24
	movl	-16(%ebp), %eax
	jmp	L57
L53:
	.loc 2 191 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 191 12
	testb	%al, %al
	js	L55
	.loc 2 196 16
	movl	20(%ebp), %eax
	movl	$-1, (%eax)
	jmp	L52
L55:
	.loc 2 203 27
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	12(%ecx), %ecx
	movl	20(%ebp), %ebx
	movl	%ebx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_CompareU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 203 16
	cmpl	$0, -16(%ebp)
	je	L52
	.loc 2 204 24
	movl	-16(%ebp), %eax
	jmp	L57
L52:
	.loc 2 208 9
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 208 8
	testl	%eax, %eax
	je	L56
	.loc 2 208 20 discriminator 1
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 208 17 discriminator 1
	cmpl	$1, %eax
	je	L56
	.loc 2 208 31 discriminator 2
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 208 28 discriminator 2
	cmpl	$-1, %eax
	je	L56
	.loc 2 209 16
	movl	$-256, %eax
	jmp	L57
L56:
	.loc 2 211 12
	movl	$0, %eax
L57:
	.loc 2 212 1 discriminator 1
	addl	$84, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4237:
	.globl	_PMC_Compare_UX_X@12
	.def	_PMC_Compare_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_UX_X@12:
LFB4238:
	.loc 2 215 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 216 8
	cmpl	$0, 12(%ebp)
	jne	L59
	.loc 2 217 16
	movl	$-1, %eax
	jmp	L60
L59:
	.loc 2 218 8
	cmpl	$0, 16(%ebp)
	jne	L61
	.loc 2 219 16
	movl	$-1, %eax
	jmp	L60
L61:
	.loc 2 221 20
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 222 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 222 8
	cmpl	$0, -16(%ebp)
	je	L62
	.loc 2 223 16
	movl	-16(%ebp), %eax
	jmp	L60
L62:
	.loc 2 224 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 224 8
	testb	%al, %al
	je	L63
	.loc 2 229 17
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	movsbl	%al, %eax
	.loc 2 229 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 229 12
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L64
L63:
	.loc 2 235 15
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 235 12
	testb	%al, %al
	jg	L65
	.loc 2 240 16
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	jmp	L64
L65:
	.loc 2 247 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_CompareU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 247 16
	cmpl	$0, -16(%ebp)
	je	L64
	.loc 2 248 24
	movl	-16(%ebp), %eax
	jmp	L60
L64:
	.loc 2 252 9
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 252 8
	testl	%eax, %eax
	je	L66
	.loc 2 252 20 discriminator 1
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 252 17 discriminator 1
	cmpl	$1, %eax
	je	L66
	.loc 2 252 31 discriminator 2
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 252 28 discriminator 2
	cmpl	$-1, %eax
	je	L66
	.loc 2 253 16
	movl	$-256, %eax
	jmp	L60
L66:
	.loc 2 255 12
	movl	$0, %eax
L60:
	.loc 2 256 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4238:
	.globl	_PMC_Compare_X_I@12
	.def	_PMC_Compare_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_I@12:
LFB4239:
	.loc 2 259 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 260 8
	cmpl	$0, 8(%ebp)
	jne	L68
	.loc 2 261 16
	movl	$-1, %eax
	jmp	L78
L68:
	.loc 2 262 8
	cmpl	$0, 16(%ebp)
	jne	L70
	.loc 2 263 16
	movl	$-1, %eax
	jmp	L78
L70:
	.loc 2 265 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 266 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 266 8
	cmpl	$0, -16(%ebp)
	je	L71
	.loc 2 267 16
	movl	-16(%ebp), %eax
	jmp	L78
L71:
	.loc 2 269 23
	leal	-21(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_ABS_32
	movl	%eax, -20(%ebp)
	.loc 2 270 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 270 8
	testb	%al, %al
	jne	L72
	.loc 2 275 14
	movzbl	-21(%ebp), %eax
	movsbl	%al, %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 275 12
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L73
L72:
	.loc 2 277 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 277 13
	testb	%al, %al
	jle	L74
	.loc 2 281 20
	movzbl	-21(%ebp), %eax
	.loc 2 281 12
	testb	%al, %al
	jg	L75
	.loc 2 286 16
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	jmp	L73
L75:
	.loc 2 293 27
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_CompareU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 293 16
	cmpl	$0, -16(%ebp)
	je	L73
	.loc 2 294 24
	movl	-16(%ebp), %eax
	jmp	L78
L74:
	.loc 2 301 20
	movzbl	-21(%ebp), %eax
	.loc 2 301 12
	testb	%al, %al
	js	L76
	.loc 2 306 16
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	jmp	L73
L76:
	.loc 2 313 27
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_CompareU_X_I_Imp
	movl	%eax, -16(%ebp)
	.loc 2 313 16
	cmpl	$0, -16(%ebp)
	je	L73
	.loc 2 314 24
	movl	-16(%ebp), %eax
	jmp	L78
L73:
	.loc 2 318 9
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 318 8
	testl	%eax, %eax
	je	L77
	.loc 2 318 20 discriminator 1
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 318 17 discriminator 1
	cmpl	$1, %eax
	je	L77
	.loc 2 318 31 discriminator 2
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 318 28 discriminator 2
	cmpl	$-1, %eax
	je	L77
	.loc 2 319 16
	movl	$-256, %eax
	jmp	L78
L77:
	.loc 2 321 12
	movl	$0, %eax
L78:
	.loc 2 322 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4239:
	.globl	_PMC_Compare_X_L@16
	.def	_PMC_Compare_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_L@16:
LFB4240:
	.loc 2 325 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 326 8
	cmpl	$0, 8(%ebp)
	jne	L80
	.loc 2 327 16
	movl	$-1, %eax
	jmp	L90
L80:
	.loc 2 328 8
	cmpl	$0, 20(%ebp)
	jne	L82
	.loc 2 329 16
	movl	$-1, %eax
	jmp	L90
L82:
	.loc 2 331 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 332 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 332 8
	cmpl	$0, -16(%ebp)
	je	L83
	.loc 2 333 16
	movl	-16(%ebp), %eax
	jmp	L90
L83:
	.loc 2 335 23
	leal	-25(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GET_ABS_64
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 336 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 336 8
	testb	%al, %al
	jne	L84
	.loc 2 341 14
	movzbl	-25(%ebp), %eax
	movsbl	%al, %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 341 12
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L85
L84:
	.loc 2 343 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 343 13
	testb	%al, %al
	jle	L86
	.loc 2 347 20
	movzbl	-25(%ebp), %eax
	.loc 2 347 12
	testb	%al, %al
	jg	L87
	.loc 2 352 16
	movl	20(%ebp), %eax
	movl	$1, (%eax)
	jmp	L85
L87:
	.loc 2 359 27
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	12(%ecx), %ecx
	movl	20(%ebp), %ebx
	movl	%ebx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$1, (%esp)
	call	_CompareU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 359 16
	cmpl	$0, -16(%ebp)
	je	L85
	.loc 2 360 24
	movl	-16(%ebp), %eax
	jmp	L90
L86:
	.loc 2 367 20
	movzbl	-25(%ebp), %eax
	.loc 2 367 12
	testb	%al, %al
	js	L88
	.loc 2 372 16
	movl	20(%ebp), %eax
	movl	$-1, (%eax)
	jmp	L85
L88:
	.loc 2 379 27
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	12(%ecx), %ecx
	movl	20(%ebp), %ebx
	movl	%ebx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$-1, (%esp)
	call	_CompareU_X_L_Imp
	movl	%eax, -16(%ebp)
	.loc 2 379 16
	cmpl	$0, -16(%ebp)
	je	L85
	.loc 2 380 24
	movl	-16(%ebp), %eax
	jmp	L90
L85:
	.loc 2 384 9
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 384 8
	testl	%eax, %eax
	je	L89
	.loc 2 384 20 discriminator 1
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 384 17 discriminator 1
	cmpl	$1, %eax
	je	L89
	.loc 2 384 31 discriminator 2
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 384 28 discriminator 2
	cmpl	$-1, %eax
	je	L89
	.loc 2 385 16
	movl	$-256, %eax
	jmp	L90
L89:
	.loc 2 387 12
	movl	$0, %eax
L90:
	.loc 2 388 1 discriminator 1
	addl	$84, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$16
	.cfi_endproc
LFE4240:
	.globl	_PMC_Compare_X_UX@12
	.def	_PMC_Compare_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_UX@12:
LFB4241:
	.loc 2 391 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 392 8
	cmpl	$0, 8(%ebp)
	jne	L92
	.loc 2 393 16
	movl	$-1, %eax
	jmp	L93
L92:
	.loc 2 394 8
	cmpl	$0, 12(%ebp)
	jne	L94
	.loc 2 395 16
	movl	$-1, %eax
	jmp	L93
L94:
	.loc 2 396 8
	cmpl	$0, 16(%ebp)
	jne	L95
	.loc 2 397 16
	movl	$-1, %eax
	jmp	L93
L95:
	.loc 2 399 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 400 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -16(%ebp)
	.loc 2 400 8
	cmpl	$0, -16(%ebp)
	je	L96
	.loc 2 401 16
	movl	-16(%ebp), %eax
	jmp	L93
L96:
	.loc 2 402 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 402 8
	testb	%al, %al
	jne	L97
	.loc 2 406 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 406 12
	testb	%al, %al
	je	L98
	.loc 2 411 16
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	jmp	L100
L98:
	.loc 2 418 16
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	jmp	L100
L97:
	.loc 2 421 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 421 13
	testb	%al, %al
	jle	L101
	.loc 2 425 13
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 2 425 12
	testb	%al, %al
	je	L102
	.loc 2 430 16
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	jmp	L100
L102:
	.loc 2 437 27
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_CompareU_X_X_Imp
	movl	%eax, -16(%ebp)
	.loc 2 437 16
	cmpl	$0, -16(%ebp)
	je	L100
	.loc 2 438 24
	movl	-16(%ebp), %eax
	jmp	L93
L101:
	.loc 2 446 12
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
L100:
	.loc 2 449 9
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 449 8
	testl	%eax, %eax
	je	L103
	.loc 2 449 20 discriminator 1
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 449 17 discriminator 1
	cmpl	$1, %eax
	je	L103
	.loc 2 449 31 discriminator 2
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 449 28 discriminator 2
	cmpl	$-1, %eax
	je	L103
	.loc 2 450 16
	movl	$-256, %eax
	jmp	L93
L103:
	.loc 2 452 12
	movl	$0, %eax
L93:
	.loc 2 453 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4241:
	.globl	_PMC_Compare_X_X@12
	.def	_PMC_Compare_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Compare_X_X@12:
LFB4242:
	.loc 2 456 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 2 457 8
	cmpl	$0, 8(%ebp)
	jne	L105
	.loc 2 458 16
	movl	$-1, %eax
	jmp	L106
L105:
	.loc 2 459 8
	cmpl	$0, 12(%ebp)
	jne	L107
	.loc 2 460 16
	movl	$-1, %eax
	jmp	L106
L107:
	.loc 2 461 8
	cmpl	$0, 16(%ebp)
	jne	L108
	.loc 2 462 16
	movl	$-1, %eax
	jmp	L106
L108:
	.loc 2 464 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 465 20
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 466 19
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 466 8
	cmpl	$0, -20(%ebp)
	je	L109
	.loc 2 467 16
	movl	-20(%ebp), %eax
	jmp	L106
L109:
	.loc 2 468 19
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_CheckNumber
	movl	%eax, -20(%ebp)
	.loc 2 468 8
	cmpl	$0, -20(%ebp)
	je	L110
	.loc 2 469 16
	movl	-20(%ebp), %eax
	jmp	L106
L110:
	.loc 2 470 11
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 470 8
	testb	%al, %al
	jne	L111
	.loc 2 475 17
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	movsbl	%al, %eax
	.loc 2 475 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 475 12
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L112
L111:
	.loc 2 477 16
	movl	-12(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 477 13
	testb	%al, %al
	jle	L113
	.loc 2 481 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 481 12
	testb	%al, %al
	jg	L114
	.loc 2 486 16
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	jmp	L112
L114:
	.loc 2 493 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_CompareU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 493 16
	cmpl	$0, -20(%ebp)
	je	L112
	.loc 2 494 24
	movl	-20(%ebp), %eax
	jmp	L106
L113:
	.loc 2 501 15
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 2 501 12
	testb	%al, %al
	js	L115
	.loc 2 506 16
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	jmp	L112
L115:
	.loc 2 513 27
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	_CompareU_X_X_Imp
	movl	%eax, -20(%ebp)
	.loc 2 513 16
	cmpl	$0, -20(%ebp)
	je	L112
	.loc 2 514 24
	movl	-20(%ebp), %eax
	jmp	L106
L112:
	.loc 2 518 9
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 518 8
	testl	%eax, %eax
	je	L116
	.loc 2 518 20 discriminator 1
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 518 17 discriminator 1
	cmpl	$1, %eax
	je	L116
	.loc 2 518 31 discriminator 2
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 518 28 discriminator 2
	cmpl	$-1, %eax
	je	L116
	.loc 2 519 16
	movl	$-256, %eax
	jmp	L106
L116:
	.loc 2 521 12
	movl	$0, %eax
L106:
	.loc 2 522 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE4242:
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
	.long	0x633d
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=generic -march=i686 -g\0"
	.byte	0xc
	.ascii "../pmc_compare.c\0"
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
	.byte	0x54
	.byte	0x11
	.long	0x4c21
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1f
	.byte	0x55
	.byte	0x11
	.long	0x4c42
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1f
	.byte	0x58
	.byte	0x12
	.long	0x4c31
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1f
	.byte	0x59
	.byte	0x12
	.long	0x4c52
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1f
	.byte	0x64
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1f
	.byte	0x66
	.byte	0xd
	.long	0xe3
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1f
	.byte	0x68
	.byte	0xd
	.long	0xe3
	.uleb128 0x10
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1f
	.byte	0x6a
	.byte	0x10
	.long	0x4d7b
	.uleb128 0x11
	.ascii "COUNT_MULTI64\0"
	.byte	0x1f
	.byte	0x6c
	.byte	0xa
	.long	0x115
	.byte	0
	.uleb128 0x11
	.ascii "COUNT_MULTI32\0"
	.byte	0x1f
	.byte	0x6d
	.byte	0xa
	.long	0x115
	.byte	0x4
	.uleb128 0x11
	.ascii "COUNT_DIV64\0"
	.byte	0x1f
	.byte	0x6e
	.byte	0xa
	.long	0x115
	.byte	0x8
	.uleb128 0x11
	.ascii "COUNT_DIV32\0"
	.byte	0x1f
	.byte	0x6f
	.byte	0xa
	.long	0x115
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1f
	.byte	0x70
	.byte	0x3
	.long	0x4cff
	.uleb128 0x10
	.ascii "__tag_PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x34
	.byte	0x1f
	.byte	0x72
	.byte	0x10
	.long	0x4e49
	.uleb128 0x11
	.ascii "DecimalDigits\0"
	.byte	0x1f
	.byte	0x74
	.byte	0x9
	.long	0xe3
	.byte	0
	.uleb128 0x11
	.ascii "GroupSeparator\0"
	.byte	0x1f
	.byte	0x75
	.byte	0xd
	.long	0x4e49
	.byte	0x4
	.uleb128 0x11
	.ascii "DecimalSeparator\0"
	.byte	0x1f
	.byte	0x76
	.byte	0xd
	.long	0x4e49
	.byte	0xa
	.uleb128 0x11
	.ascii "PositiveSign\0"
	.byte	0x1f
	.byte	0x77
	.byte	0xd
	.long	0x4e49
	.byte	0x10
	.uleb128 0x11
	.ascii "NegativeSign\0"
	.byte	0x1f
	.byte	0x78
	.byte	0xd
	.long	0x4e49
	.byte	0x16
	.uleb128 0x11
	.ascii "GroupSizes\0"
	.byte	0x1f
	.byte	0x79
	.byte	0xd
	.long	0x4e59
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.long	0xea
	.long	0x4e59
	.uleb128 0xd
	.long	0xd3
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xea
	.long	0x4e69
	.uleb128 0xd
	.long	0xd3
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x1f
	.byte	0x7a
	.byte	0x3
	.long	0x4d97
	.uleb128 0x10
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x20
	.byte	0x26
	.byte	0x16
	.long	0x4ee5
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x20
	.byte	0x28
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x20
	.byte	0x29
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x20
	.byte	0x2a
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF4
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
	.long	0x4e8a
	.uleb128 0x1b
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x4
	.byte	0x20
	.byte	0x24
	.byte	0xb
	.long	0x4f28
	.uleb128 0x1c
	.ascii "FLAGS\0"
	.byte	0x20
	.byte	0x2c
	.byte	0xb
	.long	0x4ee5
	.uleb128 0x1c
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
	.long	0x4f40
	.uleb128 0x6
	.byte	0x4
	.long	0x4eea
	.uleb128 0x1d
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x118
	.byte	0x20
	.byte	0x37
	.byte	0x14
	.long	0x562d
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x20
	.byte	0x3a
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x20
	.byte	0x3b
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x20
	.byte	0x3c
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x20
	.byte	0x3d
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1e
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
	.long	0x563e
	.byte	0x4
	.uleb128 0x11
	.ascii "From_I\0"
	.byte	0x20
	.byte	0x44
	.byte	0x39
	.long	0x565e
	.byte	0x8
	.uleb128 0x11
	.ascii "From_L\0"
	.byte	0x20
	.byte	0x47
	.byte	0x39
	.long	0x5678
	.byte	0xc
	.uleb128 0x11
	.ascii "Dispose\0"
	.byte	0x20
	.byte	0x4a
	.byte	0x2e
	.long	0x5689
	.byte	0x10
	.uleb128 0x11
	.ascii "GetConstantValue_I\0"
	.byte	0x20
	.byte	0x4d
	.byte	0x39
	.long	0x56a3
	.byte	0x14
	.uleb128 0x11
	.ascii "FromByteArray\0"
	.byte	0x20
	.byte	0x50
	.byte	0x39
	.long	0x56c2
	.byte	0x18
	.uleb128 0x11
	.ascii "ToByteArray\0"
	.byte	0x20
	.byte	0x51
	.byte	0x39
	.long	0x56ec
	.byte	0x1c
	.uleb128 0x11
	.ascii "Clone_X\0"
	.byte	0x20
	.byte	0x54
	.byte	0x39
	.long	0x5706
	.byte	0x20
	.uleb128 0x11
	.ascii "To_X_I\0"
	.byte	0x20
	.byte	0x57
	.byte	0x39
	.long	0x5726
	.byte	0x24
	.uleb128 0x11
	.ascii "To_X_L\0"
	.byte	0x20
	.byte	0x58
	.byte	0x39
	.long	0x5746
	.byte	0x28
	.uleb128 0x11
	.ascii "ToString\0"
	.byte	0x20
	.byte	0x5b
	.byte	0x39
	.long	0x577a
	.byte	0x2c
	.uleb128 0x11
	.ascii "TryParse\0"
	.byte	0x20
	.byte	0x5e
	.byte	0x39
	.long	0x579e
	.byte	0x30
	.uleb128 0x11
	.ascii "Add_I_X\0"
	.byte	0x20
	.byte	0x61
	.byte	0x39
	.long	0x57bd
	.byte	0x34
	.uleb128 0x11
	.ascii "Add_L_X\0"
	.byte	0x20
	.byte	0x62
	.byte	0x39
	.long	0x57dc
	.byte	0x38
	.uleb128 0x11
	.ascii "Add_X_I\0"
	.byte	0x20
	.byte	0x63
	.byte	0x39
	.long	0x57fb
	.byte	0x3c
	.uleb128 0x11
	.ascii "Add_X_L\0"
	.byte	0x20
	.byte	0x64
	.byte	0x39
	.long	0x581a
	.byte	0x40
	.uleb128 0x11
	.ascii "Add_X_X\0"
	.byte	0x20
	.byte	0x65
	.byte	0x39
	.long	0x5839
	.byte	0x44
	.uleb128 0x11
	.ascii "Subtruct_I_X\0"
	.byte	0x20
	.byte	0x68
	.byte	0x39
	.long	0x5858
	.byte	0x48
	.uleb128 0x11
	.ascii "Subtruct_L_X\0"
	.byte	0x20
	.byte	0x69
	.byte	0x39
	.long	0x5877
	.byte	0x4c
	.uleb128 0x11
	.ascii "Subtruct_X_I\0"
	.byte	0x20
	.byte	0x6a
	.byte	0x39
	.long	0x57fb
	.byte	0x50
	.uleb128 0x11
	.ascii "Subtruct_X_L\0"
	.byte	0x20
	.byte	0x6b
	.byte	0x39
	.long	0x581a
	.byte	0x54
	.uleb128 0x11
	.ascii "Subtruct_X_X\0"
	.byte	0x20
	.byte	0x6c
	.byte	0x39
	.long	0x5839
	.byte	0x58
	.uleb128 0x11
	.ascii "Multiply_I_X\0"
	.byte	0x20
	.byte	0x6f
	.byte	0x39
	.long	0x57bd
	.byte	0x5c
	.uleb128 0x11
	.ascii "Multiply_L_X\0"
	.byte	0x20
	.byte	0x70
	.byte	0x39
	.long	0x57dc
	.byte	0x60
	.uleb128 0x11
	.ascii "Multiply_X_I\0"
	.byte	0x20
	.byte	0x71
	.byte	0x39
	.long	0x57fb
	.byte	0x64
	.uleb128 0x11
	.ascii "Multiply_X_L\0"
	.byte	0x20
	.byte	0x72
	.byte	0x39
	.long	0x581a
	.byte	0x68
	.uleb128 0x11
	.ascii "Multiply_X_X\0"
	.byte	0x20
	.byte	0x73
	.byte	0x39
	.long	0x5839
	.byte	0x6c
	.uleb128 0x11
	.ascii "DivRem_I_X\0"
	.byte	0x20
	.byte	0x76
	.byte	0x39
	.long	0x589b
	.byte	0x70
	.uleb128 0x11
	.ascii "DivRem_L_X\0"
	.byte	0x20
	.byte	0x77
	.byte	0x39
	.long	0x58bf
	.byte	0x74
	.uleb128 0x11
	.ascii "DivRem_X_I\0"
	.byte	0x20
	.byte	0x78
	.byte	0x39
	.long	0x58e3
	.byte	0x78
	.uleb128 0x11
	.ascii "DivRem_X_L\0"
	.byte	0x20
	.byte	0x79
	.byte	0x39
	.long	0x5907
	.byte	0x7c
	.uleb128 0x11
	.ascii "DivRem_X_X\0"
	.byte	0x20
	.byte	0x7a
	.byte	0x39
	.long	0x592b
	.byte	0x80
	.uleb128 0x11
	.ascii "LeftShift_X_I\0"
	.byte	0x20
	.byte	0x7d
	.byte	0x39
	.long	0x57fb
	.byte	0x84
	.uleb128 0x11
	.ascii "RightShift_X_I\0"
	.byte	0x20
	.byte	0x80
	.byte	0x39
	.long	0x57fb
	.byte	0x88
	.uleb128 0x11
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x20
	.byte	0x83
	.byte	0x39
	.long	0x5858
	.byte	0x8c
	.uleb128 0x11
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x20
	.byte	0x84
	.byte	0x39
	.long	0x5877
	.byte	0x90
	.uleb128 0x11
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x20
	.byte	0x85
	.byte	0x39
	.long	0x594a
	.byte	0x94
	.uleb128 0x11
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x20
	.byte	0x86
	.byte	0x39
	.long	0x5969
	.byte	0x98
	.uleb128 0x11
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x20
	.byte	0x87
	.byte	0x39
	.long	0x5839
	.byte	0x9c
	.uleb128 0x11
	.ascii "BitwiseOr_I_X\0"
	.byte	0x20
	.byte	0x8a
	.byte	0x39
	.long	0x57bd
	.byte	0xa0
	.uleb128 0x11
	.ascii "BitwiseOr_L_X\0"
	.byte	0x20
	.byte	0x8b
	.byte	0x39
	.long	0x57dc
	.byte	0xa4
	.uleb128 0x11
	.ascii "BitwiseOr_X_I\0"
	.byte	0x20
	.byte	0x8c
	.byte	0x39
	.long	0x57fb
	.byte	0xa8
	.uleb128 0x11
	.ascii "BitwiseOr_X_L\0"
	.byte	0x20
	.byte	0x8d
	.byte	0x39
	.long	0x581a
	.byte	0xac
	.uleb128 0x11
	.ascii "BitwiseOr_X_X\0"
	.byte	0x20
	.byte	0x8e
	.byte	0x39
	.long	0x5839
	.byte	0xb0
	.uleb128 0x11
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x20
	.byte	0x91
	.byte	0x39
	.long	0x57bd
	.byte	0xb4
	.uleb128 0x11
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x20
	.byte	0x92
	.byte	0x39
	.long	0x57dc
	.byte	0xb8
	.uleb128 0x11
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x20
	.byte	0x93
	.byte	0x39
	.long	0x57fb
	.byte	0xbc
	.uleb128 0x11
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x20
	.byte	0x94
	.byte	0x39
	.long	0x581a
	.byte	0xc0
	.uleb128 0x11
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x20
	.byte	0x95
	.byte	0x39
	.long	0x5839
	.byte	0xc4
	.uleb128 0x11
	.ascii "Compare_I_X\0"
	.byte	0x20
	.byte	0x98
	.byte	0x39
	.long	0x598e
	.byte	0xc8
	.uleb128 0x11
	.ascii "Compare_L_X\0"
	.byte	0x20
	.byte	0x99
	.byte	0x39
	.long	0x59ad
	.byte	0xcc
	.uleb128 0x11
	.ascii "Compare_X_I\0"
	.byte	0x20
	.byte	0x9a
	.byte	0x39
	.long	0x59cc
	.byte	0xd0
	.uleb128 0x11
	.ascii "Compare_X_L\0"
	.byte	0x20
	.byte	0x9b
	.byte	0x39
	.long	0x59eb
	.byte	0xd4
	.uleb128 0x11
	.ascii "Compare_X_X\0"
	.byte	0x20
	.byte	0x9c
	.byte	0x39
	.long	0x5a0a
	.byte	0xd8
	.uleb128 0x11
	.ascii "Equals_I_X\0"
	.byte	0x20
	.byte	0x9f
	.byte	0x39
	.long	0x598e
	.byte	0xdc
	.uleb128 0x11
	.ascii "Equals_L_X\0"
	.byte	0x20
	.byte	0xa0
	.byte	0x39
	.long	0x59ad
	.byte	0xe0
	.uleb128 0x11
	.ascii "Equals_X_I\0"
	.byte	0x20
	.byte	0xa1
	.byte	0x39
	.long	0x59cc
	.byte	0xe4
	.uleb128 0x11
	.ascii "Equals_X_L\0"
	.byte	0x20
	.byte	0xa2
	.byte	0x39
	.long	0x59eb
	.byte	0xe8
	.uleb128 0x11
	.ascii "Equals_X_X\0"
	.byte	0x20
	.byte	0xa3
	.byte	0x39
	.long	0x5a0a
	.byte	0xec
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x20
	.byte	0xa6
	.byte	0x39
	.long	0x57bd
	.byte	0xf0
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x20
	.byte	0xa7
	.byte	0x39
	.long	0x57dc
	.byte	0xf4
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x20
	.byte	0xa8
	.byte	0x39
	.long	0x57fb
	.byte	0xf8
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x20
	.byte	0xa9
	.byte	0x39
	.long	0x581a
	.byte	0xfc
	.uleb128 0x1f
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x20
	.byte	0xaa
	.byte	0x39
	.long	0x5839
	.word	0x100
	.uleb128 0x1f
	.ascii "Pow_X_I\0"
	.byte	0x20
	.byte	0xad
	.byte	0x39
	.long	0x57fb
	.word	0x104
	.uleb128 0x1f
	.ascii "ModPow_X_X_X\0"
	.byte	0x20
	.byte	0xb0
	.byte	0x39
	.long	0x5a2e
	.word	0x108
	.uleb128 0x1f
	.ascii "FromByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb3
	.byte	0x39
	.long	0x5a52
	.word	0x10c
	.uleb128 0x1f
	.ascii "ToByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb4
	.byte	0x39
	.long	0x5a7b
	.word	0x110
	.uleb128 0x1f
	.ascii "TryParseForSINT\0"
	.byte	0x20
	.byte	0xb5
	.byte	0x39
	.long	0x5aa4
	.word	0x114
	.byte	0
	.uleb128 0xe
	.long	0x5638
	.uleb128 0xf
	.long	0x5638
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4d7b
	.uleb128 0x6
	.byte	0x4
	.long	0x562d
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5658
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4f28
	.uleb128 0x6
	.byte	0x4
	.long	0x5644
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5678
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5664
	.uleb128 0xe
	.long	0x5689
	.uleb128 0xf
	.long	0x4f28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x567e
	.uleb128 0x20
	.long	0x4ca9
	.long	0x56a3
	.uleb128 0xf
	.long	0x4cc1
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x568f
	.uleb128 0x20
	.long	0x4ca9
	.long	0x56c2
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56a9
	.uleb128 0x20
	.long	0x4ca9
	.long	0x56e6
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x56e6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc4
	.uleb128 0x6
	.byte	0x4
	.long	0x56c8
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5706
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56f2
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5720
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5720
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c85
	.uleb128 0x6
	.byte	0x4
	.long	0x570c
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5740
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c97
	.uleb128 0x6
	.byte	0x4
	.long	0x572c
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5774
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0xbc
	.uleb128 0xf
	.long	0xe3
	.uleb128 0xf
	.long	0x5774
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4e69
	.uleb128 0x6
	.byte	0x4
	.long	0x574c
	.uleb128 0x20
	.long	0x4ca9
	.long	0x579e
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0x4ce1
	.uleb128 0xf
	.long	0x5774
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5780
	.uleb128 0x20
	.long	0x4ca9
	.long	0x57bd
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57a4
	.uleb128 0x20
	.long	0x4ca9
	.long	0x57dc
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57c3
	.uleb128 0x20
	.long	0x4ca9
	.long	0x57fb
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57e2
	.uleb128 0x20
	.long	0x4ca9
	.long	0x581a
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5801
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5839
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5820
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5858
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5720
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x583f
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5877
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x585e
	.uleb128 0x20
	.long	0x4ca9
	.long	0x589b
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5720
	.uleb128 0xf
	.long	0x5720
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x587d
	.uleb128 0x20
	.long	0x4ca9
	.long	0x58bf
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5740
	.uleb128 0xf
	.long	0x5740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58a1
	.uleb128 0x20
	.long	0x4ca9
	.long	0x58e3
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5658
	.uleb128 0xf
	.long	0x5720
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58c5
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5907
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5658
	.uleb128 0xf
	.long	0x5740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58e9
	.uleb128 0x20
	.long	0x4ca9
	.long	0x592b
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5658
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x590d
	.uleb128 0x20
	.long	0x4ca9
	.long	0x594a
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5720
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5931
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5969
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5950
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5988
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5988
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c63
	.uleb128 0x6
	.byte	0x4
	.long	0x596f
	.uleb128 0x20
	.long	0x4ca9
	.long	0x59ad
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5988
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5994
	.uleb128 0x20
	.long	0x4ca9
	.long	0x59cc
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c85
	.uleb128 0xf
	.long	0x5988
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59b3
	.uleb128 0x20
	.long	0x4ca9
	.long	0x59eb
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4c97
	.uleb128 0xf
	.long	0x5988
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59d2
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5a0a
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5988
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59f1
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5a2e
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a10
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5a52
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x428
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a34
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5a7b
	.uleb128 0xf
	.long	0xbc
	.uleb128 0xf
	.long	0x4f28
	.uleb128 0xf
	.long	0x71e
	.uleb128 0xf
	.long	0xc4
	.uleb128 0xf
	.long	0x56e6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a58
	.uleb128 0x20
	.long	0x4ca9
	.long	0x5aa4
	.uleb128 0xf
	.long	0x42e
	.uleb128 0xf
	.long	0x4ce1
	.uleb128 0xf
	.long	0x5774
	.uleb128 0xf
	.long	0x428
	.uleb128 0xf
	.long	0x5658
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a81
	.uleb128 0x3
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x20
	.byte	0xb6
	.byte	0x7
	.long	0x4f46
	.uleb128 0x10
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x21
	.byte	0x28
	.byte	0x16
	.long	0x5b33
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x21
	.byte	0x2a
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x21
	.byte	0x2b
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x21
	.byte	0x2c
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x21
	.byte	0x2d
	.byte	0x16
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF4
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
	.long	0x5ac8
	.uleb128 0x1b
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x4
	.byte	0x21
	.byte	0x26
	.byte	0xb
	.long	0x5b76
	.uleb128 0x1c
	.ascii "FLAGS\0"
	.byte	0x21
	.byte	0x2f
	.byte	0xb
	.long	0x5b33
	.uleb128 0x1c
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
	.long	0x5b8e
	.uleb128 0x6
	.byte	0x4
	.long	0x5b38
	.uleb128 0x10
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x18
	.byte	0x22
	.byte	0x2d
	.byte	0x14
	.long	0x5c5b
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x22
	.byte	0x2f
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x22
	.byte	0x30
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x22
	.byte	0x31
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x22
	.byte	0x32
	.byte	0x12
	.long	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF4
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
	.long	0x4f28
	.byte	0xc
	.uleb128 0x11
	.ascii "SIGN\0"
	.byte	0x22
	.byte	0x39
	.byte	0xe
	.long	0xbc
	.byte	0x10
	.uleb128 0x1e
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
	.long	0x5b94
	.uleb128 0x13
	.ascii "ep_uint\0"
	.byte	0x22
	.byte	0x42
	.byte	0x22
	.long	0x5aaa
	.uleb128 0x13
	.ascii "number_zero\0"
	.byte	0x22
	.byte	0x45
	.byte	0x1a
	.long	0x5c5b
	.uleb128 0x13
	.ascii "number_one\0"
	.byte	0x22
	.byte	0x48
	.byte	0x1a
	.long	0x5c5b
	.uleb128 0x13
	.ascii "number_minus_one\0"
	.byte	0x22
	.byte	0x4b
	.byte	0x1a
	.long	0x5c5b
	.uleb128 0x21
	.ascii "uint_number_zero\0"
	.byte	0x22
	.byte	0x4e
	.byte	0x15
	.long	0x4f28
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_zero
	.uleb128 0x21
	.ascii "uint_number_one\0"
	.byte	0x22
	.byte	0x51
	.byte	0x15
	.long	0x4f28
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_one
	.uleb128 0x13
	.ascii "statistics_info\0"
	.byte	0x22
	.byte	0x54
	.byte	0x20
	.long	0x4d7b
	.uleb128 0x22
	.ascii "PMC_Compare_X_X\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x2e
	.ascii "PMC_Compare_X_X@12\0"
	.long	0x4ca9
	.long	LFB4242
	.long	LFE4242-LFB4242
	.uleb128 0x1
	.byte	0x9c
	.long	0x5da9
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x4e
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "v\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x61
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "w\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x6e
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF6
	.byte	0x2
	.word	0x1cf
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.ascii "nu\0"
	.byte	0x2
	.word	0x1d0
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii "nv\0"
	.byte	0x2
	.word	0x1d1
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c5b
	.uleb128 0x22
	.ascii "PMC_Compare_X_UX\0"
	.byte	0x2
	.word	0x186
	.byte	0x2e
	.ascii "PMC_Compare_X_UX@12\0"
	.long	0x4ca9
	.long	LFB4241
	.long	LFE4241-LFB4241
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e35
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x2
	.word	0x186
	.byte	0x4f
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "v\0"
	.byte	0x2
	.word	0x186
	.byte	0x62
	.long	0x4f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "w\0"
	.byte	0x2
	.word	0x186
	.byte	0x6f
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF6
	.byte	0x2
	.word	0x18e
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii "nu\0"
	.byte	0x2
	.word	0x18f
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.ascii "PMC_Compare_X_L\0"
	.byte	0x2
	.word	0x144
	.byte	0x2e
	.ascii "PMC_Compare_X_L@16\0"
	.long	0x4ca9
	.long	LFB4240
	.long	LFE4240-LFB4240
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ede
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x2
	.word	0x144
	.byte	0x4e
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "v\0"
	.byte	0x2
	.word	0x144
	.byte	0x5a
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.ascii "w\0"
	.byte	0x2
	.word	0x144
	.byte	0x67
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.secrel32	LASF6
	.byte	0x2
	.word	0x14a
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii "nu\0"
	.byte	0x2
	.word	0x14b
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii "v_sign\0"
	.byte	0x2
	.word	0x14e
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x25
	.ascii "v_abs\0"
	.byte	0x2
	.word	0x14f
	.byte	0xf
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.ascii "PMC_Compare_X_I\0"
	.byte	0x2
	.word	0x102
	.byte	0x2e
	.ascii "PMC_Compare_X_I@12\0"
	.long	0x4ca9
	.long	LFB4239
	.long	LFE4239-LFB4239
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f87
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x2
	.word	0x102
	.byte	0x4e
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "v\0"
	.byte	0x2
	.word	0x102
	.byte	0x5a
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "w\0"
	.byte	0x2
	.word	0x102
	.byte	0x67
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF6
	.byte	0x2
	.word	0x108
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii "nu\0"
	.byte	0x2
	.word	0x109
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii "v_sign\0"
	.byte	0x2
	.word	0x10c
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x25
	.ascii "v_abs\0"
	.byte	0x2
	.word	0x10d
	.byte	0xf
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.ascii "PMC_Compare_UX_X\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x2e
	.ascii "PMC_Compare_UX_X@12\0"
	.long	0x4ca9
	.long	LFB4238
	.long	LFE4238-LFB4238
	.uleb128 0x1
	.byte	0x9c
	.long	0x6007
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x4f
	.long	0x4f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x62
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "w\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x6f
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.secrel32	LASF6
	.byte	0x2
	.byte	0xdc
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii "nv\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.ascii "PMC_Compare_L_X\0"
	.byte	0x2
	.byte	0x94
	.byte	0x2e
	.ascii "PMC_Compare_L_X@16\0"
	.long	0x4ca9
	.long	LFB4237
	.long	LFE4237-LFB4237
	.uleb128 0x1
	.byte	0x9c
	.long	0x60a8
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x94
	.byte	0x47
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x94
	.byte	0x5a
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "w\0"
	.byte	0x2
	.byte	0x94
	.byte	0x67
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF6
	.byte	0x2
	.byte	0x9a
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii "nv\0"
	.byte	0x2
	.byte	0x9b
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii "u_sign\0"
	.byte	0x2
	.byte	0x9e
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x29
	.ascii "u_abs\0"
	.byte	0x2
	.byte	0x9f
	.byte	0xf
	.long	0x4c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.ascii "PMC_Compare_I_X\0"
	.byte	0x2
	.byte	0x52
	.byte	0x2e
	.ascii "PMC_Compare_I_X@12\0"
	.long	0x4ca9
	.long	LFB4236
	.long	LFE4236-LFB4236
	.uleb128 0x1
	.byte	0x9c
	.long	0x6149
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x52
	.byte	0x47
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x52
	.byte	0x5a
	.long	0x5b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "w\0"
	.byte	0x2
	.byte	0x52
	.byte	0x67
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.secrel32	LASF6
	.byte	0x2
	.byte	0x58
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii "nv\0"
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.long	0x5da9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii "u_sign\0"
	.byte	0x2
	.byte	0x5c
	.byte	0xa
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x29
	.ascii "u_abs\0"
	.byte	0x2
	.byte	0x5d
	.byte	0xf
	.long	0x4c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.ascii "CompareU_X_X_Imp\0"
	.byte	0x2
	.byte	0x41
	.byte	0x18
	.long	0x4ca9
	.long	LFB4235
	.long	LFE4235-LFB4235
	.uleb128 0x1
	.byte	0x9c
	.long	0x61c6
	.uleb128 0x27
	.ascii "sign\0"
	.byte	0x2
	.byte	0x41
	.byte	0x2e
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x41
	.byte	0x44
	.long	0x4f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x41
	.byte	0x57
	.long	0x4f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "w\0"
	.byte	0x2
	.byte	0x41
	.byte	0x64
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF6
	.byte	0x2
	.byte	0x43
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.secrel32	LASF7
	.byte	0x2
	.byte	0x44
	.byte	0xe
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.ascii "CompareU_X_L_Imp\0"
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.long	0x4ca9
	.long	LFB4234
	.long	LFE4234-LFB4234
	.uleb128 0x1
	.byte	0x9c
	.long	0x6243
	.uleb128 0x27
	.ascii "sign\0"
	.byte	0x2
	.byte	0x30
	.byte	0x2e
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x30
	.byte	0x44
	.long	0x4f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x30
	.byte	0x50
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.ascii "w\0"
	.byte	0x2
	.byte	0x30
	.byte	0x5d
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.secrel32	LASF6
	.byte	0x2
	.byte	0x32
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.secrel32	LASF7
	.byte	0x2
	.byte	0x33
	.byte	0xe
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.ascii "CompareU_X_I_Imp\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x18
	.long	0x4ca9
	.long	LFB4233
	.long	LFE4233-LFB4233
	.uleb128 0x1
	.byte	0x9c
	.long	0x62c0
	.uleb128 0x27
	.ascii "sign\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x2e
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x44
	.long	0x4f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x50
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "w\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x5d
	.long	0x5988
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF6
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.long	0x4ca9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.secrel32	LASF7
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.ascii "GET_ABS_64\0"
	.byte	0x1
	.word	0x31f
	.byte	0x1f
	.long	0x4c97
	.long	LFB4232
	.long	LFE4232-LFB4232
	.uleb128 0x1
	.byte	0x9c
	.long	0x6302
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x1
	.word	0x31f
	.byte	0x33
	.long	0x4c74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.ascii "sign\0"
	.byte	0x1
	.word	0x31f
	.byte	0x3b
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2c
	.ascii "GET_ABS_32\0"
	.byte	0x1
	.word	0x30b
	.byte	0x1f
	.long	0x4c85
	.long	LFB4231
	.long	LFE4231-LFB4231
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x1
	.word	0x30b
	.byte	0x33
	.long	0x4c63
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "sign\0"
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
LASF7:
	.ascii "temp_w\0"
LASF1:
	.ascii "IS_ZERO\0"
LASF3:
	.ascii "IS_EVEN\0"
LASF5:
	.ascii "IS_MINUS_ONE\0"
LASF6:
	.ascii "result\0"
LASF4:
	.ascii "IS_POWER_OF_TWO\0"
LASF2:
	.ascii "IS_ONE\0"
LASF0:
	.ascii "refcount\0"
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
