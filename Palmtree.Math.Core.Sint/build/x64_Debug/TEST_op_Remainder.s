	.file	"TEST_op_Remainder.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.def	_EQUALS_MEMORY;	.scl	3;	.type	32;	.endef
	.seh_proc	_EQUALS_MEMORY
_EQUALS_MEMORY:
.LFB4273:
	.file 1 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_uint_debug.h"
	.loc 1 151 1
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
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 1 152 8
	movq	24(%rbp), %rax
	cmpq	40(%rbp), %rax
	je	.L4
	.loc 1 153 16
	movl	$-1, %eax
	jmp	.L3
.L6:
	.loc 1 156 13
	movq	16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 156 25
	movq	32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 156 12
	cmpb	%al, %dl
	je	.L5
	.loc 1 157 20
	movl	$-1, %eax
	jmp	.L3
.L5:
	.loc 1 158 9
	addq	$1, 16(%rbp)
	.loc 1 159 9
	addq	$1, 32(%rbp)
	.loc 1 160 9
	subq	$1, 24(%rbp)
.L4:
	.loc 1 154 11
	cmpq	$0, 24(%rbp)
	jne	.L6
	.loc 1 162 12
	movl	$0, %eax
.L3:
	.loc 1 163 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4273:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "F\0r\0o\0m\0B\0y\0t\0e\0A\0r\0r\0a\0y\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.align 8
.LC1:
	.ascii "R\0e\0m\0a\0i\0n\0d\0e\0r\0_\0I\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 8
.LC2:
	.ascii "D\0i\0v\0R\0e\0m\0_\0I\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.align 8
.LC3:
	.ascii "T\0o\0B\0y\0t\0e\0A\0r\0r\0a\0y\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.align 2
.LC4:
	.ascii "pRYOn0$PL0\0N\364\201W0j0D0\0\0"
	.text
	.globl	TEST_Remainder_I_X
	.def	TEST_Remainder_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	TEST_Remainder_I_X
TEST_Remainder_I_X:
.LFB4274:
	.file 2 "../TEST_op_Remainder.c"
	.loc 2 33 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$336, %rsp
	.seh_stackalloc	336
	.cfi_def_cfa_offset 368
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 240
	.seh_endprologue
	movq	%rcx, 240(%rbp)
	movq	%rdx, 248(%rbp)
	movl	%r8d, 256(%rbp)
	movl	%r9d, 264(%rbp)
	.loc 2 41 134
	movl	204(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 41 86
	movq	248(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 41 84
	leaq	184(%rbp), %r8
	movq	280(%rbp), %rdx
	movq	272(%rbp), %rcx
	call	*%rax
.LVL0:
	movl	%eax, 204(%rbp)
	.loc 2 41 5
	cmpl	$0, 204(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 41 22
	movl	256(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	FormatTestLabel
	.loc 2 41 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
	.loc 2 42 139
	movl	200(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 42 86
	movq	248(%rbp), %rax
	movq	808(%rax), %rax
	.loc 2 42 84
	movq	184(%rbp), %rdx
	leaq	176(%rbp), %r8
	movl	264(%rbp), %ecx
	movq	%r8, %r9
	movl	$0, %r8d
	call	*%rax
.LVL1:
	movl	%eax, 200(%rbp)
	.loc 2 42 5
	movl	200(%rbp), %eax
	cmpl	288(%rbp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 42 22
	movl	256(%rbp), %eax
	movl	$2, %r8d
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	FormatTestLabel
	.loc 2 42 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
	.loc 2 43 8
	cmpl	$0, 288(%rbp)
	jne	.L8
	.loc 2 45 170
	movl	196(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 45 88
	movq	248(%rbp), %rax
	movq	600(%rax), %r10
	.loc 2 45 86
	movq	176(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$256, %r8d
	movq	%rax, %rdx
	call	*%r10
.LVL2:
	movl	%eax, 196(%rbp)
	.loc 2 45 9
	cmpl	$0, 196(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 45 26
	movl	256(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	FormatTestLabel
	.loc 2 45 9
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
	.loc 2 46 76
	movq	-88(%rbp), %rdx
	movq	304(%rbp), %r8
	movq	296(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_EQUALS_MEMORY
	.loc 2 46 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 46 26
	movl	256(%rbp), %eax
	movl	$4, %r8d
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	FormatTestLabel
	.loc 2 46 9
	leaq	.LC4(%rip), %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
.L8:
	.loc 2 48 8
	cmpl	$0, 200(%rbp)
	jne	.L9
	.loc 2 49 11
	movq	248(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 49 9
	movq	176(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL3:
.L9:
	.loc 2 50 8
	cmpl	$0, 204(%rbp)
	jne	.L11
	.loc 2 51 11
	movq	248(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 51 9
	movq	184(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL4:
.L11:
	.loc 2 52 1
	nop
	addq	$336, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -312
	ret
	.cfi_endproc
.LFE4274:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "R\0e\0m\0a\0i\0n\0d\0e\0r\0_\0L\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 8
.LC6:
	.ascii "D\0i\0v\0R\0e\0m\0_\0L\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	TEST_Remainder_L_X
	.def	TEST_Remainder_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	TEST_Remainder_L_X
TEST_Remainder_L_X:
.LFB4275:
	.loc 2 55 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$336, %rsp
	.seh_stackalloc	336
	.cfi_def_cfa_offset 368
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 240
	.seh_endprologue
	movq	%rcx, 240(%rbp)
	movq	%rdx, 248(%rbp)
	movl	%r8d, 256(%rbp)
	movq	%r9, 264(%rbp)
	.loc 2 63 134
	movl	204(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 63 86
	movq	248(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 63 84
	leaq	184(%rbp), %r8
	movq	280(%rbp), %rdx
	movq	272(%rbp), %rcx
	call	*%rax
.LVL5:
	movl	%eax, 204(%rbp)
	.loc 2 63 5
	cmpl	$0, 204(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 63 22
	movl	256(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	FormatTestLabel
	.loc 2 63 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
	.loc 2 64 139
	movl	200(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC6(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 64 86
	movq	248(%rbp), %rax
	movq	816(%rax), %rax
	.loc 2 64 84
	movq	184(%rbp), %rdx
	leaq	176(%rbp), %r8
	movq	264(%rbp), %rcx
	movq	%r8, %r9
	movl	$0, %r8d
	call	*%rax
.LVL6:
	movl	%eax, 200(%rbp)
	.loc 2 64 5
	movl	200(%rbp), %eax
	cmpl	288(%rbp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 64 22
	movl	256(%rbp), %eax
	movl	$2, %r8d
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	FormatTestLabel
	.loc 2 64 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
	.loc 2 65 8
	cmpl	$0, 288(%rbp)
	jne	.L13
	.loc 2 67 170
	movl	196(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 67 88
	movq	248(%rbp), %rax
	movq	600(%rax), %r10
	.loc 2 67 86
	movq	176(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$256, %r8d
	movq	%rax, %rdx
	call	*%r10
.LVL7:
	movl	%eax, 196(%rbp)
	.loc 2 67 9
	cmpl	$0, 196(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 67 26
	movl	256(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	FormatTestLabel
	.loc 2 67 9
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
	.loc 2 68 76
	movq	-88(%rbp), %rdx
	movq	304(%rbp), %r8
	movq	296(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_EQUALS_MEMORY
	.loc 2 68 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 68 26
	movl	256(%rbp), %eax
	movl	$4, %r8d
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	FormatTestLabel
	.loc 2 68 9
	leaq	.LC4(%rip), %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	240(%rbp), %rcx
	call	TEST_Assert
.L13:
	.loc 2 70 8
	cmpl	$0, 200(%rbp)
	jne	.L14
	.loc 2 71 11
	movq	248(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 71 9
	movq	176(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL8:
.L14:
	.loc 2 72 8
	cmpl	$0, 204(%rbp)
	jne	.L16
	.loc 2 73 11
	movq	248(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 73 9
	movq	184(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL9:
.L16:
	.loc 2 74 1
	nop
	addq	$336, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -312
	ret
	.cfi_endproc
.LFE4275:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "R\0e\0m\0a\0i\0n\0d\0e\0r\0_\0U\0X\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 8
.LC8:
	.ascii "D\0i\0v\0R\0e\0m\0_\0U\0X\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	TEST_Remainder_UX_X
	.def	TEST_Remainder_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	TEST_Remainder_UX_X
TEST_Remainder_UX_X:
.LFB4276:
	.loc 2 77 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$352, %rsp
	.seh_stackalloc	352
	.cfi_def_cfa_offset 384
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 256
	.seh_endprologue
	movq	%rcx, 256(%rbp)
	movq	%rdx, 264(%rbp)
	movl	%r8d, 272(%rbp)
	movq	%r9, 280(%rbp)
	.loc 2 87 153
	movl	220(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 87 106
	movq	264(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 87 85
	leaq	200(%rbp), %r8
	movq	288(%rbp), %rdx
	movq	280(%rbp), %rcx
	call	*%rax
.LVL10:
	movl	%eax, 220(%rbp)
	.loc 2 87 5
	cmpl	$0, 220(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 87 22
	movl	272(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edx
	leaq	.LC7(%rip), %rcx
	call	FormatTestLabel
	.loc 2 87 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 88 135
	movl	216(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 88 87
	movq	264(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 88 85
	leaq	192(%rbp), %r8
	movq	304(%rbp), %rdx
	movq	296(%rbp), %rcx
	call	*%rax
.LVL11:
	movl	%eax, 216(%rbp)
	.loc 2 88 5
	cmpl	$0, 216(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 88 22
	movl	272(%rbp), %eax
	movl	$2, %r8d
	movl	%eax, %edx
	leaq	.LC7(%rip), %rcx
	call	FormatTestLabel
	.loc 2 88 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 89 141
	movl	212(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC8(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 89 87
	movq	264(%rbp), %rax
	movq	824(%rax), %rax
	.loc 2 89 85
	movq	192(%rbp), %rdx
	movq	200(%rbp), %rcx
	leaq	184(%rbp), %r8
	movq	%r8, %r9
	movl	$0, %r8d
	call	*%rax
.LVL12:
	movl	%eax, 212(%rbp)
	.loc 2 89 5
	movl	212(%rbp), %eax
	cmpl	312(%rbp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 89 22
	movl	272(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edx
	leaq	.LC7(%rip), %rcx
	call	FormatTestLabel
	.loc 2 89 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 90 8
	cmpl	$0, 312(%rbp)
	jne	.L18
	.loc 2 92 189
	movl	208(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 92 108
	movq	264(%rbp), %rax
	movq	56(%rax), %r10
	.loc 2 92 87
	movq	184(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$256, %r8d
	movq	%rax, %rdx
	call	*%r10
.LVL13:
	movl	%eax, 208(%rbp)
	.loc 2 92 9
	cmpl	$0, 208(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 92 26
	movl	272(%rbp), %eax
	movl	$4, %r8d
	movl	%eax, %edx
	leaq	.LC7(%rip), %rcx
	call	FormatTestLabel
	.loc 2 92 9
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 93 77
	movq	-88(%rbp), %rdx
	movq	328(%rbp), %r8
	movq	320(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_EQUALS_MEMORY
	.loc 2 93 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 93 26
	movl	272(%rbp), %eax
	movl	$5, %r8d
	movl	%eax, %edx
	leaq	.LC7(%rip), %rcx
	call	FormatTestLabel
	.loc 2 93 9
	leaq	.LC4(%rip), %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
.L18:
	.loc 2 95 8
	cmpl	$0, 212(%rbp)
	jne	.L19
	.loc 2 96 30
	movq	264(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 96 9
	movq	184(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL14:
.L19:
	.loc 2 97 8
	cmpl	$0, 216(%rbp)
	jne	.L20
	.loc 2 98 11
	movq	264(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 98 9
	movq	192(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL15:
.L20:
	.loc 2 99 8
	cmpl	$0, 220(%rbp)
	jne	.L22
	.loc 2 100 30
	movq	264(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 100 9
	movq	200(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL16:
.L22:
	.loc 2 101 1
	nop
	addq	$352, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -328
	ret
	.cfi_endproc
.LFE4276:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "R\0e\0m\0a\0i\0n\0d\0e\0r\0_\0X\0_\0I\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 8
.LC10:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0I\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	TEST_Remainder_X_I
	.def	TEST_Remainder_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	TEST_Remainder_X_I
TEST_Remainder_X_I:
.LFB4277:
	.loc 2 104 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	movq	%r9, 56(%rbp)
	.loc 2 109 134
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 109 86
	movq	40(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 109 84
	leaq	-16(%rbp), %r8
	movq	64(%rbp), %rdx
	movq	56(%rbp), %rcx
	call	*%rax
.LVL17:
	movl	%eax, -4(%rbp)
	.loc 2 109 5
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 109 22
	movl	48(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edx
	leaq	.LC9(%rip), %rcx
	call	FormatTestLabel
	.loc 2 109 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	TEST_Assert
	.loc 2 110 144
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC10(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 110 84
	movq	40(%rbp), %rax
	movq	832(%rax), %rax
	.loc 2 110 82
	movq	-16(%rbp), %rcx
	leaq	-20(%rbp), %r8
	movl	72(%rbp), %edx
	movq	%r8, %r9
	movl	$0, %r8d
	call	*%rax
.LVL18:
	movl	%eax, -8(%rbp)
	.loc 2 110 5
	movl	-8(%rbp), %eax
	cmpl	80(%rbp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 110 22
	movl	48(%rbp), %eax
	movl	$2, %r8d
	movl	%eax, %edx
	leaq	.LC9(%rip), %rcx
	call	FormatTestLabel
	.loc 2 110 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	TEST_Assert
	.loc 2 111 8
	cmpl	$0, 80(%rbp)
	jne	.L24
	.loc 2 113 9
	movl	-20(%rbp), %eax
	cmpl	%eax, 88(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 113 26
	movl	48(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edx
	leaq	.LC9(%rip), %rcx
	call	FormatTestLabel
	.loc 2 113 9
	leaq	.LC4(%rip), %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	TEST_Assert
.L24:
	.loc 2 115 8
	cmpl	$0, -4(%rbp)
	jne	.L26
	.loc 2 116 11
	movq	40(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 116 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL19:
.L26:
	.loc 2 117 1
	nop
	addq	$64, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 24
	ret
	.cfi_endproc
.LFE4277:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "R\0e\0m\0a\0i\0n\0d\0e\0r\0_\0X\0_\0L\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 8
.LC12:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0L\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	TEST_Remainder_X_L
	.def	TEST_Remainder_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	TEST_Remainder_X_L
TEST_Remainder_X_L:
.LFB4278:
	.loc 2 120 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	movq	%r9, 56(%rbp)
	.loc 2 125 134
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 125 86
	movq	40(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 125 84
	leaq	-16(%rbp), %r8
	movq	64(%rbp), %rdx
	movq	56(%rbp), %rcx
	call	*%rax
.LVL20:
	movl	%eax, -4(%rbp)
	.loc 2 125 5
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 125 22
	movl	48(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edx
	leaq	.LC11(%rip), %rcx
	call	FormatTestLabel
	.loc 2 125 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	TEST_Assert
	.loc 2 126 144
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC12(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 126 84
	movq	40(%rbp), %rax
	movq	840(%rax), %rax
	.loc 2 126 82
	movq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	72(%rbp), %rdx
	movq	%r8, %r9
	movl	$0, %r8d
	call	*%rax
.LVL21:
	movl	%eax, -8(%rbp)
	.loc 2 126 5
	movl	-8(%rbp), %eax
	cmpl	80(%rbp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 126 22
	movl	48(%rbp), %eax
	movl	$2, %r8d
	movl	%eax, %edx
	leaq	.LC11(%rip), %rcx
	call	FormatTestLabel
	.loc 2 126 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	TEST_Assert
	.loc 2 127 8
	cmpl	$0, 80(%rbp)
	jne	.L28
	.loc 2 129 9
	movq	-24(%rbp), %rax
	cmpq	%rax, 88(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 129 26
	movl	48(%rbp), %eax
	movl	$5, %r8d
	movl	%eax, %edx
	leaq	.LC11(%rip), %rcx
	call	FormatTestLabel
	.loc 2 129 9
	leaq	.LC4(%rip), %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	TEST_Assert
.L28:
	.loc 2 131 8
	cmpl	$0, -4(%rbp)
	jne	.L30
	.loc 2 132 11
	movq	40(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 132 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL22:
.L30:
	.loc 2 133 1
	nop
	addq	$64, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 24
	ret
	.cfi_endproc
.LFE4278:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "R\0e\0m\0a\0i\0n\0d\0e\0r\0_\0X\0_\0U\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 8
.LC14:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0U\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	TEST_Remainder_X_UX
	.def	TEST_Remainder_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	TEST_Remainder_X_UX
TEST_Remainder_X_UX:
.LFB4279:
	.loc 2 136 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$352, %rsp
	.seh_stackalloc	352
	.cfi_def_cfa_offset 384
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 256
	.seh_endprologue
	movq	%rcx, 256(%rbp)
	movq	%rdx, 264(%rbp)
	movl	%r8d, 272(%rbp)
	movq	%r9, 280(%rbp)
	.loc 2 146 135
	movl	220(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 146 87
	movq	264(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 146 85
	leaq	200(%rbp), %r8
	movq	288(%rbp), %rdx
	movq	280(%rbp), %rcx
	call	*%rax
.LVL23:
	movl	%eax, 220(%rbp)
	.loc 2 146 5
	cmpl	$0, 220(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 146 22
	movl	272(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edx
	leaq	.LC13(%rip), %rcx
	call	FormatTestLabel
	.loc 2 146 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 147 153
	movl	216(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 147 106
	movq	264(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 147 85
	leaq	192(%rbp), %r8
	movq	304(%rbp), %rdx
	movq	296(%rbp), %rcx
	call	*%rax
.LVL24:
	movl	%eax, 216(%rbp)
	.loc 2 147 5
	cmpl	$0, 216(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 147 22
	movl	272(%rbp), %eax
	movl	$2, %r8d
	movl	%eax, %edx
	leaq	.LC13(%rip), %rcx
	call	FormatTestLabel
	.loc 2 147 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 148 141
	movl	212(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC14(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 148 87
	movq	264(%rbp), %rax
	movq	848(%rax), %rax
	.loc 2 148 85
	movq	192(%rbp), %rdx
	movq	200(%rbp), %rcx
	leaq	184(%rbp), %r8
	movq	%r8, %r9
	movl	$0, %r8d
	call	*%rax
.LVL25:
	movl	%eax, 212(%rbp)
	.loc 2 148 5
	movl	212(%rbp), %eax
	cmpl	312(%rbp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 148 22
	movl	272(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edx
	leaq	.LC13(%rip), %rcx
	call	FormatTestLabel
	.loc 2 148 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 149 8
	cmpl	$0, 312(%rbp)
	jne	.L32
	.loc 2 151 171
	movl	208(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 151 89
	movq	264(%rbp), %rax
	movq	600(%rax), %r10
	.loc 2 151 87
	movq	184(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$256, %r8d
	movq	%rax, %rdx
	call	*%r10
.LVL26:
	movl	%eax, 208(%rbp)
	.loc 2 151 9
	cmpl	$0, 208(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 151 26
	movl	272(%rbp), %eax
	movl	$5, %r8d
	movl	%eax, %edx
	leaq	.LC13(%rip), %rcx
	call	FormatTestLabel
	.loc 2 151 9
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 152 77
	movq	-88(%rbp), %rdx
	movq	328(%rbp), %r8
	movq	320(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_EQUALS_MEMORY
	.loc 2 152 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 152 26
	movl	272(%rbp), %eax
	movl	$7, %r8d
	movl	%eax, %edx
	leaq	.LC13(%rip), %rcx
	call	FormatTestLabel
	.loc 2 152 9
	leaq	.LC4(%rip), %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
.L32:
	.loc 2 154 8
	cmpl	$0, 212(%rbp)
	jne	.L33
	.loc 2 155 11
	movq	264(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 155 9
	movq	184(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL27:
.L33:
	.loc 2 156 8
	cmpl	$0, 216(%rbp)
	jne	.L34
	.loc 2 157 30
	movq	264(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 157 9
	movq	192(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL28:
.L34:
	.loc 2 158 8
	cmpl	$0, 220(%rbp)
	jne	.L36
	.loc 2 159 11
	movq	264(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 159 9
	movq	200(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL29:
.L36:
	.loc 2 160 1
	nop
	addq	$352, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -328
	ret
	.cfi_endproc
.LFE4279:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "R\0e\0m\0a\0i\0n\0d\0e\0r\0_\0X\0_\0X\0 \0(\0%\0d\0.\0%\0d\0)\0\0\0"
	.align 8
.LC16:
	.ascii "D\0i\0v\0R\0e\0m\0_\0X\0_\0X\0n0\251_0^\263"
	.ascii "0\374"
	.ascii "0\311"
	.ascii "0L0\37g\205_\32\220\212"
	.ascii "0g0o0j0D0(\0%\0d\0)\0\0\0"
	.text
	.globl	TEST_Remainder_X_X
	.def	TEST_Remainder_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	TEST_Remainder_X_X
TEST_Remainder_X_X:
.LFB4280:
	.loc 2 163 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$352, %rsp
	.seh_stackalloc	352
	.cfi_def_cfa_offset 384
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 256
	.seh_endprologue
	movq	%rcx, 256(%rbp)
	movq	%rdx, 264(%rbp)
	movl	%r8d, 272(%rbp)
	movq	%r9, 280(%rbp)
	.loc 2 173 134
	movl	220(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 173 86
	movq	264(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 173 84
	leaq	200(%rbp), %r8
	movq	288(%rbp), %rdx
	movq	280(%rbp), %rcx
	call	*%rax
.LVL30:
	movl	%eax, 220(%rbp)
	.loc 2 173 5
	cmpl	$0, 220(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 173 22
	movl	272(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edx
	leaq	.LC15(%rip), %rcx
	call	FormatTestLabel
	.loc 2 173 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 174 134
	movl	216(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 174 86
	movq	264(%rbp), %rax
	movq	592(%rax), %rax
	.loc 2 174 84
	leaq	192(%rbp), %r8
	movq	304(%rbp), %rdx
	movq	296(%rbp), %rcx
	call	*%rax
.LVL31:
	movl	%eax, 216(%rbp)
	.loc 2 174 5
	cmpl	$0, 216(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 174 22
	movl	272(%rbp), %eax
	movl	$2, %r8d
	movl	%eax, %edx
	leaq	.LC15(%rip), %rcx
	call	FormatTestLabel
	.loc 2 174 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 175 139
	movl	212(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC16(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 175 86
	movq	264(%rbp), %rax
	movq	856(%rax), %rax
	.loc 2 175 84
	movq	192(%rbp), %rdx
	movq	200(%rbp), %rcx
	leaq	184(%rbp), %r8
	movq	%r8, %r9
	movl	$0, %r8d
	call	*%rax
.LVL32:
	movl	%eax, 212(%rbp)
	.loc 2 175 5
	movl	212(%rbp), %eax
	cmpl	312(%rbp), %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 175 22
	movl	272(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edx
	leaq	.LC15(%rip), %rcx
	call	FormatTestLabel
	.loc 2 175 5
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 176 8
	cmpl	$0, 312(%rbp)
	jne	.L38
	.loc 2 178 170
	movl	208(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	FormatTestMesssage
	movq	%rax, %rsi
	.loc 2 178 88
	movq	264(%rbp), %rax
	movq	600(%rax), %r10
	.loc 2 178 86
	movq	184(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r9
	movl	$256, %r8d
	movq	%rax, %rdx
	call	*%r10
.LVL33:
	movl	%eax, 208(%rbp)
	.loc 2 178 9
	cmpl	$0, 208(%rbp)
	sete	%al
	movzbl	%al, %ebx
	.loc 2 178 26
	movl	272(%rbp), %eax
	movl	$4, %r8d
	movl	%eax, %edx
	leaq	.LC15(%rip), %rcx
	call	FormatTestLabel
	.loc 2 178 9
	movq	%rsi, %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
	.loc 2 179 76
	movq	-88(%rbp), %rdx
	movq	328(%rbp), %r8
	movq	320(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_EQUALS_MEMORY
	.loc 2 179 9
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	.loc 2 179 26
	movl	272(%rbp), %eax
	movl	$5, %r8d
	movl	%eax, %edx
	leaq	.LC15(%rip), %rcx
	call	FormatTestLabel
	.loc 2 179 9
	leaq	.LC4(%rip), %r9
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	256(%rbp), %rcx
	call	TEST_Assert
.L38:
	.loc 2 181 8
	cmpl	$0, 212(%rbp)
	jne	.L39
	.loc 2 182 11
	movq	264(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 182 9
	movq	184(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL34:
.L39:
	.loc 2 183 8
	cmpl	$0, 216(%rbp)
	jne	.L40
	.loc 2 184 11
	movq	264(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 184 9
	movq	192(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL35:
.L40:
	.loc 2 185 8
	cmpl	$0, 220(%rbp)
	jne	.L42
	.loc 2 186 11
	movq	264(%rbp), %rax
	movq	576(%rax), %rax
	.loc 2 186 9
	movq	200(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL36:
.L42:
	.loc 2 187 1
	nop
	addq	$352, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -328
	ret
	.cfi_endproc
.LFE4280:
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
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x6709
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=core2 -march=nocona -g\0"
	.byte	0xc
	.ascii "../TEST_op_Remainder.c\0"
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
	.long	0xe1
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
	.long	0x121
	.uleb128 0x4
	.long	0x10c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0x121
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
	.long	0x167
	.uleb128 0x6
	.byte	0x8
	.long	0x16d
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.word	0x160
	.byte	0x3
	.word	0x1bc
	.byte	0x10
	.long	0x317
	.uleb128 0x8
	.secrel32	.LASF0
	.byte	0x3
	.word	0x1bd
	.byte	0x7
	.long	0x13c
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x3
	.word	0x1be
	.byte	0x10
	.long	0x464
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x3
	.word	0x1bf
	.byte	0x10
	.long	0x464
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x3
	.word	0x1c0
	.byte	0x11
	.long	0x474
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x3
	.word	0x1c1
	.byte	0x9
	.long	0x499
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x3
	.word	0x1c7
	.byte	0x5
	.long	0x4a9
	.byte	0x48
	.uleb128 0xa
	.ascii "lc_clike\0"
	.byte	0x3
	.word	0x1c8
	.byte	0x7
	.long	0x13c
	.word	0x108
	.uleb128 0xa
	.ascii "mb_cur_max\0"
	.byte	0x3
	.word	0x1c9
	.byte	0x7
	.long	0x13c
	.word	0x10c
	.uleb128 0xa
	.ascii "lconv_intl_refcount\0"
	.byte	0x3
	.word	0x1ca
	.byte	0x8
	.long	0x45e
	.word	0x110
	.uleb128 0xa
	.ascii "lconv_num_refcount\0"
	.byte	0x3
	.word	0x1cb
	.byte	0x8
	.long	0x45e
	.word	0x118
	.uleb128 0xa
	.ascii "lconv_mon_refcount\0"
	.byte	0x3
	.word	0x1cc
	.byte	0x8
	.long	0x45e
	.word	0x120
	.uleb128 0xa
	.ascii "lconv\0"
	.byte	0x3
	.word	0x1cd
	.byte	0x11
	.long	0x4c0
	.word	0x128
	.uleb128 0xa
	.ascii "ctype1_refcount\0"
	.byte	0x3
	.word	0x1ce
	.byte	0x8
	.long	0x45e
	.word	0x130
	.uleb128 0xa
	.ascii "ctype1\0"
	.byte	0x3
	.word	0x1cf
	.byte	0x13
	.long	0x4c6
	.word	0x138
	.uleb128 0xa
	.ascii "pctype\0"
	.byte	0x3
	.word	0x1d0
	.byte	0x19
	.long	0x4cc
	.word	0x140
	.uleb128 0xa
	.ascii "pclmap\0"
	.byte	0x3
	.word	0x1d1
	.byte	0x18
	.long	0x4d2
	.word	0x148
	.uleb128 0xa
	.ascii "pcumap\0"
	.byte	0x3
	.word	0x1d2
	.byte	0x18
	.long	0x4d2
	.word	0x150
	.uleb128 0xa
	.ascii "lc_time_curr\0"
	.byte	0x3
	.word	0x1d3
	.byte	0x1a
	.long	0x4fe
	.word	0x158
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x3
	.word	0x1a9
	.byte	0x25
	.long	0x32f
	.uleb128 0x6
	.byte	0x8
	.long	0x335
	.uleb128 0xb
	.ascii "threadmbcinfostruct\0"
	.uleb128 0xc
	.ascii "localeinfo_struct\0"
	.byte	0x10
	.byte	0x3
	.word	0x1ac
	.byte	0x10
	.long	0x38b
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x3
	.word	0x1ad
	.byte	0x12
	.long	0x14f
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x3
	.word	0x1ae
	.byte	0x12
	.long	0x317
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x3
	.word	0x1af
	.byte	0x3
	.long	0x34a
	.uleb128 0xc
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x3
	.word	0x1b3
	.byte	0x10
	.long	0x3f3
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x3
	.word	0x1b4
	.byte	0x12
	.long	0x121
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x3
	.word	0x1b5
	.byte	0x12
	.long	0x121
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x3
	.word	0x1b6
	.byte	0x12
	.long	0x121
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x3
	.word	0x1b7
	.byte	0x3
	.long	0x3a4
	.uleb128 0xd
	.byte	0x20
	.byte	0x3
	.word	0x1c2
	.byte	0x3
	.long	0x452
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x3
	.word	0x1c3
	.byte	0xb
	.long	0x452
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x3
	.word	0x1c4
	.byte	0xe
	.long	0x458
	.byte	0x8
	.uleb128 0x8
	.secrel32	.LASF0
	.byte	0x3
	.word	0x1c5
	.byte	0xa
	.long	0x45e
	.byte	0x10
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x3
	.word	0x1c6
	.byte	0xa
	.long	0x45e
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xca
	.uleb128 0x6
	.byte	0x8
	.long	0x10c
	.uleb128 0x6
	.byte	0x8
	.long	0x13c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xe
	.long	0x484
	.long	0x484
	.uleb128 0xf
	.long	0xe1
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xe
	.long	0x3f3
	.long	0x4a9
	.uleb128 0xf
	.long	0xe1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x402
	.long	0x4b9
	.uleb128 0xf
	.long	0xe1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4b9
	.uleb128 0x6
	.byte	0x8
	.long	0x121
	.uleb128 0x6
	.byte	0x8
	.long	0x137
	.uleb128 0x6
	.byte	0x8
	.long	0x4e9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x4d8
	.uleb128 0xb
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4ee
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x4
	.byte	0x3f
	.byte	0x2e
	.long	0x514
	.uleb128 0x6
	.byte	0x8
	.long	0x51a
	.uleb128 0x10
	.long	0x525
	.uleb128 0x11
	.long	0x13c
	.byte	0
	.uleb128 0x12
	.ascii "_XCPT_ACTION\0"
	.byte	0x10
	.byte	0x4
	.byte	0x41
	.byte	0xa
	.long	0x571
	.uleb128 0x13
	.ascii "XcptNum\0"
	.byte	0x4
	.byte	0x42
	.byte	0x13
	.long	0x484
	.byte	0
	.uleb128 0x13
	.ascii "SigNum\0"
	.byte	0x4
	.byte	0x43
	.byte	0x9
	.long	0x13c
	.byte	0x4
	.uleb128 0x13
	.ascii "XcptAction\0"
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.long	0x504
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x525
	.long	0x57c
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.ascii "_XcptActTab\0"
	.byte	0x4
	.byte	0x47
	.byte	0x1e
	.long	0x571
	.uleb128 0x15
	.ascii "_XcptActTabCount\0"
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.long	0x13c
	.uleb128 0x15
	.ascii "_XcptActTabSize\0"
	.byte	0x4
	.byte	0x49
	.byte	0xe
	.long	0x13c
	.uleb128 0x15
	.ascii "_First_FPE_Indx\0"
	.byte	0x4
	.byte	0x4a
	.byte	0xe
	.long	0x13c
	.uleb128 0x15
	.ascii "_Num_FPE\0"
	.byte	0x4
	.byte	0x4b
	.byte	0xe
	.long	0x13c
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x5
	.byte	0x8d
	.byte	0x19
	.long	0x484
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x464
	.uleb128 0x15
	.ascii "__imp__pctype\0"
	.byte	0x6
	.byte	0x2b
	.byte	0x1c
	.long	0x61f
	.uleb128 0x6
	.byte	0x8
	.long	0x4c6
	.uleb128 0x15
	.ascii "__imp__wctype\0"
	.byte	0x6
	.byte	0x3b
	.byte	0x1c
	.long	0x61f
	.uleb128 0x15
	.ascii "__imp__pwctype\0"
	.byte	0x6
	.byte	0x47
	.byte	0x1c
	.long	0x61f
	.uleb128 0xe
	.long	0x4e9
	.long	0x65d
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x652
	.uleb128 0x15
	.ascii "__newclmap\0"
	.byte	0x6
	.byte	0x50
	.byte	0x1e
	.long	0x65d
	.uleb128 0x15
	.ascii "__newcumap\0"
	.byte	0x6
	.byte	0x51
	.byte	0x1e
	.long	0x65d
	.uleb128 0x15
	.ascii "__ptlocinfo\0"
	.byte	0x6
	.byte	0x52
	.byte	0x19
	.long	0x14f
	.uleb128 0x15
	.ascii "__ptmbcinfo\0"
	.byte	0x6
	.byte	0x53
	.byte	0x19
	.long	0x317
	.uleb128 0x15
	.ascii "__globallocalestatus\0"
	.byte	0x6
	.byte	0x54
	.byte	0xe
	.long	0x13c
	.uleb128 0x15
	.ascii "__locale_changed\0"
	.byte	0x6
	.byte	0x55
	.byte	0xe
	.long	0x13c
	.uleb128 0x15
	.ascii "__initiallocinfo\0"
	.byte	0x6
	.byte	0x56
	.byte	0x28
	.long	0x16d
	.uleb128 0x15
	.ascii "__initiallocalestructinfo\0"
	.byte	0x6
	.byte	0x57
	.byte	0x1a
	.long	0x38b
	.uleb128 0x15
	.ascii "__imp___mb_cur_max\0"
	.byte	0x6
	.byte	0xcb
	.byte	0x10
	.long	0x45e
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
	.long	0x4d8
	.uleb128 0x12
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x7
	.byte	0x13
	.byte	0x10
	.long	0x7aa
	.uleb128 0x13
	.ascii "Data1\0"
	.byte	0x7
	.byte	0x14
	.byte	0x11
	.long	0x484
	.byte	0
	.uleb128 0x13
	.ascii "Data2\0"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.long	0x121
	.byte	0x4
	.uleb128 0x13
	.ascii "Data3\0"
	.byte	0x7
	.byte	0x16
	.byte	0x12
	.long	0x121
	.byte	0x6
	.uleb128 0x13
	.ascii "Data4\0"
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.long	0x7aa
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x4d8
	.long	0x7ba
	.uleb128 0xf
	.long	0xe1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x75e
	.uleb128 0x4
	.long	0x7ba
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x7
	.byte	0x53
	.byte	0xe
	.long	0x7ba
	.uleb128 0x4
	.long	0x7cc
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x7ba
	.uleb128 0x4
	.long	0x7dd
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.long	0x7ba
	.uleb128 0x4
	.long	0x7f0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x822
	.uleb128 0x17
	.uleb128 0x6
	.byte	0x8
	.long	0x11c
	.uleb128 0xe
	.long	0x452
	.long	0x839
	.uleb128 0xf
	.long	0xe1
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "_sys_errlist\0"
	.byte	0x8
	.byte	0xac
	.byte	0x2b
	.long	0x829
	.uleb128 0x15
	.ascii "_sys_nerr\0"
	.byte	0x8
	.byte	0xad
	.byte	0x29
	.long	0x13c
	.uleb128 0x18
	.ascii "__imp___argc\0"
	.byte	0x8
	.word	0x119
	.byte	0x10
	.long	0x45e
	.uleb128 0x18
	.ascii "__imp___argv\0"
	.byte	0x8
	.word	0x11d
	.byte	0x13
	.long	0x88c
	.uleb128 0x6
	.byte	0x8
	.long	0x892
	.uleb128 0x6
	.byte	0x8
	.long	0x452
	.uleb128 0x18
	.ascii "__imp___wargv\0"
	.byte	0x8
	.word	0x121
	.byte	0x16
	.long	0x8af
	.uleb128 0x6
	.byte	0x8
	.long	0x8b5
	.uleb128 0x6
	.byte	0x8
	.long	0x458
	.uleb128 0x18
	.ascii "__imp__environ\0"
	.byte	0x8
	.word	0x127
	.byte	0x13
	.long	0x88c
	.uleb128 0x18
	.ascii "__imp__wenviron\0"
	.byte	0x8
	.word	0x12c
	.byte	0x16
	.long	0x8af
	.uleb128 0x18
	.ascii "__imp__pgmptr\0"
	.byte	0x8
	.word	0x132
	.byte	0x12
	.long	0x892
	.uleb128 0x18
	.ascii "__imp__wpgmptr\0"
	.byte	0x8
	.word	0x137
	.byte	0x15
	.long	0x8b5
	.uleb128 0x18
	.ascii "__imp__osplatform\0"
	.byte	0x8
	.word	0x13c
	.byte	0x19
	.long	0x603
	.uleb128 0x18
	.ascii "__imp__osver\0"
	.byte	0x8
	.word	0x141
	.byte	0x19
	.long	0x603
	.uleb128 0x18
	.ascii "__imp__winver\0"
	.byte	0x8
	.word	0x146
	.byte	0x19
	.long	0x603
	.uleb128 0x18
	.ascii "__imp__winmajor\0"
	.byte	0x8
	.word	0x14b
	.byte	0x19
	.long	0x603
	.uleb128 0x18
	.ascii "__imp__winminor\0"
	.byte	0x8
	.word	0x150
	.byte	0x19
	.long	0x603
	.uleb128 0x15
	.ascii "_amblksiz\0"
	.byte	0x9
	.byte	0x35
	.byte	0x17
	.long	0x464
	.uleb128 0x18
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0xa
	.word	0x13a9
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0xa
	.word	0x13aa
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0xa
	.word	0x13ab
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0xa
	.word	0x13ac
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0xa
	.word	0x13ad
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0xa
	.word	0x13ae
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0xa
	.word	0x13af
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0xa
	.word	0x13b0
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0xa
	.word	0x13b1
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0xa
	.word	0x13b2
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0xa
	.word	0x13b3
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0xa
	.word	0x13b4
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0xa
	.word	0x13b5
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0xa
	.word	0x13b6
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0xa
	.word	0x13b7
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0xa
	.word	0x13b8
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0xa
	.word	0x13b9
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0xa
	.word	0x13ba
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13bb
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13bc
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13bd
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0xa
	.word	0x13be
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0xa
	.word	0x13bf
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0xa
	.word	0x13c0
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0xa
	.word	0x13c1
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0xa
	.word	0x13c2
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0xa
	.word	0x13c3
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0xa
	.word	0x13c4
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0xa
	.word	0x13c5
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0xa
	.word	0x13c6
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0xa
	.word	0x13c7
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0xa
	.word	0x13c8
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0xa
	.word	0x13c9
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0xa
	.word	0x13ca
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0xa
	.word	0x13cb
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0xa
	.word	0x13cc
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0xa
	.word	0x13cd
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0xa
	.word	0x13ce
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0xa
	.word	0x13cf
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0xa
	.word	0x13d0
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0xa
	.word	0x13d1
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0xa
	.word	0x13d2
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0xa
	.word	0x13d3
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0xa
	.word	0x13d4
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0xa
	.word	0x13d5
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0xa
	.word	0x13d6
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0xa
	.word	0x13d7
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0xa
	.word	0x13d8
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0xa
	.word	0x13d9
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0xa
	.word	0x13da
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0xa
	.word	0x13db
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0xa
	.word	0x13dc
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0xa
	.word	0x13dd
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0xa
	.word	0x13de
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0xa
	.word	0x13df
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0xa
	.word	0x13e0
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0xa
	.word	0x13e1
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0xa
	.word	0x13e2
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0xa
	.word	0x13e3
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0xa
	.word	0x13e4
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0xa
	.word	0x13e5
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0xa
	.word	0x13e6
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0xa
	.word	0x13e7
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0xa
	.word	0x13e8
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0xa
	.word	0x13e9
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0xa
	.word	0x13ea
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0xa
	.word	0x13eb
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0xa
	.word	0x13ec
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0xa
	.word	0x13ed
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0xa
	.word	0x13ee
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13ef
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13f0
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0xa
	.word	0x13f1
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0xa
	.word	0x13f2
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0xa
	.word	0x13f3
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0xa
	.word	0x13f4
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0xa
	.word	0x13f5
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0xa
	.word	0x13f6
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0xa
	.word	0x13f7
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0xa
	.word	0x13f8
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0xa
	.word	0x13f9
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0xa
	.word	0x13fa
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0xa
	.word	0x13fb
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0xa
	.word	0x13fc
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0xa
	.word	0x13fd
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13fe
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0xa
	.word	0x13ff
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0xa
	.word	0x1400
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0xa
	.word	0x1401
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0xa
	.word	0x1402
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0xa
	.word	0x1403
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0xa
	.word	0x1404
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0xa
	.word	0x1405
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0xa
	.word	0x1406
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0xa
	.word	0x1407
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0xa
	.word	0x1408
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0xa
	.word	0x1409
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0xa
	.word	0x140a
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0xa
	.word	0x140b
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0xa
	.word	0x140c
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0xa
	.word	0x140d
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0xa
	.word	0x140e
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0xa
	.word	0x140f
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0xa
	.word	0x1410
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0xa
	.word	0x1411
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0xa
	.word	0x1412
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0xa
	.word	0x1413
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0xa
	.word	0x1414
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0xa
	.word	0x1415
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0xa
	.word	0x1416
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0xa
	.word	0x1417
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0xa
	.word	0x1418
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0xa
	.word	0x1419
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0xa
	.word	0x141a
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0xa
	.word	0x141b
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0xa
	.word	0x141c
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0xa
	.word	0x141d
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0xa
	.word	0x141e
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0xa
	.word	0x141f
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0xa
	.word	0x1420
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0xa
	.word	0x1421
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0xa
	.word	0x1422
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1620
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1621
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1622
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0xa
	.word	0x1623
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0xa
	.word	0x1624
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0xa
	.word	0x1625
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0xa
	.word	0x1626
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0xa
	.word	0x1627
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0xa
	.word	0x1628
	.byte	0x17
	.long	0x7c7
	.uleb128 0x18
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0xa
	.word	0x1629
	.byte	0x17
	.long	0x7c7
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0xb
	.byte	0x42
	.byte	0x11
	.long	0x5ea
	.uleb128 0xe
	.long	0x4d8
	.long	0x1ef0
	.uleb128 0xf
	.long	0xe1
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xc
	.byte	0x29
	.byte	0x16
	.long	0x1eca
	.uleb128 0x15
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xc
	.byte	0x2a
	.byte	0x16
	.long	0x1eca
	.uleb128 0x15
	.ascii "IID_IUnknown\0"
	.byte	0xd
	.byte	0x57
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xd
	.byte	0xbd
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IClassFactory\0"
	.byte	0xd
	.word	0x16d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMarshal\0"
	.byte	0xe
	.word	0x16e
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_INoMarshal\0"
	.byte	0xe
	.word	0x255
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAgileObject\0"
	.byte	0xe
	.word	0x294
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAgileReference\0"
	.byte	0xe
	.word	0x2d2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMarshal2\0"
	.byte	0xe
	.word	0x32d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMalloc\0"
	.byte	0xe
	.word	0x3b2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xe
	.word	0x469
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IExternalConnection\0"
	.byte	0xe
	.word	0x4cc
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMultiQI\0"
	.byte	0xe
	.word	0x547
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xe
	.word	0x59e
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternalUnknown\0"
	.byte	0xe
	.word	0x60c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumUnknown\0"
	.byte	0xe
	.word	0x668
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumString\0"
	.byte	0xe
	.word	0x706
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISequentialStream\0"
	.byte	0xe
	.word	0x7a2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IStream\0"
	.byte	0xe
	.word	0x84d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xe
	.word	0x991
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xe
	.word	0xa3b
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xe
	.word	0xabd
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xe
	.word	0xb7f
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xe
	.word	0xc99
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xe
	.word	0xcee
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xe
	.word	0xd56
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xe
	.word	0xe1c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IChannelHook\0"
	.byte	0xe
	.word	0xe9f
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IClientSecurity\0"
	.byte	0xe
	.word	0xfc3
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IServerSecurity\0"
	.byte	0xe
	.word	0x106d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcOptions\0"
	.byte	0xe
	.word	0x1113
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IGlobalOptions\0"
	.byte	0xe
	.word	0x11ae
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISurrogate\0"
	.byte	0xe
	.word	0x1221
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xe
	.word	0x1289
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISynchronize\0"
	.byte	0xe
	.word	0x1312
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xe
	.word	0x138c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xe
	.word	0x13e1
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xe
	.word	0x1441
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xe
	.word	0x14af
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xe
	.word	0x151e
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAsyncManager\0"
	.byte	0xe
	.word	0x158a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICallFactory\0"
	.byte	0xe
	.word	0x1608
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRpcHelper\0"
	.byte	0xe
	.word	0x1666
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xe
	.word	0x16d1
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IWaitMultiple\0"
	.byte	0xe
	.word	0x172c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xe
	.word	0x1798
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xe
	.word	0x17fd
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPipeByte\0"
	.byte	0xe
	.word	0x1868
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPipeLong\0"
	.byte	0xe
	.word	0x18d9
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPipeDouble\0"
	.byte	0xe
	.word	0x194a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xe
	.word	0x1b24
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IProcessInitControl\0"
	.byte	0xe
	.word	0x1bb2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IFastRundown\0"
	.byte	0xe
	.word	0x1c07
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMarshalingStream\0"
	.byte	0xe
	.word	0x1c4a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xe
	.word	0x1d09
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_NULL\0"
	.byte	0xf
	.byte	0xd
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "CATID_MARSHALER\0"
	.byte	0xf
	.byte	0xe
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IRpcChannel\0"
	.byte	0xf
	.byte	0xf
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IRpcStub\0"
	.byte	0xf
	.byte	0x10
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IStubManager\0"
	.byte	0xf
	.byte	0x11
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IRpcProxy\0"
	.byte	0xf
	.byte	0x12
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IProxyManager\0"
	.byte	0xf
	.byte	0x13
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IPSFactory\0"
	.byte	0xf
	.byte	0x14
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IInternalMoniker\0"
	.byte	0xf
	.byte	0x15
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IDfReserved1\0"
	.byte	0xf
	.byte	0x16
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IDfReserved2\0"
	.byte	0xf
	.byte	0x17
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IDfReserved3\0"
	.byte	0xf
	.byte	0x18
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "CLSID_StdMarshal\0"
	.byte	0xf
	.byte	0x19
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xf
	.byte	0x1a
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xf
	.byte	0x1b
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "IID_IStub\0"
	.byte	0xf
	.byte	0x1c
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IProxy\0"
	.byte	0xf
	.byte	0x1d
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IEnumGeneric\0"
	.byte	0xf
	.byte	0x1e
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IEnumHolder\0"
	.byte	0xf
	.byte	0x1f
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IEnumCallback\0"
	.byte	0xf
	.byte	0x20
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IOleManager\0"
	.byte	0xf
	.byte	0x21
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IOlePresObj\0"
	.byte	0xf
	.byte	0x22
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IDebug\0"
	.byte	0xf
	.byte	0x23
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IDebugStream\0"
	.byte	0xf
	.byte	0x24
	.byte	0x14
	.long	0x7d8
	.uleb128 0x15
	.ascii "CLSID_PSGenObject\0"
	.byte	0xf
	.byte	0x25
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_PSClientSite\0"
	.byte	0xf
	.byte	0x26
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_PSClassObject\0"
	.byte	0xf
	.byte	0x27
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xf
	.byte	0x2a
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xf
	.byte	0x2b
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xf
	.byte	0x2c
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xf
	.byte	0x2d
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_StaticDib\0"
	.byte	0xf
	.byte	0x2e
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CID_CDfsVolume\0"
	.byte	0xf
	.byte	0x2f
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xf
	.byte	0x30
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xf
	.byte	0x31
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xf
	.byte	0x32
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_ComBinding\0"
	.byte	0xf
	.byte	0x33
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_StdEvent\0"
	.byte	0xf
	.byte	0x34
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xf
	.byte	0x35
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xf
	.byte	0x36
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_AddrControl\0"
	.byte	0xf
	.byte	0x37
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xf
	.byte	0x38
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xf
	.byte	0x39
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xf
	.byte	0x3a
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xf
	.byte	0x3b
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xf
	.byte	0x3c
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xf
	.byte	0x3d
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xf
	.byte	0x3e
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDLabel\0"
	.byte	0xf
	.byte	0x3f
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xf
	.byte	0x40
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDListBox\0"
	.byte	0xf
	.byte	0x41
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xf
	.byte	0x42
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xf
	.byte	0x43
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xf
	.byte	0x45
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xf
	.byte	0x46
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xf
	.byte	0x47
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xf
	.byte	0x48
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xf
	.byte	0x49
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4a
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4b
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4c
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xf
	.byte	0x4d
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xf
	.byte	0x4e
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xf
	.byte	0x4f
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xf
	.byte	0x50
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xf
	.byte	0x51
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xf
	.byte	0x52
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xf
	.byte	0x53
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xf
	.byte	0x54
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xf
	.byte	0x55
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_CSystemPage\0"
	.byte	0xf
	.byte	0x56
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xf
	.byte	0x57
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xf
	.byte	0x58
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xf
	.byte	0x59
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xf
	.byte	0x5a
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xf
	.byte	0x5b
	.byte	0x16
	.long	0x7eb
	.uleb128 0x15
	.ascii "GUID_TRISTATE\0"
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x7c7
	.uleb128 0x15
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0x10
	.byte	0x28
	.byte	0x16
	.long	0x1eca
	.uleb128 0x15
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0x10
	.byte	0x29
	.byte	0x16
	.long	0x1eca
	.uleb128 0x18
	.ascii "IID_IMallocSpy\0"
	.byte	0x11
	.word	0x1dbd
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBindCtx\0"
	.byte	0x11
	.word	0x1f3a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumMoniker\0"
	.byte	0x11
	.word	0x204a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRunnableObject\0"
	.byte	0x11
	.word	0x20e8
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x11
	.word	0x218e
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPersist\0"
	.byte	0x11
	.word	0x2269
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPersistStream\0"
	.byte	0x11
	.word	0x22be
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMoniker\0"
	.byte	0x11
	.word	0x236a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IROTData\0"
	.byte	0x11
	.word	0x2558
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x11
	.word	0x25b5
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IStorage\0"
	.byte	0x11
	.word	0x2658
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPersistFile\0"
	.byte	0x11
	.word	0x2841
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPersistStorage\0"
	.byte	0x11
	.word	0x28f1
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ILockBytes\0"
	.byte	0x11
	.word	0x29b1
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x11
	.word	0x2ac0
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x11
	.word	0x2b6c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRootStorage\0"
	.byte	0x11
	.word	0x2c08
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAdviseSink\0"
	.byte	0x11
	.word	0x2cb3
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x11
	.word	0x2d73
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAdviseSink2\0"
	.byte	0x11
	.word	0x2ea9
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x11
	.word	0x2f2e
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDataObject\0"
	.byte	0x11
	.word	0x2ff4
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x11
	.word	0x3118
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMessageFilter\0"
	.byte	0x11
	.word	0x31d3
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x11
	.word	0x325d
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x11
	.word	0x325f
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x11
	.word	0x3261
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x11
	.word	0x3263
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x11
	.word	0x3265
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x11
	.word	0x3267
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x11
	.word	0x3269
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x11
	.word	0x326b
	.byte	0x14
	.long	0x7fe
	.uleb128 0x18
	.ascii "IID_IClassActivator\0"
	.byte	0x11
	.word	0x3273
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IFillLockBytes\0"
	.byte	0x11
	.word	0x32d5
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IProgressNotify\0"
	.byte	0x11
	.word	0x3389
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ILayoutStorage\0"
	.byte	0x11
	.word	0x33ee
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBlockingLock\0"
	.byte	0x11
	.word	0x3492
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x11
	.word	0x34f7
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOplockStorage\0"
	.byte	0x11
	.word	0x354e
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x11
	.word	0x35d5
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IUrlMon\0"
	.byte	0x11
	.word	0x364d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x11
	.word	0x36bc
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x11
	.word	0x3710
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x11
	.word	0x3786
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IProcessLock\0"
	.byte	0x11
	.word	0x37e5
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISurrogateService\0"
	.byte	0x11
	.word	0x3848
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInitializeSpy\0"
	.byte	0x11
	.word	0x38f2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x11
	.word	0x398a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x12
	.byte	0xab
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleCache\0"
	.byte	0x12
	.word	0x162
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleCache2\0"
	.byte	0x12
	.word	0x229
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleCacheControl\0"
	.byte	0x12
	.word	0x2d4
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IParseDisplayName\0"
	.byte	0x12
	.word	0x33c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleContainer\0"
	.byte	0x12
	.word	0x39c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleClientSite\0"
	.byte	0x12
	.word	0x417
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleObject\0"
	.byte	0x12
	.word	0x4fe
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x12
	.word	0x6fe
	.byte	0x16
	.long	0x1eca
	.uleb128 0x18
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x12
	.word	0x6ff
	.byte	0x16
	.long	0x1eca
	.uleb128 0x18
	.ascii "IID_IOleWindow\0"
	.byte	0x12
	.word	0x724
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleLink\0"
	.byte	0x12
	.word	0x79a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleItemContainer\0"
	.byte	0x12
	.word	0x8bf
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x12
	.word	0x976
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x12
	.word	0xa1c
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x12
	.word	0xaf8
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x12
	.word	0xbf1
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x12
	.word	0xc91
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IContinue\0"
	.byte	0x12
	.word	0xda4
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IViewObject\0"
	.byte	0x12
	.word	0xdf9
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IViewObject2\0"
	.byte	0x12
	.word	0xf2a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDropSource\0"
	.byte	0x12
	.word	0xfd2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDropTarget\0"
	.byte	0x12
	.word	0x105b
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x12
	.word	0x10ff
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x12
	.word	0x1176
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "IID_IServiceProvider\0"
	.byte	0x13
	.byte	0x4d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x14
	.byte	0xf1
	.byte	0x16
	.long	0x1eca
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x14
	.byte	0xf2
	.byte	0x16
	.long	0x1eca
	.uleb128 0x18
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x14
	.word	0x33b
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x14
	.word	0x562
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x14
	.word	0x7b2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x14
	.word	0x8ba
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDispatch\0"
	.byte	0x14
	.word	0x9b6
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x14
	.word	0xa87
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeComp\0"
	.byte	0x14
	.word	0xb35
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeInfo\0"
	.byte	0x14
	.word	0xbd9
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeInfo2\0"
	.byte	0x14
	.word	0xe50
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeLib\0"
	.byte	0x14
	.word	0x10d6
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeLib2\0"
	.byte	0x14
	.word	0x123d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x14
	.word	0x1361
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IErrorInfo\0"
	.byte	0x14
	.word	0x13da
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x14
	.word	0x147d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x14
	.word	0x1520
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeFactory\0"
	.byte	0x14
	.word	0x1575
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ITypeMarshal\0"
	.byte	0x14
	.word	0x15d0
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IRecordInfo\0"
	.byte	0x14
	.word	0x1684
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IErrorLog\0"
	.byte	0x14
	.word	0x1820
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPropertyBag\0"
	.byte	0x14
	.word	0x187a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x15
	.byte	0xeb
	.byte	0x18
	.long	0x1eca
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.long	0x1eca
	.uleb128 0x15
	.ascii "LIBID_MSXML\0"
	.byte	0x15
	.byte	0xfc
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x15
	.word	0x100
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x15
	.word	0x127
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x15
	.word	0x1fd
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x15
	.word	0x266
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x15
	.word	0x375
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x15
	.word	0x3b0
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x15
	.word	0x404
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x15
	.word	0x496
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x15
	.word	0x50f
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMText\0"
	.byte	0x15
	.word	0x5a6
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x15
	.word	0x625
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x15
	.word	0x69e
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x15
	.word	0x717
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x15
	.word	0x792
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x15
	.word	0x80b
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x15
	.word	0x87f
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x15
	.word	0x8f8
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x15
	.word	0x961
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXTLRuntime\0"
	.byte	0x15
	.word	0x9a6
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x15
	.word	0xa3d
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_DOMDocument\0"
	.byte	0x15
	.word	0xa5c
	.byte	0x16
	.long	0x7eb
	.uleb128 0x18
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x15
	.word	0xa60
	.byte	0x16
	.long	0x7eb
	.uleb128 0x18
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x15
	.word	0xa67
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x15
	.word	0xacd
	.byte	0x16
	.long	0x7eb
	.uleb128 0x18
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x15
	.word	0xad4
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x15
	.word	0xb0d
	.byte	0x16
	.long	0x7eb
	.uleb128 0x18
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x15
	.word	0xb14
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDocument\0"
	.byte	0x15
	.word	0xb4a
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLDocument2\0"
	.byte	0x15
	.word	0xbb2
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLElement\0"
	.byte	0x15
	.word	0xc24
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLElement2\0"
	.byte	0x15
	.word	0xc82
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLAttribute\0"
	.byte	0x15
	.word	0xce5
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IXMLError\0"
	.byte	0x15
	.word	0xd11
	.byte	0x14
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_XMLDocument\0"
	.byte	0x15
	.word	0xd2e
	.byte	0x16
	.long	0x7eb
	.uleb128 0x18
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x16
	.word	0x17e
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x16
	.word	0x17f
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x16
	.word	0x180
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x16
	.word	0x181
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x16
	.word	0x182
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x16
	.word	0x183
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x16
	.word	0x184
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x185
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x16
	.word	0x186
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x16
	.word	0x187
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x16
	.word	0x188
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x16
	.word	0x189
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x16
	.word	0x18a
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x16
	.word	0x193
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x16
	.word	0x194
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x16
	.word	0x195
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x16
	.word	0x196
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x16
	.word	0x197
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x16
	.word	0x198
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_FileProtocol\0"
	.byte	0x16
	.word	0x199
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_MkProtocol\0"
	.byte	0x16
	.word	0x19a
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x16
	.word	0x19b
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x19c
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x16
	.word	0x19d
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x16
	.word	0x19e
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x16
	.word	0x19f
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IPersistMoniker\0"
	.byte	0x16
	.word	0x250
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IMonikerProp\0"
	.byte	0x16
	.word	0x321
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBindProtocol\0"
	.byte	0x16
	.word	0x37f
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBinding\0"
	.byte	0x16
	.word	0x3e0
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x16
	.word	0x575
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x16
	.word	0x6a5
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAuthenticate\0"
	.byte	0x16
	.word	0x764
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x16
	.word	0x7d0
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x16
	.word	0x841
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x16
	.word	0x8c1
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x16
	.word	0x93b
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x16
	.word	0x9bf
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x16
	.word	0xa30
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICodeInstall\0"
	.byte	0x16
	.word	0xa9b
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IWinInetInfo\0"
	.byte	0x16
	.word	0x10a5
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IHttpSecurity\0"
	.byte	0x16
	.word	0x1112
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x16
	.word	0x1179
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x16
	.word	0x11f8
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "SID_BindHost\0"
	.byte	0x16
	.word	0x1335
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBindHost\0"
	.byte	0x16
	.word	0x133f
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternet\0"
	.byte	0x16
	.word	0x144d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x16
	.word	0x14ac
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x16
	.word	0x1526
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x16
	.word	0x15bf
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetProtocol\0"
	.byte	0x16
	.word	0x1684
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x16
	.word	0x181a
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x16
	.word	0x18bd
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetSession\0"
	.byte	0x16
	.word	0x193f
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x16
	.word	0x1a48
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetPriority\0"
	.byte	0x16
	.word	0x1ab2
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x16
	.word	0x1b4e
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x16
	.word	0x1cb2
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x16
	.word	0x1cb3
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x16
	.word	0x1ccb
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x16
	.word	0x1d69
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x16
	.word	0x210f
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x16
	.word	0x22c4
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x16
	.word	0x269c
	.byte	0x12
	.long	0x7d8
	.uleb128 0x18
	.ascii "IID_ISoftDistExt\0"
	.byte	0x16
	.word	0x26cc
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x16
	.word	0x2778
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IDataFilter\0"
	.byte	0x16
	.word	0x27e6
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x16
	.word	0x28a6
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x16
	.word	0x2933
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x16
	.word	0x2941
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IGetBindHandle\0"
	.byte	0x16
	.word	0x29a5
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x16
	.word	0x2a0d
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPropertyStorage\0"
	.byte	0x17
	.word	0x1b7
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x17
	.word	0x304
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x17
	.word	0x3a6
	.byte	0x13
	.long	0x7c7
	.uleb128 0x18
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x17
	.word	0x444
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "IID_StdOle\0"
	.byte	0x18
	.byte	0x15
	.byte	0x12
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x19
	.byte	0xc
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x19
	.byte	0xd
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x19
	.byte	0xe
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x19
	.byte	0xf
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x19
	.byte	0x10
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x19
	.byte	0x11
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x19
	.byte	0x12
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x19
	.byte	0x13
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x19
	.byte	0x14
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x19
	.byte	0x15
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x19
	.byte	0x16
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x19
	.byte	0x17
	.byte	0x13
	.long	0x7c7
	.uleb128 0x12
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1a
	.byte	0xa1
	.byte	0x12
	.long	0x48e7
	.uleb128 0x13
	.ascii "dwProtocol\0"
	.byte	0x1a
	.byte	0xa2
	.byte	0xb
	.long	0x5ec
	.byte	0
	.uleb128 0x13
	.ascii "cbPciLength\0"
	.byte	0x1a
	.byte	0xa3
	.byte	0xb
	.long	0x5ec
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1a
	.byte	0xa4
	.byte	0x5
	.long	0x48a2
	.uleb128 0x4
	.long	0x48e7
	.uleb128 0x15
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x3c
	.long	0x4900
	.uleb128 0x15
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x4b
	.long	0x4900
	.uleb128 0x15
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x5a
	.long	0x4900
	.uleb128 0x15
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1c
	.byte	0xe
	.byte	0x13
	.long	0x7c7
	.uleb128 0x15
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1c
	.byte	0xf
	.byte	0x13
	.long	0x7c7
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1d
	.byte	0x27
	.byte	0xd
	.long	0x13c
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1d
	.byte	0x28
	.byte	0x12
	.long	0x464
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1d
	.byte	0x29
	.byte	0x21
	.long	0xfb
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1d
	.byte	0x2a
	.byte	0x2a
	.long	0xe1
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1e
	.byte	0x54
	.byte	0x11
	.long	0x498d
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1e
	.byte	0x55
	.byte	0x11
	.long	0x49ae
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1e
	.byte	0x58
	.byte	0x12
	.long	0x499d
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1e
	.byte	0x59
	.byte	0x12
	.long	0x49be
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1e
	.byte	0x64
	.byte	0xd
	.long	0x13c
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1e
	.byte	0x66
	.byte	0xd
	.long	0x13c
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1e
	.byte	0x68
	.byte	0xd
	.long	0x13c
	.uleb128 0x12
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x6c
	.byte	0x12
	.long	0x4ad1
	.uleb128 0x19
	.ascii "IS_ZERO\0"
	.byte	0x1e
	.byte	0x6e
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.ascii "IS_ONE\0"
	.byte	0x1e
	.byte	0x6f
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.ascii "IS_EVEN\0"
	.byte	0x1e
	.byte	0x70
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF1
	.byte	0x1e
	.byte	0x71
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x4a6b
	.uleb128 0x1b
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x8
	.byte	0x1e
	.byte	0x6a
	.byte	0x7
	.long	0x4b14
	.uleb128 0x1c
	.ascii "FLAGS\0"
	.byte	0x1e
	.byte	0x72
	.byte	0x7
	.long	0x4ad1
	.uleb128 0x1c
	.ascii "__dummy\0"
	.byte	0x1e
	.byte	0x76
	.byte	0xf
	.long	0x4a03
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x1e
	.byte	0x7b
	.byte	0x26
	.long	0x4b2c
	.uleb128 0x6
	.byte	0x8
	.long	0x4ad6
	.uleb128 0x12
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x1e
	.byte	0x7f
	.byte	0x12
	.long	0x4bb1
	.uleb128 0x19
	.ascii "IS_ZERO\0"
	.byte	0x1e
	.byte	0x81
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.ascii "IS_ONE\0"
	.byte	0x1e
	.byte	0x82
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.ascii "IS_MINUS_ONE\0"
	.byte	0x1e
	.byte	0x83
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.ascii "IS_EVEN\0"
	.byte	0x1e
	.byte	0x84
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF1
	.byte	0x1e
	.byte	0x85
	.byte	0x12
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x4b32
	.uleb128 0x1b
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x8
	.byte	0x1e
	.byte	0x7d
	.byte	0x7
	.long	0x4bf4
	.uleb128 0x1c
	.ascii "FLAGS\0"
	.byte	0x1e
	.byte	0x86
	.byte	0x7
	.long	0x4bb1
	.uleb128 0x1c
	.ascii "__dummy\0"
	.byte	0x1e
	.byte	0x8a
	.byte	0xf
	.long	0x4a03
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x1e
	.byte	0x8f
	.byte	0x26
	.long	0x4c0c
	.uleb128 0x6
	.byte	0x8
	.long	0x4bb6
	.uleb128 0x12
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x91
	.byte	0x10
	.long	0x4c8e
	.uleb128 0x13
	.ascii "COUNT_MULTI64\0"
	.byte	0x1e
	.byte	0x93
	.byte	0xa
	.long	0x143
	.byte	0
	.uleb128 0x13
	.ascii "COUNT_MULTI32\0"
	.byte	0x1e
	.byte	0x94
	.byte	0xa
	.long	0x143
	.byte	0x4
	.uleb128 0x13
	.ascii "COUNT_DIV64\0"
	.byte	0x1e
	.byte	0x95
	.byte	0xa
	.long	0x143
	.byte	0x8
	.uleb128 0x13
	.ascii "COUNT_DIV32\0"
	.byte	0x1e
	.byte	0x96
	.byte	0xa
	.long	0x143
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1e
	.byte	0x97
	.byte	0x3
	.long	0x4c12
	.uleb128 0x12
	.ascii "__tag_PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x28
	.byte	0x1e
	.byte	0x99
	.byte	0x10
	.long	0x4d5c
	.uleb128 0x13
	.ascii "DecimalDigits\0"
	.byte	0x1e
	.byte	0x9b
	.byte	0x9
	.long	0x13c
	.byte	0
	.uleb128 0x13
	.ascii "GroupSeparator\0"
	.byte	0x1e
	.byte	0x9c
	.byte	0xd
	.long	0x4d5c
	.byte	0x4
	.uleb128 0x13
	.ascii "DecimalSeparator\0"
	.byte	0x1e
	.byte	0x9d
	.byte	0xd
	.long	0x4d5c
	.byte	0xa
	.uleb128 0x13
	.ascii "PositiveSign\0"
	.byte	0x1e
	.byte	0x9e
	.byte	0xd
	.long	0x4d5c
	.byte	0x10
	.uleb128 0x13
	.ascii "NegativeSign\0"
	.byte	0x1e
	.byte	0x9f
	.byte	0xd
	.long	0x4d5c
	.byte	0x16
	.uleb128 0x13
	.ascii "GroupSizes\0"
	.byte	0x1e
	.byte	0xa0
	.byte	0xa
	.long	0x4d6c
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.long	0x10c
	.long	0x4d6c
	.uleb128 0xf
	.long	0xe1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0xca
	.long	0x4d7c
	.uleb128 0xf
	.long	0xe1
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x1e
	.byte	0xa1
	.byte	0x3
	.long	0x4caa
	.uleb128 0x1d
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x228
	.byte	0x1e
	.byte	0xa3
	.byte	0x10
	.long	0x53f3
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x1e
	.byte	0xa6
	.byte	0xe
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x1e
	.byte	0xa7
	.byte	0xe
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x1e
	.byte	0xa8
	.byte	0xe
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x1e
	.byte	0xa9
	.byte	0xe
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x19
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x1e
	.byte	0xaa
	.byte	0xe
	.long	0x464
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF2
	.byte	0x1e
	.byte	0xad
	.byte	0xe
	.long	0x5404
	.byte	0x8
	.uleb128 0x13
	.ascii "From_I\0"
	.byte	0x1e
	.byte	0xb0
	.byte	0x19
	.long	0x5424
	.byte	0x10
	.uleb128 0x13
	.ascii "From_L\0"
	.byte	0x1e
	.byte	0xb3
	.byte	0x19
	.long	0x543e
	.byte	0x18
	.uleb128 0x13
	.ascii "Dispose\0"
	.byte	0x1e
	.byte	0xb6
	.byte	0xe
	.long	0x544f
	.byte	0x20
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x1e
	.byte	0xb9
	.byte	0x19
	.long	0x5469
	.byte	0x28
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x1e
	.byte	0xbc
	.byte	0x19
	.long	0x5488
	.byte	0x30
	.uleb128 0x1e
	.secrel32	.LASF5
	.byte	0x1e
	.byte	0xbd
	.byte	0x19
	.long	0x54b2
	.byte	0x38
	.uleb128 0x13
	.ascii "FromByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xbe
	.byte	0x18
	.long	0x54d6
	.byte	0x40
	.uleb128 0x13
	.ascii "ToByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xbf
	.byte	0x18
	.long	0x54ff
	.byte	0x48
	.uleb128 0x13
	.ascii "Clone_X\0"
	.byte	0x1e
	.byte	0xc2
	.byte	0x19
	.long	0x5519
	.byte	0x50
	.uleb128 0x13
	.ascii "To_X_I\0"
	.byte	0x1e
	.byte	0xc5
	.byte	0x19
	.long	0x5539
	.byte	0x58
	.uleb128 0x13
	.ascii "To_X_L\0"
	.byte	0x1e
	.byte	0xc6
	.byte	0x19
	.long	0x5559
	.byte	0x60
	.uleb128 0x13
	.ascii "ToString\0"
	.byte	0x1e
	.byte	0xc9
	.byte	0x19
	.long	0x558d
	.byte	0x68
	.uleb128 0x13
	.ascii "TryParse\0"
	.byte	0x1e
	.byte	0xcc
	.byte	0x19
	.long	0x55b1
	.byte	0x70
	.uleb128 0x13
	.ascii "Add_I_X\0"
	.byte	0x1e
	.byte	0xcf
	.byte	0x19
	.long	0x55d0
	.byte	0x78
	.uleb128 0x13
	.ascii "Add_L_X\0"
	.byte	0x1e
	.byte	0xd0
	.byte	0x19
	.long	0x55ef
	.byte	0x80
	.uleb128 0x13
	.ascii "Add_X_I\0"
	.byte	0x1e
	.byte	0xd1
	.byte	0x19
	.long	0x560e
	.byte	0x88
	.uleb128 0x13
	.ascii "Add_X_L\0"
	.byte	0x1e
	.byte	0xd2
	.byte	0x19
	.long	0x562d
	.byte	0x90
	.uleb128 0x13
	.ascii "Add_X_X\0"
	.byte	0x1e
	.byte	0xd3
	.byte	0x19
	.long	0x564c
	.byte	0x98
	.uleb128 0x1e
	.secrel32	.LASF6
	.byte	0x1e
	.byte	0xd6
	.byte	0x19
	.long	0x566b
	.byte	0xa0
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x1e
	.byte	0xd7
	.byte	0x19
	.long	0x568a
	.byte	0xa8
	.uleb128 0x1e
	.secrel32	.LASF8
	.byte	0x1e
	.byte	0xd8
	.byte	0x19
	.long	0x560e
	.byte	0xb0
	.uleb128 0x1e
	.secrel32	.LASF9
	.byte	0x1e
	.byte	0xd9
	.byte	0x19
	.long	0x562d
	.byte	0xb8
	.uleb128 0x1e
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0xda
	.byte	0x19
	.long	0x564c
	.byte	0xc0
	.uleb128 0x1e
	.secrel32	.LASF11
	.byte	0x1e
	.byte	0xdd
	.byte	0x19
	.long	0x55d0
	.byte	0xc8
	.uleb128 0x1e
	.secrel32	.LASF12
	.byte	0x1e
	.byte	0xde
	.byte	0x19
	.long	0x55ef
	.byte	0xd0
	.uleb128 0x1e
	.secrel32	.LASF13
	.byte	0x1e
	.byte	0xdf
	.byte	0x19
	.long	0x560e
	.byte	0xd8
	.uleb128 0x1e
	.secrel32	.LASF14
	.byte	0x1e
	.byte	0xe0
	.byte	0x19
	.long	0x562d
	.byte	0xe0
	.uleb128 0x1e
	.secrel32	.LASF15
	.byte	0x1e
	.byte	0xe1
	.byte	0x19
	.long	0x564c
	.byte	0xe8
	.uleb128 0x1e
	.secrel32	.LASF16
	.byte	0x1e
	.byte	0xe4
	.byte	0x19
	.long	0x56ae
	.byte	0xf0
	.uleb128 0x1e
	.secrel32	.LASF17
	.byte	0x1e
	.byte	0xe5
	.byte	0x19
	.long	0x56d2
	.byte	0xf8
	.uleb128 0x1f
	.secrel32	.LASF18
	.byte	0x1e
	.byte	0xe6
	.byte	0x19
	.long	0x56f6
	.word	0x100
	.uleb128 0x1f
	.secrel32	.LASF19
	.byte	0x1e
	.byte	0xe7
	.byte	0x19
	.long	0x571a
	.word	0x108
	.uleb128 0x1f
	.secrel32	.LASF20
	.byte	0x1e
	.byte	0xe8
	.byte	0x19
	.long	0x573e
	.word	0x110
	.uleb128 0x20
	.ascii "LeftShift_X_I\0"
	.byte	0x1e
	.byte	0xeb
	.byte	0x19
	.long	0x560e
	.word	0x118
	.uleb128 0x20
	.ascii "RightShift_X_I\0"
	.byte	0x1e
	.byte	0xee
	.byte	0x19
	.long	0x560e
	.word	0x120
	.uleb128 0x20
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x1e
	.byte	0xf1
	.byte	0x19
	.long	0x566b
	.word	0x128
	.uleb128 0x20
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x1e
	.byte	0xf2
	.byte	0x19
	.long	0x568a
	.word	0x130
	.uleb128 0x20
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x1e
	.byte	0xf3
	.byte	0x19
	.long	0x575d
	.word	0x138
	.uleb128 0x20
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x1e
	.byte	0xf4
	.byte	0x19
	.long	0x577c
	.word	0x140
	.uleb128 0x20
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x1e
	.byte	0xf5
	.byte	0x19
	.long	0x564c
	.word	0x148
	.uleb128 0x20
	.ascii "BitwiseOr_I_X\0"
	.byte	0x1e
	.byte	0xf8
	.byte	0x19
	.long	0x55d0
	.word	0x150
	.uleb128 0x20
	.ascii "BitwiseOr_L_X\0"
	.byte	0x1e
	.byte	0xf9
	.byte	0x19
	.long	0x55ef
	.word	0x158
	.uleb128 0x20
	.ascii "BitwiseOr_X_I\0"
	.byte	0x1e
	.byte	0xfa
	.byte	0x19
	.long	0x560e
	.word	0x160
	.uleb128 0x20
	.ascii "BitwiseOr_X_L\0"
	.byte	0x1e
	.byte	0xfb
	.byte	0x19
	.long	0x562d
	.word	0x168
	.uleb128 0x20
	.ascii "BitwiseOr_X_X\0"
	.byte	0x1e
	.byte	0xfc
	.byte	0x19
	.long	0x564c
	.word	0x170
	.uleb128 0x20
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x1e
	.byte	0xff
	.byte	0x19
	.long	0x55d0
	.word	0x178
	.uleb128 0xa
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x1e
	.word	0x100
	.byte	0x19
	.long	0x55ef
	.word	0x180
	.uleb128 0xa
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x1e
	.word	0x101
	.byte	0x19
	.long	0x560e
	.word	0x188
	.uleb128 0xa
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x1e
	.word	0x102
	.byte	0x19
	.long	0x562d
	.word	0x190
	.uleb128 0xa
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x1e
	.word	0x103
	.byte	0x19
	.long	0x564c
	.word	0x198
	.uleb128 0xa
	.ascii "Compare_I_X\0"
	.byte	0x1e
	.word	0x106
	.byte	0x19
	.long	0x57a1
	.word	0x1a0
	.uleb128 0xa
	.ascii "Compare_L_X\0"
	.byte	0x1e
	.word	0x107
	.byte	0x19
	.long	0x57c0
	.word	0x1a8
	.uleb128 0xa
	.ascii "Compare_X_I\0"
	.byte	0x1e
	.word	0x108
	.byte	0x19
	.long	0x57df
	.word	0x1b0
	.uleb128 0xa
	.ascii "Compare_X_L\0"
	.byte	0x1e
	.word	0x109
	.byte	0x19
	.long	0x57fe
	.word	0x1b8
	.uleb128 0xa
	.ascii "Compare_X_X\0"
	.byte	0x1e
	.word	0x10a
	.byte	0x19
	.long	0x581d
	.word	0x1c0
	.uleb128 0xa
	.ascii "Equals_I_X\0"
	.byte	0x1e
	.word	0x10d
	.byte	0x19
	.long	0x57a1
	.word	0x1c8
	.uleb128 0xa
	.ascii "Equals_L_X\0"
	.byte	0x1e
	.word	0x10e
	.byte	0x19
	.long	0x57c0
	.word	0x1d0
	.uleb128 0xa
	.ascii "Equals_X_I\0"
	.byte	0x1e
	.word	0x10f
	.byte	0x19
	.long	0x57df
	.word	0x1d8
	.uleb128 0xa
	.ascii "Equals_X_L\0"
	.byte	0x1e
	.word	0x110
	.byte	0x19
	.long	0x57fe
	.word	0x1e0
	.uleb128 0xa
	.ascii "Equals_X_X\0"
	.byte	0x1e
	.word	0x111
	.byte	0x19
	.long	0x581d
	.word	0x1e8
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x1e
	.word	0x114
	.byte	0x19
	.long	0x55d0
	.word	0x1f0
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x1e
	.word	0x115
	.byte	0x19
	.long	0x55ef
	.word	0x1f8
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x1e
	.word	0x116
	.byte	0x19
	.long	0x560e
	.word	0x200
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x1e
	.word	0x117
	.byte	0x19
	.long	0x562d
	.word	0x208
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x1e
	.word	0x118
	.byte	0x19
	.long	0x564c
	.word	0x210
	.uleb128 0xa
	.ascii "Pow_X_I\0"
	.byte	0x1e
	.word	0x11b
	.byte	0x19
	.long	0x560e
	.word	0x218
	.uleb128 0xa
	.ascii "ModPow_X_X_X\0"
	.byte	0x1e
	.word	0x11e
	.byte	0x19
	.long	0x5841
	.word	0x220
	.byte	0
	.uleb128 0x10
	.long	0x53fe
	.uleb128 0x11
	.long	0x53fe
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c8e
	.uleb128 0x6
	.byte	0x8
	.long	0x53f3
	.uleb128 0x21
	.long	0x4a15
	.long	0x541e
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b14
	.uleb128 0x6
	.byte	0x8
	.long	0x540a
	.uleb128 0x21
	.long	0x4a15
	.long	0x543e
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x542a
	.uleb128 0x10
	.long	0x544f
	.uleb128 0x11
	.long	0x4b14
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5444
	.uleb128 0x21
	.long	0x4a15
	.long	0x5469
	.uleb128 0x11
	.long	0x4a2d
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5455
	.uleb128 0x21
	.long	0x4a15
	.long	0x5488
	.uleb128 0x11
	.long	0x758
	.uleb128 0x11
	.long	0xd2
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x546f
	.uleb128 0x21
	.long	0x4a15
	.long	0x54ac
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x758
	.uleb128 0x11
	.long	0xd2
	.uleb128 0x11
	.long	0x54ac
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd2
	.uleb128 0x6
	.byte	0x8
	.long	0x548e
	.uleb128 0x21
	.long	0x4a15
	.long	0x54d6
	.uleb128 0x11
	.long	0x758
	.uleb128 0x11
	.long	0xd2
	.uleb128 0x11
	.long	0x452
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54b8
	.uleb128 0x21
	.long	0x4a15
	.long	0x54ff
	.uleb128 0x11
	.long	0xca
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x758
	.uleb128 0x11
	.long	0xd2
	.uleb128 0x11
	.long	0x54ac
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54dc
	.uleb128 0x21
	.long	0x4a15
	.long	0x5519
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5505
	.uleb128 0x21
	.long	0x4a15
	.long	0x5533
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5533
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49f1
	.uleb128 0x6
	.byte	0x8
	.long	0x551f
	.uleb128 0x21
	.long	0x4a15
	.long	0x5553
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5553
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a03
	.uleb128 0x6
	.byte	0x8
	.long	0x553f
	.uleb128 0x21
	.long	0x4a15
	.long	0x5587
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x458
	.uleb128 0x11
	.long	0xd2
	.uleb128 0x11
	.long	0xca
	.uleb128 0x11
	.long	0x13c
	.uleb128 0x11
	.long	0x5587
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d7c
	.uleb128 0x6
	.byte	0x8
	.long	0x555f
	.uleb128 0x21
	.long	0x4a15
	.long	0x55b1
	.uleb128 0x11
	.long	0x458
	.uleb128 0x11
	.long	0x4a4d
	.uleb128 0x11
	.long	0x5587
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5593
	.uleb128 0x21
	.long	0x4a15
	.long	0x55d0
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55b7
	.uleb128 0x21
	.long	0x4a15
	.long	0x55ef
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55d6
	.uleb128 0x21
	.long	0x4a15
	.long	0x560e
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55f5
	.uleb128 0x21
	.long	0x4a15
	.long	0x562d
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5614
	.uleb128 0x21
	.long	0x4a15
	.long	0x564c
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5633
	.uleb128 0x21
	.long	0x4a15
	.long	0x566b
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5533
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5652
	.uleb128 0x21
	.long	0x4a15
	.long	0x568a
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5553
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5671
	.uleb128 0x21
	.long	0x4a15
	.long	0x56ae
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5533
	.uleb128 0x11
	.long	0x5533
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5690
	.uleb128 0x21
	.long	0x4a15
	.long	0x56d2
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5553
	.uleb128 0x11
	.long	0x5553
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56b4
	.uleb128 0x21
	.long	0x4a15
	.long	0x56f6
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x541e
	.uleb128 0x11
	.long	0x5533
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56d8
	.uleb128 0x21
	.long	0x4a15
	.long	0x571a
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x541e
	.uleb128 0x11
	.long	0x5553
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56fc
	.uleb128 0x21
	.long	0x4a15
	.long	0x573e
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x541e
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5720
	.uleb128 0x21
	.long	0x4a15
	.long	0x575d
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x5533
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5744
	.uleb128 0x21
	.long	0x4a15
	.long	0x577c
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x5553
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5763
	.uleb128 0x21
	.long	0x4a15
	.long	0x579b
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x579b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49cf
	.uleb128 0x6
	.byte	0x8
	.long	0x5782
	.uleb128 0x21
	.long	0x4a15
	.long	0x57c0
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x579b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57a7
	.uleb128 0x21
	.long	0x4a15
	.long	0x57df
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x49f1
	.uleb128 0x11
	.long	0x579b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57c6
	.uleb128 0x21
	.long	0x4a15
	.long	0x57fe
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4a03
	.uleb128 0x11
	.long	0x579b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57e5
	.uleb128 0x21
	.long	0x4a15
	.long	0x581d
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x579b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5804
	.uleb128 0x21
	.long	0x4a15
	.long	0x5841
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5823
	.uleb128 0x5
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x120
	.byte	0x3
	.long	0x4d9d
	.uleb128 0x7
	.ascii "__tag_PMC_SINT_ENTRY_POINTS\0"
	.word	0x360
	.byte	0x1e
	.word	0x122
	.byte	0x10
	.long	0x5b62
	.uleb128 0x9
	.ascii "UINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x125
	.byte	0x1b
	.long	0x5847
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF2
	.byte	0x1e
	.word	0x128
	.byte	0xe
	.long	0x5404
	.word	0x228
	.uleb128 0xa
	.ascii "From_I\0"
	.byte	0x1e
	.word	0x12b
	.byte	0x19
	.long	0x5b7c
	.word	0x230
	.uleb128 0xa
	.ascii "From_L\0"
	.byte	0x1e
	.word	0x12e
	.byte	0x19
	.long	0x5b96
	.word	0x238
	.uleb128 0xa
	.ascii "Dispose\0"
	.byte	0x1e
	.word	0x131
	.byte	0xe
	.long	0x5ba7
	.word	0x240
	.uleb128 0x22
	.secrel32	.LASF3
	.byte	0x1e
	.word	0x134
	.byte	0x19
	.long	0x5bc1
	.word	0x248
	.uleb128 0x22
	.secrel32	.LASF4
	.byte	0x1e
	.word	0x137
	.byte	0x19
	.long	0x5be0
	.word	0x250
	.uleb128 0x22
	.secrel32	.LASF5
	.byte	0x1e
	.word	0x138
	.byte	0x19
	.long	0x5c04
	.word	0x258
	.uleb128 0xa
	.ascii "Clone_X\0"
	.byte	0x1e
	.word	0x13b
	.byte	0x19
	.long	0x5c1e
	.word	0x260
	.uleb128 0xa
	.ascii "To_X_I\0"
	.byte	0x1e
	.word	0x13e
	.byte	0x19
	.long	0x5c38
	.word	0x268
	.uleb128 0xa
	.ascii "To_X_L\0"
	.byte	0x1e
	.word	0x13f
	.byte	0x19
	.long	0x5c58
	.word	0x270
	.uleb128 0xa
	.ascii "Negate_X\0"
	.byte	0x1e
	.word	0x142
	.byte	0x19
	.long	0x5c1e
	.word	0x278
	.uleb128 0xa
	.ascii "Add_I_X\0"
	.byte	0x1e
	.word	0x14c
	.byte	0x19
	.long	0x5c77
	.word	0x280
	.uleb128 0xa
	.ascii "Add_L_X\0"
	.byte	0x1e
	.word	0x14d
	.byte	0x19
	.long	0x5c96
	.word	0x288
	.uleb128 0xa
	.ascii "Add_UX_X\0"
	.byte	0x1e
	.word	0x14e
	.byte	0x19
	.long	0x5cb5
	.word	0x290
	.uleb128 0xa
	.ascii "Add_X_I\0"
	.byte	0x1e
	.word	0x14f
	.byte	0x19
	.long	0x5cd4
	.word	0x298
	.uleb128 0xa
	.ascii "Add_X_L\0"
	.byte	0x1e
	.word	0x150
	.byte	0x19
	.long	0x5cf3
	.word	0x2a0
	.uleb128 0xa
	.ascii "Add_X_UX\0"
	.byte	0x1e
	.word	0x151
	.byte	0x19
	.long	0x5d12
	.word	0x2a8
	.uleb128 0xa
	.ascii "Add_X_X\0"
	.byte	0x1e
	.word	0x152
	.byte	0x19
	.long	0x5d31
	.word	0x2b0
	.uleb128 0x22
	.secrel32	.LASF6
	.byte	0x1e
	.word	0x155
	.byte	0x19
	.long	0x5c77
	.word	0x2b8
	.uleb128 0x22
	.secrel32	.LASF7
	.byte	0x1e
	.word	0x156
	.byte	0x19
	.long	0x5c96
	.word	0x2c0
	.uleb128 0xa
	.ascii "Subtruct_UX_X\0"
	.byte	0x1e
	.word	0x157
	.byte	0x19
	.long	0x5cb5
	.word	0x2c8
	.uleb128 0x22
	.secrel32	.LASF8
	.byte	0x1e
	.word	0x158
	.byte	0x19
	.long	0x5cd4
	.word	0x2d0
	.uleb128 0x22
	.secrel32	.LASF9
	.byte	0x1e
	.word	0x159
	.byte	0x19
	.long	0x5cf3
	.word	0x2d8
	.uleb128 0xa
	.ascii "Subtruct_X_UX\0"
	.byte	0x1e
	.word	0x15a
	.byte	0x19
	.long	0x5d12
	.word	0x2e0
	.uleb128 0x22
	.secrel32	.LASF10
	.byte	0x1e
	.word	0x15b
	.byte	0x19
	.long	0x5d31
	.word	0x2e8
	.uleb128 0x22
	.secrel32	.LASF11
	.byte	0x1e
	.word	0x15e
	.byte	0x19
	.long	0x5c77
	.word	0x2f0
	.uleb128 0x22
	.secrel32	.LASF12
	.byte	0x1e
	.word	0x15f
	.byte	0x19
	.long	0x5c96
	.word	0x2f8
	.uleb128 0xa
	.ascii "Multiply_UX_X\0"
	.byte	0x1e
	.word	0x160
	.byte	0x19
	.long	0x5cb5
	.word	0x300
	.uleb128 0x22
	.secrel32	.LASF13
	.byte	0x1e
	.word	0x161
	.byte	0x19
	.long	0x5cd4
	.word	0x308
	.uleb128 0x22
	.secrel32	.LASF14
	.byte	0x1e
	.word	0x162
	.byte	0x19
	.long	0x5cf3
	.word	0x310
	.uleb128 0xa
	.ascii "Multiply_X_UX\0"
	.byte	0x1e
	.word	0x163
	.byte	0x19
	.long	0x5d12
	.word	0x318
	.uleb128 0x22
	.secrel32	.LASF15
	.byte	0x1e
	.word	0x164
	.byte	0x19
	.long	0x5d31
	.word	0x320
	.uleb128 0x22
	.secrel32	.LASF16
	.byte	0x1e
	.word	0x167
	.byte	0x19
	.long	0x5d55
	.word	0x328
	.uleb128 0x22
	.secrel32	.LASF17
	.byte	0x1e
	.word	0x168
	.byte	0x19
	.long	0x5d79
	.word	0x330
	.uleb128 0xa
	.ascii "DivRem_UX_X\0"
	.byte	0x1e
	.word	0x169
	.byte	0x19
	.long	0x5d9d
	.word	0x338
	.uleb128 0x22
	.secrel32	.LASF18
	.byte	0x1e
	.word	0x16a
	.byte	0x19
	.long	0x5dc1
	.word	0x340
	.uleb128 0x22
	.secrel32	.LASF19
	.byte	0x1e
	.word	0x16b
	.byte	0x19
	.long	0x5de5
	.word	0x348
	.uleb128 0xa
	.ascii "DivRem_X_UX\0"
	.byte	0x1e
	.word	0x16c
	.byte	0x19
	.long	0x5e09
	.word	0x350
	.uleb128 0x22
	.secrel32	.LASF20
	.byte	0x1e
	.word	0x16d
	.byte	0x19
	.long	0x5e2d
	.word	0x358
	.byte	0
	.uleb128 0x21
	.long	0x4a15
	.long	0x5b76
	.uleb128 0x11
	.long	0x49cf
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4bf4
	.uleb128 0x6
	.byte	0x8
	.long	0x5b62
	.uleb128 0x21
	.long	0x4a15
	.long	0x5b96
	.uleb128 0x11
	.long	0x49e0
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b82
	.uleb128 0x10
	.long	0x5ba7
	.uleb128 0x11
	.long	0x4bf4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b9c
	.uleb128 0x21
	.long	0x4a15
	.long	0x5bc1
	.uleb128 0x11
	.long	0x4a2d
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bad
	.uleb128 0x21
	.long	0x4a15
	.long	0x5be0
	.uleb128 0x11
	.long	0x758
	.uleb128 0x11
	.long	0xd2
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bc7
	.uleb128 0x21
	.long	0x4a15
	.long	0x5c04
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x758
	.uleb128 0x11
	.long	0xd2
	.uleb128 0x11
	.long	0x54ac
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5be6
	.uleb128 0x21
	.long	0x4a15
	.long	0x5c1e
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c0a
	.uleb128 0x21
	.long	0x4a15
	.long	0x5c38
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x579b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c24
	.uleb128 0x21
	.long	0x4a15
	.long	0x5c52
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5c52
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49e0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c3e
	.uleb128 0x21
	.long	0x4a15
	.long	0x5c77
	.uleb128 0x11
	.long	0x49cf
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c5e
	.uleb128 0x21
	.long	0x4a15
	.long	0x5c96
	.uleb128 0x11
	.long	0x49e0
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c7d
	.uleb128 0x21
	.long	0x4a15
	.long	0x5cb5
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c9c
	.uleb128 0x21
	.long	0x4a15
	.long	0x5cd4
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x49cf
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cbb
	.uleb128 0x21
	.long	0x4a15
	.long	0x5cf3
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x49e0
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cda
	.uleb128 0x21
	.long	0x4a15
	.long	0x5d12
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cf9
	.uleb128 0x21
	.long	0x4a15
	.long	0x5d31
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d18
	.uleb128 0x21
	.long	0x4a15
	.long	0x5d55
	.uleb128 0x11
	.long	0x49cf
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d37
	.uleb128 0x21
	.long	0x4a15
	.long	0x5d79
	.uleb128 0x11
	.long	0x49e0
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d5b
	.uleb128 0x21
	.long	0x4a15
	.long	0x5d9d
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.uleb128 0x11
	.long	0x541e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d7f
	.uleb128 0x21
	.long	0x4a15
	.long	0x5dc1
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x49cf
	.uleb128 0x11
	.long	0x5b76
	.uleb128 0x11
	.long	0x579b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5da3
	.uleb128 0x21
	.long	0x4a15
	.long	0x5de5
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x49e0
	.uleb128 0x11
	.long	0x5b76
	.uleb128 0x11
	.long	0x5c52
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5dc7
	.uleb128 0x21
	.long	0x4a15
	.long	0x5e09
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x4b14
	.uleb128 0x11
	.long	0x5b76
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5deb
	.uleb128 0x21
	.long	0x4a15
	.long	0x5e2d
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x4bf4
	.uleb128 0x11
	.long	0x5b76
	.uleb128 0x11
	.long	0x5b76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e0f
	.uleb128 0x5
	.ascii "PMC_SINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x1a6
	.byte	0x3
	.long	0x5866
	.uleb128 0x12
	.ascii "__tag_PMC_DEBUG_ENVIRONMENT\0"
	.byte	0x10
	.byte	0x1
	.byte	0x23
	.byte	0x10
	.long	0x5e94
	.uleb128 0x13
	.ascii "log\0"
	.byte	0x1
	.byte	0x25
	.byte	0x27
	.long	0x5ea4
	.byte	0
	.uleb128 0x13
	.ascii "pause\0"
	.byte	0x1
	.byte	0x26
	.byte	0x28
	.long	0x81c
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.long	0x13c
	.long	0x5ea4
	.uleb128 0x11
	.long	0x823
	.uleb128 0x23
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e94
	.uleb128 0x3
	.ascii "PMC_DEBUG_ENVIRONMENT\0"
	.byte	0x1
	.byte	0x27
	.byte	0x3
	.long	0x5e52
	.uleb128 0x24
	.ascii "TEST_Remainder_X_X\0"
	.byte	0x2
	.byte	0xa2
	.byte	0x6
	.quad	.LFB4280
	.quad	.LFE4280-.LFB4280
	.uleb128 0x1
	.byte	0x9c
	.long	0x6010
	.uleb128 0x25
	.ascii "env\0"
	.byte	0x2
	.byte	0xa2
	.byte	0x30
	.long	0x6010
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "ep\0"
	.byte	0x2
	.byte	0xa2
	.byte	0x4c
	.long	0x6016
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "no\0"
	.byte	0x2
	.byte	0xa2
	.byte	0x54
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.secrel32	.LASF21
	.byte	0x2
	.byte	0xa2
	.byte	0x66
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.secrel32	.LASF22
	.byte	0x2
	.byte	0xa2
	.byte	0x74
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x26
	.secrel32	.LASF23
	.byte	0x2
	.byte	0xa2
	.byte	0x8e
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.secrel32	.LASF24
	.byte	0x2
	.byte	0xa2
	.byte	0x9c
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x26
	.secrel32	.LASF25
	.byte	0x2
	.byte	0xa2
	.byte	0xb8
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x26
	.secrel32	.LASF26
	.byte	0x2
	.byte	0xa2
	.byte	0xdb
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x26
	.secrel32	.LASF27
	.byte	0x2
	.byte	0xa2
	.byte	0xf1
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0xa4
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0xa5
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.ascii "r\0"
	.byte	0x2
	.byte	0xa6
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.secrel32	.LASF28
	.byte	0x2
	.byte	0xa7
	.byte	0x13
	.long	0x1ee0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.secrel32	.LASF29
	.byte	0x2
	.byte	0xa8
	.byte	0xc
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.secrel32	.LASF30
	.byte	0x2
	.byte	0xa9
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.secrel32	.LASF31
	.byte	0x2
	.byte	0xaa
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.secrel32	.LASF32
	.byte	0x2
	.byte	0xab
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	.LASF33
	.byte	0x2
	.byte	0xac
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5eaa
	.uleb128 0x6
	.byte	0x8
	.long	0x5e33
	.uleb128 0x24
	.ascii "TEST_Remainder_X_UX\0"
	.byte	0x2
	.byte	0x87
	.byte	0x6
	.quad	.LFB4279
	.quad	.LFE4279-.LFB4279
	.uleb128 0x1
	.byte	0x9c
	.long	0x6165
	.uleb128 0x25
	.ascii "env\0"
	.byte	0x2
	.byte	0x87
	.byte	0x31
	.long	0x6010
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "ep\0"
	.byte	0x2
	.byte	0x87
	.byte	0x4d
	.long	0x6016
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "no\0"
	.byte	0x2
	.byte	0x87
	.byte	0x55
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.secrel32	.LASF21
	.byte	0x2
	.byte	0x87
	.byte	0x67
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.secrel32	.LASF22
	.byte	0x2
	.byte	0x87
	.byte	0x75
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x26
	.secrel32	.LASF23
	.byte	0x2
	.byte	0x87
	.byte	0x8f
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.secrel32	.LASF24
	.byte	0x2
	.byte	0x87
	.byte	0x9d
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x26
	.secrel32	.LASF25
	.byte	0x2
	.byte	0x87
	.byte	0xb9
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x26
	.secrel32	.LASF26
	.byte	0x2
	.byte	0x87
	.byte	0xdc
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x26
	.secrel32	.LASF27
	.byte	0x2
	.byte	0x87
	.byte	0xf2
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x89
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x8a
	.byte	0x15
	.long	0x4b14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.ascii "r\0"
	.byte	0x2
	.byte	0x8b
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.secrel32	.LASF28
	.byte	0x2
	.byte	0x8c
	.byte	0x13
	.long	0x1ee0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.secrel32	.LASF29
	.byte	0x2
	.byte	0x8d
	.byte	0xc
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.secrel32	.LASF30
	.byte	0x2
	.byte	0x8e
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.secrel32	.LASF31
	.byte	0x2
	.byte	0x8f
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.secrel32	.LASF32
	.byte	0x2
	.byte	0x90
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	.LASF33
	.byte	0x2
	.byte	0x91
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.ascii "TEST_Remainder_X_L\0"
	.byte	0x2
	.byte	0x77
	.byte	0x6
	.quad	.LFB4278
	.quad	.LFE4278-.LFB4278
	.uleb128 0x1
	.byte	0x9c
	.long	0x6241
	.uleb128 0x25
	.ascii "env\0"
	.byte	0x2
	.byte	0x77
	.byte	0x30
	.long	0x6010
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "ep\0"
	.byte	0x2
	.byte	0x77
	.byte	0x4c
	.long	0x6016
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "no\0"
	.byte	0x2
	.byte	0x77
	.byte	0x54
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.secrel32	.LASF21
	.byte	0x2
	.byte	0x77
	.byte	0x67
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.secrel32	.LASF22
	.byte	0x2
	.byte	0x77
	.byte	0x75
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.ascii "v\0"
	.byte	0x2
	.byte	0x77
	.byte	0x88
	.long	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.secrel32	.LASF25
	.byte	0x2
	.byte	0x77
	.byte	0x9b
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x26
	.secrel32	.LASF34
	.byte	0x2
	.byte	0x77
	.byte	0xb8
	.long	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x79
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.secrel32	.LASF35
	.byte	0x2
	.byte	0x7a
	.byte	0xc
	.long	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.secrel32	.LASF30
	.byte	0x2
	.byte	0x7b
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	.LASF31
	.byte	0x2
	.byte	0x7c
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.ascii "TEST_Remainder_X_I\0"
	.byte	0x2
	.byte	0x67
	.byte	0x6
	.quad	.LFB4277
	.quad	.LFE4277-.LFB4277
	.uleb128 0x1
	.byte	0x9c
	.long	0x631d
	.uleb128 0x25
	.ascii "env\0"
	.byte	0x2
	.byte	0x67
	.byte	0x30
	.long	0x6010
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "ep\0"
	.byte	0x2
	.byte	0x67
	.byte	0x4c
	.long	0x6016
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "no\0"
	.byte	0x2
	.byte	0x67
	.byte	0x54
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.secrel32	.LASF21
	.byte	0x2
	.byte	0x67
	.byte	0x67
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.secrel32	.LASF22
	.byte	0x2
	.byte	0x67
	.byte	0x75
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.ascii "v\0"
	.byte	0x2
	.byte	0x67
	.byte	0x88
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.secrel32	.LASF25
	.byte	0x2
	.byte	0x67
	.byte	0x9b
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x26
	.secrel32	.LASF34
	.byte	0x2
	.byte	0x67
	.byte	0xb8
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x69
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.secrel32	.LASF35
	.byte	0x2
	.byte	0x6a
	.byte	0xc
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.secrel32	.LASF30
	.byte	0x2
	.byte	0x6b
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	.LASF31
	.byte	0x2
	.byte	0x6c
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.ascii "TEST_Remainder_UX_X\0"
	.byte	0x2
	.byte	0x4c
	.byte	0x6
	.quad	.LFB4276
	.quad	.LFE4276-.LFB4276
	.uleb128 0x1
	.byte	0x9c
	.long	0x6466
	.uleb128 0x25
	.ascii "env\0"
	.byte	0x2
	.byte	0x4c
	.byte	0x31
	.long	0x6010
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "ep\0"
	.byte	0x2
	.byte	0x4c
	.byte	0x4d
	.long	0x6016
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "no\0"
	.byte	0x2
	.byte	0x4c
	.byte	0x55
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.secrel32	.LASF21
	.byte	0x2
	.byte	0x4c
	.byte	0x67
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.secrel32	.LASF22
	.byte	0x2
	.byte	0x4c
	.byte	0x75
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x26
	.secrel32	.LASF23
	.byte	0x2
	.byte	0x4c
	.byte	0x8f
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.secrel32	.LASF24
	.byte	0x2
	.byte	0x4c
	.byte	0x9d
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x26
	.secrel32	.LASF25
	.byte	0x2
	.byte	0x4c
	.byte	0xb9
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x26
	.secrel32	.LASF26
	.byte	0x2
	.byte	0x4c
	.byte	0xdc
	.long	0x758
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x26
	.secrel32	.LASF27
	.byte	0x2
	.byte	0x4c
	.byte	0xf2
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x27
	.ascii "u\0"
	.byte	0x2
	.byte	0x4e
	.byte	0x15
	.long	0x4b14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x4f
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.ascii "r\0"
	.byte	0x2
	.byte	0x50
	.byte	0x15
	.long	0x4b14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.secrel32	.LASF28
	.byte	0x2
	.byte	0x51
	.byte	0x13
	.long	0x1ee0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.secrel32	.LASF29
	.byte	0x2
	.byte	0x52
	.byte	0xc
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.secrel32	.LASF30
	.byte	0x2
	.byte	0x53
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.secrel32	.LASF31
	.byte	0x2
	.byte	0x54
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.secrel32	.LASF32
	.byte	0x2
	.byte	0x55
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.secrel32	.LASF33
	.byte	0x2
	.byte	0x56
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.ascii "TEST_Remainder_L_X\0"
	.byte	0x2
	.byte	0x36
	.byte	0x6
	.quad	.LFB4275
	.quad	.LFE4275-.LFB4275
	.uleb128 0x1
	.byte	0x9c
	.long	0x657f
	.uleb128 0x25
	.ascii "env\0"
	.byte	0x2
	.byte	0x36
	.byte	0x30
	.long	0x6010
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "ep\0"
	.byte	0x2
	.byte	0x36
	.byte	0x4c
	.long	0x6016
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "no\0"
	.byte	0x2
	.byte	0x36
	.byte	0x54
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.ascii "u\0"
	.byte	0x2
	.byte	0x36
	.byte	0x5f
	.long	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.secrel32	.LASF23
	.byte	0x2
	.byte	0x36
	.byte	0x71
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x26
	.secrel32	.LASF24
	.byte	0x2
	.byte	0x36
	.byte	0x7f
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.secrel32	.LASF25
	.byte	0x2
	.byte	0x36
	.byte	0x9b
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x26
	.secrel32	.LASF26
	.byte	0x2
	.byte	0x36
	.byte	0xbe
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x26
	.secrel32	.LASF27
	.byte	0x2
	.byte	0x36
	.byte	0xd4
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x38
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.ascii "r\0"
	.byte	0x2
	.byte	0x39
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.secrel32	.LASF28
	.byte	0x2
	.byte	0x3a
	.byte	0x13
	.long	0x1ee0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.secrel32	.LASF29
	.byte	0x2
	.byte	0x3b
	.byte	0xc
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x28
	.secrel32	.LASF30
	.byte	0x2
	.byte	0x3c
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.secrel32	.LASF32
	.byte	0x2
	.byte	0x3d
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.secrel32	.LASF33
	.byte	0x2
	.byte	0x3e
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.ascii "TEST_Remainder_I_X\0"
	.byte	0x2
	.byte	0x20
	.byte	0x6
	.quad	.LFB4274
	.quad	.LFE4274-.LFB4274
	.uleb128 0x1
	.byte	0x9c
	.long	0x6698
	.uleb128 0x25
	.ascii "env\0"
	.byte	0x2
	.byte	0x20
	.byte	0x30
	.long	0x6010
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "ep\0"
	.byte	0x2
	.byte	0x20
	.byte	0x4c
	.long	0x6016
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "no\0"
	.byte	0x2
	.byte	0x20
	.byte	0x54
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.ascii "u\0"
	.byte	0x2
	.byte	0x20
	.byte	0x5f
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.secrel32	.LASF23
	.byte	0x2
	.byte	0x20
	.byte	0x71
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x26
	.secrel32	.LASF24
	.byte	0x2
	.byte	0x20
	.byte	0x7f
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x26
	.secrel32	.LASF25
	.byte	0x2
	.byte	0x20
	.byte	0x9b
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x26
	.secrel32	.LASF26
	.byte	0x2
	.byte	0x20
	.byte	0xbe
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x26
	.secrel32	.LASF27
	.byte	0x2
	.byte	0x20
	.byte	0xd4
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x27
	.ascii "v\0"
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.ascii "r\0"
	.byte	0x2
	.byte	0x23
	.byte	0x15
	.long	0x4bf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.secrel32	.LASF28
	.byte	0x2
	.byte	0x24
	.byte	0x13
	.long	0x1ee0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.secrel32	.LASF29
	.byte	0x2
	.byte	0x25
	.byte	0xc
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x28
	.secrel32	.LASF30
	.byte	0x2
	.byte	0x26
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.secrel32	.LASF32
	.byte	0x2
	.byte	0x27
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.secrel32	.LASF33
	.byte	0x2
	.byte	0x28
	.byte	0x15
	.long	0x4a15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.ascii "_EQUALS_MEMORY\0"
	.byte	0x1
	.byte	0x96
	.byte	0x15
	.long	0x13c
	.quad	.LFB4273
	.quad	.LFE4273-.LFB4273
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.ascii "buffer1\0"
	.byte	0x1
	.byte	0x96
	.byte	0x33
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.ascii "count1\0"
	.byte	0x1
	.byte	0x96
	.byte	0x43
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.ascii "buffer2\0"
	.byte	0x1
	.byte	0x96
	.byte	0x5a
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.ascii "count2\0"
	.byte	0x1
	.byte	0x96
	.byte	0x6a
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1f
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
.LASF24:
	.ascii "v_buf_size\0"
.LASF10:
	.ascii "Subtruct_X_X\0"
.LASF35:
	.ascii "actual_r\0"
.LASF3:
	.ascii "GetConstantValue_I\0"
.LASF32:
	.ascii "v_result\0"
.LASF12:
	.ascii "Multiply_L_X\0"
.LASF1:
	.ascii "IS_POWER_OF_TWO\0"
.LASF22:
	.ascii "u_buf_size\0"
.LASF23:
	.ascii "v_buf\0"
.LASF13:
	.ascii "Multiply_X_I\0"
.LASF14:
	.ascii "Multiply_X_L\0"
.LASF31:
	.ascii "u_result\0"
.LASF34:
	.ascii "desired_r\0"
.LASF15:
	.ascii "Multiply_X_X\0"
.LASF29:
	.ascii "actual_r_buf_size\0"
.LASF0:
	.ascii "refcount\0"
.LASF26:
	.ascii "desired_r_buf\0"
.LASF27:
	.ascii "desired_r_buf_size\0"
.LASF16:
	.ascii "DivRem_I_X\0"
.LASF5:
	.ascii "ToByteArray\0"
.LASF18:
	.ascii "DivRem_X_I\0"
.LASF28:
	.ascii "actual_r_buf\0"
.LASF19:
	.ascii "DivRem_X_L\0"
.LASF9:
	.ascii "Subtruct_X_L\0"
.LASF30:
	.ascii "result\0"
.LASF25:
	.ascii "desired_return_code\0"
.LASF2:
	.ascii "GetStatisticsInfo\0"
.LASF20:
	.ascii "DivRem_X_X\0"
.LASF4:
	.ascii "FromByteArray\0"
.LASF11:
	.ascii "Multiply_I_X\0"
.LASF33:
	.ascii "r_result\0"
.LASF6:
	.ascii "Subtruct_I_X\0"
.LASF17:
	.ascii "DivRem_L_X\0"
.LASF7:
	.ascii "Subtruct_L_X\0"
.LASF21:
	.ascii "u_buf\0"
.LASF8:
	.ascii "Subtruct_X_I\0"
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	FormatTestMesssage;	.scl	2;	.type	32;	.endef
	.def	FormatTestLabel;	.scl	2;	.type	32;	.endef
	.def	TEST_Assert;	.scl	2;	.type	32;	.endef
