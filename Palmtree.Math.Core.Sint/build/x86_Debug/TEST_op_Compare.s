	.file	"TEST_op_Compare.c"
	.text
Ltext0:
	.comm	_uint_number_zero, 4, 2
	.comm	_uint_number_one, 4, 2
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
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0I\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC2:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0I\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.align 2
LC3:
	.ascii "\307"
	.ascii "0\374"
	.ascii "0\277"
	.ascii "0n0\205Q\271[L0\0N\364\201W0j0D0\0\0"
	.text
	.globl	_TEST_Compare_I_X
	.def	_TEST_Compare_I_X;	.scl	2;	.type	32;	.endef
_TEST_Compare_I_X:
LFB72:
	.file 1 "../TEST_op_Compare.c"
	.loc 1 33 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 38 132
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 38 84
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 38 82
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL0:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 38 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 38 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 1 38 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 39 122
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 39 82
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	.loc 1 39 80
	movl	-20(%ebp), %edx
	leal	-24(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL1:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 1 39 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 39 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 1 39 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 40 5
	movl	-24(%ebp), %eax
	cmpl	%eax, 32(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 40 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 1 40 5
	movl	$LC3, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 41 8
	cmpl	$0, -12(%ebp)
	jne	L3
	.loc 1 42 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 42 9
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL2:
	subl	$4, %esp
L3:
	.loc 1 43 1
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
LC4:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0L\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC5:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0L\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_Compare_L_X
	.def	_TEST_Compare_L_X;	.scl	2;	.type	32;	.endef
_TEST_Compare_L_X:
LFB73:
	.loc 1 46 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 51 132
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 51 84
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 51 82
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL3:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 51 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 51 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_FormatTestLabel
	.loc 1 51 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 52 122
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 52 82
	movl	12(%ebp), %eax
	movl	448(%eax), %ecx
	.loc 1 52 80
	movl	-20(%ebp), %eax
	leal	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%ecx
LVL4:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 1 52 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 52 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_FormatTestLabel
	.loc 1 52 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 53 5
	movl	-24(%ebp), %eax
	cmpl	%eax, 36(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 53 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_FormatTestLabel
	.loc 1 53 5
	movl	$LC3, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 54 8
	cmpl	$0, -12(%ebp)
	jne	L6
	.loc 1 55 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 55 9
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	subl	$4, %esp
L6:
	.loc 1 56 1
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
LC6:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0U\0X\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC7:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0U\0X\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_Compare_UX_X
	.def	_TEST_Compare_UX_X;	.scl	2;	.type	32;	.endef
_TEST_Compare_UX_X:
LFB74:
	.loc 1 59 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 66 151
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 66 104
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	.loc 1 66 83
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL6:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 66 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 66 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 1 66 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 67 133
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 67 85
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 67 83
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL7:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 1 67 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 67 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 1 67 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 68 124
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 68 83
	movl	12(%ebp), %eax
	movl	452(%eax), %eax
	.loc 1 68 81
	movl	-28(%ebp), %ecx
	movl	-24(%ebp), %edx
	leal	-32(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL8:
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	.loc 1 68 5
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 68 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 1 68 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 69 5
	movl	-32(%ebp), %eax
	cmpl	%eax, 36(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 69 22
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_FormatTestLabel
	.loc 1 69 5
	movl	$LC3, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 70 8
	cmpl	$0, -16(%ebp)
	jne	L8
	.loc 1 71 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 71 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL9:
	subl	$4, %esp
L8:
	.loc 1 72 8
	cmpl	$0, -12(%ebp)
	jne	L10
	.loc 1 73 30
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	.loc 1 73 9
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL10:
	subl	$4, %esp
L10:
	.loc 1 74 1
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
LC8:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0I\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC9:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0I\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_Compare_X_I
	.def	_TEST_Compare_X_I;	.scl	2;	.type	32;	.endef
_TEST_Compare_X_I:
LFB75:
	.loc 1 77 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 82 132
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 82 84
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 82 82
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL11:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 82 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 82 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 1 82 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 83 122
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 83 82
	movl	12(%ebp), %eax
	movl	456(%eax), %eax
	.loc 1 83 80
	movl	-20(%ebp), %edx
	leal	-24(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL12:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 1 83 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 83 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 1 83 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 84 5
	movl	-24(%ebp), %eax
	cmpl	%eax, 32(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 84 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC8, (%esp)
	call	_FormatTestLabel
	.loc 1 84 5
	movl	$LC3, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 85 8
	cmpl	$0, -12(%ebp)
	jne	L13
	.loc 1 86 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 86 9
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL13:
	subl	$4, %esp
L13:
	.loc 1 87 1
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
LC10:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0L\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC11:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0L\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_Compare_X_L
	.def	_TEST_Compare_X_L;	.scl	2;	.type	32;	.endef
_TEST_Compare_X_L:
LFB76:
	.loc 1 90 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 95 132
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 95 84
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 95 82
	leal	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL14:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 95 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 95 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 1 95 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 96 122
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 96 82
	movl	12(%ebp), %eax
	movl	460(%eax), %ecx
	.loc 1 96 80
	movl	-20(%ebp), %ebx
	leal	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, (%esp)
	call	*%ecx
LVL15:
	subl	$16, %esp
	movl	%eax, -16(%ebp)
	.loc 1 96 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 96 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 1 96 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 97 5
	movl	-24(%ebp), %eax
	cmpl	%eax, 36(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 97 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC10, (%esp)
	call	_FormatTestLabel
	.loc 1 97 5
	movl	$LC3, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 98 8
	cmpl	$0, -12(%ebp)
	jne	L16
	.loc 1 99 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 99 9
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL16:
	subl	$4, %esp
L16:
	.loc 1 100 1
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
LFE76:
	.section .rdata,"dr"
	.align 4
LC12:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0U\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC13:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0U\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_Compare_X_UX
	.def	_TEST_Compare_X_UX;	.scl	2;	.type	32;	.endef
_TEST_Compare_X_UX:
LFB77:
	.loc 1 103 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 110 133
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 110 85
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 110 83
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL17:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 110 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 110 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 1 110 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 111 151
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 111 104
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	.loc 1 111 83
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL18:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 1 111 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 111 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 1 111 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 112 124
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 112 83
	movl	12(%ebp), %eax
	movl	464(%eax), %eax
	.loc 1 112 81
	movl	-28(%ebp), %ecx
	movl	-24(%ebp), %edx
	leal	-32(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL19:
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	.loc 1 112 5
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 112 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 1 112 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 113 5
	movl	-32(%ebp), %eax
	cmpl	%eax, 36(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 113 22
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC12, (%esp)
	call	_FormatTestLabel
	.loc 1 113 5
	movl	$LC3, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 114 8
	cmpl	$0, -16(%ebp)
	jne	L18
	.loc 1 115 30
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	.loc 1 115 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL20:
	subl	$4, %esp
L18:
	.loc 1 116 8
	cmpl	$0, -12(%ebp)
	jne	L20
	.loc 1 117 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 117 9
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL21:
	subl	$4, %esp
L20:
	.loc 1 118 1
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
LC14:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 4
LC15:
	.ascii "C\0o\0m\0p\0a\0r\0e\0_\0X\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	_TEST_Compare_X_X
	.def	_TEST_Compare_X_X;	.scl	2;	.type	32;	.endef
_TEST_Compare_X_X:
LFB78:
	.loc 1 121 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 128 132
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 128 84
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 128 82
	leal	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	20(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL22:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 128 5
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 128 22
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 1 128 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 129 132
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 129 84
	movl	12(%ebp), %eax
	movl	304(%eax), %eax
	.loc 1 129 82
	leal	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL23:
	subl	$12, %esp
	movl	%eax, -16(%ebp)
	.loc 1 129 5
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 129 22
	movl	$2, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 1 129 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 130 122
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_FormatTestMesssage
	movl	%eax, %esi
	.loc 1 130 82
	movl	12(%ebp), %eax
	movl	468(%eax), %eax
	.loc 1 130 80
	movl	-28(%ebp), %ecx
	movl	-24(%ebp), %edx
	leal	-32(%ebp), %ebx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL24:
	subl	$12, %esp
	movl	%eax, -20(%ebp)
	.loc 1 130 5
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 130 22
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 1 130 5
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 131 5
	movl	-32(%ebp), %eax
	cmpl	%eax, 36(%ebp)
	sete	%al
	movzbl	%al, %ebx
	.loc 1 131 22
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC14, (%esp)
	call	_FormatTestLabel
	.loc 1 131 5
	movl	$LC3, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TEST_Assert
	.loc 1 132 8
	cmpl	$0, -16(%ebp)
	jne	L22
	.loc 1 133 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 133 9
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL25:
	subl	$4, %esp
L22:
	.loc 1 134 8
	cmpl	$0, -12(%ebp)
	jne	L24
	.loc 1 135 11
	movl	12(%ebp), %eax
	movl	296(%eax), %eax
	.loc 1 135 9
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL26:
	subl	$4, %esp
L24:
	.loc 1 136 1
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
	.file 2 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/crtdefs.h"
	.file 3 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/excpt.h"
	.file 4 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 5 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/ctype.h"
	.file 6 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/guiddef.h"
	.file 7 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winnt.h"
	.file 8 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/rpcdce.h"
	.file 9 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/stdlib.h"
	.file 10 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/malloc.h"
	.file 11 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/wtypesbase.h"
	.file 12 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/unknwnbase.h"
	.file 13 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/objidlbase.h"
	.file 14 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/cguid.h"
	.file 15 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/wtypes.h"
	.file 16 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/combaseapi.h"
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
	.file 31 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_uint.h"
	.file 32 "../pmc_sint.h"
	.file 33 "../pmc_sint_internal.h"
	.file 34 "../pmc_sint_debug.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x6d7d
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=generic -march=i686 -g\0"
	.byte	0xc
	.ascii "../TEST_op_Compare.c\0"
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
	.byte	0x2
	.byte	0x25
	.byte	0x16
	.long	0xd7
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
	.byte	0x2
	.byte	0x62
	.byte	0x18
	.long	0x103
	.uleb128 0x4
	.long	0xee
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0x103
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
	.byte	0x2
	.word	0x1a8
	.byte	0x28
	.long	0x153
	.uleb128 0x6
	.byte	0x4
	.long	0x159
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.byte	0xd8
	.byte	0x2
	.word	0x1bc
	.byte	0x10
	.long	0x2f6
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x2
	.word	0x1bd
	.byte	0x7
	.long	0xe7
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x2
	.word	0x1be
	.byte	0x10
	.long	0xd7
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x2
	.word	0x1bf
	.byte	0x10
	.long	0xd7
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x2
	.word	0x1c0
	.byte	0x11
	.long	0x443
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x2
	.word	0x1c1
	.byte	0x9
	.long	0x468
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x5
	.long	0x478
	.byte	0x48
	.uleb128 0x9
	.ascii "lc_clike\0"
	.byte	0x2
	.word	0x1c8
	.byte	0x7
	.long	0xe7
	.byte	0xa8
	.uleb128 0x9
	.ascii "mb_cur_max\0"
	.byte	0x2
	.word	0x1c9
	.byte	0x7
	.long	0xe7
	.byte	0xac
	.uleb128 0x9
	.ascii "lconv_intl_refcount\0"
	.byte	0x2
	.word	0x1ca
	.byte	0x8
	.long	0x43d
	.byte	0xb0
	.uleb128 0x9
	.ascii "lconv_num_refcount\0"
	.byte	0x2
	.word	0x1cb
	.byte	0x8
	.long	0x43d
	.byte	0xb4
	.uleb128 0x9
	.ascii "lconv_mon_refcount\0"
	.byte	0x2
	.word	0x1cc
	.byte	0x8
	.long	0x43d
	.byte	0xb8
	.uleb128 0x9
	.ascii "lconv\0"
	.byte	0x2
	.word	0x1cd
	.byte	0x11
	.long	0x48f
	.byte	0xbc
	.uleb128 0x9
	.ascii "ctype1_refcount\0"
	.byte	0x2
	.word	0x1ce
	.byte	0x8
	.long	0x43d
	.byte	0xc0
	.uleb128 0x9
	.ascii "ctype1\0"
	.byte	0x2
	.word	0x1cf
	.byte	0x13
	.long	0x495
	.byte	0xc4
	.uleb128 0x9
	.ascii "pctype\0"
	.byte	0x2
	.word	0x1d0
	.byte	0x19
	.long	0x49b
	.byte	0xc8
	.uleb128 0x9
	.ascii "pclmap\0"
	.byte	0x2
	.word	0x1d1
	.byte	0x18
	.long	0x4a1
	.byte	0xcc
	.uleb128 0x9
	.ascii "pcumap\0"
	.byte	0x2
	.word	0x1d2
	.byte	0x18
	.long	0x4a1
	.byte	0xd0
	.uleb128 0x9
	.ascii "lc_time_curr\0"
	.byte	0x2
	.word	0x1d3
	.byte	0x1a
	.long	0x4cd
	.byte	0xd4
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x2
	.word	0x1a9
	.byte	0x25
	.long	0x30e
	.uleb128 0x6
	.byte	0x4
	.long	0x314
	.uleb128 0xa
	.ascii "threadmbcinfostruct\0"
	.uleb128 0x7
	.ascii "localeinfo_struct\0"
	.byte	0x8
	.byte	0x2
	.word	0x1ac
	.byte	0x10
	.long	0x36a
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x2
	.word	0x1ad
	.byte	0x12
	.long	0x13b
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x2
	.word	0x1ae
	.byte	0x12
	.long	0x2f6
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x2
	.word	0x1af
	.byte	0x3
	.long	0x329
	.uleb128 0x7
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x2
	.word	0x1b3
	.byte	0x10
	.long	0x3d2
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x2
	.word	0x1b4
	.byte	0x12
	.long	0x103
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x2
	.word	0x1b5
	.byte	0x12
	.long	0x103
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x2
	.word	0x1b6
	.byte	0x12
	.long	0x103
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x2
	.word	0x1b7
	.byte	0x3
	.long	0x383
	.uleb128 0xb
	.byte	0x10
	.byte	0x2
	.word	0x1c2
	.byte	0x3
	.long	0x431
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x2
	.word	0x1c3
	.byte	0xb
	.long	0x431
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x2
	.word	0x1c4
	.byte	0xe
	.long	0x437
	.byte	0x4
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x2
	.word	0x1c5
	.byte	0xa
	.long	0x43d
	.byte	0x8
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x2
	.word	0x1c6
	.byte	0xa
	.long	0x43d
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc0
	.uleb128 0x6
	.byte	0x4
	.long	0xee
	.uleb128 0x6
	.byte	0x4
	.long	0xe7
	.uleb128 0xc
	.long	0x453
	.long	0x453
	.uleb128 0xd
	.long	0xd7
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xc
	.long	0x3d2
	.long	0x478
	.uleb128 0xd
	.long	0xd7
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x3e1
	.long	0x488
	.uleb128 0xd
	.long	0xd7
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x488
	.uleb128 0x6
	.byte	0x4
	.long	0x103
	.uleb128 0x6
	.byte	0x4
	.long	0x119
	.uleb128 0x6
	.byte	0x4
	.long	0x4b8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x4a7
	.uleb128 0xa
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x4bd
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x3
	.byte	0x3f
	.byte	0x2e
	.long	0x4e3
	.uleb128 0x6
	.byte	0x4
	.long	0x4e9
	.uleb128 0xe
	.long	0x4f4
	.uleb128 0xf
	.long	0xe7
	.byte	0
	.uleb128 0x10
	.ascii "_XCPT_ACTION\0"
	.byte	0xc
	.byte	0x3
	.byte	0x41
	.byte	0xa
	.long	0x540
	.uleb128 0x11
	.ascii "XcptNum\0"
	.byte	0x3
	.byte	0x42
	.byte	0x13
	.long	0x453
	.byte	0
	.uleb128 0x11
	.ascii "SigNum\0"
	.byte	0x3
	.byte	0x43
	.byte	0x9
	.long	0xe7
	.byte	0x4
	.uleb128 0x11
	.ascii "XcptAction\0"
	.byte	0x3
	.byte	0x44
	.byte	0xd
	.long	0x4d3
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x4f4
	.long	0x54b
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.ascii "_XcptActTab\0"
	.byte	0x3
	.byte	0x47
	.byte	0x1e
	.long	0x540
	.uleb128 0x13
	.ascii "_XcptActTabCount\0"
	.byte	0x3
	.byte	0x48
	.byte	0xe
	.long	0xe7
	.uleb128 0x13
	.ascii "_XcptActTabSize\0"
	.byte	0x3
	.byte	0x49
	.byte	0xe
	.long	0xe7
	.uleb128 0x13
	.ascii "_First_FPE_Indx\0"
	.byte	0x3
	.byte	0x4a
	.byte	0xe
	.long	0xe7
	.uleb128 0x13
	.ascii "_Num_FPE\0"
	.byte	0x3
	.byte	0x4b
	.byte	0xe
	.long	0xe7
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x4
	.byte	0x8d
	.byte	0x19
	.long	0x453
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xd7
	.uleb128 0x13
	.ascii "_imp___pctype\0"
	.byte	0x5
	.byte	0x2b
	.byte	0x1c
	.long	0x5ee
	.uleb128 0x6
	.byte	0x4
	.long	0x495
	.uleb128 0x13
	.ascii "_imp___wctype\0"
	.byte	0x5
	.byte	0x3b
	.byte	0x1c
	.long	0x5ee
	.uleb128 0x13
	.ascii "_imp___pwctype\0"
	.byte	0x5
	.byte	0x47
	.byte	0x1c
	.long	0x5ee
	.uleb128 0xc
	.long	0x4b8
	.long	0x62c
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x621
	.uleb128 0x13
	.ascii "__newclmap\0"
	.byte	0x5
	.byte	0x50
	.byte	0x1e
	.long	0x62c
	.uleb128 0x13
	.ascii "__newcumap\0"
	.byte	0x5
	.byte	0x51
	.byte	0x1e
	.long	0x62c
	.uleb128 0x13
	.ascii "__ptlocinfo\0"
	.byte	0x5
	.byte	0x52
	.byte	0x19
	.long	0x13b
	.uleb128 0x13
	.ascii "__ptmbcinfo\0"
	.byte	0x5
	.byte	0x53
	.byte	0x19
	.long	0x2f6
	.uleb128 0x13
	.ascii "__globallocalestatus\0"
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.long	0xe7
	.uleb128 0x13
	.ascii "__locale_changed\0"
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.long	0xe7
	.uleb128 0x13
	.ascii "__initiallocinfo\0"
	.byte	0x5
	.byte	0x56
	.byte	0x28
	.long	0x159
	.uleb128 0x13
	.ascii "__initiallocalestructinfo\0"
	.byte	0x5
	.byte	0x57
	.byte	0x1a
	.long	0x36a
	.uleb128 0x13
	.ascii "_imp____mb_cur_max\0"
	.byte	0x5
	.byte	0xcb
	.byte	0x10
	.long	0x43d
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
	.long	0x4a7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x10
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x6
	.byte	0x13
	.byte	0x10
	.long	0x793
	.uleb128 0x11
	.ascii "Data1\0"
	.byte	0x6
	.byte	0x14
	.byte	0x11
	.long	0x453
	.byte	0
	.uleb128 0x11
	.ascii "Data2\0"
	.byte	0x6
	.byte	0x15
	.byte	0x12
	.long	0x103
	.byte	0x4
	.uleb128 0x11
	.ascii "Data3\0"
	.byte	0x6
	.byte	0x16
	.byte	0x12
	.long	0x103
	.byte	0x6
	.uleb128 0x11
	.ascii "Data4\0"
	.byte	0x6
	.byte	0x17
	.byte	0x11
	.long	0x793
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x4a7
	.long	0x7a3
	.uleb128 0xd
	.long	0xd7
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x6
	.byte	0x18
	.byte	0x3
	.long	0x747
	.uleb128 0x4
	.long	0x7a3
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x6
	.byte	0x53
	.byte	0xe
	.long	0x7a3
	.uleb128 0x4
	.long	0x7b5
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x6
	.byte	0x5b
	.byte	0xe
	.long	0x7a3
	.uleb128 0x4
	.long	0x7c6
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x6
	.byte	0x62
	.byte	0xe
	.long	0x7a3
	.uleb128 0x4
	.long	0x7d9
	.uleb128 0x15
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0x7
	.word	0x13a9
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0x7
	.word	0x13aa
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0x7
	.word	0x13ab
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0x7
	.word	0x13ac
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0x7
	.word	0x13ad
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0x7
	.word	0x13ae
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0x7
	.word	0x13af
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0x7
	.word	0x13b0
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0x7
	.word	0x13b1
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0x7
	.word	0x13b2
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0x7
	.word	0x13b3
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0x7
	.word	0x13b4
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0x7
	.word	0x13b5
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0x7
	.word	0x13b6
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0x7
	.word	0x13b7
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0x7
	.word	0x13b8
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0x7
	.word	0x13b9
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0x7
	.word	0x13ba
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0x7
	.word	0x13bb
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0x7
	.word	0x13bc
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0x7
	.word	0x13bd
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0x7
	.word	0x13be
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0x7
	.word	0x13bf
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0x7
	.word	0x13c0
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0x7
	.word	0x13c1
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0x7
	.word	0x13c2
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0x7
	.word	0x13c3
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0x7
	.word	0x13c4
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0x7
	.word	0x13c5
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0x7
	.word	0x13c6
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0x7
	.word	0x13c7
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0x7
	.word	0x13c8
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0x7
	.word	0x13c9
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0x7
	.word	0x13ca
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0x7
	.word	0x13cb
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0x7
	.word	0x13cc
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0x7
	.word	0x13cd
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0x7
	.word	0x13ce
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0x7
	.word	0x13cf
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0x7
	.word	0x13d0
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0x7
	.word	0x13d1
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0x7
	.word	0x13d2
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0x7
	.word	0x13d3
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0x7
	.word	0x13d4
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0x7
	.word	0x13d5
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0x7
	.word	0x13d6
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0x7
	.word	0x13d7
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0x7
	.word	0x13d8
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0x7
	.word	0x13d9
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0x7
	.word	0x13da
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0x7
	.word	0x13db
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0x7
	.word	0x13dc
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0x7
	.word	0x13dd
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0x7
	.word	0x13de
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0x7
	.word	0x13df
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0x7
	.word	0x13e0
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0x7
	.word	0x13e1
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0x7
	.word	0x13e2
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0x7
	.word	0x13e3
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0x7
	.word	0x13e4
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0x7
	.word	0x13e5
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0x7
	.word	0x13e6
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0x7
	.word	0x13e7
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0x7
	.word	0x13e8
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0x7
	.word	0x13e9
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0x7
	.word	0x13ea
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0x7
	.word	0x13eb
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0x7
	.word	0x13ec
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0x7
	.word	0x13ed
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0x7
	.word	0x13ee
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0x7
	.word	0x13ef
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0x7
	.word	0x13f0
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0x7
	.word	0x13f1
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0x7
	.word	0x13f2
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0x7
	.word	0x13f3
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0x7
	.word	0x13f4
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0x7
	.word	0x13f5
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0x7
	.word	0x13f6
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0x7
	.word	0x13f7
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0x7
	.word	0x13f8
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0x7
	.word	0x13f9
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0x7
	.word	0x13fa
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0x7
	.word	0x13fb
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0x7
	.word	0x13fc
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0x7
	.word	0x13fd
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0x7
	.word	0x13fe
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0x7
	.word	0x13ff
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0x7
	.word	0x1400
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0x7
	.word	0x1401
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0x7
	.word	0x1402
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0x7
	.word	0x1403
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0x7
	.word	0x1404
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0x7
	.word	0x1405
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0x7
	.word	0x1406
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0x7
	.word	0x1407
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0x7
	.word	0x1408
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0x7
	.word	0x1409
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0x7
	.word	0x140a
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0x7
	.word	0x140b
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0x7
	.word	0x140c
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0x7
	.word	0x140d
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0x7
	.word	0x140e
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0x7
	.word	0x140f
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0x7
	.word	0x1410
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0x7
	.word	0x1411
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0x7
	.word	0x1412
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0x7
	.word	0x1413
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0x7
	.word	0x1414
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0x7
	.word	0x1415
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0x7
	.word	0x1416
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0x7
	.word	0x1417
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0x7
	.word	0x1418
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0x7
	.word	0x1419
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0x7
	.word	0x141a
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0x7
	.word	0x141b
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0x7
	.word	0x141c
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0x7
	.word	0x141d
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0x7
	.word	0x141e
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0x7
	.word	0x141f
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0x7
	.word	0x1420
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0x7
	.word	0x1421
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0x7
	.word	0x1422
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0x7
	.word	0x1620
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0x7
	.word	0x1621
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0x7
	.word	0x1622
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0x7
	.word	0x1623
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0x7
	.word	0x1624
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0x7
	.word	0x1625
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0x7
	.word	0x1626
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0x7
	.word	0x1627
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0x7
	.word	0x1628
	.byte	0x17
	.long	0x7b0
	.uleb128 0x15
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0x7
	.word	0x1629
	.byte	0x17
	.long	0x7b0
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0x8
	.byte	0x42
	.byte	0x11
	.long	0x5b9
	.uleb128 0x6
	.byte	0x4
	.long	0x431
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
	.long	0x1d4a
	.uleb128 0x16
	.uleb128 0x6
	.byte	0x4
	.long	0xfe
	.uleb128 0xc
	.long	0x431
	.long	0x1d61
	.uleb128 0xd
	.long	0xd7
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "_sys_errlist\0"
	.byte	0x9
	.byte	0xac
	.byte	0x2b
	.long	0x1d51
	.uleb128 0x13
	.ascii "_sys_nerr\0"
	.byte	0x9
	.byte	0xad
	.byte	0x29
	.long	0xe7
	.uleb128 0x15
	.ascii "_imp____argc\0"
	.byte	0x9
	.word	0x119
	.byte	0x10
	.long	0x43d
	.uleb128 0x15
	.ascii "_imp____argv\0"
	.byte	0x9
	.word	0x11d
	.byte	0x13
	.long	0x1db4
	.uleb128 0x6
	.byte	0x4
	.long	0x1d25
	.uleb128 0x15
	.ascii "_imp____wargv\0"
	.byte	0x9
	.word	0x121
	.byte	0x16
	.long	0x1dd1
	.uleb128 0x6
	.byte	0x4
	.long	0x1dd7
	.uleb128 0x6
	.byte	0x4
	.long	0x437
	.uleb128 0x15
	.ascii "_imp___environ\0"
	.byte	0x9
	.word	0x127
	.byte	0x13
	.long	0x1db4
	.uleb128 0x15
	.ascii "_imp___wenviron\0"
	.byte	0x9
	.word	0x12c
	.byte	0x16
	.long	0x1dd1
	.uleb128 0x15
	.ascii "_imp___pgmptr\0"
	.byte	0x9
	.word	0x132
	.byte	0x12
	.long	0x1d25
	.uleb128 0x15
	.ascii "_imp___wpgmptr\0"
	.byte	0x9
	.word	0x137
	.byte	0x15
	.long	0x1dd7
	.uleb128 0x15
	.ascii "_imp___osplatform\0"
	.byte	0x9
	.word	0x13c
	.byte	0x19
	.long	0x5d2
	.uleb128 0x15
	.ascii "_imp___osver\0"
	.byte	0x9
	.word	0x141
	.byte	0x19
	.long	0x5d2
	.uleb128 0x15
	.ascii "_imp___winver\0"
	.byte	0x9
	.word	0x146
	.byte	0x19
	.long	0x5d2
	.uleb128 0x15
	.ascii "_imp___winmajor\0"
	.byte	0x9
	.word	0x14b
	.byte	0x19
	.long	0x5d2
	.uleb128 0x15
	.ascii "_imp___winminor\0"
	.byte	0x9
	.word	0x150
	.byte	0x19
	.long	0x5d2
	.uleb128 0x13
	.ascii "_amblksiz\0"
	.byte	0xa
	.byte	0x35
	.byte	0x17
	.long	0xd7
	.uleb128 0x17
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0xd7
	.byte	0x10
	.byte	0x95
	.byte	0xe
	.long	0x1f01
	.uleb128 0x18
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xb
	.byte	0x29
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xb
	.byte	0x2a
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x13
	.ascii "IID_IUnknown\0"
	.byte	0xc
	.byte	0x57
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xc
	.byte	0xbd
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IClassFactory\0"
	.byte	0xc
	.word	0x16d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMarshal\0"
	.byte	0xd
	.word	0x16e
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_INoMarshal\0"
	.byte	0xd
	.word	0x255
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAgileObject\0"
	.byte	0xd
	.word	0x294
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAgileReference\0"
	.byte	0xd
	.word	0x2d2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMarshal2\0"
	.byte	0xd
	.word	0x32d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMalloc\0"
	.byte	0xd
	.word	0x3b2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xd
	.word	0x469
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IExternalConnection\0"
	.byte	0xd
	.word	0x4cc
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMultiQI\0"
	.byte	0xd
	.word	0x547
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xd
	.word	0x59e
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternalUnknown\0"
	.byte	0xd
	.word	0x60c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumUnknown\0"
	.byte	0xd
	.word	0x668
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumString\0"
	.byte	0xd
	.word	0x706
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISequentialStream\0"
	.byte	0xd
	.word	0x7a2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IStream\0"
	.byte	0xd
	.word	0x84d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xd
	.word	0x991
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xd
	.word	0xa3b
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xd
	.word	0xabd
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xd
	.word	0xb7f
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xd
	.word	0xc99
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xd
	.word	0xcee
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xd
	.word	0xd56
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xd
	.word	0xe1c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IChannelHook\0"
	.byte	0xd
	.word	0xe9f
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IClientSecurity\0"
	.byte	0xd
	.word	0xfc3
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IServerSecurity\0"
	.byte	0xd
	.word	0x106d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcOptions\0"
	.byte	0xd
	.word	0x1113
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IGlobalOptions\0"
	.byte	0xd
	.word	0x11ae
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISurrogate\0"
	.byte	0xd
	.word	0x1221
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xd
	.word	0x1289
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISynchronize\0"
	.byte	0xd
	.word	0x1312
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xd
	.word	0x138c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xd
	.word	0x13e1
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xd
	.word	0x1441
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xd
	.word	0x14af
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xd
	.word	0x151e
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAsyncManager\0"
	.byte	0xd
	.word	0x158a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICallFactory\0"
	.byte	0xd
	.word	0x1608
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRpcHelper\0"
	.byte	0xd
	.word	0x1666
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xd
	.word	0x16d1
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IWaitMultiple\0"
	.byte	0xd
	.word	0x172c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xd
	.word	0x1798
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xd
	.word	0x17fd
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPipeByte\0"
	.byte	0xd
	.word	0x1868
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPipeLong\0"
	.byte	0xd
	.word	0x18d9
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPipeDouble\0"
	.byte	0xd
	.word	0x194a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xd
	.word	0x1b24
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IProcessInitControl\0"
	.byte	0xd
	.word	0x1bb2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IFastRundown\0"
	.byte	0xd
	.word	0x1c07
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMarshalingStream\0"
	.byte	0xd
	.word	0x1c4a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xd
	.word	0x1d09
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_NULL\0"
	.byte	0xe
	.byte	0xd
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "CATID_MARSHALER\0"
	.byte	0xe
	.byte	0xe
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IRpcChannel\0"
	.byte	0xe
	.byte	0xf
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IRpcStub\0"
	.byte	0xe
	.byte	0x10
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IStubManager\0"
	.byte	0xe
	.byte	0x11
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IRpcProxy\0"
	.byte	0xe
	.byte	0x12
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IProxyManager\0"
	.byte	0xe
	.byte	0x13
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IPSFactory\0"
	.byte	0xe
	.byte	0x14
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IInternalMoniker\0"
	.byte	0xe
	.byte	0x15
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IDfReserved1\0"
	.byte	0xe
	.byte	0x16
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IDfReserved2\0"
	.byte	0xe
	.byte	0x17
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IDfReserved3\0"
	.byte	0xe
	.byte	0x18
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "CLSID_StdMarshal\0"
	.byte	0xe
	.byte	0x19
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xe
	.byte	0x1a
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xe
	.byte	0x1b
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IStub\0"
	.byte	0xe
	.byte	0x1c
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IProxy\0"
	.byte	0xe
	.byte	0x1d
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IEnumGeneric\0"
	.byte	0xe
	.byte	0x1e
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IEnumHolder\0"
	.byte	0xe
	.byte	0x1f
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IEnumCallback\0"
	.byte	0xe
	.byte	0x20
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IOleManager\0"
	.byte	0xe
	.byte	0x21
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IOlePresObj\0"
	.byte	0xe
	.byte	0x22
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IDebug\0"
	.byte	0xe
	.byte	0x23
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "IID_IDebugStream\0"
	.byte	0xe
	.byte	0x24
	.byte	0x14
	.long	0x7c1
	.uleb128 0x13
	.ascii "CLSID_PSGenObject\0"
	.byte	0xe
	.byte	0x25
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSClientSite\0"
	.byte	0xe
	.byte	0x26
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSClassObject\0"
	.byte	0xe
	.byte	0x27
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xe
	.byte	0x28
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xe
	.byte	0x29
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xe
	.byte	0x2a
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xe
	.byte	0x2b
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xe
	.byte	0x2c
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xe
	.byte	0x2d
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_StaticDib\0"
	.byte	0xe
	.byte	0x2e
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CID_CDfsVolume\0"
	.byte	0xe
	.byte	0x2f
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xe
	.byte	0x30
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xe
	.byte	0x31
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xe
	.byte	0x32
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_ComBinding\0"
	.byte	0xe
	.byte	0x33
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_StdEvent\0"
	.byte	0xe
	.byte	0x34
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xe
	.byte	0x35
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xe
	.byte	0x36
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_AddrControl\0"
	.byte	0xe
	.byte	0x37
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xe
	.byte	0x38
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xe
	.byte	0x39
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xe
	.byte	0x3a
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xe
	.byte	0x3b
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xe
	.byte	0x3c
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xe
	.byte	0x3d
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xe
	.byte	0x3e
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDLabel\0"
	.byte	0xe
	.byte	0x3f
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xe
	.byte	0x40
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDListBox\0"
	.byte	0xe
	.byte	0x41
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xe
	.byte	0x42
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xe
	.byte	0x43
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xe
	.byte	0x45
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xe
	.byte	0x46
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xe
	.byte	0x47
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xe
	.byte	0x48
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xe
	.byte	0x49
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4a
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xe
	.byte	0x4b
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4c
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xe
	.byte	0x4d
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4e
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xe
	.byte	0x4f
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xe
	.byte	0x50
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xe
	.byte	0x51
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xe
	.byte	0x52
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xe
	.byte	0x53
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xe
	.byte	0x54
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xe
	.byte	0x55
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_CSystemPage\0"
	.byte	0xe
	.byte	0x56
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xe
	.byte	0x57
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xe
	.byte	0x58
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xe
	.byte	0x59
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xe
	.byte	0x5a
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xe
	.byte	0x5b
	.byte	0x16
	.long	0x7d4
	.uleb128 0x13
	.ascii "GUID_TRISTATE\0"
	.byte	0xe
	.byte	0x5c
	.byte	0x15
	.long	0x7b0
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x19
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0xd7
	.byte	0xf
	.word	0x200
	.byte	0x6
	.long	0x3117
	.uleb128 0x18
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0x18
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0x18
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0x18
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0x18
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0x18
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0x18
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0x18
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0x18
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0x18
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0x18
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0x18
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0x18
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0x18
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0x18
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0x18
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0x18
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0x18
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0x18
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0x18
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0x18
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0x18
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0x18
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0x18
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0x18
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0x18
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0x18
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0x18
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0x18
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0x18
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0x18
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0x18
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0x18
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0x18
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0x18
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0x18
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0x18
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0x18
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0x18
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0x18
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0x18
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0x18
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x18
	.ascii "VT_VERSIONED_STREAM\0"
	.byte	0x49
	.uleb128 0x1a
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x1a
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x1a
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x1a
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x1a
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x1a
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x1a
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x1a
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x15
	.ascii "IID_IMallocSpy\0"
	.byte	0x11
	.word	0x1dbd
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBindCtx\0"
	.byte	0x11
	.word	0x1f3a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumMoniker\0"
	.byte	0x11
	.word	0x204a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRunnableObject\0"
	.byte	0x11
	.word	0x20e8
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x11
	.word	0x218e
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPersist\0"
	.byte	0x11
	.word	0x2269
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPersistStream\0"
	.byte	0x11
	.word	0x22be
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMoniker\0"
	.byte	0x11
	.word	0x236a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IROTData\0"
	.byte	0x11
	.word	0x2558
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x11
	.word	0x25b5
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IStorage\0"
	.byte	0x11
	.word	0x2658
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPersistFile\0"
	.byte	0x11
	.word	0x2841
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPersistStorage\0"
	.byte	0x11
	.word	0x28f1
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ILockBytes\0"
	.byte	0x11
	.word	0x29b1
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x11
	.word	0x2ac0
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x11
	.word	0x2b6c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRootStorage\0"
	.byte	0x11
	.word	0x2c08
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAdviseSink\0"
	.byte	0x11
	.word	0x2cb3
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x11
	.word	0x2d73
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAdviseSink2\0"
	.byte	0x11
	.word	0x2ea9
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x11
	.word	0x2f2e
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDataObject\0"
	.byte	0x11
	.word	0x2ff4
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x11
	.word	0x3118
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMessageFilter\0"
	.byte	0x11
	.word	0x31d3
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x11
	.word	0x325d
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x11
	.word	0x325f
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x11
	.word	0x3261
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x11
	.word	0x3263
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x11
	.word	0x3265
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x11
	.word	0x3267
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x11
	.word	0x3269
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x11
	.word	0x326b
	.byte	0x14
	.long	0x7e7
	.uleb128 0x15
	.ascii "IID_IClassActivator\0"
	.byte	0x11
	.word	0x3273
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IFillLockBytes\0"
	.byte	0x11
	.word	0x32d5
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IProgressNotify\0"
	.byte	0x11
	.word	0x3389
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ILayoutStorage\0"
	.byte	0x11
	.word	0x33ee
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBlockingLock\0"
	.byte	0x11
	.word	0x3492
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x11
	.word	0x34f7
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOplockStorage\0"
	.byte	0x11
	.word	0x354e
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x11
	.word	0x35d5
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IUrlMon\0"
	.byte	0x11
	.word	0x364d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x11
	.word	0x36bc
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x11
	.word	0x3710
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x11
	.word	0x3786
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IProcessLock\0"
	.byte	0x11
	.word	0x37e5
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISurrogateService\0"
	.byte	0x11
	.word	0x3848
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInitializeSpy\0"
	.byte	0x11
	.word	0x38f2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x11
	.word	0x398a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x12
	.byte	0xab
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleCache\0"
	.byte	0x12
	.word	0x162
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleCache2\0"
	.byte	0x12
	.word	0x229
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleCacheControl\0"
	.byte	0x12
	.word	0x2d4
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IParseDisplayName\0"
	.byte	0x12
	.word	0x33c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleContainer\0"
	.byte	0x12
	.word	0x39c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleClientSite\0"
	.byte	0x12
	.word	0x417
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleObject\0"
	.byte	0x12
	.word	0x4fe
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x12
	.word	0x6fe
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x12
	.word	0x6ff
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x15
	.ascii "IID_IOleWindow\0"
	.byte	0x12
	.word	0x724
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleLink\0"
	.byte	0x12
	.word	0x79a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleItemContainer\0"
	.byte	0x12
	.word	0x8bf
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x12
	.word	0x976
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x12
	.word	0xa1c
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x12
	.word	0xaf8
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x12
	.word	0xbf1
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x12
	.word	0xc91
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IContinue\0"
	.byte	0x12
	.word	0xda4
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IViewObject\0"
	.byte	0x12
	.word	0xdf9
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IViewObject2\0"
	.byte	0x12
	.word	0xf2a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDropSource\0"
	.byte	0x12
	.word	0xfd2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDropTarget\0"
	.byte	0x12
	.word	0x105b
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x12
	.word	0x10ff
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x12
	.word	0x1176
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "IID_IServiceProvider\0"
	.byte	0x13
	.byte	0x4d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x14
	.byte	0xf1
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x14
	.byte	0xf2
	.byte	0x16
	.long	0x1d0f
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x14
	.word	0x33b
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x14
	.word	0x562
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x14
	.word	0x7b2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x14
	.word	0x8ba
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDispatch\0"
	.byte	0x14
	.word	0x9b6
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x14
	.word	0xa87
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeComp\0"
	.byte	0x14
	.word	0xb35
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeInfo\0"
	.byte	0x14
	.word	0xbd9
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeInfo2\0"
	.byte	0x14
	.word	0xe50
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeLib\0"
	.byte	0x14
	.word	0x10d6
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeLib2\0"
	.byte	0x14
	.word	0x123d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x14
	.word	0x1361
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IErrorInfo\0"
	.byte	0x14
	.word	0x13da
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x14
	.word	0x147d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x14
	.word	0x1520
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeFactory\0"
	.byte	0x14
	.word	0x1575
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ITypeMarshal\0"
	.byte	0x14
	.word	0x15d0
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IRecordInfo\0"
	.byte	0x14
	.word	0x1684
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IErrorLog\0"
	.byte	0x14
	.word	0x1820
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPropertyBag\0"
	.byte	0x14
	.word	0x187a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x15
	.byte	0xeb
	.byte	0x18
	.long	0x1d0f
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.long	0x1d0f
	.uleb128 0x13
	.ascii "LIBID_MSXML\0"
	.byte	0x15
	.byte	0xfc
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x15
	.word	0x100
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x15
	.word	0x127
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x15
	.word	0x1fd
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x15
	.word	0x266
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x15
	.word	0x375
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x15
	.word	0x3b0
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x15
	.word	0x404
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x15
	.word	0x496
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x15
	.word	0x50f
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMText\0"
	.byte	0x15
	.word	0x5a6
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x15
	.word	0x625
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x15
	.word	0x69e
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x15
	.word	0x717
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x15
	.word	0x792
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x15
	.word	0x80b
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x15
	.word	0x87f
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x15
	.word	0x8f8
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x15
	.word	0x961
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXTLRuntime\0"
	.byte	0x15
	.word	0x9a6
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x15
	.word	0xa3d
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_DOMDocument\0"
	.byte	0x15
	.word	0xa5c
	.byte	0x16
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x15
	.word	0xa60
	.byte	0x16
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x15
	.word	0xa67
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x15
	.word	0xacd
	.byte	0x16
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x15
	.word	0xad4
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x15
	.word	0xb0d
	.byte	0x16
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x15
	.word	0xb14
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDocument\0"
	.byte	0x15
	.word	0xb4a
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLDocument2\0"
	.byte	0x15
	.word	0xbb2
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLElement\0"
	.byte	0x15
	.word	0xc24
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLElement2\0"
	.byte	0x15
	.word	0xc82
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLAttribute\0"
	.byte	0x15
	.word	0xce5
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IXMLError\0"
	.byte	0x15
	.word	0xd11
	.byte	0x14
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_XMLDocument\0"
	.byte	0x15
	.word	0xd2e
	.byte	0x16
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x16
	.word	0x17e
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x16
	.word	0x17f
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x16
	.word	0x180
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x16
	.word	0x181
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x16
	.word	0x182
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x16
	.word	0x183
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x16
	.word	0x184
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x185
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x16
	.word	0x186
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x16
	.word	0x187
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x16
	.word	0x188
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x16
	.word	0x189
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x16
	.word	0x18a
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x16
	.word	0x193
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x16
	.word	0x194
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x16
	.word	0x195
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x16
	.word	0x196
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x16
	.word	0x197
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x16
	.word	0x198
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_FileProtocol\0"
	.byte	0x16
	.word	0x199
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_MkProtocol\0"
	.byte	0x16
	.word	0x19a
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x16
	.word	0x19b
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x19c
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x16
	.word	0x19d
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x16
	.word	0x19e
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x16
	.word	0x19f
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IPersistMoniker\0"
	.byte	0x16
	.word	0x250
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IMonikerProp\0"
	.byte	0x16
	.word	0x321
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBindProtocol\0"
	.byte	0x16
	.word	0x37f
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBinding\0"
	.byte	0x16
	.word	0x3e0
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x16
	.word	0x575
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x16
	.word	0x6a5
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAuthenticate\0"
	.byte	0x16
	.word	0x764
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x16
	.word	0x7d0
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x16
	.word	0x841
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x16
	.word	0x8c1
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x16
	.word	0x93b
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x16
	.word	0x9bf
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x16
	.word	0xa30
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICodeInstall\0"
	.byte	0x16
	.word	0xa9b
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IWinInetInfo\0"
	.byte	0x16
	.word	0x10a5
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IHttpSecurity\0"
	.byte	0x16
	.word	0x1112
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x16
	.word	0x1179
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x16
	.word	0x11f8
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "SID_BindHost\0"
	.byte	0x16
	.word	0x1335
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBindHost\0"
	.byte	0x16
	.word	0x133f
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternet\0"
	.byte	0x16
	.word	0x144d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x16
	.word	0x14ac
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x16
	.word	0x1526
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x16
	.word	0x15bf
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetProtocol\0"
	.byte	0x16
	.word	0x1684
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x16
	.word	0x181a
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x16
	.word	0x18bd
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetSession\0"
	.byte	0x16
	.word	0x193f
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x16
	.word	0x1a48
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetPriority\0"
	.byte	0x16
	.word	0x1ab2
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x16
	.word	0x1b4e
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x16
	.word	0x1cb2
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x16
	.word	0x1cb3
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x16
	.word	0x1ccb
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x16
	.word	0x1d69
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x16
	.word	0x210f
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x16
	.word	0x22c4
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x16
	.word	0x269c
	.byte	0x12
	.long	0x7c1
	.uleb128 0x15
	.ascii "IID_ISoftDistExt\0"
	.byte	0x16
	.word	0x26cc
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x16
	.word	0x2778
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IDataFilter\0"
	.byte	0x16
	.word	0x27e6
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x16
	.word	0x28a6
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x16
	.word	0x2933
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x16
	.word	0x2941
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IGetBindHandle\0"
	.byte	0x16
	.word	0x29a5
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x16
	.word	0x2a0d
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPropertyStorage\0"
	.byte	0x17
	.word	0x1b7
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x17
	.word	0x304
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x17
	.word	0x3a6
	.byte	0x13
	.long	0x7b0
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x17
	.word	0x444
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "IID_StdOle\0"
	.byte	0x18
	.byte	0x15
	.byte	0x12
	.long	0x7c1
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x19
	.byte	0xc
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x19
	.byte	0xd
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x19
	.byte	0xe
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x19
	.byte	0xf
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x19
	.byte	0x10
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x19
	.byte	0x11
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x19
	.byte	0x12
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x19
	.byte	0x13
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x19
	.byte	0x14
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x19
	.byte	0x15
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x19
	.byte	0x16
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x19
	.byte	0x17
	.byte	0x13
	.long	0x7b0
	.uleb128 0x10
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1a
	.byte	0xa1
	.byte	0x12
	.long	0x4b84
	.uleb128 0x11
	.ascii "dwProtocol\0"
	.byte	0x1a
	.byte	0xa2
	.byte	0xb
	.long	0x5bb
	.byte	0
	.uleb128 0x11
	.ascii "cbPciLength\0"
	.byte	0x1a
	.byte	0xa3
	.byte	0xb
	.long	0x5bb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1a
	.byte	0xa4
	.byte	0x5
	.long	0x4b3f
	.uleb128 0x4
	.long	0x4b84
	.uleb128 0x13
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x3c
	.long	0x4b9d
	.uleb128 0x13
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x4b
	.long	0x4b9d
	.uleb128 0x13
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x5a
	.long	0x4b9d
	.uleb128 0x13
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1c
	.byte	0xe
	.byte	0x13
	.long	0x7b0
	.uleb128 0x13
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1c
	.byte	0xf
	.byte	0x13
	.long	0x7b0
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1d
	.byte	0x27
	.byte	0xd
	.long	0xe7
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1d
	.byte	0x28
	.byte	0x12
	.long	0xd7
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1d
	.byte	0x29
	.byte	0x21
	.long	0x12a
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1d
	.byte	0x2a
	.byte	0x2a
	.long	0x72d
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1e
	.byte	0x55
	.byte	0x11
	.long	0x4c37
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1e
	.byte	0x56
	.byte	0x11
	.long	0x4c58
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1e
	.byte	0x59
	.byte	0x12
	.long	0x4c47
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1e
	.byte	0x5a
	.byte	0x12
	.long	0x4c68
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1e
	.byte	0x65
	.byte	0xd
	.long	0xe7
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1e
	.byte	0x67
	.byte	0xd
	.long	0xe7
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1e
	.byte	0x69
	.byte	0xd
	.long	0xe7
	.uleb128 0x10
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x6b
	.byte	0x10
	.long	0x4d91
	.uleb128 0x11
	.ascii "COUNT_MULTI64\0"
	.byte	0x1e
	.byte	0x6d
	.byte	0xa
	.long	0x11e
	.byte	0
	.uleb128 0x11
	.ascii "COUNT_MULTI32\0"
	.byte	0x1e
	.byte	0x6e
	.byte	0xa
	.long	0x11e
	.byte	0x4
	.uleb128 0x11
	.ascii "COUNT_DIV64\0"
	.byte	0x1e
	.byte	0x6f
	.byte	0xa
	.long	0x11e
	.byte	0x8
	.uleb128 0x11
	.ascii "COUNT_DIV32\0"
	.byte	0x1e
	.byte	0x70
	.byte	0xa
	.long	0x11e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1e
	.byte	0x71
	.byte	0x3
	.long	0x4d15
	.uleb128 0x10
	.ascii "__tag_PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1e
	.byte	0x73
	.byte	0x10
	.long	0x4e2b
	.uleb128 0x1b
	.secrel32	LASF1
	.byte	0x1e
	.byte	0x75
	.byte	0x9
	.long	0xe7
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF2
	.byte	0x1e
	.byte	0x76
	.byte	0xd
	.long	0x4e2b
	.byte	0x4
	.uleb128 0x1b
	.secrel32	LASF3
	.byte	0x1e
	.byte	0x77
	.byte	0xd
	.long	0x4e2b
	.byte	0xa
	.uleb128 0x1b
	.secrel32	LASF4
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.long	0x4e3b
	.byte	0x10
	.uleb128 0x1b
	.secrel32	LASF5
	.byte	0x1e
	.byte	0x79
	.byte	0x9
	.long	0xe7
	.byte	0x28
	.uleb128 0x1b
	.secrel32	LASF6
	.byte	0x1e
	.byte	0x7a
	.byte	0x9
	.long	0xe7
	.byte	0x2c
	.byte	0
	.uleb128 0xc
	.long	0xee
	.long	0x4e3b
	.uleb128 0xd
	.long	0xd7
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xee
	.long	0x4e4b
	.uleb128 0xd
	.long	0xd7
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x1e
	.byte	0x7b
	.byte	0x3
	.long	0x4dad
	.uleb128 0x10
	.ascii "__tag_PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x2c
	.byte	0x1e
	.byte	0x7d
	.byte	0x10
	.long	0x4ee3
	.uleb128 0x1b
	.secrel32	LASF1
	.byte	0x1e
	.byte	0x7f
	.byte	0x9
	.long	0xe7
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF3
	.byte	0x1e
	.byte	0x80
	.byte	0xd
	.long	0x4e2b
	.byte	0x4
	.uleb128 0x1b
	.secrel32	LASF2
	.byte	0x1e
	.byte	0x81
	.byte	0xd
	.long	0x4e2b
	.byte	0xa
	.uleb128 0x1b
	.secrel32	LASF4
	.byte	0x1e
	.byte	0x82
	.byte	0xd
	.long	0x4e3b
	.byte	0x10
	.uleb128 0x1b
	.secrel32	LASF5
	.byte	0x1e
	.byte	0x83
	.byte	0x9
	.long	0xe7
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.ascii "PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x1e
	.byte	0x84
	.byte	0x3
	.long	0x4e73
	.uleb128 0x10
	.ascii "__tag_PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1e
	.byte	0x86
	.byte	0x10
	.long	0x4f87
	.uleb128 0x1b
	.secrel32	LASF1
	.byte	0x1e
	.byte	0x88
	.byte	0x9
	.long	0xe7
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF3
	.byte	0x1e
	.byte	0x89
	.byte	0xd
	.long	0x4e2b
	.byte	0x4
	.uleb128 0x1b
	.secrel32	LASF2
	.byte	0x1e
	.byte	0x8a
	.byte	0xd
	.long	0x4e2b
	.byte	0xa
	.uleb128 0x1b
	.secrel32	LASF4
	.byte	0x1e
	.byte	0x8b
	.byte	0xd
	.long	0x4e3b
	.byte	0x10
	.uleb128 0x1b
	.secrel32	LASF5
	.byte	0x1e
	.byte	0x8c
	.byte	0x9
	.long	0xe7
	.byte	0x28
	.uleb128 0x1b
	.secrel32	LASF6
	.byte	0x1e
	.byte	0x8d
	.byte	0x9
	.long	0xe7
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.ascii "PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x1e
	.byte	0x8e
	.byte	0x3
	.long	0x4f0a
	.uleb128 0x10
	.ascii "__tag_PMC_NUMBER_FORMAT_INFO\0"
	.byte	0xc0
	.byte	0x1e
	.byte	0x90
	.byte	0x10
	.long	0x5091
	.uleb128 0x11
	.ascii "Currency\0"
	.byte	0x1e
	.byte	0x92
	.byte	0x25
	.long	0x4e4b
	.byte	0
	.uleb128 0x11
	.ascii "Number\0"
	.byte	0x1e
	.byte	0x93
	.byte	0x24
	.long	0x4ee3
	.byte	0x30
	.uleb128 0x11
	.ascii "Percent\0"
	.byte	0x1e
	.byte	0x94
	.byte	0x24
	.long	0x4f87
	.byte	0x5c
	.uleb128 0x11
	.ascii "CurrencySymbol\0"
	.byte	0x1e
	.byte	0x95
	.byte	0xd
	.long	0x4e2b
	.byte	0x8c
	.uleb128 0x11
	.ascii "NativeDigits\0"
	.byte	0x1e
	.byte	0x96
	.byte	0xd
	.long	0x4e3b
	.byte	0x92
	.uleb128 0x11
	.ascii "NegativeSign\0"
	.byte	0x1e
	.byte	0x97
	.byte	0xd
	.long	0x4e2b
	.byte	0xa8
	.uleb128 0x11
	.ascii "PositiveSign\0"
	.byte	0x1e
	.byte	0x98
	.byte	0xd
	.long	0x4e2b
	.byte	0xae
	.uleb128 0x11
	.ascii "PercentSymbol\0"
	.byte	0x1e
	.byte	0x99
	.byte	0xd
	.long	0x4e2b
	.byte	0xb4
	.uleb128 0x11
	.ascii "PerMilleSymbol\0"
	.byte	0x1e
	.byte	0x9a
	.byte	0xd
	.long	0x4e2b
	.byte	0xba
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_INFO\0"
	.byte	0x1e
	.byte	0x9b
	.byte	0x3
	.long	0x4fae
	.uleb128 0x10
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x1f
	.byte	0x26
	.byte	0x16
	.long	0x510b
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x1f
	.byte	0x28
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF8
	.byte	0x1f
	.byte	0x29
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF9
	.byte	0x1f
	.byte	0x2a
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF10
	.byte	0x1f
	.byte	0x2b
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x50b0
	.uleb128 0x1d
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x4
	.byte	0x1f
	.byte	0x24
	.byte	0xb
	.long	0x514e
	.uleb128 0x1e
	.ascii "FLAGS\0"
	.byte	0x1f
	.byte	0x2c
	.byte	0xb
	.long	0x510b
	.uleb128 0x1e
	.ascii "__dummy\0"
	.byte	0x1f
	.byte	0x2e
	.byte	0x13
	.long	0x4c9b
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x1f
	.byte	0x35
	.byte	0x2a
	.long	0x5166
	.uleb128 0x6
	.byte	0x4
	.long	0x5110
	.uleb128 0x1f
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x11c
	.byte	0x1f
	.byte	0x37
	.byte	0x14
	.long	0x570e
	.uleb128 0x20
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x1f
	.byte	0x3a
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x20
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x1f
	.byte	0x3b
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x20
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x1f
	.byte	0x3c
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x1f
	.byte	0x3d
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x20
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x1f
	.byte	0x3e
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1b
	.secrel32	LASF11
	.byte	0x1f
	.byte	0x41
	.byte	0x2e
	.long	0x571f
	.byte	0x4
	.uleb128 0x11
	.ascii "From_I\0"
	.byte	0x1f
	.byte	0x44
	.byte	0x39
	.long	0x573f
	.byte	0x8
	.uleb128 0x11
	.ascii "From_L\0"
	.byte	0x1f
	.byte	0x47
	.byte	0x39
	.long	0x5759
	.byte	0xc
	.uleb128 0x11
	.ascii "Dispose\0"
	.byte	0x1f
	.byte	0x4a
	.byte	0x2e
	.long	0x576a
	.byte	0x10
	.uleb128 0x1b
	.secrel32	LASF12
	.byte	0x1f
	.byte	0x4d
	.byte	0x39
	.long	0x5784
	.byte	0x14
	.uleb128 0x1b
	.secrel32	LASF13
	.byte	0x1f
	.byte	0x50
	.byte	0x39
	.long	0x57a3
	.byte	0x18
	.uleb128 0x1b
	.secrel32	LASF14
	.byte	0x1f
	.byte	0x51
	.byte	0x39
	.long	0x57cd
	.byte	0x1c
	.uleb128 0x11
	.ascii "Clone_X\0"
	.byte	0x1f
	.byte	0x54
	.byte	0x39
	.long	0x57e7
	.byte	0x20
	.uleb128 0x11
	.ascii "To_X_I\0"
	.byte	0x1f
	.byte	0x57
	.byte	0x39
	.long	0x5807
	.byte	0x24
	.uleb128 0x11
	.ascii "To_X_L\0"
	.byte	0x1f
	.byte	0x58
	.byte	0x39
	.long	0x5827
	.byte	0x28
	.uleb128 0x11
	.ascii "InitializeNumberFormatInfo\0"
	.byte	0x1f
	.byte	0x5b
	.byte	0x2e
	.long	0x583e
	.byte	0x2c
	.uleb128 0x11
	.ascii "ToString\0"
	.byte	0x1f
	.byte	0x5c
	.byte	0x3a
	.long	0x586c
	.byte	0x30
	.uleb128 0x1b
	.secrel32	LASF15
	.byte	0x1f
	.byte	0x5d
	.byte	0x39
	.long	0x5890
	.byte	0x34
	.uleb128 0x11
	.ascii "Add_I_X\0"
	.byte	0x1f
	.byte	0x60
	.byte	0x39
	.long	0x58af
	.byte	0x38
	.uleb128 0x11
	.ascii "Add_L_X\0"
	.byte	0x1f
	.byte	0x61
	.byte	0x39
	.long	0x58ce
	.byte	0x3c
	.uleb128 0x11
	.ascii "Add_X_I\0"
	.byte	0x1f
	.byte	0x62
	.byte	0x39
	.long	0x58ed
	.byte	0x40
	.uleb128 0x11
	.ascii "Add_X_L\0"
	.byte	0x1f
	.byte	0x63
	.byte	0x39
	.long	0x590c
	.byte	0x44
	.uleb128 0x11
	.ascii "Add_X_X\0"
	.byte	0x1f
	.byte	0x64
	.byte	0x39
	.long	0x592b
	.byte	0x48
	.uleb128 0x1b
	.secrel32	LASF16
	.byte	0x1f
	.byte	0x67
	.byte	0x39
	.long	0x594a
	.byte	0x4c
	.uleb128 0x1b
	.secrel32	LASF17
	.byte	0x1f
	.byte	0x68
	.byte	0x39
	.long	0x5969
	.byte	0x50
	.uleb128 0x1b
	.secrel32	LASF18
	.byte	0x1f
	.byte	0x69
	.byte	0x39
	.long	0x58ed
	.byte	0x54
	.uleb128 0x1b
	.secrel32	LASF19
	.byte	0x1f
	.byte	0x6a
	.byte	0x39
	.long	0x590c
	.byte	0x58
	.uleb128 0x1b
	.secrel32	LASF20
	.byte	0x1f
	.byte	0x6b
	.byte	0x39
	.long	0x592b
	.byte	0x5c
	.uleb128 0x1b
	.secrel32	LASF21
	.byte	0x1f
	.byte	0x6e
	.byte	0x39
	.long	0x58af
	.byte	0x60
	.uleb128 0x1b
	.secrel32	LASF22
	.byte	0x1f
	.byte	0x6f
	.byte	0x39
	.long	0x58ce
	.byte	0x64
	.uleb128 0x1b
	.secrel32	LASF23
	.byte	0x1f
	.byte	0x70
	.byte	0x39
	.long	0x58ed
	.byte	0x68
	.uleb128 0x1b
	.secrel32	LASF24
	.byte	0x1f
	.byte	0x71
	.byte	0x39
	.long	0x590c
	.byte	0x6c
	.uleb128 0x1b
	.secrel32	LASF25
	.byte	0x1f
	.byte	0x72
	.byte	0x39
	.long	0x592b
	.byte	0x70
	.uleb128 0x1b
	.secrel32	LASF26
	.byte	0x1f
	.byte	0x75
	.byte	0x39
	.long	0x598d
	.byte	0x74
	.uleb128 0x1b
	.secrel32	LASF27
	.byte	0x1f
	.byte	0x76
	.byte	0x39
	.long	0x59b1
	.byte	0x78
	.uleb128 0x1b
	.secrel32	LASF28
	.byte	0x1f
	.byte	0x77
	.byte	0x39
	.long	0x59d5
	.byte	0x7c
	.uleb128 0x1b
	.secrel32	LASF29
	.byte	0x1f
	.byte	0x78
	.byte	0x39
	.long	0x59f9
	.byte	0x80
	.uleb128 0x1b
	.secrel32	LASF30
	.byte	0x1f
	.byte	0x79
	.byte	0x39
	.long	0x5a1d
	.byte	0x84
	.uleb128 0x11
	.ascii "LeftShift_X_I\0"
	.byte	0x1f
	.byte	0x7c
	.byte	0x39
	.long	0x58ed
	.byte	0x88
	.uleb128 0x11
	.ascii "RightShift_X_I\0"
	.byte	0x1f
	.byte	0x7f
	.byte	0x39
	.long	0x58ed
	.byte	0x8c
	.uleb128 0x11
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x1f
	.byte	0x82
	.byte	0x39
	.long	0x594a
	.byte	0x90
	.uleb128 0x11
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x1f
	.byte	0x83
	.byte	0x39
	.long	0x5969
	.byte	0x94
	.uleb128 0x11
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x1f
	.byte	0x84
	.byte	0x39
	.long	0x5a3c
	.byte	0x98
	.uleb128 0x11
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x1f
	.byte	0x85
	.byte	0x39
	.long	0x5a5b
	.byte	0x9c
	.uleb128 0x11
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x1f
	.byte	0x86
	.byte	0x39
	.long	0x592b
	.byte	0xa0
	.uleb128 0x11
	.ascii "BitwiseOr_I_X\0"
	.byte	0x1f
	.byte	0x89
	.byte	0x39
	.long	0x58af
	.byte	0xa4
	.uleb128 0x11
	.ascii "BitwiseOr_L_X\0"
	.byte	0x1f
	.byte	0x8a
	.byte	0x39
	.long	0x58ce
	.byte	0xa8
	.uleb128 0x11
	.ascii "BitwiseOr_X_I\0"
	.byte	0x1f
	.byte	0x8b
	.byte	0x39
	.long	0x58ed
	.byte	0xac
	.uleb128 0x11
	.ascii "BitwiseOr_X_L\0"
	.byte	0x1f
	.byte	0x8c
	.byte	0x39
	.long	0x590c
	.byte	0xb0
	.uleb128 0x11
	.ascii "BitwiseOr_X_X\0"
	.byte	0x1f
	.byte	0x8d
	.byte	0x39
	.long	0x592b
	.byte	0xb4
	.uleb128 0x11
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x1f
	.byte	0x90
	.byte	0x39
	.long	0x58af
	.byte	0xb8
	.uleb128 0x11
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x1f
	.byte	0x91
	.byte	0x39
	.long	0x58ce
	.byte	0xbc
	.uleb128 0x11
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x1f
	.byte	0x92
	.byte	0x39
	.long	0x58ed
	.byte	0xc0
	.uleb128 0x11
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x1f
	.byte	0x93
	.byte	0x39
	.long	0x590c
	.byte	0xc4
	.uleb128 0x11
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x1f
	.byte	0x94
	.byte	0x39
	.long	0x592b
	.byte	0xc8
	.uleb128 0x1b
	.secrel32	LASF31
	.byte	0x1f
	.byte	0x97
	.byte	0x39
	.long	0x5a80
	.byte	0xcc
	.uleb128 0x1b
	.secrel32	LASF32
	.byte	0x1f
	.byte	0x98
	.byte	0x39
	.long	0x5a9f
	.byte	0xd0
	.uleb128 0x1b
	.secrel32	LASF33
	.byte	0x1f
	.byte	0x99
	.byte	0x39
	.long	0x5abe
	.byte	0xd4
	.uleb128 0x1b
	.secrel32	LASF34
	.byte	0x1f
	.byte	0x9a
	.byte	0x39
	.long	0x5add
	.byte	0xd8
	.uleb128 0x1b
	.secrel32	LASF35
	.byte	0x1f
	.byte	0x9b
	.byte	0x39
	.long	0x5afc
	.byte	0xdc
	.uleb128 0x1b
	.secrel32	LASF36
	.byte	0x1f
	.byte	0x9e
	.byte	0x39
	.long	0x5a80
	.byte	0xe0
	.uleb128 0x1b
	.secrel32	LASF37
	.byte	0x1f
	.byte	0x9f
	.byte	0x39
	.long	0x5a9f
	.byte	0xe4
	.uleb128 0x1b
	.secrel32	LASF38
	.byte	0x1f
	.byte	0xa0
	.byte	0x39
	.long	0x5abe
	.byte	0xe8
	.uleb128 0x1b
	.secrel32	LASF39
	.byte	0x1f
	.byte	0xa1
	.byte	0x39
	.long	0x5add
	.byte	0xec
	.uleb128 0x1b
	.secrel32	LASF40
	.byte	0x1f
	.byte	0xa2
	.byte	0x39
	.long	0x5afc
	.byte	0xf0
	.uleb128 0x1b
	.secrel32	LASF41
	.byte	0x1f
	.byte	0xa5
	.byte	0x39
	.long	0x58af
	.byte	0xf4
	.uleb128 0x1b
	.secrel32	LASF42
	.byte	0x1f
	.byte	0xa6
	.byte	0x39
	.long	0x58ce
	.byte	0xf8
	.uleb128 0x1b
	.secrel32	LASF43
	.byte	0x1f
	.byte	0xa7
	.byte	0x39
	.long	0x58ed
	.byte	0xfc
	.uleb128 0x21
	.secrel32	LASF44
	.byte	0x1f
	.byte	0xa8
	.byte	0x39
	.long	0x590c
	.word	0x100
	.uleb128 0x21
	.secrel32	LASF45
	.byte	0x1f
	.byte	0xa9
	.byte	0x39
	.long	0x592b
	.word	0x104
	.uleb128 0x22
	.ascii "Pow_X_I\0"
	.byte	0x1f
	.byte	0xac
	.byte	0x39
	.long	0x58ed
	.word	0x108
	.uleb128 0x22
	.ascii "ModPow_X_X_X\0"
	.byte	0x1f
	.byte	0xaf
	.byte	0x39
	.long	0x5b20
	.word	0x10c
	.uleb128 0x22
	.ascii "FromByteArrayForSINT\0"
	.byte	0x1f
	.byte	0xb2
	.byte	0x39
	.long	0x5b44
	.word	0x110
	.uleb128 0x22
	.ascii "ToByteArrayForSINT\0"
	.byte	0x1f
	.byte	0xb3
	.byte	0x39
	.long	0x5b6d
	.word	0x114
	.uleb128 0x22
	.ascii "TryParseForSINT\0"
	.byte	0x1f
	.byte	0xb4
	.byte	0x39
	.long	0x5b96
	.word	0x118
	.byte	0
	.uleb128 0xe
	.long	0x5719
	.uleb128 0xf
	.long	0x5719
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4d91
	.uleb128 0x6
	.byte	0x4
	.long	0x570e
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5739
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x514e
	.uleb128 0x6
	.byte	0x4
	.long	0x5725
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5759
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5745
	.uleb128 0xe
	.long	0x576a
	.uleb128 0xf
	.long	0x514e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x575f
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5784
	.uleb128 0xf
	.long	0x4cd7
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5770
	.uleb128 0x23
	.long	0x4cbf
	.long	0x57a3
	.uleb128 0xf
	.long	0x727
	.uleb128 0xf
	.long	0xc8
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x578a
	.uleb128 0x23
	.long	0x4cbf
	.long	0x57c7
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x727
	.uleb128 0xf
	.long	0xc8
	.uleb128 0xf
	.long	0x57c7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc8
	.uleb128 0x6
	.byte	0x4
	.long	0x57a9
	.uleb128 0x23
	.long	0x4cbf
	.long	0x57e7
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57d3
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5801
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5801
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c9b
	.uleb128 0x6
	.byte	0x4
	.long	0x57ed
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5821
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5821
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4cad
	.uleb128 0x6
	.byte	0x4
	.long	0x580d
	.uleb128 0xe
	.long	0x5838
	.uleb128 0xf
	.long	0x5838
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5091
	.uleb128 0x6
	.byte	0x4
	.long	0x582d
	.uleb128 0x23
	.long	0x4cbf
	.long	0x586c
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x437
	.uleb128 0xf
	.long	0xc8
	.uleb128 0xf
	.long	0xc0
	.uleb128 0xf
	.long	0xe7
	.uleb128 0xf
	.long	0x5838
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5844
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5890
	.uleb128 0xf
	.long	0x437
	.uleb128 0xf
	.long	0x4cf7
	.uleb128 0xf
	.long	0x5838
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5872
	.uleb128 0x23
	.long	0x4cbf
	.long	0x58af
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5896
	.uleb128 0x23
	.long	0x4cbf
	.long	0x58ce
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58b5
	.uleb128 0x23
	.long	0x4cbf
	.long	0x58ed
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58d4
	.uleb128 0x23
	.long	0x4cbf
	.long	0x590c
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58f3
	.uleb128 0x23
	.long	0x4cbf
	.long	0x592b
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5912
	.uleb128 0x23
	.long	0x4cbf
	.long	0x594a
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5801
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5931
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5969
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5821
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5950
	.uleb128 0x23
	.long	0x4cbf
	.long	0x598d
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5801
	.uleb128 0xf
	.long	0x5801
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x596f
	.uleb128 0x23
	.long	0x4cbf
	.long	0x59b1
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5821
	.uleb128 0xf
	.long	0x5821
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5993
	.uleb128 0x23
	.long	0x4cbf
	.long	0x59d5
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x5739
	.uleb128 0xf
	.long	0x5801
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59b7
	.uleb128 0x23
	.long	0x4cbf
	.long	0x59f9
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x5739
	.uleb128 0xf
	.long	0x5821
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59db
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5a1d
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5739
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59ff
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5a3c
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x5801
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a23
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5a5b
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x5821
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a42
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5a7a
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c79
	.uleb128 0x6
	.byte	0x4
	.long	0x5a61
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5a9f
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a86
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5abe
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4c9b
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5aa5
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5add
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x4cad
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ac4
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5afc
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ae3
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5b20
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b02
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5b44
	.uleb128 0xf
	.long	0x727
	.uleb128 0xf
	.long	0xc8
	.uleb128 0xf
	.long	0x431
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b26
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5b6d
	.uleb128 0xf
	.long	0xc0
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x727
	.uleb128 0xf
	.long	0xc8
	.uleb128 0xf
	.long	0x57c7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b4a
	.uleb128 0x23
	.long	0x4cbf
	.long	0x5b96
	.uleb128 0xf
	.long	0x437
	.uleb128 0xf
	.long	0x4cf7
	.uleb128 0xf
	.long	0x5838
	.uleb128 0xf
	.long	0x431
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b73
	.uleb128 0x3
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x1f
	.byte	0xb5
	.byte	0x7
	.long	0x516c
	.uleb128 0x10
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x20
	.byte	0x28
	.byte	0x16
	.long	0x5c25
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x20
	.byte	0x2a
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF8
	.byte	0x20
	.byte	0x2b
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF46
	.byte	0x20
	.byte	0x2c
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF9
	.byte	0x20
	.byte	0x2d
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF10
	.byte	0x20
	.byte	0x2e
	.byte	0x16
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x5bba
	.uleb128 0x1d
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x4
	.byte	0x20
	.byte	0x26
	.byte	0xb
	.long	0x5c68
	.uleb128 0x1e
	.ascii "FLAGS\0"
	.byte	0x20
	.byte	0x2f
	.byte	0xb
	.long	0x5c25
	.uleb128 0x1e
	.ascii "__dummy\0"
	.byte	0x20
	.byte	0x31
	.byte	0x13
	.long	0x4c9b
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x20
	.byte	0x38
	.byte	0x2a
	.long	0x5c80
	.uleb128 0x6
	.byte	0x4
	.long	0x5c2a
	.uleb128 0x1f
	.ascii "__tag_PMC_SINT_ENTRY_POINTS\0"
	.word	0x210
	.byte	0x20
	.byte	0x3a
	.byte	0x14
	.long	0x60dd
	.uleb128 0x11
	.ascii "UINT_ENTRY_POINTS\0"
	.byte	0x20
	.byte	0x3d
	.byte	0x1f
	.long	0x5b9c
	.byte	0
	.uleb128 0x21
	.secrel32	LASF11
	.byte	0x20
	.byte	0x40
	.byte	0x2e
	.long	0x571f
	.word	0x11c
	.uleb128 0x22
	.ascii "From_I\0"
	.byte	0x20
	.byte	0x43
	.byte	0x38
	.long	0x60f7
	.word	0x120
	.uleb128 0x22
	.ascii "From_L\0"
	.byte	0x20
	.byte	0x46
	.byte	0x38
	.long	0x6111
	.word	0x124
	.uleb128 0x22
	.ascii "Dispose\0"
	.byte	0x20
	.byte	0x49
	.byte	0x2e
	.long	0x6122
	.word	0x128
	.uleb128 0x21
	.secrel32	LASF12
	.byte	0x20
	.byte	0x4c
	.byte	0x38
	.long	0x613c
	.word	0x12c
	.uleb128 0x21
	.secrel32	LASF13
	.byte	0x20
	.byte	0x4f
	.byte	0x38
	.long	0x615b
	.word	0x130
	.uleb128 0x21
	.secrel32	LASF14
	.byte	0x20
	.byte	0x50
	.byte	0x38
	.long	0x617f
	.word	0x134
	.uleb128 0x22
	.ascii "Clone_X\0"
	.byte	0x20
	.byte	0x53
	.byte	0x38
	.long	0x6199
	.word	0x138
	.uleb128 0x22
	.ascii "To_X_I\0"
	.byte	0x20
	.byte	0x56
	.byte	0x38
	.long	0x61b3
	.word	0x13c
	.uleb128 0x22
	.ascii "To_X_L\0"
	.byte	0x20
	.byte	0x57
	.byte	0x38
	.long	0x61d3
	.word	0x140
	.uleb128 0x22
	.ascii "Negate_X\0"
	.byte	0x20
	.byte	0x5a
	.byte	0x38
	.long	0x6199
	.word	0x144
	.uleb128 0x21
	.secrel32	LASF15
	.byte	0x20
	.byte	0x62
	.byte	0x39
	.long	0x61f7
	.word	0x148
	.uleb128 0x22
	.ascii "Add_I_X\0"
	.byte	0x20
	.byte	0x65
	.byte	0x38
	.long	0x6216
	.word	0x14c
	.uleb128 0x22
	.ascii "Add_L_X\0"
	.byte	0x20
	.byte	0x66
	.byte	0x38
	.long	0x6235
	.word	0x150
	.uleb128 0x22
	.ascii "Add_UX_X\0"
	.byte	0x20
	.byte	0x67
	.byte	0x38
	.long	0x6254
	.word	0x154
	.uleb128 0x22
	.ascii "Add_X_I\0"
	.byte	0x20
	.byte	0x68
	.byte	0x38
	.long	0x6273
	.word	0x158
	.uleb128 0x22
	.ascii "Add_X_L\0"
	.byte	0x20
	.byte	0x69
	.byte	0x38
	.long	0x6292
	.word	0x15c
	.uleb128 0x22
	.ascii "Add_X_UX\0"
	.byte	0x20
	.byte	0x6a
	.byte	0x38
	.long	0x62b1
	.word	0x160
	.uleb128 0x22
	.ascii "Add_X_X\0"
	.byte	0x20
	.byte	0x6b
	.byte	0x38
	.long	0x62d0
	.word	0x164
	.uleb128 0x21
	.secrel32	LASF16
	.byte	0x20
	.byte	0x6e
	.byte	0x38
	.long	0x6216
	.word	0x168
	.uleb128 0x21
	.secrel32	LASF17
	.byte	0x20
	.byte	0x6f
	.byte	0x38
	.long	0x6235
	.word	0x16c
	.uleb128 0x22
	.ascii "Subtruct_UX_X\0"
	.byte	0x20
	.byte	0x70
	.byte	0x38
	.long	0x6254
	.word	0x170
	.uleb128 0x21
	.secrel32	LASF18
	.byte	0x20
	.byte	0x71
	.byte	0x38
	.long	0x6273
	.word	0x174
	.uleb128 0x21
	.secrel32	LASF19
	.byte	0x20
	.byte	0x72
	.byte	0x38
	.long	0x6292
	.word	0x178
	.uleb128 0x22
	.ascii "Subtruct_X_UX\0"
	.byte	0x20
	.byte	0x73
	.byte	0x38
	.long	0x62b1
	.word	0x17c
	.uleb128 0x21
	.secrel32	LASF20
	.byte	0x20
	.byte	0x74
	.byte	0x38
	.long	0x62d0
	.word	0x180
	.uleb128 0x21
	.secrel32	LASF21
	.byte	0x20
	.byte	0x77
	.byte	0x38
	.long	0x6216
	.word	0x184
	.uleb128 0x21
	.secrel32	LASF22
	.byte	0x20
	.byte	0x78
	.byte	0x38
	.long	0x6235
	.word	0x188
	.uleb128 0x22
	.ascii "Multiply_UX_X\0"
	.byte	0x20
	.byte	0x79
	.byte	0x38
	.long	0x6254
	.word	0x18c
	.uleb128 0x21
	.secrel32	LASF23
	.byte	0x20
	.byte	0x7a
	.byte	0x38
	.long	0x6273
	.word	0x190
	.uleb128 0x21
	.secrel32	LASF24
	.byte	0x20
	.byte	0x7b
	.byte	0x38
	.long	0x6292
	.word	0x194
	.uleb128 0x22
	.ascii "Multiply_X_UX\0"
	.byte	0x20
	.byte	0x7c
	.byte	0x38
	.long	0x62b1
	.word	0x198
	.uleb128 0x21
	.secrel32	LASF25
	.byte	0x20
	.byte	0x7d
	.byte	0x38
	.long	0x62d0
	.word	0x19c
	.uleb128 0x21
	.secrel32	LASF26
	.byte	0x20
	.byte	0x80
	.byte	0x38
	.long	0x62f4
	.word	0x1a0
	.uleb128 0x21
	.secrel32	LASF27
	.byte	0x20
	.byte	0x81
	.byte	0x38
	.long	0x6318
	.word	0x1a4
	.uleb128 0x22
	.ascii "DivRem_UX_X\0"
	.byte	0x20
	.byte	0x82
	.byte	0x38
	.long	0x633c
	.word	0x1a8
	.uleb128 0x21
	.secrel32	LASF28
	.byte	0x20
	.byte	0x83
	.byte	0x38
	.long	0x6360
	.word	0x1ac
	.uleb128 0x21
	.secrel32	LASF29
	.byte	0x20
	.byte	0x84
	.byte	0x38
	.long	0x6384
	.word	0x1b0
	.uleb128 0x22
	.ascii "DivRem_X_UX\0"
	.byte	0x20
	.byte	0x85
	.byte	0x38
	.long	0x63a8
	.word	0x1b4
	.uleb128 0x21
	.secrel32	LASF30
	.byte	0x20
	.byte	0x86
	.byte	0x38
	.long	0x63cc
	.word	0x1b8
	.uleb128 0x21
	.secrel32	LASF31
	.byte	0x20
	.byte	0xa6
	.byte	0x38
	.long	0x63eb
	.word	0x1bc
	.uleb128 0x21
	.secrel32	LASF32
	.byte	0x20
	.byte	0xa7
	.byte	0x38
	.long	0x640a
	.word	0x1c0
	.uleb128 0x22
	.ascii "Compare_UX_X\0"
	.byte	0x20
	.byte	0xa8
	.byte	0x38
	.long	0x6429
	.word	0x1c4
	.uleb128 0x21
	.secrel32	LASF33
	.byte	0x20
	.byte	0xa9
	.byte	0x38
	.long	0x6448
	.word	0x1c8
	.uleb128 0x21
	.secrel32	LASF34
	.byte	0x20
	.byte	0xaa
	.byte	0x38
	.long	0x6467
	.word	0x1cc
	.uleb128 0x22
	.ascii "Compare_X_UX\0"
	.byte	0x20
	.byte	0xab
	.byte	0x38
	.long	0x6486
	.word	0x1d0
	.uleb128 0x21
	.secrel32	LASF35
	.byte	0x20
	.byte	0xac
	.byte	0x38
	.long	0x64a5
	.word	0x1d4
	.uleb128 0x21
	.secrel32	LASF36
	.byte	0x20
	.byte	0xaf
	.byte	0x38
	.long	0x63eb
	.word	0x1d8
	.uleb128 0x21
	.secrel32	LASF37
	.byte	0x20
	.byte	0xb0
	.byte	0x38
	.long	0x640a
	.word	0x1dc
	.uleb128 0x22
	.ascii "Equals_UX_X\0"
	.byte	0x20
	.byte	0xb1
	.byte	0x38
	.long	0x6429
	.word	0x1e0
	.uleb128 0x21
	.secrel32	LASF38
	.byte	0x20
	.byte	0xb2
	.byte	0x38
	.long	0x6448
	.word	0x1e4
	.uleb128 0x21
	.secrel32	LASF39
	.byte	0x20
	.byte	0xb3
	.byte	0x38
	.long	0x6467
	.word	0x1e8
	.uleb128 0x22
	.ascii "Equals_X_UX\0"
	.byte	0x20
	.byte	0xb4
	.byte	0x38
	.long	0x6486
	.word	0x1ec
	.uleb128 0x21
	.secrel32	LASF40
	.byte	0x20
	.byte	0xb5
	.byte	0x38
	.long	0x64a5
	.word	0x1f0
	.uleb128 0x21
	.secrel32	LASF41
	.byte	0x20
	.byte	0xb8
	.byte	0x38
	.long	0x64c4
	.word	0x1f4
	.uleb128 0x21
	.secrel32	LASF42
	.byte	0x20
	.byte	0xb9
	.byte	0x38
	.long	0x64e3
	.word	0x1f8
	.uleb128 0x22
	.ascii "GreatestCommonDivisor_UX_X\0"
	.byte	0x20
	.byte	0xba
	.byte	0x38
	.long	0x6502
	.word	0x1fc
	.uleb128 0x21
	.secrel32	LASF43
	.byte	0x20
	.byte	0xbb
	.byte	0x38
	.long	0x6521
	.word	0x200
	.uleb128 0x21
	.secrel32	LASF44
	.byte	0x20
	.byte	0xbc
	.byte	0x38
	.long	0x6540
	.word	0x204
	.uleb128 0x22
	.ascii "GreatestCommonDivisor_X_UX\0"
	.byte	0x20
	.byte	0xbd
	.byte	0x38
	.long	0x655f
	.word	0x208
	.uleb128 0x21
	.secrel32	LASF45
	.byte	0x20
	.byte	0xbe
	.byte	0x38
	.long	0x657e
	.word	0x20c
	.byte	0
	.uleb128 0x23
	.long	0x4cbf
	.long	0x60f1
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c68
	.uleb128 0x6
	.byte	0x4
	.long	0x60dd
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6111
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x60fd
	.uleb128 0xe
	.long	0x6122
	.uleb128 0xf
	.long	0x5c68
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6117
	.uleb128 0x23
	.long	0x4cbf
	.long	0x613c
	.uleb128 0xf
	.long	0x4cd7
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6128
	.uleb128 0x23
	.long	0x4cbf
	.long	0x615b
	.uleb128 0xf
	.long	0x727
	.uleb128 0xf
	.long	0xc8
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6142
	.uleb128 0x23
	.long	0x4cbf
	.long	0x617f
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x727
	.uleb128 0xf
	.long	0xc8
	.uleb128 0xf
	.long	0x57c7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6161
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6199
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6185
	.uleb128 0x23
	.long	0x4cbf
	.long	0x61b3
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x619f
	.uleb128 0x23
	.long	0x4cbf
	.long	0x61cd
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x61cd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c8a
	.uleb128 0x6
	.byte	0x4
	.long	0x61b9
	.uleb128 0x23
	.long	0x4cbf
	.long	0x61f7
	.uleb128 0xf
	.long	0x437
	.uleb128 0xf
	.long	0x4cf7
	.uleb128 0xf
	.long	0x5838
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x61d9
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6216
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x61fd
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6235
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x621c
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6254
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x623b
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6273
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x625a
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6292
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6279
	.uleb128 0x23
	.long	0x4cbf
	.long	0x62b1
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6298
	.uleb128 0x23
	.long	0x4cbf
	.long	0x62d0
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62b7
	.uleb128 0x23
	.long	0x4cbf
	.long	0x62f4
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62d6
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6318
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62fa
	.uleb128 0x23
	.long	0x4cbf
	.long	0x633c
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x631e
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6360
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x60f1
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6342
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6384
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x60f1
	.uleb128 0xf
	.long	0x61cd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6366
	.uleb128 0x23
	.long	0x4cbf
	.long	0x63a8
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x60f1
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x638a
	.uleb128 0x23
	.long	0x4cbf
	.long	0x63cc
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x60f1
	.uleb128 0xf
	.long	0x60f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x63ae
	.uleb128 0x23
	.long	0x4cbf
	.long	0x63eb
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x63d2
	.uleb128 0x23
	.long	0x4cbf
	.long	0x640a
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x63f1
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6429
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6410
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6448
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x642f
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6467
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x644e
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6486
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x646d
	.uleb128 0x23
	.long	0x4cbf
	.long	0x64a5
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5a7a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x648c
	.uleb128 0x23
	.long	0x4cbf
	.long	0x64c4
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x64ab
	.uleb128 0x23
	.long	0x4cbf
	.long	0x64e3
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x64ca
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6502
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x64e9
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6521
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c79
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6508
	.uleb128 0x23
	.long	0x4cbf
	.long	0x6540
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x4c8a
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6527
	.uleb128 0x23
	.long	0x4cbf
	.long	0x655f
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x514e
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6546
	.uleb128 0x23
	.long	0x4cbf
	.long	0x657e
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5c68
	.uleb128 0xf
	.long	0x5739
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6565
	.uleb128 0x3
	.ascii "PMC_SINT_ENTRY_POINTS\0"
	.byte	0x20
	.byte	0xbf
	.byte	0x7
	.long	0x5c86
	.uleb128 0x10
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x18
	.byte	0x21
	.byte	0x2d
	.byte	0x14
	.long	0x6669
	.uleb128 0x1c
	.secrel32	LASF7
	.byte	0x21
	.byte	0x2f
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF8
	.byte	0x21
	.byte	0x30
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF46
	.byte	0x21
	.byte	0x31
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF9
	.byte	0x21
	.byte	0x32
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.secrel32	LASF10
	.byte	0x21
	.byte	0x33
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "SIGNATURE1\0"
	.byte	0x21
	.byte	0x35
	.byte	0x13
	.long	0x4c9b
	.byte	0x4
	.uleb128 0x11
	.ascii "SIGNATURE2\0"
	.byte	0x21
	.byte	0x36
	.byte	0x13
	.long	0x4c9b
	.byte	0x8
	.uleb128 0x11
	.ascii "ABS\0"
	.byte	0x21
	.byte	0x38
	.byte	0x19
	.long	0x514e
	.byte	0xc
	.uleb128 0x11
	.ascii "SIGN\0"
	.byte	0x21
	.byte	0x39
	.byte	0xe
	.long	0xc0
	.byte	0x10
	.uleb128 0x20
	.ascii "IS_STATIC\0"
	.byte	0x21
	.byte	0x3b
	.byte	0x12
	.long	0xd7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.ascii "NUMBER_HEADER\0"
	.byte	0x21
	.byte	0x3c
	.byte	0x7
	.long	0x65a2
	.uleb128 0x13
	.ascii "ep_uint\0"
	.byte	0x21
	.byte	0x42
	.byte	0x22
	.long	0x5b9c
	.uleb128 0x13
	.ascii "number_zero\0"
	.byte	0x21
	.byte	0x45
	.byte	0x1a
	.long	0x6669
	.uleb128 0x13
	.ascii "number_one\0"
	.byte	0x21
	.byte	0x48
	.byte	0x1a
	.long	0x6669
	.uleb128 0x13
	.ascii "number_minus_one\0"
	.byte	0x21
	.byte	0x4b
	.byte	0x1a
	.long	0x6669
	.uleb128 0x24
	.ascii "uint_number_zero\0"
	.byte	0x21
	.byte	0x4e
	.byte	0x15
	.long	0x514e
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_zero
	.uleb128 0x24
	.ascii "uint_number_one\0"
	.byte	0x21
	.byte	0x51
	.byte	0x15
	.long	0x514e
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_one
	.uleb128 0x13
	.ascii "statistics_info\0"
	.byte	0x21
	.byte	0x54
	.byte	0x20
	.long	0x4d91
	.uleb128 0x10
	.ascii "__tag_PMC_DEBUG_ENVIRONMENT\0"
	.byte	0x8
	.byte	0x22
	.byte	0x26
	.byte	0x10
	.long	0x6766
	.uleb128 0x11
	.ascii "log\0"
	.byte	0x22
	.byte	0x28
	.byte	0x27
	.long	0x6776
	.byte	0
	.uleb128 0x11
	.ascii "pause\0"
	.byte	0x22
	.byte	0x29
	.byte	0x28
	.long	0x1d44
	.byte	0x4
	.byte	0
	.uleb128 0x23
	.long	0xe7
	.long	0x6776
	.uleb128 0xf
	.long	0x1d4b
	.uleb128 0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6766
	.uleb128 0x3
	.ascii "PMC_DEBUG_ENVIRONMENT\0"
	.byte	0x22
	.byte	0x2a
	.byte	0x3
	.long	0x6724
	.uleb128 0x26
	.ascii "TEST_Compare_X_X\0"
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.long	LFB78
	.long	LFE78-LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x688a
	.uleb128 0x27
	.ascii "env\0"
	.byte	0x1
	.byte	0x78
	.byte	0x2e
	.long	0x688a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "ep\0"
	.byte	0x1
	.byte	0x78
	.byte	0x4a
	.long	0x6890
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "no\0"
	.byte	0x1
	.byte	0x78
	.byte	0x52
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.secrel32	LASF47
	.byte	0x1
	.byte	0x78
	.byte	0x65
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF48
	.byte	0x1
	.byte	0x78
	.byte	0x73
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.secrel32	LASF49
	.byte	0x1
	.byte	0x78
	.byte	0x8e
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.secrel32	LASF50
	.byte	0x1
	.byte	0x78
	.byte	0x9c
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.secrel32	LASF51
	.byte	0x1
	.byte	0x78
	.byte	0xaf
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x1
	.byte	0x7a
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x1
	.byte	0x7b
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.secrel32	LASF52
	.byte	0x1
	.byte	0x7c
	.byte	0xc
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.secrel32	LASF53
	.byte	0x1
	.byte	0x7d
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.secrel32	LASF54
	.byte	0x1
	.byte	0x7e
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.secrel32	LASF55
	.byte	0x1
	.byte	0x7f
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x677c
	.uleb128 0x6
	.byte	0x4
	.long	0x6584
	.uleb128 0x26
	.ascii "TEST_Compare_X_UX\0"
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.long	LFB77
	.long	LFE77-LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x6987
	.uleb128 0x27
	.ascii "env\0"
	.byte	0x1
	.byte	0x66
	.byte	0x2f
	.long	0x688a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "ep\0"
	.byte	0x1
	.byte	0x66
	.byte	0x4b
	.long	0x6890
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "no\0"
	.byte	0x1
	.byte	0x66
	.byte	0x53
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.secrel32	LASF47
	.byte	0x1
	.byte	0x66
	.byte	0x66
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF48
	.byte	0x1
	.byte	0x66
	.byte	0x74
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.secrel32	LASF49
	.byte	0x1
	.byte	0x66
	.byte	0x8f
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.secrel32	LASF50
	.byte	0x1
	.byte	0x66
	.byte	0x9d
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.secrel32	LASF51
	.byte	0x1
	.byte	0x66
	.byte	0xb0
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x1
	.byte	0x68
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x1
	.byte	0x69
	.byte	0x15
	.long	0x514e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.secrel32	LASF52
	.byte	0x1
	.byte	0x6a
	.byte	0xc
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.secrel32	LASF53
	.byte	0x1
	.byte	0x6b
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.secrel32	LASF54
	.byte	0x1
	.byte	0x6c
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.secrel32	LASF55
	.byte	0x1
	.byte	0x6d
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.ascii "TEST_Compare_X_L\0"
	.byte	0x1
	.byte	0x59
	.byte	0x6
	.long	LFB76
	.long	LFE76-LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a4a
	.uleb128 0x27
	.ascii "env\0"
	.byte	0x1
	.byte	0x59
	.byte	0x2e
	.long	0x688a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "ep\0"
	.byte	0x1
	.byte	0x59
	.byte	0x4a
	.long	0x6890
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "no\0"
	.byte	0x1
	.byte	0x59
	.byte	0x52
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.secrel32	LASF47
	.byte	0x1
	.byte	0x59
	.byte	0x65
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF48
	.byte	0x1
	.byte	0x59
	.byte	0x73
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x1
	.byte	0x59
	.byte	0x86
	.long	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	LASF51
	.byte	0x1
	.byte	0x59
	.byte	0x91
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.secrel32	LASF52
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.secrel32	LASF53
	.byte	0x1
	.byte	0x5d
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.secrel32	LASF54
	.byte	0x1
	.byte	0x5e
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.ascii "TEST_Compare_X_I\0"
	.byte	0x1
	.byte	0x4c
	.byte	0x6
	.long	LFB75
	.long	LFE75-LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b0d
	.uleb128 0x27
	.ascii "env\0"
	.byte	0x1
	.byte	0x4c
	.byte	0x2e
	.long	0x688a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "ep\0"
	.byte	0x1
	.byte	0x4c
	.byte	0x4a
	.long	0x6890
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "no\0"
	.byte	0x1
	.byte	0x4c
	.byte	0x52
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.secrel32	LASF47
	.byte	0x1
	.byte	0x4c
	.byte	0x65
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF48
	.byte	0x1
	.byte	0x4c
	.byte	0x73
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x1
	.byte	0x4c
	.byte	0x86
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.secrel32	LASF51
	.byte	0x1
	.byte	0x4c
	.byte	0x91
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x1
	.byte	0x4e
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.secrel32	LASF52
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.secrel32	LASF53
	.byte	0x1
	.byte	0x50
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.secrel32	LASF54
	.byte	0x1
	.byte	0x51
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.ascii "TEST_Compare_UX_X\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.long	LFB74
	.long	LFE74-LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bfe
	.uleb128 0x27
	.ascii "env\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x2f
	.long	0x688a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "ep\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x4b
	.long	0x6890
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "no\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x53
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.secrel32	LASF47
	.byte	0x1
	.byte	0x3a
	.byte	0x66
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF48
	.byte	0x1
	.byte	0x3a
	.byte	0x74
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.secrel32	LASF49
	.byte	0x1
	.byte	0x3a
	.byte	0x8f
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.secrel32	LASF50
	.byte	0x1
	.byte	0x3a
	.byte	0x9d
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.secrel32	LASF51
	.byte	0x1
	.byte	0x3a
	.byte	0xb0
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.ascii "u\0"
	.byte	0x1
	.byte	0x3c
	.byte	0x15
	.long	0x514e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x1
	.byte	0x3d
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.secrel32	LASF52
	.byte	0x1
	.byte	0x3e
	.byte	0xc
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.secrel32	LASF53
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.secrel32	LASF54
	.byte	0x1
	.byte	0x40
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.secrel32	LASF55
	.byte	0x1
	.byte	0x41
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.ascii "TEST_Compare_L_X\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.long	LFB73
	.long	LFE73-LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cc1
	.uleb128 0x27
	.ascii "env\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x2e
	.long	0x688a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "ep\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x4a
	.long	0x6890
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "no\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x52
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x5d
	.long	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	LASF49
	.byte	0x1
	.byte	0x2d
	.byte	0x6f
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.secrel32	LASF50
	.byte	0x1
	.byte	0x2d
	.byte	0x7d
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.secrel32	LASF51
	.byte	0x1
	.byte	0x2d
	.byte	0x91
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.secrel32	LASF52
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.secrel32	LASF53
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.secrel32	LASF55
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.ascii "TEST_Compare_I_X\0"
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.long	LFB72
	.long	LFE72-LFB72
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.ascii "env\0"
	.byte	0x1
	.byte	0x20
	.byte	0x2e
	.long	0x688a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "ep\0"
	.byte	0x1
	.byte	0x20
	.byte	0x4a
	.long	0x6890
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "no\0"
	.byte	0x1
	.byte	0x20
	.byte	0x52
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x1
	.byte	0x20
	.byte	0x5d
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.secrel32	LASF49
	.byte	0x1
	.byte	0x20
	.byte	0x6f
	.long	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.secrel32	LASF50
	.byte	0x1
	.byte	0x20
	.byte	0x7d
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.secrel32	LASF51
	.byte	0x1
	.byte	0x20
	.byte	0x91
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.ascii "v\0"
	.byte	0x1
	.byte	0x22
	.byte	0x15
	.long	0x5c68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.secrel32	LASF52
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.secrel32	LASF53
	.byte	0x1
	.byte	0x24
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.secrel32	LASF55
	.byte	0x1
	.byte	0x25
	.byte	0x15
	.long	0x4cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
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
LASF8:
	.ascii "IS_ONE\0"
LASF38:
	.ascii "Equals_X_I\0"
LASF48:
	.ascii "u_buf_size\0"
LASF39:
	.ascii "Equals_X_L\0"
LASF9:
	.ascii "IS_EVEN\0"
LASF17:
	.ascii "Subtruct_L_X\0"
LASF11:
	.ascii "GetStatisticsInfo\0"
LASF43:
	.ascii "GreatestCommonDivisor_X_I\0"
LASF44:
	.ascii "GreatestCommonDivisor_X_L\0"
LASF54:
	.ascii "u_result\0"
LASF40:
	.ascii "Equals_X_X\0"
LASF15:
	.ascii "TryParse\0"
LASF13:
	.ascii "FromByteArray\0"
LASF24:
	.ascii "Multiply_X_L\0"
LASF3:
	.ascii "GroupSeparator\0"
LASF0:
	.ascii "refcount\0"
LASF4:
	.ascii "GroupSizes\0"
LASF45:
	.ascii "GreatestCommonDivisor_X_X\0"
LASF26:
	.ascii "DivRem_I_X\0"
LASF31:
	.ascii "Compare_I_X\0"
LASF22:
	.ascii "Multiply_L_X\0"
LASF6:
	.ascii "PositivePattern\0"
LASF2:
	.ascii "DecimalSeparator\0"
LASF53:
	.ascii "result\0"
LASF16:
	.ascii "Subtruct_I_X\0"
LASF50:
	.ascii "v_buf_size\0"
LASF52:
	.ascii "actual_w\0"
LASF37:
	.ascii "Equals_L_X\0"
LASF28:
	.ascii "DivRem_X_I\0"
LASF29:
	.ascii "DivRem_X_L\0"
LASF47:
	.ascii "u_buf\0"
LASF42:
	.ascii "GreatestCommonDivisor_L_X\0"
LASF51:
	.ascii "desired_w\0"
LASF33:
	.ascii "Compare_X_I\0"
LASF1:
	.ascii "DecimalDigits\0"
LASF34:
	.ascii "Compare_X_L\0"
LASF30:
	.ascii "DivRem_X_X\0"
LASF12:
	.ascii "GetConstantValue_I\0"
LASF35:
	.ascii "Compare_X_X\0"
LASF21:
	.ascii "Multiply_I_X\0"
LASF18:
	.ascii "Subtruct_X_I\0"
LASF19:
	.ascii "Subtruct_X_L\0"
LASF20:
	.ascii "Subtruct_X_X\0"
LASF46:
	.ascii "IS_MINUS_ONE\0"
LASF55:
	.ascii "v_result\0"
LASF23:
	.ascii "Multiply_X_I\0"
LASF36:
	.ascii "Equals_I_X\0"
LASF5:
	.ascii "NegativePattern\0"
LASF14:
	.ascii "ToByteArray\0"
LASF49:
	.ascii "v_buf\0"
LASF41:
	.ascii "GreatestCommonDivisor_I_X\0"
LASF10:
	.ascii "IS_POWER_OF_TWO\0"
LASF25:
	.ascii "Multiply_X_X\0"
LASF7:
	.ascii "IS_ZERO\0"
LASF27:
	.ascii "DivRem_L_X\0"
LASF32:
	.ascii "Compare_L_X\0"
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_FormatTestMesssage;	.scl	2;	.type	32;	.endef
	.def	_FormatTestLabel;	.scl	2;	.type	32;	.endef
	.def	_TEST_Assert;	.scl	2;	.type	32;	.endef
