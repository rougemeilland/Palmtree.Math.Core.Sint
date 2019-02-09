	.file	"TEST_op_DivRem.c"
	.text
Ltext0:
	.def	__EQUALS_MEMORY;	.scl	3;	.type	32;	.endef
__EQUALS_MEMORY:
LFB71:
	.file 1 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_uint_debug.h"
	.loc 1 151 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 152 8
	movl	12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	L4
	.loc 1 153 16
	movl	$-1, %eax
	jmp	L3
L6:
	.loc 1 156 13
	movl	8(%ebp), %eax
	movzbl	(%eax), %edx
	.loc 1 156 25
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	.loc 1 156 12
	cmpb	%al, %dl
	je	L5
	.loc 1 157 20
	movl	$-1, %eax
	jmp	L3
L5:
	.loc 1 158 9
	addl	$1, 8(%ebp)
	.loc 1 159 9
	addl	$1, 16(%ebp)
	.loc 1 160 9
	subl	$1, 12(%ebp)
L4:
	.loc 1 154 11
	cmpl	$0, 12(%ebp)
	jne	L6
	.loc 1 162 12
	movl	$0, %eax
L3:
	.loc 1 163 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE71:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "F\0r\0o\0m\0B\0y\0t\0e\0A\0r\0r\0a\0y\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.align 4
LC1:
	.ascii "D\0i\0v\0R\0e\0m\0_\0I\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC2:
	.ascii "D\0i\0v\0R\0e\0m\0_\0I\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.align 4
LC3:
	.ascii "T\0o\0B\0y\0t\0e\0A\0r\0r\0a\0y\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.align 2
LC4:
	.ascii "FUn0$PL0\0N\364\201W0j0D0\0\0"
	.align 2
LC5:
	.ascii "pRYOn0$PL0\0N\364\201W0j0D0\0\0"
	.text
	.globl	_TEST_DivRem_I_X
	.def	_TEST_DivRem_I_X;	.scl	2;	.type	32;	.endef
_TEST_DivRem_I_X:
LFB72:
	.file 2 "../TEST_op_DivRem.c"
	.loc 2 33 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$560, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 44 131
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 44 83
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 44 81
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL0:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 44 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 44 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 2 44 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 45 137
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 45 85
	movl	12(%ebp), %eax
	movl	404(%eax), %eax
	.loc 2 45 83
	movl	-24(%ebp), %edx
	leal	-32(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-28(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL1:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 45 5
	movl	-16(%ebp), %eax
	cmpl	32(%ebp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 45 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 2 45 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 46 8
	cmpl	$0, 32(%ebp)
	jne	L8
	.loc 2 48 167
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 48 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 48 83
	movl	-28(%ebp), %edx
	leal	-292(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-288(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL2:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 48 9
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 48 26
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 2 48 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 49 167
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 49 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 49 83
	movl	-32(%ebp), %edx
	leal	-552(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-548(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL3:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 49 9
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 49 26
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 2 49 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 50 73
	movl	-292(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	36(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 50 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 50 26
	movl	$5, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 2 50 9
	movl	$LC4, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 51 73
	movl	-552(%ebp), %eax
	movl	48(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	44(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 51 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 51 26
	movl	$6, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 2 51 9
	movl	$LC5, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
L8:
	.loc 2 53 8
	cmpl	$0, -16(%ebp)
	jne	L9
	.loc 2 55 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 55 9
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL4:
	subl	$4, %esp
	.loc 2 56 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 56 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	subl	$4, %esp
L9:
	.loc 2 58 8
	cmpl	$0, -12(%ebp)
	jne	L11
	.loc 2 59 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 59 9
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL6:
	subl	$4, %esp
L11:
	.loc 2 60 1
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE72:
	.section .rdata,"dr"
	.align 4
LC6:
	.ascii "D\0i\0v\0R\0e\0m\0_\0L\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC7:
	.ascii "D\0i\0v\0R\0e\0m\0_\0L\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_DivRem_L_X
	.def	_TEST_DivRem_L_X;	.scl	2;	.type	32;	.endef
_TEST_DivRem_L_X:
LFB73:
	.loc 2 63 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$592, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	20(%ebp), %eax
	movl	%eax, -560(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -556(%ebp)
	.loc 2 74 131
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 74 83
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 74 81
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL7:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 74 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 74 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 2 74 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 75 137
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 75 85
	movl	12(%ebp), %eax
	movl	408(%eax), %ecx
	.loc 2 75 83
	movl	-24(%ebp), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-560(%ebp), %eax
	movl	-556(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL8:
	subl	$20, %esp
	movl	%eax, -16(%ebp)
	.loc 2 75 5
	movl	-16(%ebp), %eax
	cmpl	36(%ebp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 75 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 2 75 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 76 8
	cmpl	$0, 36(%ebp)
	jne	L13
	.loc 2 78 167
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 78 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 78 83
	movl	-28(%ebp), %edx
	leal	-292(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-288(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL9:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 78 9
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 78 26
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 2 78 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 79 167
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 79 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 79 83
	movl	-32(%ebp), %edx
	leal	-552(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-548(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL10:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 79 9
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 79 26
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 2 79 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 80 73
	movl	-292(%ebp), %eax
	movl	44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 80 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 80 26
	movl	$5, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 2 80 9
	movl	$LC4, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 81 73
	movl	-552(%ebp), %eax
	movl	52(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 81 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 81 26
	movl	$6, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 2 81 9
	movl	$LC5, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
L13:
	.loc 2 83 8
	cmpl	$0, -16(%ebp)
	jne	L14
	.loc 2 85 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 85 9
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL11:
	subl	$4, %esp
	.loc 2 86 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 86 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL12:
	subl	$4, %esp
L14:
	.loc 2 88 8
	cmpl	$0, -12(%ebp)
	jne	L16
	.loc 2 89 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 89 9
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL13:
	subl	$4, %esp
L16:
	.loc 2 90 1
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "D\0i\0v\0R\0e\0m\0_\0U\0X\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC9:
	.ascii "D\0i\0v\0R\0e\0m\0_\0U\0X\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_DivRem_UX_X
	.def	_TEST_DivRem_UX_X;	.scl	2;	.type	32;	.endef
_TEST_DivRem_UX_X:
LFB74:
	.loc 2 93 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$576, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 106 150
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 106 103
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	.loc 2 106 82
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL14:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 106 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 106 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 2 106 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 107 132
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 107 84
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 107 82
	leal	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL15:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 2 107 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 107 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 2 107 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 108 139
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 108 86
	movl	12(%ebp), %eax
	movl	412(%eax), %eax
	.loc 2 108 84
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	leal	-40(%ebp), %ebx
	movl	%ebx, 12(%esp)
	leal	-36(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL16:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 108 5
	movl	-20(%ebp), %eax
	cmpl	36(%ebp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 108 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 2 108 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 109 8
	cmpl	$0, 36(%ebp)
	jne	L18
	.loc 2 111 168
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 111 86
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 111 84
	movl	-36(%ebp), %edx
	leal	-300(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-296(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL17:
	subl	$16, %esp
	movl	%eax, -24(%ebp)
	.loc 2 111 9
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 111 26
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 2 111 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 112 186
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 112 105
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	.loc 2 112 84
	movl	-40(%ebp), %edx
	leal	-560(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-556(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL18:
	subl	$16, %esp
	movl	%eax, -24(%ebp)
	.loc 2 112 9
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 112 26
	movl	$5, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 2 112 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 113 74
	movl	-300(%ebp), %eax
	movl	44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 113 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 113 26
	movl	$6, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 2 113 9
	movl	$LC4, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 114 74
	movl	-560(%ebp), %eax
	movl	52(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-556(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 114 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 114 26
	movl	$7, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 2 114 9
	movl	$LC5, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
L18:
	.loc 2 116 8
	cmpl	$0, -20(%ebp)
	jne	L19
	.loc 2 118 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 118 9
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL19:
	subl	$4, %esp
	.loc 2 119 30
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	.loc 2 119 9
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL20:
	subl	$4, %esp
L19:
	.loc 2 121 8
	cmpl	$0, -16(%ebp)
	jne	L20
	.loc 2 122 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 122 9
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL21:
	subl	$4, %esp
L20:
	.loc 2 123 8
	cmpl	$0, -12(%ebp)
	jne	L22
	.loc 2 124 30
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	.loc 2 124 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL22:
	subl	$4, %esp
L22:
	.loc 2 125 1
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE74:
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0I\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC11:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0I\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_DivRem_X_I
	.def	_TEST_DivRem_X_I;	.scl	2;	.type	32;	.endef
_TEST_DivRem_X_I:
LFB75:
	.loc 2 128 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$304, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 137 131
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 137 83
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 137 81
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL23:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 137 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 137 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 2 137 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 138 142
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 138 83
	movl	12(%ebp), %eax
	movl	416(%eax), %eax
	.loc 2 138 81
	movl	-24(%ebp), %edx
	leal	-292(%ebp), %ecx
	movl	%ecx, 12(%esp)
	leal	-28(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL24:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 2 138 5
	movl	-16(%ebp), %eax
	cmpl	32(%ebp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 138 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 2 138 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 139 8
	cmpl	$0, 32(%ebp)
	jne	L24
	.loc 2 141 167
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 141 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 141 83
	movl	-28(%ebp), %edx
	leal	-288(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-284(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL25:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 141 9
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 141 26
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 2 141 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 142 73
	movl	-288(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	36(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 142 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 142 26
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 2 142 9
	movl	$LC4, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 143 9
	movl	-292(%ebp), %eax
	cmpl	%eax, 44(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 143 26
	movl	$5, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 2 143 9
	movl	$LC5, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
L24:
	.loc 2 145 8
	cmpl	$0, -16(%ebp)
	jne	L25
	.loc 2 146 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 146 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL26:
	subl	$4, %esp
L25:
	.loc 2 147 8
	cmpl	$0, -12(%ebp)
	jne	L27
	.loc 2 148 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 148 9
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL27:
	subl	$4, %esp
L27:
	.loc 2 149 1
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE75:
	.section .rdata,"dr"
	.align 4
LC12:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0L\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC13:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0L\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_DivRem_X_L
	.def	_TEST_DivRem_X_L;	.scl	2;	.type	32;	.endef
_TEST_DivRem_X_L:
LFB76:
	.loc 2 152 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$364, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	28(%ebp), %eax
	movl	%eax, -320(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -316(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -328(%ebp)
	movl	52(%ebp), %eax
	movl	%eax, -324(%ebp)
	.loc 2 161 131
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, -332(%ebp)
	.loc 2 161 83
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 161 81
	leal	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL28:
	subl	$12, %esp
	movl	%eax, -28(%ebp)
	.loc 2 161 5
	cmpl	$0, -28(%ebp)
	sete	%al
	movzbl	%al, %edi
	.loc 2 161 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 2 161 5
	movl	-332(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 162 142
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_FormatTestMesssage
	movl	%eax, -332(%ebp)
	.loc 2 162 83
	movl	12(%ebp), %eax
	movl	420(%eax), %ecx
	.loc 2 162 81
	movl	-40(%ebp), %edi
	leal	-312(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%edi, (%esp)
	call	*%ecx
LVL29:
	subl	$20, %esp
	movl	%eax, -32(%ebp)
	.loc 2 162 5
	movl	-32(%ebp), %eax
	cmpl	36(%ebp), %eax
	sete	%al
	movzbl	%al, %edi
	.loc 2 162 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 2 162 5
	movl	-332(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 163 8
	cmpl	$0, 36(%ebp)
	jne	L29
	.loc 2 165 167
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, -332(%ebp)
	.loc 2 165 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 165 83
	movl	-44(%ebp), %edx
	leal	-304(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-300(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL30:
	subl	$16, %esp
	movl	%eax, -36(%ebp)
	.loc 2 165 9
	cmpl	$0, -36(%ebp)
	sete	%al
	movzbl	%al, %edi
	.loc 2 165 26
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 2 165 9
	movl	-332(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 166 73
	movl	-304(%ebp), %eax
	movl	44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 166 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edi
	.loc 2 166 26
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 2 166 9
	movl	$LC4, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 167 9
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%eax, %ecx
	xorl	-328(%ebp), %ecx
	movl	%ecx, %ebx
	movl	%edx, %eax
	xorl	-324(%ebp), %eax
	movl	%eax, %esi
	movl	%ebx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 167 26
	movl	$5, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 2 167 9
	movl	$LC5, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
L29:
	.loc 2 169 8
	cmpl	$0, -32(%ebp)
	jne	L30
	.loc 2 170 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 170 9
	movl	-44(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL31:
	subl	$4, %esp
L30:
	.loc 2 171 8
	cmpl	$0, -28(%ebp)
	jne	L32
	.loc 2 172 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 172 9
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL32:
	subl	$4, %esp
L32:
	.loc 2 173 1
	nop
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
	ret
	.cfi_endproc
LFE76:
	.section .rdata,"dr"
	.align 4
LC14:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0U\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC15:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0U\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_DivRem_X_UX
	.def	_TEST_DivRem_X_UX;	.scl	2;	.type	32;	.endef
_TEST_DivRem_X_UX:
LFB77:
	.loc 2 176 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$576, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 189 132
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 189 84
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 189 82
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL33:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 189 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 189 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 2 189 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 190 150
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 190 103
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	.loc 2 190 82
	leal	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL34:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 2 190 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 190 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 2 190 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 191 139
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 191 86
	movl	12(%ebp), %eax
	movl	424(%eax), %eax
	.loc 2 191 84
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	leal	-40(%ebp), %ebx
	movl	%ebx, 12(%esp)
	leal	-36(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL35:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 191 5
	movl	-20(%ebp), %eax
	cmpl	36(%ebp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 191 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 2 191 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 192 8
	cmpl	$0, 36(%ebp)
	jne	L34
	.loc 2 194 168
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 194 86
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 194 84
	movl	-36(%ebp), %edx
	leal	-300(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-296(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL36:
	subl	$16, %esp
	movl	%eax, -24(%ebp)
	.loc 2 194 9
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 194 26
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 2 194 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 195 168
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 195 86
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 195 84
	movl	-40(%ebp), %edx
	leal	-560(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-556(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL37:
	subl	$16, %esp
	movl	%eax, -24(%ebp)
	.loc 2 195 9
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 195 26
	movl	$5, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 2 195 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 196 74
	movl	-300(%ebp), %eax
	movl	44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 196 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 196 26
	movl	$6, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 2 196 9
	movl	$LC4, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 197 74
	movl	-560(%ebp), %eax
	movl	52(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-556(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 197 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 197 26
	movl	$7, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 2 197 9
	movl	$LC5, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
L34:
	.loc 2 199 8
	cmpl	$0, -20(%ebp)
	jne	L35
	.loc 2 201 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 201 9
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL38:
	subl	$4, %esp
	.loc 2 202 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 202 9
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL39:
	subl	$4, %esp
L35:
	.loc 2 204 8
	cmpl	$0, -16(%ebp)
	jne	L36
	.loc 2 205 30
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	.loc 2 205 9
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL40:
	subl	$4, %esp
L36:
	.loc 2 206 8
	cmpl	$0, -12(%ebp)
	jne	L38
	.loc 2 207 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 207 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL41:
	subl	$4, %esp
L38:
	.loc 2 208 1
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE77:
	.section .rdata,"dr"
	.align 4
LC16:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC17:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_DivRem_X_X
	.def	_TEST_DivRem_X_X;	.scl	2;	.type	32;	.endef
_TEST_DivRem_X_X:
LFB78:
	.loc 2 211 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$576, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 224 131
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 224 83
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 224 81
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL42:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 2 224 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 224 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_FormatTestLabel
	.loc 2 224 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 225 131
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 225 83
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 2 225 81
	leal	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL43:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 2 225 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 225 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_FormatTestLabel
	.loc 2 225 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 226 137
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 226 85
	movl	12(%ebp), %eax
	movl	428(%eax), %eax
	.loc 2 226 83
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	leal	-40(%ebp), %ebx
	movl	%ebx, 12(%esp)
	leal	-36(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL44:
	subl	$16, %esp
	movl	%eax, -20(%ebp)
	.loc 2 226 5
	movl	-20(%ebp), %eax
	cmpl	36(%ebp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 226 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_FormatTestLabel
	.loc 2 226 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 227 8
	cmpl	$0, 36(%ebp)
	jne	L40
	.loc 2 229 167
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 229 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 229 83
	movl	-36(%ebp), %edx
	leal	-300(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-296(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL45:
	subl	$16, %esp
	movl	%eax, -24(%ebp)
	.loc 2 229 9
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 229 26
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_FormatTestLabel
	.loc 2 229 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 230 167
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 2 230 85
	movl	12(%ebp), %eax
	movl	300(%eax), %eax
	.loc 2 230 83
	movl	-40(%ebp), %edx
	leal	-560(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	$256, 8(%esp)
	leal	-556(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL46:
	subl	$16, %esp
	movl	%eax, -24(%ebp)
	.loc 2 230 9
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 230 26
	movl	$5, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_FormatTestLabel
	.loc 2 230 9
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 231 73
	movl	-300(%ebp), %eax
	movl	44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 231 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 231 26
	movl	$6, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_FormatTestLabel
	.loc 2 231 9
	movl	$LC4, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 2 232 73
	movl	-560(%ebp), %eax
	movl	52(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	48(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-556(%ebp), %eax
	movl	%eax, (%esp)
	call	__EQUALS_MEMORY
	.loc 2 232 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 232 26
	movl	$7, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_FormatTestLabel
	.loc 2 232 9
	movl	$LC5, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
L40:
	.loc 2 234 8
	cmpl	$0, -20(%ebp)
	jne	L41
	.loc 2 236 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 236 9
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL47:
	subl	$4, %esp
	.loc 2 237 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 237 9
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL48:
	subl	$4, %esp
L41:
	.loc 2 239 8
	cmpl	$0, -16(%ebp)
	jne	L42
	.loc 2 240 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 240 9
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL49:
	subl	$4, %esp
L42:
	.loc 2 241 8
	cmpl	$0, -12(%ebp)
	jne	L44
	.loc 2 242 11
	movl	12(%ebp), %eax
	movl	288(%eax), %eax
	.loc 2 242 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL50:
	subl	$4, %esp
L44:
	.loc 2 243 1
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE78:
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
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x6b3a
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=generic -march=i686 -g\0"
	.byte	0xc
	.ascii "../TEST_op_DivRem.c\0"
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
	.long	0xd6
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
	.long	0x102
	.uleb128 0x4
	.long	0xed
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0x102
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
	.long	0x152
	.uleb128 0x6
	.byte	0x4
	.long	0x158
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.byte	0xd8
	.byte	0x3
	.word	0x1bc
	.byte	0x10
	.long	0x2f5
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x3
	.word	0x1bd
	.byte	0x7
	.long	0xe6
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x3
	.word	0x1be
	.byte	0x10
	.long	0xd6
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x3
	.word	0x1bf
	.byte	0x10
	.long	0xd6
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x3
	.word	0x1c0
	.byte	0x11
	.long	0x442
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x3
	.word	0x1c1
	.byte	0x9
	.long	0x467
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x3
	.word	0x1c7
	.byte	0x5
	.long	0x477
	.byte	0x48
	.uleb128 0x9
	.ascii "lc_clike\0"
	.byte	0x3
	.word	0x1c8
	.byte	0x7
	.long	0xe6
	.byte	0xa8
	.uleb128 0x9
	.ascii "mb_cur_max\0"
	.byte	0x3
	.word	0x1c9
	.byte	0x7
	.long	0xe6
	.byte	0xac
	.uleb128 0x9
	.ascii "lconv_intl_refcount\0"
	.byte	0x3
	.word	0x1ca
	.byte	0x8
	.long	0x43c
	.byte	0xb0
	.uleb128 0x9
	.ascii "lconv_num_refcount\0"
	.byte	0x3
	.word	0x1cb
	.byte	0x8
	.long	0x43c
	.byte	0xb4
	.uleb128 0x9
	.ascii "lconv_mon_refcount\0"
	.byte	0x3
	.word	0x1cc
	.byte	0x8
	.long	0x43c
	.byte	0xb8
	.uleb128 0x9
	.ascii "lconv\0"
	.byte	0x3
	.word	0x1cd
	.byte	0x11
	.long	0x48e
	.byte	0xbc
	.uleb128 0x9
	.ascii "ctype1_refcount\0"
	.byte	0x3
	.word	0x1ce
	.byte	0x8
	.long	0x43c
	.byte	0xc0
	.uleb128 0x9
	.ascii "ctype1\0"
	.byte	0x3
	.word	0x1cf
	.byte	0x13
	.long	0x494
	.byte	0xc4
	.uleb128 0x9
	.ascii "pctype\0"
	.byte	0x3
	.word	0x1d0
	.byte	0x19
	.long	0x49a
	.byte	0xc8
	.uleb128 0x9
	.ascii "pclmap\0"
	.byte	0x3
	.word	0x1d1
	.byte	0x18
	.long	0x4a0
	.byte	0xcc
	.uleb128 0x9
	.ascii "pcumap\0"
	.byte	0x3
	.word	0x1d2
	.byte	0x18
	.long	0x4a0
	.byte	0xd0
	.uleb128 0x9
	.ascii "lc_time_curr\0"
	.byte	0x3
	.word	0x1d3
	.byte	0x1a
	.long	0x4cc
	.byte	0xd4
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x3
	.word	0x1a9
	.byte	0x25
	.long	0x30d
	.uleb128 0x6
	.byte	0x4
	.long	0x313
	.uleb128 0xa
	.ascii "threadmbcinfostruct\0"
	.uleb128 0x7
	.ascii "localeinfo_struct\0"
	.byte	0x8
	.byte	0x3
	.word	0x1ac
	.byte	0x10
	.long	0x369
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x3
	.word	0x1ad
	.byte	0x12
	.long	0x13a
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x3
	.word	0x1ae
	.byte	0x12
	.long	0x2f5
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x3
	.word	0x1af
	.byte	0x3
	.long	0x328
	.uleb128 0x7
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x3
	.word	0x1b3
	.byte	0x10
	.long	0x3d1
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x3
	.word	0x1b4
	.byte	0x12
	.long	0x102
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x3
	.word	0x1b5
	.byte	0x12
	.long	0x102
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x3
	.word	0x1b6
	.byte	0x12
	.long	0x102
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x3
	.word	0x1b7
	.byte	0x3
	.long	0x382
	.uleb128 0xb
	.byte	0x10
	.byte	0x3
	.word	0x1c2
	.byte	0x3
	.long	0x430
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x3
	.word	0x1c3
	.byte	0xb
	.long	0x430
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x3
	.word	0x1c4
	.byte	0xe
	.long	0x436
	.byte	0x4
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x3
	.word	0x1c5
	.byte	0xa
	.long	0x43c
	.byte	0x8
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x3
	.word	0x1c6
	.byte	0xa
	.long	0x43c
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xbf
	.uleb128 0x6
	.byte	0x4
	.long	0xed
	.uleb128 0x6
	.byte	0x4
	.long	0xe6
	.uleb128 0xc
	.long	0x452
	.long	0x452
	.uleb128 0xd
	.long	0xd6
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xc
	.long	0x3d1
	.long	0x477
	.uleb128 0xd
	.long	0xd6
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x3e0
	.long	0x487
	.uleb128 0xd
	.long	0xd6
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x487
	.uleb128 0x6
	.byte	0x4
	.long	0x102
	.uleb128 0x6
	.byte	0x4
	.long	0x118
	.uleb128 0x6
	.byte	0x4
	.long	0x4b7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x4a6
	.uleb128 0xa
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x4bc
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x4
	.byte	0x3f
	.byte	0x2e
	.long	0x4e2
	.uleb128 0x6
	.byte	0x4
	.long	0x4e8
	.uleb128 0xe
	.long	0x4f3
	.uleb128 0xf
	.long	0xe6
	.byte	0
	.uleb128 0x10
	.ascii "_XCPT_ACTION\0"
	.byte	0xc
	.byte	0x4
	.byte	0x41
	.byte	0xa
	.long	0x53f
	.uleb128 0x11
	.ascii "XcptNum\0"
	.byte	0x4
	.byte	0x42
	.byte	0x13
	.long	0x452
	.byte	0
	.uleb128 0x11
	.ascii "SigNum\0"
	.byte	0x4
	.byte	0x43
	.byte	0x9
	.long	0xe6
	.byte	0x4
	.uleb128 0x11
	.ascii "XcptAction\0"
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.long	0x4d2
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x4f3
	.long	0x54a
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.ascii "_XcptActTab\0"
	.byte	0x4
	.byte	0x47
	.byte	0x1e
	.long	0x53f
	.uleb128 0x13
	.ascii "_XcptActTabCount\0"
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.long	0xe6
	.uleb128 0x13
	.ascii "_XcptActTabSize\0"
	.byte	0x4
	.byte	0x49
	.byte	0xe
	.long	0xe6
	.uleb128 0x13
	.ascii "_First_FPE_Indx\0"
	.byte	0x4
	.byte	0x4a
	.byte	0xe
	.long	0xe6
	.uleb128 0x13
	.ascii "_Num_FPE\0"
	.byte	0x4
	.byte	0x4b
	.byte	0xe
	.long	0xe6
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x5
	.byte	0x8d
	.byte	0x19
	.long	0x452
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xd6
	.uleb128 0x13
	.ascii "_imp___pctype\0"
	.byte	0x6
	.byte	0x2b
	.byte	0x1c
	.long	0x5ed
	.uleb128 0x6
	.byte	0x4
	.long	0x494
	.uleb128 0x13
	.ascii "_imp___wctype\0"
	.byte	0x6
	.byte	0x3b
	.byte	0x1c
	.long	0x5ed
	.uleb128 0x13
	.ascii "_imp___pwctype\0"
	.byte	0x6
	.byte	0x47
	.byte	0x1c
	.long	0x5ed
	.uleb128 0xc
	.long	0x4b7
	.long	0x62b
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x620
	.uleb128 0x13
	.ascii "__newclmap\0"
	.byte	0x6
	.byte	0x50
	.byte	0x1e
	.long	0x62b
	.uleb128 0x13
	.ascii "__newcumap\0"
	.byte	0x6
	.byte	0x51
	.byte	0x1e
	.long	0x62b
	.uleb128 0x13
	.ascii "__ptlocinfo\0"
	.byte	0x6
	.byte	0x52
	.byte	0x19
	.long	0x13a
	.uleb128 0x13
	.ascii "__ptmbcinfo\0"
	.byte	0x6
	.byte	0x53
	.byte	0x19
	.long	0x2f5
	.uleb128 0x13
	.ascii "__globallocalestatus\0"
	.byte	0x6
	.byte	0x54
	.byte	0xe
	.long	0xe6
	.uleb128 0x13
	.ascii "__locale_changed\0"
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.long	0xe6
	.uleb128 0x13
	.ascii "__initiallocinfo\0"
	.byte	0x6
	.byte	0x56
	.byte	0x28
	.long	0x158
	.uleb128 0x13
	.ascii "__initiallocalestructinfo\0"
	.byte	0x6
	.byte	0x57
	.byte	0x1a
	.long	0x369
	.uleb128 0x13
	.ascii "_imp____mb_cur_max\0"
	.byte	0x6
	.byte	0xcb
	.byte	0x10
	.long	0x43c
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
	.long	0x4a6
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
	.long	0x792
	.uleb128 0x11
	.ascii "Data1\0"
	.byte	0x7
	.byte	0x14
	.byte	0x11
	.long	0x452
	.byte	0
	.uleb128 0x11
	.ascii "Data2\0"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.long	0x102
	.byte	0x4
	.uleb128 0x11
	.ascii "Data3\0"
	.byte	0x7
	.byte	0x16
	.byte	0x12
	.long	0x102
	.byte	0x6
	.uleb128 0x11
	.ascii "Data4\0"
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.long	0x792
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x4a6
	.long	0x7a2
	.uleb128 0xd
	.long	0xd6
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x746
	.uleb128 0x4
	.long	0x7a2
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x7
	.byte	0x53
	.byte	0xe
	.long	0x7a2
	.uleb128 0x4
	.long	0x7b4
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x7a2
	.uleb128 0x4
	.long	0x7c5
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.long	0x7a2
	.uleb128 0x4
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13a9
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13aa
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0x8
	.word	0x13ab
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0x8
	.word	0x13ac
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0x8
	.word	0x13ad
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0x8
	.word	0x13ae
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0x8
	.word	0x13af
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0x8
	.word	0x13b0
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0x8
	.word	0x13b1
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13b2
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0x8
	.word	0x13b3
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0x8
	.word	0x13b4
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13b5
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0x8
	.word	0x13b6
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0x8
	.word	0x13b7
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0x8
	.word	0x13b8
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0x8
	.word	0x13b9
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0x8
	.word	0x13ba
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bb
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bc
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13bd
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0x8
	.word	0x13be
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0x8
	.word	0x13bf
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0x8
	.word	0x13c0
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0x8
	.word	0x13c1
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0x8
	.word	0x13c2
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0x8
	.word	0x13c3
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0x8
	.word	0x13c4
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0x8
	.word	0x13c5
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0x8
	.word	0x13c6
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0x8
	.word	0x13c7
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0x8
	.word	0x13c8
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0x8
	.word	0x13c9
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ca
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0x8
	.word	0x13cb
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0x8
	.word	0x13cc
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0x8
	.word	0x13cd
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0x8
	.word	0x13ce
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0x8
	.word	0x13cf
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0x8
	.word	0x13d0
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0x8
	.word	0x13d1
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0x8
	.word	0x13d2
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0x8
	.word	0x13d3
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0x8
	.word	0x13d4
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0x8
	.word	0x13d5
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d6
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d7
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0x8
	.word	0x13d8
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0x8
	.word	0x13d9
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0x8
	.word	0x13da
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0x8
	.word	0x13db
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0x8
	.word	0x13dc
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0x8
	.word	0x13dd
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0x8
	.word	0x13de
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0x8
	.word	0x13df
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0x8
	.word	0x13e0
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0x8
	.word	0x13e1
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0x8
	.word	0x13e2
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0x8
	.word	0x13e3
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0x8
	.word	0x13e4
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0x8
	.word	0x13e5
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0x8
	.word	0x13e6
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0x8
	.word	0x13e7
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0x8
	.word	0x13e8
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0x8
	.word	0x13e9
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0x8
	.word	0x13ea
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0x8
	.word	0x13eb
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0x8
	.word	0x13ec
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0x8
	.word	0x13ed
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0x8
	.word	0x13ee
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ef
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13f0
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0x8
	.word	0x13f1
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0x8
	.word	0x13f2
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0x8
	.word	0x13f3
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0x8
	.word	0x13f4
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0x8
	.word	0x13f5
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0x8
	.word	0x13f6
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0x8
	.word	0x13f7
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0x8
	.word	0x13f8
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0x8
	.word	0x13f9
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0x8
	.word	0x13fa
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0x8
	.word	0x13fb
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fc
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fd
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13fe
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0x8
	.word	0x13ff
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0x8
	.word	0x1400
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0x8
	.word	0x1401
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0x8
	.word	0x1402
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0x8
	.word	0x1403
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0x8
	.word	0x1404
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0x8
	.word	0x1405
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0x8
	.word	0x1406
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0x8
	.word	0x1407
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0x8
	.word	0x1408
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0x8
	.word	0x1409
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0x8
	.word	0x140a
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0x8
	.word	0x140b
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0x8
	.word	0x140c
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0x8
	.word	0x140d
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0x8
	.word	0x140e
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0x8
	.word	0x140f
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0x8
	.word	0x1410
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0x8
	.word	0x1411
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0x8
	.word	0x1412
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0x8
	.word	0x1413
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0x8
	.word	0x1414
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0x8
	.word	0x1415
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0x8
	.word	0x1416
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0x8
	.word	0x1417
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0x8
	.word	0x1418
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0x8
	.word	0x1419
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0x8
	.word	0x141a
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0x8
	.word	0x141b
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0x8
	.word	0x141c
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0x8
	.word	0x141d
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0x8
	.word	0x141e
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0x8
	.word	0x141f
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0x8
	.word	0x1420
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0x8
	.word	0x1421
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0x8
	.word	0x1422
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1620
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1621
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1622
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0x8
	.word	0x1623
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0x8
	.word	0x1624
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0x8
	.word	0x1625
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0x8
	.word	0x1626
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0x8
	.word	0x1627
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0x8
	.word	0x1628
	.byte	0x17
	.long	0x7af
	.uleb128 0x15
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0x8
	.word	0x1629
	.byte	0x17
	.long	0x7af
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0x9
	.byte	0x42
	.byte	0x11
	.long	0x5b8
	.uleb128 0x6
	.byte	0x4
	.long	0x430
	.uleb128 0xc
	.long	0x4a6
	.long	0x1d3a
	.uleb128 0xd
	.long	0xd6
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x1d59
	.uleb128 0x16
	.uleb128 0x6
	.byte	0x4
	.long	0xfd
	.uleb128 0xc
	.long	0x430
	.long	0x1d70
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "_sys_errlist\0"
	.byte	0xa
	.byte	0xac
	.byte	0x2b
	.long	0x1d60
	.uleb128 0x13
	.ascii "_sys_nerr\0"
	.byte	0xa
	.byte	0xad
	.byte	0x29
	.long	0xe6
	.uleb128 0x15
	.ascii "_imp____argc\0"
	.byte	0xa
	.word	0x119
	.byte	0x10
	.long	0x43c
	.uleb128 0x15
	.ascii "_imp____argv\0"
	.byte	0xa
	.word	0x11d
	.byte	0x13
	.long	0x1dc3
	.uleb128 0x6
	.byte	0x4
	.long	0x1d24
	.uleb128 0x15
	.ascii "_imp____wargv\0"
	.byte	0xa
	.word	0x121
	.byte	0x16
	.long	0x1de0
	.uleb128 0x6
	.byte	0x4
	.long	0x1de6
	.uleb128 0x6
	.byte	0x4
	.long	0x436
	.uleb128 0x15
	.ascii "_imp___environ\0"
	.byte	0xa
	.word	0x127
	.byte	0x13
	.long	0x1dc3
	.uleb128 0x15
	.ascii "_imp___wenviron\0"
	.byte	0xa
	.word	0x12c
	.byte	0x16
	.long	0x1de0
	.uleb128 0x15
	.ascii "_imp___pgmptr\0"
	.byte	0xa
	.word	0x132
	.byte	0x12
	.long	0x1d24
	.uleb128 0x15
	.ascii "_imp___wpgmptr\0"
	.byte	0xa
	.word	0x137
	.byte	0x15
	.long	0x1de6
	.uleb128 0x15
	.ascii "_imp___osplatform\0"
	.byte	0xa
	.word	0x13c
	.byte	0x19
	.long	0x5d1
	.uleb128 0x15
	.ascii "_imp___osver\0"
	.byte	0xa
	.word	0x141
	.byte	0x19
	.long	0x5d1
	.uleb128 0x15
	.ascii "_imp___winver\0"
	.byte	0xa
	.word	0x146
	.byte	0x19
	.long	0x5d1
	.uleb128 0x15
	.ascii "_imp___winmajor\0"
	.byte	0xa
	.word	0x14b
	.byte	0x19
	.long	0x5d1
	.uleb128 0x15
	.ascii "_imp___winminor\0"
	.byte	0xa
	.word	0x150
	.byte	0x19
	.long	0x5d1
	.uleb128 0x13
	.ascii "_amblksiz\0"
	.byte	0xb
	.byte	0x35
	.byte	0x17
	.long	0xd6
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xc
	.byte	0x29
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xc
	.byte	0x2a
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x13
	.ascii "IID_IUnknown\0"
	.byte	0xd
	.byte	0x57
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xd
	.byte	0xbd
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IClassFactory\0"
	.byte	0xd
	.word	0x16d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMarshal\0"
	.byte	0xe
	.word	0x16e
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_INoMarshal\0"
	.byte	0xe
	.word	0x255
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAgileObject\0"
	.byte	0xe
	.word	0x294
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAgileReference\0"
	.byte	0xe
	.word	0x2d2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMarshal2\0"
	.byte	0xe
	.word	0x32d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMalloc\0"
	.byte	0xe
	.word	0x3b2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xe
	.word	0x469
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IExternalConnection\0"
	.byte	0xe
	.word	0x4cc
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMultiQI\0"
	.byte	0xe
	.word	0x547
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xe
	.word	0x59e
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternalUnknown\0"
	.byte	0xe
	.word	0x60c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumUnknown\0"
	.byte	0xe
	.word	0x668
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumString\0"
	.byte	0xe
	.word	0x706
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISequentialStream\0"
	.byte	0xe
	.word	0x7a2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IStream\0"
	.byte	0xe
	.word	0x84d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xe
	.word	0x991
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xe
	.word	0xa3b
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xe
	.word	0xabd
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xe
	.word	0xb7f
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xe
	.word	0xc99
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xe
	.word	0xcee
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xe
	.word	0xd56
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xe
	.word	0xe1c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IChannelHook\0"
	.byte	0xe
	.word	0xe9f
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IClientSecurity\0"
	.byte	0xe
	.word	0xfc3
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IServerSecurity\0"
	.byte	0xe
	.word	0x106d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcOptions\0"
	.byte	0xe
	.word	0x1113
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IGlobalOptions\0"
	.byte	0xe
	.word	0x11ae
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISurrogate\0"
	.byte	0xe
	.word	0x1221
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xe
	.word	0x1289
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISynchronize\0"
	.byte	0xe
	.word	0x1312
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xe
	.word	0x138c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xe
	.word	0x13e1
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xe
	.word	0x1441
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xe
	.word	0x14af
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xe
	.word	0x151e
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAsyncManager\0"
	.byte	0xe
	.word	0x158a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICallFactory\0"
	.byte	0xe
	.word	0x1608
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRpcHelper\0"
	.byte	0xe
	.word	0x1666
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xe
	.word	0x16d1
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IWaitMultiple\0"
	.byte	0xe
	.word	0x172c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xe
	.word	0x1798
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xe
	.word	0x17fd
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPipeByte\0"
	.byte	0xe
	.word	0x1868
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPipeLong\0"
	.byte	0xe
	.word	0x18d9
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPipeDouble\0"
	.byte	0xe
	.word	0x194a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xe
	.word	0x1b24
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IProcessInitControl\0"
	.byte	0xe
	.word	0x1bb2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IFastRundown\0"
	.byte	0xe
	.word	0x1c07
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMarshalingStream\0"
	.byte	0xe
	.word	0x1c4a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xe
	.word	0x1d09
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_NULL\0"
	.byte	0xf
	.byte	0xd
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "CATID_MARSHALER\0"
	.byte	0xf
	.byte	0xe
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IRpcChannel\0"
	.byte	0xf
	.byte	0xf
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IRpcStub\0"
	.byte	0xf
	.byte	0x10
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IStubManager\0"
	.byte	0xf
	.byte	0x11
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IRpcProxy\0"
	.byte	0xf
	.byte	0x12
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IProxyManager\0"
	.byte	0xf
	.byte	0x13
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IPSFactory\0"
	.byte	0xf
	.byte	0x14
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IInternalMoniker\0"
	.byte	0xf
	.byte	0x15
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IDfReserved1\0"
	.byte	0xf
	.byte	0x16
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IDfReserved2\0"
	.byte	0xf
	.byte	0x17
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IDfReserved3\0"
	.byte	0xf
	.byte	0x18
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "CLSID_StdMarshal\0"
	.byte	0xf
	.byte	0x19
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xf
	.byte	0x1a
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xf
	.byte	0x1b
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "IID_IStub\0"
	.byte	0xf
	.byte	0x1c
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IProxy\0"
	.byte	0xf
	.byte	0x1d
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IEnumGeneric\0"
	.byte	0xf
	.byte	0x1e
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IEnumHolder\0"
	.byte	0xf
	.byte	0x1f
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IEnumCallback\0"
	.byte	0xf
	.byte	0x20
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IOleManager\0"
	.byte	0xf
	.byte	0x21
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IOlePresObj\0"
	.byte	0xf
	.byte	0x22
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IDebug\0"
	.byte	0xf
	.byte	0x23
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "IID_IDebugStream\0"
	.byte	0xf
	.byte	0x24
	.byte	0x14
	.long	0x7c0
	.uleb128 0x13
	.ascii "CLSID_PSGenObject\0"
	.byte	0xf
	.byte	0x25
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_PSClientSite\0"
	.byte	0xf
	.byte	0x26
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_PSClassObject\0"
	.byte	0xf
	.byte	0x27
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xf
	.byte	0x2a
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xf
	.byte	0x2b
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xf
	.byte	0x2c
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xf
	.byte	0x2d
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_StaticDib\0"
	.byte	0xf
	.byte	0x2e
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CID_CDfsVolume\0"
	.byte	0xf
	.byte	0x2f
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xf
	.byte	0x30
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xf
	.byte	0x31
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xf
	.byte	0x32
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_ComBinding\0"
	.byte	0xf
	.byte	0x33
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_StdEvent\0"
	.byte	0xf
	.byte	0x34
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xf
	.byte	0x35
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xf
	.byte	0x36
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_AddrControl\0"
	.byte	0xf
	.byte	0x37
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xf
	.byte	0x38
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xf
	.byte	0x39
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xf
	.byte	0x3a
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xf
	.byte	0x3b
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xf
	.byte	0x3c
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xf
	.byte	0x3d
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xf
	.byte	0x3e
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDLabel\0"
	.byte	0xf
	.byte	0x3f
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xf
	.byte	0x40
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDListBox\0"
	.byte	0xf
	.byte	0x41
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xf
	.byte	0x42
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xf
	.byte	0x43
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xf
	.byte	0x45
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xf
	.byte	0x46
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xf
	.byte	0x47
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xf
	.byte	0x48
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xf
	.byte	0x49
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4a
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4b
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4c
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4d
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4e
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xf
	.byte	0x4f
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xf
	.byte	0x50
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xf
	.byte	0x51
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xf
	.byte	0x52
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xf
	.byte	0x53
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xf
	.byte	0x54
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xf
	.byte	0x55
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_CSystemPage\0"
	.byte	0xf
	.byte	0x56
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xf
	.byte	0x57
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xf
	.byte	0x58
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xf
	.byte	0x59
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xf
	.byte	0x5a
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xf
	.byte	0x5b
	.byte	0x16
	.long	0x7d3
	.uleb128 0x13
	.ascii "GUID_TRISTATE\0"
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x7af
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0x10
	.byte	0x28
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0x10
	.byte	0x29
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x15
	.ascii "IID_IMallocSpy\0"
	.byte	0x11
	.word	0x1dbd
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBindCtx\0"
	.byte	0x11
	.word	0x1f3a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumMoniker\0"
	.byte	0x11
	.word	0x204a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRunnableObject\0"
	.byte	0x11
	.word	0x20e8
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x11
	.word	0x218e
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPersist\0"
	.byte	0x11
	.word	0x2269
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPersistStream\0"
	.byte	0x11
	.word	0x22be
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMoniker\0"
	.byte	0x11
	.word	0x236a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IROTData\0"
	.byte	0x11
	.word	0x2558
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x11
	.word	0x25b5
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IStorage\0"
	.byte	0x11
	.word	0x2658
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPersistFile\0"
	.byte	0x11
	.word	0x2841
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPersistStorage\0"
	.byte	0x11
	.word	0x28f1
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ILockBytes\0"
	.byte	0x11
	.word	0x29b1
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x11
	.word	0x2ac0
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x11
	.word	0x2b6c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRootStorage\0"
	.byte	0x11
	.word	0x2c08
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAdviseSink\0"
	.byte	0x11
	.word	0x2cb3
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x11
	.word	0x2d73
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAdviseSink2\0"
	.byte	0x11
	.word	0x2ea9
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x11
	.word	0x2f2e
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDataObject\0"
	.byte	0x11
	.word	0x2ff4
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x11
	.word	0x3118
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMessageFilter\0"
	.byte	0x11
	.word	0x31d3
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x11
	.word	0x325d
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x11
	.word	0x325f
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x11
	.word	0x3261
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x11
	.word	0x3263
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x11
	.word	0x3265
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x11
	.word	0x3267
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x11
	.word	0x3269
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x11
	.word	0x326b
	.byte	0x14
	.long	0x7e6
	.uleb128 0x15
	.ascii "IID_IClassActivator\0"
	.byte	0x11
	.word	0x3273
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IFillLockBytes\0"
	.byte	0x11
	.word	0x32d5
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IProgressNotify\0"
	.byte	0x11
	.word	0x3389
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ILayoutStorage\0"
	.byte	0x11
	.word	0x33ee
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBlockingLock\0"
	.byte	0x11
	.word	0x3492
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x11
	.word	0x34f7
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOplockStorage\0"
	.byte	0x11
	.word	0x354e
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x11
	.word	0x35d5
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IUrlMon\0"
	.byte	0x11
	.word	0x364d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x11
	.word	0x36bc
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x11
	.word	0x3710
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x11
	.word	0x3786
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IProcessLock\0"
	.byte	0x11
	.word	0x37e5
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISurrogateService\0"
	.byte	0x11
	.word	0x3848
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInitializeSpy\0"
	.byte	0x11
	.word	0x38f2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x11
	.word	0x398a
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x12
	.byte	0xab
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleCache\0"
	.byte	0x12
	.word	0x162
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleCache2\0"
	.byte	0x12
	.word	0x229
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleCacheControl\0"
	.byte	0x12
	.word	0x2d4
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IParseDisplayName\0"
	.byte	0x12
	.word	0x33c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleContainer\0"
	.byte	0x12
	.word	0x39c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleClientSite\0"
	.byte	0x12
	.word	0x417
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleObject\0"
	.byte	0x12
	.word	0x4fe
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x12
	.word	0x6fe
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x12
	.word	0x6ff
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x15
	.ascii "IID_IOleWindow\0"
	.byte	0x12
	.word	0x724
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleLink\0"
	.byte	0x12
	.word	0x79a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleItemContainer\0"
	.byte	0x12
	.word	0x8bf
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x12
	.word	0x976
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x12
	.word	0xa1c
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x12
	.word	0xaf8
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x12
	.word	0xbf1
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x12
	.word	0xc91
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IContinue\0"
	.byte	0x12
	.word	0xda4
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IViewObject\0"
	.byte	0x12
	.word	0xdf9
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IViewObject2\0"
	.byte	0x12
	.word	0xf2a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDropSource\0"
	.byte	0x12
	.word	0xfd2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDropTarget\0"
	.byte	0x12
	.word	0x105b
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x12
	.word	0x10ff
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x12
	.word	0x1176
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "IID_IServiceProvider\0"
	.byte	0x13
	.byte	0x4d
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x14
	.byte	0xf1
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x14
	.byte	0xf2
	.byte	0x16
	.long	0x1d0e
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x14
	.word	0x33b
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x14
	.word	0x562
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x14
	.word	0x7b2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x14
	.word	0x8ba
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDispatch\0"
	.byte	0x14
	.word	0x9b6
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x14
	.word	0xa87
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeComp\0"
	.byte	0x14
	.word	0xb35
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeInfo\0"
	.byte	0x14
	.word	0xbd9
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeInfo2\0"
	.byte	0x14
	.word	0xe50
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeLib\0"
	.byte	0x14
	.word	0x10d6
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeLib2\0"
	.byte	0x14
	.word	0x123d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x14
	.word	0x1361
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IErrorInfo\0"
	.byte	0x14
	.word	0x13da
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x14
	.word	0x147d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x14
	.word	0x1520
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeFactory\0"
	.byte	0x14
	.word	0x1575
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ITypeMarshal\0"
	.byte	0x14
	.word	0x15d0
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IRecordInfo\0"
	.byte	0x14
	.word	0x1684
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IErrorLog\0"
	.byte	0x14
	.word	0x1820
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPropertyBag\0"
	.byte	0x14
	.word	0x187a
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x15
	.byte	0xeb
	.byte	0x18
	.long	0x1d0e
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.long	0x1d0e
	.uleb128 0x13
	.ascii "LIBID_MSXML\0"
	.byte	0x15
	.byte	0xfc
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x15
	.word	0x100
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x15
	.word	0x127
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x15
	.word	0x1fd
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x15
	.word	0x266
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x15
	.word	0x375
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x15
	.word	0x3b0
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x15
	.word	0x404
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x15
	.word	0x496
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x15
	.word	0x50f
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMText\0"
	.byte	0x15
	.word	0x5a6
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x15
	.word	0x625
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x15
	.word	0x69e
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x15
	.word	0x717
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x15
	.word	0x792
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x15
	.word	0x80b
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x15
	.word	0x87f
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x15
	.word	0x8f8
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x15
	.word	0x961
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXTLRuntime\0"
	.byte	0x15
	.word	0x9a6
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x15
	.word	0xa3d
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_DOMDocument\0"
	.byte	0x15
	.word	0xa5c
	.byte	0x16
	.long	0x7d3
	.uleb128 0x15
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x15
	.word	0xa60
	.byte	0x16
	.long	0x7d3
	.uleb128 0x15
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x15
	.word	0xa67
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x15
	.word	0xacd
	.byte	0x16
	.long	0x7d3
	.uleb128 0x15
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x15
	.word	0xad4
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x15
	.word	0xb0d
	.byte	0x16
	.long	0x7d3
	.uleb128 0x15
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x15
	.word	0xb14
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDocument\0"
	.byte	0x15
	.word	0xb4a
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLDocument2\0"
	.byte	0x15
	.word	0xbb2
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLElement\0"
	.byte	0x15
	.word	0xc24
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLElement2\0"
	.byte	0x15
	.word	0xc82
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLAttribute\0"
	.byte	0x15
	.word	0xce5
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IXMLError\0"
	.byte	0x15
	.word	0xd11
	.byte	0x14
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_XMLDocument\0"
	.byte	0x15
	.word	0xd2e
	.byte	0x16
	.long	0x7d3
	.uleb128 0x15
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x16
	.word	0x17e
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x16
	.word	0x17f
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x16
	.word	0x180
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x16
	.word	0x181
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x16
	.word	0x182
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x16
	.word	0x183
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x16
	.word	0x184
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x185
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x16
	.word	0x186
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x16
	.word	0x187
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x16
	.word	0x188
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x16
	.word	0x189
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x16
	.word	0x18a
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x16
	.word	0x193
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x16
	.word	0x194
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x16
	.word	0x195
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x16
	.word	0x196
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x16
	.word	0x197
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x16
	.word	0x198
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_FileProtocol\0"
	.byte	0x16
	.word	0x199
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_MkProtocol\0"
	.byte	0x16
	.word	0x19a
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x16
	.word	0x19b
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x19c
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x16
	.word	0x19d
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x16
	.word	0x19e
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x16
	.word	0x19f
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IPersistMoniker\0"
	.byte	0x16
	.word	0x250
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IMonikerProp\0"
	.byte	0x16
	.word	0x321
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBindProtocol\0"
	.byte	0x16
	.word	0x37f
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBinding\0"
	.byte	0x16
	.word	0x3e0
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x16
	.word	0x575
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x16
	.word	0x6a5
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAuthenticate\0"
	.byte	0x16
	.word	0x764
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x16
	.word	0x7d0
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x16
	.word	0x841
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x16
	.word	0x8c1
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x16
	.word	0x93b
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x16
	.word	0x9bf
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x16
	.word	0xa30
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICodeInstall\0"
	.byte	0x16
	.word	0xa9b
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IWinInetInfo\0"
	.byte	0x16
	.word	0x10a5
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IHttpSecurity\0"
	.byte	0x16
	.word	0x1112
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x16
	.word	0x1179
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x16
	.word	0x11f8
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "SID_BindHost\0"
	.byte	0x16
	.word	0x1335
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBindHost\0"
	.byte	0x16
	.word	0x133f
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternet\0"
	.byte	0x16
	.word	0x144d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x16
	.word	0x14ac
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x16
	.word	0x1526
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x16
	.word	0x15bf
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetProtocol\0"
	.byte	0x16
	.word	0x1684
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x16
	.word	0x181a
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x16
	.word	0x18bd
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetSession\0"
	.byte	0x16
	.word	0x193f
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x16
	.word	0x1a48
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetPriority\0"
	.byte	0x16
	.word	0x1ab2
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x16
	.word	0x1b4e
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x16
	.word	0x1cb2
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x16
	.word	0x1cb3
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x16
	.word	0x1ccb
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x16
	.word	0x1d69
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x16
	.word	0x210f
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x16
	.word	0x22c4
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x16
	.word	0x269c
	.byte	0x12
	.long	0x7c0
	.uleb128 0x15
	.ascii "IID_ISoftDistExt\0"
	.byte	0x16
	.word	0x26cc
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x16
	.word	0x2778
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IDataFilter\0"
	.byte	0x16
	.word	0x27e6
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x16
	.word	0x28a6
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x16
	.word	0x2933
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x16
	.word	0x2941
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IGetBindHandle\0"
	.byte	0x16
	.word	0x29a5
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x16
	.word	0x2a0d
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPropertyStorage\0"
	.byte	0x17
	.word	0x1b7
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x17
	.word	0x304
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x17
	.word	0x3a6
	.byte	0x13
	.long	0x7af
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x17
	.word	0x444
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "IID_StdOle\0"
	.byte	0x18
	.byte	0x15
	.byte	0x12
	.long	0x7c0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x19
	.byte	0xc
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x19
	.byte	0xd
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x19
	.byte	0xe
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x19
	.byte	0xf
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x19
	.byte	0x10
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x19
	.byte	0x11
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x19
	.byte	0x12
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x19
	.byte	0x13
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x19
	.byte	0x14
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x19
	.byte	0x15
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x19
	.byte	0x16
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x19
	.byte	0x17
	.byte	0x13
	.long	0x7af
	.uleb128 0x10
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1a
	.byte	0xa1
	.byte	0x12
	.long	0x48cf
	.uleb128 0x11
	.ascii "dwProtocol\0"
	.byte	0x1a
	.byte	0xa2
	.byte	0xb
	.long	0x5ba
	.byte	0
	.uleb128 0x11
	.ascii "cbPciLength\0"
	.byte	0x1a
	.byte	0xa3
	.byte	0xb
	.long	0x5ba
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1a
	.byte	0xa4
	.byte	0x5
	.long	0x488a
	.uleb128 0x4
	.long	0x48cf
	.uleb128 0x13
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x3c
	.long	0x48e8
	.uleb128 0x13
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x4b
	.long	0x48e8
	.uleb128 0x13
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x5a
	.long	0x48e8
	.uleb128 0x13
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1c
	.byte	0xe
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1c
	.byte	0xf
	.byte	0x13
	.long	0x7af
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1d
	.byte	0x27
	.byte	0xd
	.long	0xe6
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1d
	.byte	0x28
	.byte	0x12
	.long	0xd6
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1d
	.byte	0x29
	.byte	0x21
	.long	0x129
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1d
	.byte	0x2a
	.byte	0x2a
	.long	0x72c
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1e
	.byte	0x54
	.byte	0x11
	.long	0x4982
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1e
	.byte	0x55
	.byte	0x11
	.long	0x49a3
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1e
	.byte	0x58
	.byte	0x12
	.long	0x4992
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1e
	.byte	0x59
	.byte	0x12
	.long	0x49b3
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1e
	.byte	0x64
	.byte	0xd
	.long	0xe6
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1e
	.byte	0x66
	.byte	0xd
	.long	0xe6
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1e
	.byte	0x68
	.byte	0xd
	.long	0xe6
	.uleb128 0x10
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x6c
	.byte	0x12
	.long	0x4ac6
	.uleb128 0x17
	.ascii "IS_ZERO\0"
	.byte	0x1e
	.byte	0x6e
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.ascii "IS_ONE\0"
	.byte	0x1e
	.byte	0x6f
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.ascii "IS_EVEN\0"
	.byte	0x1e
	.byte	0x70
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x18
	.secrel32	LASF1
	.byte	0x1e
	.byte	0x71
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x4a60
	.uleb128 0x19
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x6a
	.byte	0x7
	.long	0x4b09
	.uleb128 0x1a
	.ascii "FLAGS\0"
	.byte	0x1e
	.byte	0x72
	.byte	0x7
	.long	0x4ac6
	.uleb128 0x1a
	.ascii "__dummy\0"
	.byte	0x1e
	.byte	0x74
	.byte	0xf
	.long	0x49e6
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x1e
	.byte	0x7b
	.byte	0x26
	.long	0x4b21
	.uleb128 0x6
	.byte	0x4
	.long	0x4acb
	.uleb128 0x10
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x7f
	.byte	0x12
	.long	0x4ba6
	.uleb128 0x17
	.ascii "IS_ZERO\0"
	.byte	0x1e
	.byte	0x81
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.ascii "IS_ONE\0"
	.byte	0x1e
	.byte	0x82
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.ascii "IS_MINUS_ONE\0"
	.byte	0x1e
	.byte	0x83
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x17
	.ascii "IS_EVEN\0"
	.byte	0x1e
	.byte	0x84
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x18
	.secrel32	LASF1
	.byte	0x1e
	.byte	0x85
	.byte	0x12
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x4b27
	.uleb128 0x19
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x7d
	.byte	0x7
	.long	0x4be9
	.uleb128 0x1a
	.ascii "FLAGS\0"
	.byte	0x1e
	.byte	0x86
	.byte	0x7
	.long	0x4ba6
	.uleb128 0x1a
	.ascii "__dummy\0"
	.byte	0x1e
	.byte	0x88
	.byte	0xf
	.long	0x49e6
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x1e
	.byte	0x8f
	.byte	0x26
	.long	0x4c01
	.uleb128 0x6
	.byte	0x4
	.long	0x4bab
	.uleb128 0x10
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x91
	.byte	0x10
	.long	0x4c83
	.uleb128 0x11
	.ascii "COUNT_MULTI64\0"
	.byte	0x1e
	.byte	0x93
	.byte	0xa
	.long	0x11d
	.byte	0
	.uleb128 0x11
	.ascii "COUNT_MULTI32\0"
	.byte	0x1e
	.byte	0x94
	.byte	0xa
	.long	0x11d
	.byte	0x4
	.uleb128 0x11
	.ascii "COUNT_DIV64\0"
	.byte	0x1e
	.byte	0x95
	.byte	0xa
	.long	0x11d
	.byte	0x8
	.uleb128 0x11
	.ascii "COUNT_DIV32\0"
	.byte	0x1e
	.byte	0x96
	.byte	0xa
	.long	0x11d
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1e
	.byte	0x97
	.byte	0x3
	.long	0x4c07
	.uleb128 0x10
	.ascii "__tag_PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x28
	.byte	0x1e
	.byte	0x99
	.byte	0x10
	.long	0x4d51
	.uleb128 0x11
	.ascii "DecimalDigits\0"
	.byte	0x1e
	.byte	0x9b
	.byte	0x9
	.long	0xe6
	.byte	0
	.uleb128 0x11
	.ascii "GroupSeparator\0"
	.byte	0x1e
	.byte	0x9c
	.byte	0xd
	.long	0x4d51
	.byte	0x4
	.uleb128 0x11
	.ascii "DecimalSeparator\0"
	.byte	0x1e
	.byte	0x9d
	.byte	0xd
	.long	0x4d51
	.byte	0xa
	.uleb128 0x11
	.ascii "PositiveSign\0"
	.byte	0x1e
	.byte	0x9e
	.byte	0xd
	.long	0x4d51
	.byte	0x10
	.uleb128 0x11
	.ascii "NegativeSign\0"
	.byte	0x1e
	.byte	0x9f
	.byte	0xd
	.long	0x4d51
	.byte	0x16
	.uleb128 0x11
	.ascii "GroupSizes\0"
	.byte	0x1e
	.byte	0xa0
	.byte	0xa
	.long	0x4d61
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.long	0xed
	.long	0x4d61
	.uleb128 0xd
	.long	0xd6
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xbf
	.long	0x4d71
	.uleb128 0xd
	.long	0xd6
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x1e
	.byte	0xa1
	.byte	0x3
	.long	0x4c9f
	.uleb128 0x1b
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x114
	.byte	0x1e
	.byte	0xa3
	.byte	0x10
	.long	0x530f
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x1e
	.byte	0xa6
	.byte	0xe
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x1e
	.byte	0xa7
	.byte	0xe
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x1e
	.byte	0xa8
	.byte	0xe
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x1e
	.byte	0xa9
	.byte	0xe
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x17
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x1e
	.byte	0xaa
	.byte	0xe
	.long	0xd6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x1e
	.byte	0xad
	.byte	0x2a
	.long	0x5320
	.byte	0x4
	.uleb128 0x11
	.ascii "From_I\0"
	.byte	0x1e
	.byte	0xb0
	.byte	0x35
	.long	0x5340
	.byte	0x8
	.uleb128 0x11
	.ascii "From_L\0"
	.byte	0x1e
	.byte	0xb3
	.byte	0x35
	.long	0x535a
	.byte	0xc
	.uleb128 0x11
	.ascii "Dispose\0"
	.byte	0x1e
	.byte	0xb6
	.byte	0x2a
	.long	0x536b
	.byte	0x10
	.uleb128 0x1c
	.secrel32	LASF3
	.byte	0x1e
	.byte	0xb9
	.byte	0x35
	.long	0x5385
	.byte	0x14
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x1e
	.byte	0xbc
	.byte	0x35
	.long	0x53a4
	.byte	0x18
	.uleb128 0x1c
	.secrel32	LASF5
	.byte	0x1e
	.byte	0xbd
	.byte	0x35
	.long	0x53ce
	.byte	0x1c
	.uleb128 0x11
	.ascii "FromByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xbe
	.byte	0x34
	.long	0x53f2
	.byte	0x20
	.uleb128 0x11
	.ascii "ToByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xbf
	.byte	0x34
	.long	0x541b
	.byte	0x24
	.uleb128 0x11
	.ascii "Clone_X\0"
	.byte	0x1e
	.byte	0xc2
	.byte	0x35
	.long	0x5435
	.byte	0x28
	.uleb128 0x11
	.ascii "To_X_I\0"
	.byte	0x1e
	.byte	0xc5
	.byte	0x35
	.long	0x5455
	.byte	0x2c
	.uleb128 0x11
	.ascii "To_X_L\0"
	.byte	0x1e
	.byte	0xc6
	.byte	0x35
	.long	0x5475
	.byte	0x30
	.uleb128 0x11
	.ascii "ToString\0"
	.byte	0x1e
	.byte	0xc9
	.byte	0x35
	.long	0x54a9
	.byte	0x34
	.uleb128 0x11
	.ascii "TryParse\0"
	.byte	0x1e
	.byte	0xcc
	.byte	0x35
	.long	0x54cd
	.byte	0x38
	.uleb128 0x11
	.ascii "Add_I_X\0"
	.byte	0x1e
	.byte	0xcf
	.byte	0x35
	.long	0x54ec
	.byte	0x3c
	.uleb128 0x11
	.ascii "Add_L_X\0"
	.byte	0x1e
	.byte	0xd0
	.byte	0x35
	.long	0x550b
	.byte	0x40
	.uleb128 0x11
	.ascii "Add_X_I\0"
	.byte	0x1e
	.byte	0xd1
	.byte	0x35
	.long	0x552a
	.byte	0x44
	.uleb128 0x11
	.ascii "Add_X_L\0"
	.byte	0x1e
	.byte	0xd2
	.byte	0x35
	.long	0x5549
	.byte	0x48
	.uleb128 0x11
	.ascii "Add_X_X\0"
	.byte	0x1e
	.byte	0xd3
	.byte	0x35
	.long	0x5568
	.byte	0x4c
	.uleb128 0x1c
	.secrel32	LASF6
	.byte	0x1e
	.byte	0xd6
	.byte	0x35
	.long	0x5587
	.byte	0x50
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x1e
	.byte	0xd7
	.byte	0x35
	.long	0x55a6
	.byte	0x54
	.uleb128 0x1c
	.secrel32	LASF8
	.byte	0x1e
	.byte	0xd8
	.byte	0x35
	.long	0x552a
	.byte	0x58
	.uleb128 0x1c
	.secrel32	LASF9
	.byte	0x1e
	.byte	0xd9
	.byte	0x35
	.long	0x5549
	.byte	0x5c
	.uleb128 0x1c
	.secrel32	LASF10
	.byte	0x1e
	.byte	0xda
	.byte	0x35
	.long	0x5568
	.byte	0x60
	.uleb128 0x1c
	.secrel32	LASF11
	.byte	0x1e
	.byte	0xdd
	.byte	0x35
	.long	0x54ec
	.byte	0x64
	.uleb128 0x1c
	.secrel32	LASF12
	.byte	0x1e
	.byte	0xde
	.byte	0x35
	.long	0x550b
	.byte	0x68
	.uleb128 0x1c
	.secrel32	LASF13
	.byte	0x1e
	.byte	0xdf
	.byte	0x35
	.long	0x552a
	.byte	0x6c
	.uleb128 0x1c
	.secrel32	LASF14
	.byte	0x1e
	.byte	0xe0
	.byte	0x35
	.long	0x5549
	.byte	0x70
	.uleb128 0x1c
	.secrel32	LASF15
	.byte	0x1e
	.byte	0xe1
	.byte	0x35
	.long	0x5568
	.byte	0x74
	.uleb128 0x1c
	.secrel32	LASF16
	.byte	0x1e
	.byte	0xe4
	.byte	0x35
	.long	0x55ca
	.byte	0x78
	.uleb128 0x1c
	.secrel32	LASF17
	.byte	0x1e
	.byte	0xe5
	.byte	0x35
	.long	0x55ee
	.byte	0x7c
	.uleb128 0x1c
	.secrel32	LASF18
	.byte	0x1e
	.byte	0xe6
	.byte	0x35
	.long	0x5612
	.byte	0x80
	.uleb128 0x1c
	.secrel32	LASF19
	.byte	0x1e
	.byte	0xe7
	.byte	0x35
	.long	0x5636
	.byte	0x84
	.uleb128 0x1c
	.secrel32	LASF20
	.byte	0x1e
	.byte	0xe8
	.byte	0x35
	.long	0x565a
	.byte	0x88
	.uleb128 0x11
	.ascii "LeftShift_X_I\0"
	.byte	0x1e
	.byte	0xeb
	.byte	0x35
	.long	0x552a
	.byte	0x8c
	.uleb128 0x11
	.ascii "RightShift_X_I\0"
	.byte	0x1e
	.byte	0xee
	.byte	0x35
	.long	0x552a
	.byte	0x90
	.uleb128 0x11
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x1e
	.byte	0xf1
	.byte	0x35
	.long	0x5587
	.byte	0x94
	.uleb128 0x11
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x1e
	.byte	0xf2
	.byte	0x35
	.long	0x55a6
	.byte	0x98
	.uleb128 0x11
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x1e
	.byte	0xf3
	.byte	0x35
	.long	0x5679
	.byte	0x9c
	.uleb128 0x11
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x1e
	.byte	0xf4
	.byte	0x35
	.long	0x5698
	.byte	0xa0
	.uleb128 0x11
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x1e
	.byte	0xf5
	.byte	0x35
	.long	0x5568
	.byte	0xa4
	.uleb128 0x11
	.ascii "BitwiseOr_I_X\0"
	.byte	0x1e
	.byte	0xf8
	.byte	0x35
	.long	0x54ec
	.byte	0xa8
	.uleb128 0x11
	.ascii "BitwiseOr_L_X\0"
	.byte	0x1e
	.byte	0xf9
	.byte	0x35
	.long	0x550b
	.byte	0xac
	.uleb128 0x11
	.ascii "BitwiseOr_X_I\0"
	.byte	0x1e
	.byte	0xfa
	.byte	0x35
	.long	0x552a
	.byte	0xb0
	.uleb128 0x11
	.ascii "BitwiseOr_X_L\0"
	.byte	0x1e
	.byte	0xfb
	.byte	0x35
	.long	0x5549
	.byte	0xb4
	.uleb128 0x11
	.ascii "BitwiseOr_X_X\0"
	.byte	0x1e
	.byte	0xfc
	.byte	0x35
	.long	0x5568
	.byte	0xb8
	.uleb128 0x11
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x1e
	.byte	0xff
	.byte	0x35
	.long	0x54ec
	.byte	0xbc
	.uleb128 0x9
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x1e
	.word	0x100
	.byte	0x35
	.long	0x550b
	.byte	0xc0
	.uleb128 0x9
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x1e
	.word	0x101
	.byte	0x35
	.long	0x552a
	.byte	0xc4
	.uleb128 0x9
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x1e
	.word	0x102
	.byte	0x35
	.long	0x5549
	.byte	0xc8
	.uleb128 0x9
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x1e
	.word	0x103
	.byte	0x35
	.long	0x5568
	.byte	0xcc
	.uleb128 0x8
	.secrel32	LASF21
	.byte	0x1e
	.word	0x106
	.byte	0x35
	.long	0x56bd
	.byte	0xd0
	.uleb128 0x8
	.secrel32	LASF22
	.byte	0x1e
	.word	0x107
	.byte	0x35
	.long	0x56dc
	.byte	0xd4
	.uleb128 0x8
	.secrel32	LASF23
	.byte	0x1e
	.word	0x108
	.byte	0x35
	.long	0x56fb
	.byte	0xd8
	.uleb128 0x8
	.secrel32	LASF24
	.byte	0x1e
	.word	0x109
	.byte	0x35
	.long	0x571a
	.byte	0xdc
	.uleb128 0x8
	.secrel32	LASF25
	.byte	0x1e
	.word	0x10a
	.byte	0x35
	.long	0x5739
	.byte	0xe0
	.uleb128 0x8
	.secrel32	LASF26
	.byte	0x1e
	.word	0x10d
	.byte	0x35
	.long	0x56bd
	.byte	0xe4
	.uleb128 0x8
	.secrel32	LASF27
	.byte	0x1e
	.word	0x10e
	.byte	0x35
	.long	0x56dc
	.byte	0xe8
	.uleb128 0x8
	.secrel32	LASF28
	.byte	0x1e
	.word	0x10f
	.byte	0x35
	.long	0x56fb
	.byte	0xec
	.uleb128 0x8
	.secrel32	LASF29
	.byte	0x1e
	.word	0x110
	.byte	0x35
	.long	0x571a
	.byte	0xf0
	.uleb128 0x8
	.secrel32	LASF30
	.byte	0x1e
	.word	0x111
	.byte	0x35
	.long	0x5739
	.byte	0xf4
	.uleb128 0x8
	.secrel32	LASF31
	.byte	0x1e
	.word	0x114
	.byte	0x35
	.long	0x54ec
	.byte	0xf8
	.uleb128 0x8
	.secrel32	LASF32
	.byte	0x1e
	.word	0x115
	.byte	0x35
	.long	0x550b
	.byte	0xfc
	.uleb128 0x1d
	.secrel32	LASF33
	.byte	0x1e
	.word	0x116
	.byte	0x35
	.long	0x552a
	.word	0x100
	.uleb128 0x1d
	.secrel32	LASF34
	.byte	0x1e
	.word	0x117
	.byte	0x35
	.long	0x5549
	.word	0x104
	.uleb128 0x1d
	.secrel32	LASF35
	.byte	0x1e
	.word	0x118
	.byte	0x35
	.long	0x5568
	.word	0x108
	.uleb128 0x1e
	.ascii "Pow_X_I\0"
	.byte	0x1e
	.word	0x11b
	.byte	0x35
	.long	0x552a
	.word	0x10c
	.uleb128 0x1e
	.ascii "ModPow_X_X_X\0"
	.byte	0x1e
	.word	0x11e
	.byte	0x35
	.long	0x575d
	.word	0x110
	.byte	0
	.uleb128 0xe
	.long	0x531a
	.uleb128 0xf
	.long	0x531a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c83
	.uleb128 0x6
	.byte	0x4
	.long	0x530f
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x533a
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4b09
	.uleb128 0x6
	.byte	0x4
	.long	0x5326
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x535a
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5346
	.uleb128 0xe
	.long	0x536b
	.uleb128 0xf
	.long	0x4b09
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5360
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5385
	.uleb128 0xf
	.long	0x4a22
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5371
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x53a4
	.uleb128 0xf
	.long	0x726
	.uleb128 0xf
	.long	0xc7
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x538b
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x53c8
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x726
	.uleb128 0xf
	.long	0xc7
	.uleb128 0xf
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc7
	.uleb128 0x6
	.byte	0x4
	.long	0x53aa
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x53f2
	.uleb128 0xf
	.long	0x726
	.uleb128 0xf
	.long	0xc7
	.uleb128 0xf
	.long	0x430
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x53d4
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x541b
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x726
	.uleb128 0xf
	.long	0xc7
	.uleb128 0xf
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x53f8
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5435
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5421
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x544f
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x544f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x49e6
	.uleb128 0x6
	.byte	0x4
	.long	0x543b
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x546f
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x546f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x49f8
	.uleb128 0x6
	.byte	0x4
	.long	0x545b
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x54a3
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x436
	.uleb128 0xf
	.long	0xc7
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0xe6
	.uleb128 0xf
	.long	0x54a3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4d71
	.uleb128 0x6
	.byte	0x4
	.long	0x547b
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x54cd
	.uleb128 0xf
	.long	0x436
	.uleb128 0xf
	.long	0x4a42
	.uleb128 0xf
	.long	0x54a3
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x54af
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x54ec
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x54d3
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x550b
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x54f2
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x552a
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5511
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5549
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5530
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5568
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x554f
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5587
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x544f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x556e
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x55a6
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x546f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x558d
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x55ca
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x544f
	.uleb128 0xf
	.long	0x544f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x55ac
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x55ee
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x546f
	.uleb128 0xf
	.long	0x546f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x55d0
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5612
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x533a
	.uleb128 0xf
	.long	0x544f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x55f4
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5636
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x533a
	.uleb128 0xf
	.long	0x546f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5618
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x565a
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x533a
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x563c
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5679
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x544f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5660
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5698
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x546f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x567f
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x56b7
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x49c4
	.uleb128 0x6
	.byte	0x4
	.long	0x569e
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x56dc
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56c3
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x56fb
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49e6
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56e2
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x571a
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x49f8
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5701
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5739
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5720
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x575d
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x573f
	.uleb128 0x5
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x120
	.byte	0x3
	.long	0x4d92
	.uleb128 0x20
	.ascii "__tag_PMC_SINT_ENTRY_POINTS\0"
	.word	0x204
	.byte	0x1e
	.word	0x122
	.byte	0x10
	.long	0x5c09
	.uleb128 0x9
	.ascii "UINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x125
	.byte	0x1b
	.long	0x5763
	.byte	0
	.uleb128 0x1d
	.secrel32	LASF2
	.byte	0x1e
	.word	0x128
	.byte	0x2a
	.long	0x5320
	.word	0x114
	.uleb128 0x1e
	.ascii "From_I\0"
	.byte	0x1e
	.word	0x12b
	.byte	0x35
	.long	0x5c23
	.word	0x118
	.uleb128 0x1e
	.ascii "From_L\0"
	.byte	0x1e
	.word	0x12e
	.byte	0x35
	.long	0x5c3d
	.word	0x11c
	.uleb128 0x1e
	.ascii "Dispose\0"
	.byte	0x1e
	.word	0x131
	.byte	0x2a
	.long	0x5c4e
	.word	0x120
	.uleb128 0x1d
	.secrel32	LASF3
	.byte	0x1e
	.word	0x134
	.byte	0x35
	.long	0x5c68
	.word	0x124
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0x1e
	.word	0x137
	.byte	0x35
	.long	0x5c87
	.word	0x128
	.uleb128 0x1d
	.secrel32	LASF5
	.byte	0x1e
	.word	0x138
	.byte	0x35
	.long	0x5cab
	.word	0x12c
	.uleb128 0x1e
	.ascii "Clone_X\0"
	.byte	0x1e
	.word	0x13b
	.byte	0x35
	.long	0x5cc5
	.word	0x130
	.uleb128 0x1e
	.ascii "To_X_I\0"
	.byte	0x1e
	.word	0x13e
	.byte	0x35
	.long	0x5cdf
	.word	0x134
	.uleb128 0x1e
	.ascii "To_X_L\0"
	.byte	0x1e
	.word	0x13f
	.byte	0x35
	.long	0x5cff
	.word	0x138
	.uleb128 0x1e
	.ascii "Negate_X\0"
	.byte	0x1e
	.word	0x142
	.byte	0x35
	.long	0x5cc5
	.word	0x13c
	.uleb128 0x1e
	.ascii "Add_I_X\0"
	.byte	0x1e
	.word	0x14c
	.byte	0x35
	.long	0x5d1e
	.word	0x140
	.uleb128 0x1e
	.ascii "Add_L_X\0"
	.byte	0x1e
	.word	0x14d
	.byte	0x35
	.long	0x5d3d
	.word	0x144
	.uleb128 0x1e
	.ascii "Add_UX_X\0"
	.byte	0x1e
	.word	0x14e
	.byte	0x35
	.long	0x5d5c
	.word	0x148
	.uleb128 0x1e
	.ascii "Add_X_I\0"
	.byte	0x1e
	.word	0x14f
	.byte	0x35
	.long	0x5d7b
	.word	0x14c
	.uleb128 0x1e
	.ascii "Add_X_L\0"
	.byte	0x1e
	.word	0x150
	.byte	0x35
	.long	0x5d9a
	.word	0x150
	.uleb128 0x1e
	.ascii "Add_X_UX\0"
	.byte	0x1e
	.word	0x151
	.byte	0x35
	.long	0x5db9
	.word	0x154
	.uleb128 0x1e
	.ascii "Add_X_X\0"
	.byte	0x1e
	.word	0x152
	.byte	0x35
	.long	0x5dd8
	.word	0x158
	.uleb128 0x1d
	.secrel32	LASF6
	.byte	0x1e
	.word	0x155
	.byte	0x35
	.long	0x5d1e
	.word	0x15c
	.uleb128 0x1d
	.secrel32	LASF7
	.byte	0x1e
	.word	0x156
	.byte	0x35
	.long	0x5d3d
	.word	0x160
	.uleb128 0x1e
	.ascii "Subtruct_UX_X\0"
	.byte	0x1e
	.word	0x157
	.byte	0x35
	.long	0x5d5c
	.word	0x164
	.uleb128 0x1d
	.secrel32	LASF8
	.byte	0x1e
	.word	0x158
	.byte	0x35
	.long	0x5d7b
	.word	0x168
	.uleb128 0x1d
	.secrel32	LASF9
	.byte	0x1e
	.word	0x159
	.byte	0x35
	.long	0x5d9a
	.word	0x16c
	.uleb128 0x1e
	.ascii "Subtruct_X_UX\0"
	.byte	0x1e
	.word	0x15a
	.byte	0x35
	.long	0x5db9
	.word	0x170
	.uleb128 0x1d
	.secrel32	LASF10
	.byte	0x1e
	.word	0x15b
	.byte	0x35
	.long	0x5dd8
	.word	0x174
	.uleb128 0x1d
	.secrel32	LASF11
	.byte	0x1e
	.word	0x15e
	.byte	0x35
	.long	0x5d1e
	.word	0x178
	.uleb128 0x1d
	.secrel32	LASF12
	.byte	0x1e
	.word	0x15f
	.byte	0x35
	.long	0x5d3d
	.word	0x17c
	.uleb128 0x1e
	.ascii "Multiply_UX_X\0"
	.byte	0x1e
	.word	0x160
	.byte	0x35
	.long	0x5d5c
	.word	0x180
	.uleb128 0x1d
	.secrel32	LASF13
	.byte	0x1e
	.word	0x161
	.byte	0x35
	.long	0x5d7b
	.word	0x184
	.uleb128 0x1d
	.secrel32	LASF14
	.byte	0x1e
	.word	0x162
	.byte	0x35
	.long	0x5d9a
	.word	0x188
	.uleb128 0x1e
	.ascii "Multiply_X_UX\0"
	.byte	0x1e
	.word	0x163
	.byte	0x35
	.long	0x5db9
	.word	0x18c
	.uleb128 0x1d
	.secrel32	LASF15
	.byte	0x1e
	.word	0x164
	.byte	0x35
	.long	0x5dd8
	.word	0x190
	.uleb128 0x1d
	.secrel32	LASF16
	.byte	0x1e
	.word	0x167
	.byte	0x35
	.long	0x5dfc
	.word	0x194
	.uleb128 0x1d
	.secrel32	LASF17
	.byte	0x1e
	.word	0x168
	.byte	0x35
	.long	0x5e20
	.word	0x198
	.uleb128 0x1e
	.ascii "DivRem_UX_X\0"
	.byte	0x1e
	.word	0x169
	.byte	0x35
	.long	0x5e44
	.word	0x19c
	.uleb128 0x1d
	.secrel32	LASF18
	.byte	0x1e
	.word	0x16a
	.byte	0x35
	.long	0x5e68
	.word	0x1a0
	.uleb128 0x1d
	.secrel32	LASF19
	.byte	0x1e
	.word	0x16b
	.byte	0x35
	.long	0x5e8c
	.word	0x1a4
	.uleb128 0x1e
	.ascii "DivRem_X_UX\0"
	.byte	0x1e
	.word	0x16c
	.byte	0x35
	.long	0x5eb0
	.word	0x1a8
	.uleb128 0x1d
	.secrel32	LASF20
	.byte	0x1e
	.word	0x16d
	.byte	0x35
	.long	0x5ed4
	.word	0x1ac
	.uleb128 0x1d
	.secrel32	LASF21
	.byte	0x1e
	.word	0x18d
	.byte	0x35
	.long	0x5ef3
	.word	0x1b0
	.uleb128 0x1d
	.secrel32	LASF22
	.byte	0x1e
	.word	0x18e
	.byte	0x35
	.long	0x5f12
	.word	0x1b4
	.uleb128 0x1e
	.ascii "Compare_UX_X\0"
	.byte	0x1e
	.word	0x18f
	.byte	0x35
	.long	0x5f31
	.word	0x1b8
	.uleb128 0x1d
	.secrel32	LASF23
	.byte	0x1e
	.word	0x190
	.byte	0x35
	.long	0x5f50
	.word	0x1bc
	.uleb128 0x1d
	.secrel32	LASF24
	.byte	0x1e
	.word	0x191
	.byte	0x35
	.long	0x5f6f
	.word	0x1c0
	.uleb128 0x1e
	.ascii "Compare_X_UX\0"
	.byte	0x1e
	.word	0x192
	.byte	0x35
	.long	0x5f8e
	.word	0x1c4
	.uleb128 0x1d
	.secrel32	LASF25
	.byte	0x1e
	.word	0x193
	.byte	0x35
	.long	0x5fad
	.word	0x1c8
	.uleb128 0x1d
	.secrel32	LASF26
	.byte	0x1e
	.word	0x196
	.byte	0x35
	.long	0x5ef3
	.word	0x1cc
	.uleb128 0x1d
	.secrel32	LASF27
	.byte	0x1e
	.word	0x197
	.byte	0x35
	.long	0x5f12
	.word	0x1d0
	.uleb128 0x1e
	.ascii "Equals_UX_X\0"
	.byte	0x1e
	.word	0x198
	.byte	0x35
	.long	0x5f31
	.word	0x1d4
	.uleb128 0x1d
	.secrel32	LASF28
	.byte	0x1e
	.word	0x199
	.byte	0x35
	.long	0x5f50
	.word	0x1d8
	.uleb128 0x1d
	.secrel32	LASF29
	.byte	0x1e
	.word	0x19a
	.byte	0x35
	.long	0x5f6f
	.word	0x1dc
	.uleb128 0x1e
	.ascii "Equals_X_UX\0"
	.byte	0x1e
	.word	0x19b
	.byte	0x35
	.long	0x5f8e
	.word	0x1e0
	.uleb128 0x1d
	.secrel32	LASF30
	.byte	0x1e
	.word	0x19c
	.byte	0x35
	.long	0x5fad
	.word	0x1e4
	.uleb128 0x1d
	.secrel32	LASF31
	.byte	0x1e
	.word	0x19f
	.byte	0x35
	.long	0x5fcc
	.word	0x1e8
	.uleb128 0x1d
	.secrel32	LASF32
	.byte	0x1e
	.word	0x1a0
	.byte	0x35
	.long	0x5feb
	.word	0x1ec
	.uleb128 0x1e
	.ascii "GreatestCommonDivisor_UX_X\0"
	.byte	0x1e
	.word	0x1a1
	.byte	0x35
	.long	0x600a
	.word	0x1f0
	.uleb128 0x1d
	.secrel32	LASF33
	.byte	0x1e
	.word	0x1a2
	.byte	0x35
	.long	0x6029
	.word	0x1f4
	.uleb128 0x1d
	.secrel32	LASF34
	.byte	0x1e
	.word	0x1a3
	.byte	0x35
	.long	0x6048
	.word	0x1f8
	.uleb128 0x1e
	.ascii "GreatestCommonDivisor_X_UX\0"
	.byte	0x1e
	.word	0x1a4
	.byte	0x35
	.long	0x6067
	.word	0x1fc
	.uleb128 0x1d
	.secrel32	LASF35
	.byte	0x1e
	.word	0x1a5
	.byte	0x35
	.long	0x6086
	.word	0x200
	.byte	0
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5c1d
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4be9
	.uleb128 0x6
	.byte	0x4
	.long	0x5c09
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5c3d
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c29
	.uleb128 0xe
	.long	0x5c4e
	.uleb128 0xf
	.long	0x4be9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c43
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5c68
	.uleb128 0xf
	.long	0x4a22
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c54
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5c87
	.uleb128 0xf
	.long	0x726
	.uleb128 0xf
	.long	0xc7
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c6e
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5cab
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x726
	.uleb128 0xf
	.long	0xc7
	.uleb128 0xf
	.long	0x53c8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c8d
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5cc5
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5cb1
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5cdf
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ccb
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5cf9
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5cf9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x49d5
	.uleb128 0x6
	.byte	0x4
	.long	0x5ce5
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5d1e
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d05
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5d3d
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d24
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5d5c
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d43
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5d7b
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d62
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5d9a
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d81
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5db9
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5da0
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5dd8
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5dbf
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5dfc
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5dde
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5e20
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5e02
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5e44
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5e26
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5e68
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x5c1d
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5e4a
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5e8c
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x5c1d
	.uleb128 0xf
	.long	0x5cf9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5e6e
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5eb0
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x5c1d
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5e92
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5ed4
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x5c1d
	.uleb128 0xf
	.long	0x5c1d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5eb6
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5ef3
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5eda
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5f12
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ef9
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5f31
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f18
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5f50
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f37
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5f6f
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f56
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5f8e
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f75
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5fad
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x56b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f94
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5fcc
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5fb3
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x5feb
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5fd2
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x600a
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ff1
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x6029
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49c4
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6010
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x6048
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x49d5
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x602f
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x6067
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4b09
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x604e
	.uleb128 0x1f
	.long	0x4a0a
	.long	0x6086
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x4be9
	.uleb128 0xf
	.long	0x533a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x606d
	.uleb128 0x5
	.ascii "PMC_SINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x1a6
	.byte	0x3
	.long	0x5782
	.uleb128 0x10
	.ascii "__tag_PMC_DEBUG_ENVIRONMENT\0"
	.byte	0x8
	.byte	0x1
	.byte	0x23
	.byte	0x10
	.long	0x60ed
	.uleb128 0x11
	.ascii "log\0"
	.byte	0x1
	.byte	0x25
	.byte	0x27
	.long	0x60fd
	.byte	0
	.uleb128 0x11
	.ascii "pause\0"
	.byte	0x1
	.byte	0x26
	.byte	0x28
	.long	0x1d53
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.long	0xe6
	.long	0x60fd
	.uleb128 0xf
	.long	0x1d5a
	.uleb128 0x21
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x60ed
	.uleb128 0x3
	.ascii "PMC_DEBUG_ENVIRONMENT\0"
	.byte	0x1
	.byte	0x27
	.byte	0x3
	.long	0x60ab
	.uleb128 0x22
	.ascii "TEST_DivRem_X_X\0"
	.byte	0x2
	.byte	0xd2
	.byte	0x6
	.long	LFB78
	.long	LFE78-LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x62a8
	.uleb128 0x23
	.ascii "env\0"
	.byte	0x2
	.byte	0xd2
	.byte	0x2d
	.long	0x62a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "ep\0"
	.byte	0x2
	.byte	0xd2
	.byte	0x49
	.long	0x62ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "no\0"
	.byte	0x2
	.byte	0xd2
	.byte	0x51
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF36
	.byte	0x2
	.byte	0xd2
	.byte	0x63
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.secrel32	LASF37
	.byte	0x2
	.byte	0xd2
	.byte	0x71
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.secrel32	LASF38
	.byte	0x2
	.byte	0xd2
	.byte	0x8b
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x24
	.secrel32	LASF39
	.byte	0x2
	.byte	0xd2
	.byte	0x99
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x24
	.secrel32	LASF40
	.byte	0x2
	.byte	0xd2
	.byte	0xb5
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.secrel32	LASF41
	.byte	0x2
	.byte	0xd2
	.byte	0xd8
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.secrel32	LASF42
	.byte	0x2
	.byte	0xd2
	.byte	0xee
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x25
	.secrel32	LASF43
	.byte	0x2
	.byte	0xd2
	.word	0x110
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x25
	.secrel32	LASF44
	.byte	0x2
	.byte	0xd2
	.word	0x126
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.byte	0xd4
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.byte	0xd5
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.ascii "q\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.ascii "r\0"
	.byte	0x2
	.byte	0xd7
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.secrel32	LASF45
	.byte	0x2
	.byte	0xd8
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x27
	.secrel32	LASF46
	.byte	0x2
	.byte	0xd9
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x27
	.secrel32	LASF47
	.byte	0x2
	.byte	0xda
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x27
	.secrel32	LASF48
	.byte	0x2
	.byte	0xdb
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x27
	.secrel32	LASF49
	.byte	0x2
	.byte	0xdc
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.secrel32	LASF50
	.byte	0x2
	.byte	0xdd
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.secrel32	LASF51
	.byte	0x2
	.byte	0xde
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.secrel32	LASF52
	.byte	0x2
	.byte	0xdf
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6103
	.uleb128 0x6
	.byte	0x4
	.long	0x608c
	.uleb128 0x22
	.ascii "TEST_DivRem_X_UX\0"
	.byte	0x2
	.byte	0xaf
	.byte	0x6
	.long	LFB77
	.long	LFE77-LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x643c
	.uleb128 0x23
	.ascii "env\0"
	.byte	0x2
	.byte	0xaf
	.byte	0x2e
	.long	0x62a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "ep\0"
	.byte	0x2
	.byte	0xaf
	.byte	0x4a
	.long	0x62ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "no\0"
	.byte	0x2
	.byte	0xaf
	.byte	0x52
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF36
	.byte	0x2
	.byte	0xaf
	.byte	0x64
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.secrel32	LASF37
	.byte	0x2
	.byte	0xaf
	.byte	0x72
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.secrel32	LASF38
	.byte	0x2
	.byte	0xaf
	.byte	0x8c
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x24
	.secrel32	LASF39
	.byte	0x2
	.byte	0xaf
	.byte	0x9a
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x24
	.secrel32	LASF40
	.byte	0x2
	.byte	0xaf
	.byte	0xb6
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.secrel32	LASF41
	.byte	0x2
	.byte	0xaf
	.byte	0xd9
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.secrel32	LASF42
	.byte	0x2
	.byte	0xaf
	.byte	0xef
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x25
	.secrel32	LASF43
	.byte	0x2
	.byte	0xaf
	.word	0x111
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x25
	.secrel32	LASF44
	.byte	0x2
	.byte	0xaf
	.word	0x127
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.byte	0xb1
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.byte	0xb2
	.byte	0x15
	.long	0x4b09
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.ascii "q\0"
	.byte	0x2
	.byte	0xb3
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.ascii "r\0"
	.byte	0x2
	.byte	0xb4
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.secrel32	LASF45
	.byte	0x2
	.byte	0xb5
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x27
	.secrel32	LASF46
	.byte	0x2
	.byte	0xb6
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x27
	.secrel32	LASF47
	.byte	0x2
	.byte	0xb7
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x27
	.secrel32	LASF48
	.byte	0x2
	.byte	0xb8
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x27
	.secrel32	LASF49
	.byte	0x2
	.byte	0xb9
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.secrel32	LASF50
	.byte	0x2
	.byte	0xba
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.secrel32	LASF51
	.byte	0x2
	.byte	0xbb
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.secrel32	LASF52
	.byte	0x2
	.byte	0xbc
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.ascii "TEST_DivRem_X_L\0"
	.byte	0x2
	.byte	0x97
	.byte	0x6
	.long	LFB76
	.long	LFE76-LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x656a
	.uleb128 0x23
	.ascii "env\0"
	.byte	0x2
	.byte	0x97
	.byte	0x2d
	.long	0x62a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "ep\0"
	.byte	0x2
	.byte	0x97
	.byte	0x49
	.long	0x62ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "no\0"
	.byte	0x2
	.byte	0x97
	.byte	0x51
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF36
	.byte	0x2
	.byte	0x97
	.byte	0x64
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.secrel32	LASF37
	.byte	0x2
	.byte	0x97
	.byte	0x72
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.ascii "v\0"
	.byte	0x2
	.byte	0x97
	.byte	0x85
	.long	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x24
	.secrel32	LASF40
	.byte	0x2
	.byte	0x97
	.byte	0x98
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.secrel32	LASF41
	.byte	0x2
	.byte	0x97
	.byte	0xbb
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.secrel32	LASF42
	.byte	0x2
	.byte	0x97
	.byte	0xd1
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x24
	.secrel32	LASF53
	.byte	0x2
	.byte	0x97
	.byte	0xed
	.long	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.byte	0x99
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.ascii "q\0"
	.byte	0x2
	.byte	0x9a
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.secrel32	LASF45
	.byte	0x2
	.byte	0x9b
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x27
	.secrel32	LASF46
	.byte	0x2
	.byte	0x9c
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x27
	.secrel32	LASF54
	.byte	0x2
	.byte	0x9d
	.byte	0xc
	.long	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x27
	.secrel32	LASF49
	.byte	0x2
	.byte	0x9e
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.secrel32	LASF50
	.byte	0x2
	.byte	0x9f
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.secrel32	LASF55
	.byte	0x2
	.byte	0xa0
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.ascii "TEST_DivRem_X_I\0"
	.byte	0x2
	.byte	0x7f
	.byte	0x6
	.long	LFB75
	.long	LFE75-LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x6696
	.uleb128 0x23
	.ascii "env\0"
	.byte	0x2
	.byte	0x7f
	.byte	0x2d
	.long	0x62a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "ep\0"
	.byte	0x2
	.byte	0x7f
	.byte	0x49
	.long	0x62ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "no\0"
	.byte	0x2
	.byte	0x7f
	.byte	0x51
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF36
	.byte	0x2
	.byte	0x7f
	.byte	0x64
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.secrel32	LASF37
	.byte	0x2
	.byte	0x7f
	.byte	0x72
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.ascii "v\0"
	.byte	0x2
	.byte	0x7f
	.byte	0x85
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x24
	.secrel32	LASF40
	.byte	0x2
	.byte	0x7f
	.byte	0x98
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x24
	.secrel32	LASF41
	.byte	0x2
	.byte	0x7f
	.byte	0xbb
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.secrel32	LASF42
	.byte	0x2
	.byte	0x7f
	.byte	0xd1
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.secrel32	LASF53
	.byte	0x2
	.byte	0x7f
	.byte	0xed
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.byte	0x81
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.ascii "q\0"
	.byte	0x2
	.byte	0x82
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.secrel32	LASF45
	.byte	0x2
	.byte	0x83
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x27
	.secrel32	LASF46
	.byte	0x2
	.byte	0x84
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.secrel32	LASF54
	.byte	0x2
	.byte	0x85
	.byte	0xc
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x27
	.secrel32	LASF49
	.byte	0x2
	.byte	0x86
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.secrel32	LASF50
	.byte	0x2
	.byte	0x87
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.secrel32	LASF55
	.byte	0x2
	.byte	0x88
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.ascii "TEST_DivRem_UX_X\0"
	.byte	0x2
	.byte	0x5c
	.byte	0x6
	.long	LFB74
	.long	LFE74-LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x681e
	.uleb128 0x23
	.ascii "env\0"
	.byte	0x2
	.byte	0x5c
	.byte	0x2e
	.long	0x62a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "ep\0"
	.byte	0x2
	.byte	0x5c
	.byte	0x4a
	.long	0x62ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "no\0"
	.byte	0x2
	.byte	0x5c
	.byte	0x52
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.secrel32	LASF36
	.byte	0x2
	.byte	0x5c
	.byte	0x64
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.secrel32	LASF37
	.byte	0x2
	.byte	0x5c
	.byte	0x72
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.secrel32	LASF38
	.byte	0x2
	.byte	0x5c
	.byte	0x8c
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x24
	.secrel32	LASF39
	.byte	0x2
	.byte	0x5c
	.byte	0x9a
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x24
	.secrel32	LASF40
	.byte	0x2
	.byte	0x5c
	.byte	0xb6
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.secrel32	LASF41
	.byte	0x2
	.byte	0x5c
	.byte	0xd9
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.secrel32	LASF42
	.byte	0x2
	.byte	0x5c
	.byte	0xef
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x25
	.secrel32	LASF43
	.byte	0x2
	.byte	0x5c
	.word	0x111
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x25
	.secrel32	LASF44
	.byte	0x2
	.byte	0x5c
	.word	0x127
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.byte	0x5e
	.byte	0x15
	.long	0x4b09
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.byte	0x5f
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.ascii "q\0"
	.byte	0x2
	.byte	0x60
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.ascii "r\0"
	.byte	0x2
	.byte	0x61
	.byte	0x15
	.long	0x4b09
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.secrel32	LASF45
	.byte	0x2
	.byte	0x62
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x27
	.secrel32	LASF46
	.byte	0x2
	.byte	0x63
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x27
	.secrel32	LASF47
	.byte	0x2
	.byte	0x64
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x27
	.secrel32	LASF48
	.byte	0x2
	.byte	0x65
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x27
	.secrel32	LASF49
	.byte	0x2
	.byte	0x66
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.secrel32	LASF50
	.byte	0x2
	.byte	0x67
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.secrel32	LASF51
	.byte	0x2
	.byte	0x68
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.secrel32	LASF52
	.byte	0x2
	.byte	0x69
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.ascii "TEST_DivRem_L_X\0"
	.byte	0x2
	.byte	0x3e
	.byte	0x6
	.long	LFB73
	.long	LFE73-LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x6978
	.uleb128 0x23
	.ascii "env\0"
	.byte	0x2
	.byte	0x3e
	.byte	0x2d
	.long	0x62a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "ep\0"
	.byte	0x2
	.byte	0x3e
	.byte	0x49
	.long	0x62ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "no\0"
	.byte	0x2
	.byte	0x3e
	.byte	0x51
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x2
	.byte	0x3e
	.byte	0x5c
	.long	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x24
	.secrel32	LASF38
	.byte	0x2
	.byte	0x3e
	.byte	0x6e
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x24
	.secrel32	LASF39
	.byte	0x2
	.byte	0x3e
	.byte	0x7c
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x24
	.secrel32	LASF40
	.byte	0x2
	.byte	0x3e
	.byte	0x98
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.secrel32	LASF41
	.byte	0x2
	.byte	0x3e
	.byte	0xbb
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.secrel32	LASF42
	.byte	0x2
	.byte	0x3e
	.byte	0xd1
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x24
	.secrel32	LASF43
	.byte	0x2
	.byte	0x3e
	.byte	0xf3
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x25
	.secrel32	LASF44
	.byte	0x2
	.byte	0x3e
	.word	0x109
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.byte	0x40
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.ascii "q\0"
	.byte	0x2
	.byte	0x41
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii "r\0"
	.byte	0x2
	.byte	0x42
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.secrel32	LASF45
	.byte	0x2
	.byte	0x43
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.secrel32	LASF46
	.byte	0x2
	.byte	0x44
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x27
	.secrel32	LASF47
	.byte	0x2
	.byte	0x45
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x27
	.secrel32	LASF48
	.byte	0x2
	.byte	0x46
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x27
	.secrel32	LASF49
	.byte	0x2
	.byte	0x47
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.secrel32	LASF51
	.byte	0x2
	.byte	0x48
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.secrel32	LASF52
	.byte	0x2
	.byte	0x49
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.ascii "TEST_DivRem_I_X\0"
	.byte	0x2
	.byte	0x20
	.byte	0x6
	.long	LFB72
	.long	LFE72-LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ad1
	.uleb128 0x23
	.ascii "env\0"
	.byte	0x2
	.byte	0x20
	.byte	0x2d
	.long	0x62a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "ep\0"
	.byte	0x2
	.byte	0x20
	.byte	0x49
	.long	0x62ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "no\0"
	.byte	0x2
	.byte	0x20
	.byte	0x51
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.ascii "u\0"
	.byte	0x2
	.byte	0x20
	.byte	0x5c
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.secrel32	LASF38
	.byte	0x2
	.byte	0x20
	.byte	0x6e
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.secrel32	LASF39
	.byte	0x2
	.byte	0x20
	.byte	0x7c
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x24
	.secrel32	LASF40
	.byte	0x2
	.byte	0x20
	.byte	0x98
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x24
	.secrel32	LASF41
	.byte	0x2
	.byte	0x20
	.byte	0xbb
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.secrel32	LASF42
	.byte	0x2
	.byte	0x20
	.byte	0xd1
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.secrel32	LASF43
	.byte	0x2
	.byte	0x20
	.byte	0xf3
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x25
	.secrel32	LASF44
	.byte	0x2
	.byte	0x20
	.word	0x109
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.ascii "q\0"
	.byte	0x2
	.byte	0x23
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.ascii "r\0"
	.byte	0x2
	.byte	0x24
	.byte	0x15
	.long	0x4be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.secrel32	LASF45
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.secrel32	LASF46
	.byte	0x2
	.byte	0x26
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x27
	.secrel32	LASF47
	.byte	0x2
	.byte	0x27
	.byte	0x13
	.long	0x1d2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x27
	.secrel32	LASF48
	.byte	0x2
	.byte	0x28
	.byte	0xc
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x27
	.secrel32	LASF49
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.secrel32	LASF51
	.byte	0x2
	.byte	0x2a
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.secrel32	LASF52
	.byte	0x2
	.byte	0x2b
	.byte	0x15
	.long	0x4a0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.ascii "_EQUALS_MEMORY\0"
	.byte	0x1
	.byte	0x96
	.byte	0x15
	.long	0xe6
	.long	LFB71
	.long	LFE71-LFB71
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.ascii "buffer1\0"
	.byte	0x1
	.byte	0x96
	.byte	0x33
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.ascii "count1\0"
	.byte	0x1
	.byte	0x96
	.byte	0x43
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.ascii "buffer2\0"
	.byte	0x1
	.byte	0x96
	.byte	0x5a
	.long	0x726
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.ascii "count2\0"
	.byte	0x1
	.byte	0x96
	.byte	0x6a
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
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
	.uleb128 0x28
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
LASF28:
	.ascii "Equals_X_I\0"
LASF37:
	.ascii "u_buf_size\0"
LASF29:
	.ascii "Equals_X_L\0"
LASF44:
	.ascii "desired_r_buf_size\0"
LASF7:
	.ascii "Subtruct_L_X\0"
LASF2:
	.ascii "GetStatisticsInfo\0"
LASF33:
	.ascii "GreatestCommonDivisor_X_I\0"
LASF34:
	.ascii "GreatestCommonDivisor_X_L\0"
LASF50:
	.ascii "u_result\0"
LASF30:
	.ascii "Equals_X_X\0"
LASF45:
	.ascii "actual_q_buf\0"
LASF4:
	.ascii "FromByteArray\0"
LASF14:
	.ascii "Multiply_X_L\0"
LASF0:
	.ascii "refcount\0"
LASF12:
	.ascii "Multiply_L_X\0"
LASF35:
	.ascii "GreatestCommonDivisor_X_X\0"
LASF16:
	.ascii "DivRem_I_X\0"
LASF41:
	.ascii "desired_q_buf\0"
LASF21:
	.ascii "Compare_I_X\0"
LASF32:
	.ascii "GreatestCommonDivisor_L_X\0"
LASF48:
	.ascii "actual_r_buf_size\0"
LASF40:
	.ascii "desired_return_code\0"
LASF49:
	.ascii "result\0"
LASF6:
	.ascii "Subtruct_I_X\0"
LASF54:
	.ascii "actual_r\0"
LASF39:
	.ascii "v_buf_size\0"
LASF52:
	.ascii "q_r_result\0"
LASF27:
	.ascii "Equals_L_X\0"
LASF18:
	.ascii "DivRem_X_I\0"
LASF53:
	.ascii "desired_r\0"
LASF19:
	.ascii "DivRem_X_L\0"
LASF36:
	.ascii "u_buf\0"
LASF47:
	.ascii "actual_r_buf\0"
LASF23:
	.ascii "Compare_X_I\0"
LASF24:
	.ascii "Compare_X_L\0"
LASF20:
	.ascii "DivRem_X_X\0"
LASF3:
	.ascii "GetConstantValue_I\0"
LASF25:
	.ascii "Compare_X_X\0"
LASF11:
	.ascii "Multiply_I_X\0"
LASF8:
	.ascii "Subtruct_X_I\0"
LASF9:
	.ascii "Subtruct_X_L\0"
LASF42:
	.ascii "desired_q_buf_size\0"
LASF43:
	.ascii "desired_r_buf\0"
LASF10:
	.ascii "Subtruct_X_X\0"
LASF51:
	.ascii "v_result\0"
LASF55:
	.ascii "q_result\0"
LASF13:
	.ascii "Multiply_X_I\0"
LASF26:
	.ascii "Equals_I_X\0"
LASF5:
	.ascii "ToByteArray\0"
LASF38:
	.ascii "v_buf\0"
LASF31:
	.ascii "GreatestCommonDivisor_I_X\0"
LASF1:
	.ascii "IS_POWER_OF_TWO\0"
LASF15:
	.ascii "Multiply_X_X\0"
LASF17:
	.ascii "DivRem_L_X\0"
LASF46:
	.ascii "actual_q_buf_size\0"
LASF22:
	.ascii "Compare_L_X\0"
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_FormatTestMesssage;	.scl	2;	.type	32;	.endef
	.def	_FormatTestLabel;	.scl	2;	.type	32;	.endef
	.def	_TEST_Assert;	.scl	2;	.type	32;	.endef
