	.file	"pmc_compare.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	uint_number_zero, 8, 3
	.comm	uint_number_one, 8, 3
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
	.def	CompareU_X_I_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	CompareU_X_I_Imp
CompareU_X_I_Imp:
.LFB4364:
	.file 2 "../pmc_compare.c"
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
	movq	424(%rax), %rax
	.loc 2 35 19
	movl	32(%rbp), %edx
	leaq	-8(%rbp), %r8
	movq	24(%rbp), %rcx
	call	*%rax
.LVL0:
	movl	%eax, -4(%rbp)
	.loc 2 35 8
	cmpl	$0, -4(%rbp)
	je	.L14
	.loc 2 36 16
	movl	-4(%rbp), %eax
	jmp	.L19
.L14:
	.loc 2 37 8
	cmpb	$0, 16(%rbp)
	jle	.L16
	.loc 2 38 12
	movl	-8(%rbp), %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L17
.L16:
	.loc 2 40 13
	cmpb	$0, 16(%rbp)
	jne	.L18
	.loc 2 41 16
	movl	$-256, %eax
	jmp	.L19
.L18:
	.loc 2 44 14
	movl	-8(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 44 12
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
.L17:
	.loc 2 45 12
	movl	$0, %eax
.L19:
	.loc 2 46 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4364:
	.seh_endproc
	.def	CompareU_X_L_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	CompareU_X_L_Imp
CompareU_X_L_Imp:
.LFB4365:
	.loc 2 49 1
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
	.loc 2 52 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	432(%rax), %rax
	.loc 2 52 19
	movq	32(%rbp), %rdx
	leaq	-8(%rbp), %r8
	movq	24(%rbp), %rcx
	call	*%rax
.LVL1:
	movl	%eax, -4(%rbp)
	.loc 2 52 8
	cmpl	$0, -4(%rbp)
	je	.L21
	.loc 2 53 16
	movl	-4(%rbp), %eax
	jmp	.L26
.L21:
	.loc 2 54 8
	cmpb	$0, 16(%rbp)
	jle	.L23
	.loc 2 55 12
	movl	-8(%rbp), %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L23:
	.loc 2 57 13
	cmpb	$0, 16(%rbp)
	jne	.L25
	.loc 2 58 16
	movl	$-256, %eax
	jmp	.L26
.L25:
	.loc 2 61 14
	movl	-8(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 61 12
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
.L24:
	.loc 2 62 12
	movl	$0, %eax
.L26:
	.loc 2 63 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4365:
	.seh_endproc
	.def	CompareU_X_X_Imp;	.scl	3;	.type	32;	.endef
	.seh_proc	CompareU_X_X_Imp
CompareU_X_X_Imp:
.LFB4366:
	.loc 2 66 1
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
	.loc 2 69 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	440(%rax), %rax
	.loc 2 69 19
	leaq	-8(%rbp), %r8
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	call	*%rax
.LVL2:
	movl	%eax, -4(%rbp)
	.loc 2 69 8
	cmpl	$0, -4(%rbp)
	je	.L28
	.loc 2 70 16
	movl	-4(%rbp), %eax
	jmp	.L33
.L28:
	.loc 2 71 8
	cmpb	$0, 16(%rbp)
	jle	.L30
	.loc 2 72 12
	movl	-8(%rbp), %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L31
.L30:
	.loc 2 74 13
	cmpb	$0, 16(%rbp)
	jne	.L32
	.loc 2 75 16
	movl	$-256, %eax
	jmp	.L33
.L32:
	.loc 2 78 14
	movl	-8(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 78 12
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
.L31:
	.loc 2 79 12
	movl	$0, %eax
.L33:
	.loc 2 80 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4366:
	.seh_endproc
	.globl	PMC_Compare_I_X
	.def	PMC_Compare_I_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_I_X
PMC_Compare_I_X:
.LFB4367:
	.loc 2 83 1
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
	.loc 2 84 8
	cmpq	$0, 24(%rbp)
	jne	.L35
	.loc 2 85 16
	movl	$-1, %eax
	jmp	.L45
.L35:
	.loc 2 86 8
	cmpq	$0, 32(%rbp)
	jne	.L37
	.loc 2 87 16
	movl	$-1, %eax
	jmp	.L45
.L37:
	.loc 2 89 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 90 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 90 8
	cmpl	$0, -12(%rbp)
	je	.L38
	.loc 2 91 16
	movl	-12(%rbp), %eax
	jmp	.L45
.L38:
	.loc 2 93 23
	leaq	-17(%rbp), %rax
	movq	%rax, %rdx
	movl	16(%rbp), %ecx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 94 16
	movzbl	-17(%rbp), %eax
	.loc 2 94 8
	testb	%al, %al
	jne	.L39
	.loc 2 99 18
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	.loc 2 99 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 99 12
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L40
.L39:
	.loc 2 101 21
	movzbl	-17(%rbp), %eax
	.loc 2 101 13
	testb	%al, %al
	jle	.L41
	.loc 2 105 15
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 105 12
	testb	%al, %al
	jg	.L42
	.loc 2 110 16
	movq	32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L40
.L42:
	.loc 2 117 27
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movl	%edx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	CompareU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 117 16
	cmpl	$0, -12(%rbp)
	je	.L40
	.loc 2 118 24
	movl	-12(%rbp), %eax
	jmp	.L45
.L41:
	.loc 2 125 15
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 125 12
	testb	%al, %al
	js	.L43
	.loc 2 130 16
	movq	32(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L40
.L43:
	.loc 2 137 27
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movl	%edx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	CompareU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 137 16
	cmpl	$0, -12(%rbp)
	je	.L40
	.loc 2 138 24
	movl	-12(%rbp), %eax
	jmp	.L45
.L40:
	.loc 2 142 9
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 142 8
	testl	%eax, %eax
	je	.L44
	.loc 2 142 20 discriminator 1
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 142 17 discriminator 1
	cmpl	$1, %eax
	je	.L44
	.loc 2 142 31 discriminator 2
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 142 28 discriminator 2
	cmpl	$-1, %eax
	je	.L44
	.loc 2 143 16
	movl	$-256, %eax
	jmp	.L45
.L44:
	.loc 2 145 12
	movl	$0, %eax
.L45:
	.loc 2 146 1 discriminator 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4367:
	.seh_endproc
	.globl	PMC_Compare_L_X
	.def	PMC_Compare_L_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_L_X
PMC_Compare_L_X:
.LFB4368:
	.loc 2 149 1
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
	.loc 2 150 8
	cmpq	$0, 24(%rbp)
	jne	.L47
	.loc 2 151 16
	movl	$-1, %eax
	jmp	.L57
.L47:
	.loc 2 152 8
	cmpq	$0, 32(%rbp)
	jne	.L49
	.loc 2 153 16
	movl	$-1, %eax
	jmp	.L57
.L49:
	.loc 2 155 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 156 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 156 8
	cmpl	$0, -12(%rbp)
	je	.L50
	.loc 2 157 16
	movl	-12(%rbp), %eax
	jmp	.L57
.L50:
	.loc 2 159 23
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 160 16
	movzbl	-25(%rbp), %eax
	.loc 2 160 8
	testb	%al, %al
	jne	.L51
	.loc 2 165 18
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	.loc 2 165 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 165 12
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L52
.L51:
	.loc 2 167 21
	movzbl	-25(%rbp), %eax
	.loc 2 167 13
	testb	%al, %al
	jle	.L53
	.loc 2 171 15
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 171 12
	testb	%al, %al
	jg	.L54
	.loc 2 176 16
	movq	32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L52
.L54:
	.loc 2 183 27
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	CompareU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 183 16
	cmpl	$0, -12(%rbp)
	je	.L52
	.loc 2 184 24
	movl	-12(%rbp), %eax
	jmp	.L57
.L53:
	.loc 2 191 15
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 191 12
	testb	%al, %al
	js	.L55
	.loc 2 196 16
	movq	32(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L52
.L55:
	.loc 2 203 27
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	CompareU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 203 16
	cmpl	$0, -12(%rbp)
	je	.L52
	.loc 2 204 24
	movl	-12(%rbp), %eax
	jmp	.L57
.L52:
	.loc 2 208 9
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 208 8
	testl	%eax, %eax
	je	.L56
	.loc 2 208 20 discriminator 1
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 208 17 discriminator 1
	cmpl	$1, %eax
	je	.L56
	.loc 2 208 31 discriminator 2
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 208 28 discriminator 2
	cmpl	$-1, %eax
	je	.L56
	.loc 2 209 16
	movl	$-256, %eax
	jmp	.L57
.L56:
	.loc 2 211 12
	movl	$0, %eax
.L57:
	.loc 2 212 1 discriminator 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4368:
	.seh_endproc
	.globl	PMC_Compare_UX_X
	.def	PMC_Compare_UX_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_UX_X
PMC_Compare_UX_X:
.LFB4369:
	.loc 2 215 1
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
	movq	%r8, 32(%rbp)
	.loc 2 216 8
	cmpq	$0, 24(%rbp)
	jne	.L59
	.loc 2 217 16
	movl	$-1, %eax
	jmp	.L60
.L59:
	.loc 2 218 8
	cmpq	$0, 32(%rbp)
	jne	.L61
	.loc 2 219 16
	movl	$-1, %eax
	jmp	.L60
.L61:
	.loc 2 221 20
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 222 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 222 8
	cmpl	$0, -12(%rbp)
	je	.L62
	.loc 2 223 16
	movl	-12(%rbp), %eax
	jmp	.L60
.L62:
	.loc 2 224 9
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	.loc 2 224 8
	testb	%al, %al
	je	.L63
	.loc 2 229 17
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	.loc 2 229 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 229 12
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L64
.L63:
	.loc 2 235 15
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 235 12
	testb	%al, %al
	jg	.L65
	.loc 2 240 16
	movq	32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L64
.L65:
	.loc 2 247 27
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	16(%rbp), %rdx
	movl	$1, %ecx
	call	CompareU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 247 16
	cmpl	$0, -12(%rbp)
	je	.L64
	.loc 2 248 24
	movl	-12(%rbp), %eax
	jmp	.L60
.L64:
	.loc 2 252 9
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 252 8
	testl	%eax, %eax
	je	.L66
	.loc 2 252 20 discriminator 1
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 252 17 discriminator 1
	cmpl	$1, %eax
	je	.L66
	.loc 2 252 31 discriminator 2
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 252 28 discriminator 2
	cmpl	$-1, %eax
	je	.L66
	.loc 2 253 16
	movl	$-256, %eax
	jmp	.L60
.L66:
	.loc 2 255 12
	movl	$0, %eax
.L60:
	.loc 2 256 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4369:
	.seh_endproc
	.globl	PMC_Compare_X_I
	.def	PMC_Compare_X_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_I
PMC_Compare_X_I:
.LFB4370:
	.loc 2 259 1
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
	.loc 2 260 8
	cmpq	$0, 16(%rbp)
	jne	.L68
	.loc 2 261 16
	movl	$-1, %eax
	jmp	.L78
.L68:
	.loc 2 262 8
	cmpq	$0, 32(%rbp)
	jne	.L70
	.loc 2 263 16
	movl	$-1, %eax
	jmp	.L78
.L70:
	.loc 2 265 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 266 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 266 8
	cmpl	$0, -12(%rbp)
	je	.L71
	.loc 2 267 16
	movl	-12(%rbp), %eax
	jmp	.L78
.L71:
	.loc 2 269 23
	leaq	-17(%rbp), %rax
	movl	24(%rbp), %ecx
	movq	%rax, %rdx
	call	GET_ABS_32
	movl	%eax, -16(%rbp)
	.loc 2 270 11
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 270 8
	testb	%al, %al
	jne	.L72
	.loc 2 275 14
	movzbl	-17(%rbp), %eax
	movsbl	%al, %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 275 12
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L73
.L72:
	.loc 2 277 16
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 277 13
	testb	%al, %al
	jle	.L74
	.loc 2 281 20
	movzbl	-17(%rbp), %eax
	.loc 2 281 12
	testb	%al, %al
	jg	.L75
	.loc 2 286 16
	movq	32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L73
.L75:
	.loc 2 293 27
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movl	%edx, %r8d
	movq	%rax, %rdx
	movl	$1, %ecx
	call	CompareU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 293 16
	cmpl	$0, -12(%rbp)
	je	.L73
	.loc 2 294 24
	movl	-12(%rbp), %eax
	jmp	.L78
.L74:
	.loc 2 301 20
	movzbl	-17(%rbp), %eax
	.loc 2 301 12
	testb	%al, %al
	js	.L76
	.loc 2 306 16
	movq	32(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L73
.L76:
	.loc 2 313 27
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movl	%edx, %r8d
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	CompareU_X_I_Imp
	movl	%eax, -12(%rbp)
	.loc 2 313 16
	cmpl	$0, -12(%rbp)
	je	.L73
	.loc 2 314 24
	movl	-12(%rbp), %eax
	jmp	.L78
.L73:
	.loc 2 318 9
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 318 8
	testl	%eax, %eax
	je	.L77
	.loc 2 318 20 discriminator 1
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 318 17 discriminator 1
	cmpl	$1, %eax
	je	.L77
	.loc 2 318 31 discriminator 2
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 318 28 discriminator 2
	cmpl	$-1, %eax
	je	.L77
	.loc 2 319 16
	movl	$-256, %eax
	jmp	.L78
.L77:
	.loc 2 321 12
	movl	$0, %eax
.L78:
	.loc 2 322 1 discriminator 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4370:
	.seh_endproc
	.globl	PMC_Compare_X_L
	.def	PMC_Compare_X_L;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_L
PMC_Compare_X_L:
.LFB4371:
	.loc 2 325 1
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
	.loc 2 326 8
	cmpq	$0, 16(%rbp)
	jne	.L80
	.loc 2 327 16
	movl	$-1, %eax
	jmp	.L90
.L80:
	.loc 2 328 8
	cmpq	$0, 32(%rbp)
	jne	.L82
	.loc 2 329 16
	movl	$-1, %eax
	jmp	.L90
.L82:
	.loc 2 331 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 332 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 332 8
	cmpl	$0, -12(%rbp)
	je	.L83
	.loc 2 333 16
	movl	-12(%rbp), %eax
	jmp	.L90
.L83:
	.loc 2 335 23
	leaq	-25(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rax, %rdx
	call	GET_ABS_64
	movq	%rax, -24(%rbp)
	.loc 2 336 11
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 336 8
	testb	%al, %al
	jne	.L84
	.loc 2 341 14
	movzbl	-25(%rbp), %eax
	movsbl	%al, %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 341 12
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L85
.L84:
	.loc 2 343 16
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 343 13
	testb	%al, %al
	jle	.L86
	.loc 2 347 20
	movzbl	-25(%rbp), %eax
	.loc 2 347 12
	testb	%al, %al
	jg	.L87
	.loc 2 352 16
	movq	32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L85
.L87:
	.loc 2 359 27
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	CompareU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 359 16
	cmpl	$0, -12(%rbp)
	je	.L85
	.loc 2 360 24
	movl	-12(%rbp), %eax
	jmp	.L90
.L86:
	.loc 2 367 20
	movzbl	-25(%rbp), %eax
	.loc 2 367 12
	testb	%al, %al
	js	.L88
	.loc 2 372 16
	movq	32(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L85
.L88:
	.loc 2 379 27
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	CompareU_X_L_Imp
	movl	%eax, -12(%rbp)
	.loc 2 379 16
	cmpl	$0, -12(%rbp)
	je	.L85
	.loc 2 380 24
	movl	-12(%rbp), %eax
	jmp	.L90
.L85:
	.loc 2 384 9
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 384 8
	testl	%eax, %eax
	je	.L89
	.loc 2 384 20 discriminator 1
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 384 17 discriminator 1
	cmpl	$1, %eax
	je	.L89
	.loc 2 384 31 discriminator 2
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 384 28 discriminator 2
	cmpl	$-1, %eax
	je	.L89
	.loc 2 385 16
	movl	$-256, %eax
	jmp	.L90
.L89:
	.loc 2 387 12
	movl	$0, %eax
.L90:
	.loc 2 388 1 discriminator 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4371:
	.seh_endproc
	.globl	PMC_Compare_X_UX
	.def	PMC_Compare_X_UX;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_UX
PMC_Compare_X_UX:
.LFB4372:
	.loc 2 391 1
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
	movq	%r8, 32(%rbp)
	.loc 2 392 8
	cmpq	$0, 16(%rbp)
	jne	.L92
	.loc 2 393 16
	movl	$-1, %eax
	jmp	.L93
.L92:
	.loc 2 394 8
	cmpq	$0, 24(%rbp)
	jne	.L94
	.loc 2 395 16
	movl	$-1, %eax
	jmp	.L93
.L94:
	.loc 2 396 8
	cmpq	$0, 32(%rbp)
	jne	.L95
	.loc 2 397 16
	movl	$-1, %eax
	jmp	.L93
.L95:
	.loc 2 399 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 400 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -12(%rbp)
	.loc 2 400 8
	cmpl	$0, -12(%rbp)
	je	.L96
	.loc 2 401 16
	movl	-12(%rbp), %eax
	jmp	.L93
.L96:
	.loc 2 402 11
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 402 8
	testb	%al, %al
	jne	.L97
	.loc 2 406 13
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	.loc 2 406 12
	testb	%al, %al
	je	.L98
	.loc 2 411 16
	movq	32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L100
.L98:
	.loc 2 418 16
	movq	32(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L100
.L97:
	.loc 2 421 16
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 421 13
	testb	%al, %al
	jle	.L101
	.loc 2 425 13
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	.loc 2 425 12
	testb	%al, %al
	je	.L102
	.loc 2 430 16
	movq	32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L100
.L102:
	.loc 2 437 27
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	CompareU_X_X_Imp
	movl	%eax, -12(%rbp)
	.loc 2 437 16
	cmpl	$0, -12(%rbp)
	je	.L100
	.loc 2 438 24
	movl	-12(%rbp), %eax
	jmp	.L93
.L101:
	.loc 2 446 12
	movq	32(%rbp), %rax
	movl	$-1, (%rax)
.L100:
	.loc 2 449 9
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 449 8
	testl	%eax, %eax
	je	.L103
	.loc 2 449 20 discriminator 1
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 449 17 discriminator 1
	cmpl	$1, %eax
	je	.L103
	.loc 2 449 31 discriminator 2
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 449 28 discriminator 2
	cmpl	$-1, %eax
	je	.L103
	.loc 2 450 16
	movl	$-256, %eax
	jmp	.L93
.L103:
	.loc 2 452 12
	movl	$0, %eax
.L93:
	.loc 2 453 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4372:
	.seh_endproc
	.globl	PMC_Compare_X_X
	.def	PMC_Compare_X_X;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Compare_X_X
PMC_Compare_X_X:
.LFB4373:
	.loc 2 456 1
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
	.loc 2 457 8
	cmpq	$0, 16(%rbp)
	jne	.L105
	.loc 2 458 16
	movl	$-1, %eax
	jmp	.L106
.L105:
	.loc 2 459 8
	cmpq	$0, 24(%rbp)
	jne	.L107
	.loc 2 460 16
	movl	$-1, %eax
	jmp	.L106
.L107:
	.loc 2 461 8
	cmpq	$0, 32(%rbp)
	jne	.L108
	.loc 2 462 16
	movl	$-1, %eax
	jmp	.L106
.L108:
	.loc 2 464 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 465 20
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 466 19
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 466 8
	cmpl	$0, -20(%rbp)
	je	.L109
	.loc 2 467 16
	movl	-20(%rbp), %eax
	jmp	.L106
.L109:
	.loc 2 468 19
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	CheckNumber
	movl	%eax, -20(%rbp)
	.loc 2 468 8
	cmpl	$0, -20(%rbp)
	je	.L110
	.loc 2 469 16
	movl	-20(%rbp), %eax
	jmp	.L106
.L110:
	.loc 2 470 11
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 470 8
	testb	%al, %al
	jne	.L111
	.loc 2 475 17
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	.loc 2 475 14
	negl	%eax
	movl	%eax, %edx
	.loc 2 475 12
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L112
.L111:
	.loc 2 477 16
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 477 13
	testb	%al, %al
	jle	.L113
	.loc 2 481 15
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 481 12
	testb	%al, %al
	jg	.L114
	.loc 2 486 16
	movq	32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L112
.L114:
	.loc 2 493 27
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$1, %ecx
	call	CompareU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 493 16
	cmpl	$0, -20(%rbp)
	je	.L112
	.loc 2 494 24
	movl	-20(%rbp), %eax
	jmp	.L106
.L113:
	.loc 2 501 15
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 501 12
	testb	%al, %al
	js	.L115
	.loc 2 506 16
	movq	32(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L112
.L115:
	.loc 2 513 27
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movl	$-1, %ecx
	call	CompareU_X_X_Imp
	movl	%eax, -20(%rbp)
	.loc 2 513 16
	cmpl	$0, -20(%rbp)
	je	.L112
	.loc 2 514 24
	movl	-20(%rbp), %eax
	jmp	.L106
.L112:
	.loc 2 518 9
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 518 8
	testl	%eax, %eax
	je	.L116
	.loc 2 518 20 discriminator 1
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 518 17 discriminator 1
	cmpl	$1, %eax
	je	.L116
	.loc 2 518 31 discriminator 2
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 518 28 discriminator 2
	cmpl	$-1, %eax
	je	.L116
	.loc 2 519 16
	movl	$-256, %eax
	jmp	.L106
.L116:
	.loc 2 521 12
	movl	$0, %eax
.L106:
	.loc 2 522 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4373:
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
	.file 17 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/combaseapi.h"
	.file 18 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/objidl.h"
	.file 19 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oleidl.h"
	.file 20 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/servprov.h"
	.file 21 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oaidl.h"
	.file 22 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/msxml.h"
	.file 23 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/urlmon.h"
	.file 24 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/propidl.h"
	.file 25 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oleauto.h"
	.file 26 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winioctl.h"
	.file 27 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winsmcrd.h"
	.file 28 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winscard.h"
	.file 29 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/commdlg.h"
	.file 30 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/stdint.h"
	.file 31 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc.h"
	.file 32 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_uint.h"
	.file 33 "../pmc_sint.h"
	.file 34 "../pmc_sint_internal.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x658c
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=core2 -march=nocona -g\0"
	.byte	0xc
	.ascii "../pmc_compare.c\0"
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
	.uleb128 0x18
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0x459
	.byte	0x11
	.byte	0x95
	.byte	0xe
	.long	0x1f00
	.uleb128 0x19
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
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
	.uleb128 0x1a
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0x459
	.byte	0x10
	.word	0x200
	.byte	0x6
	.long	0x3116
	.uleb128 0x19
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0x19
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0x19
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0x19
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0x19
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0x19
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0x19
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0x19
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0x19
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0x19
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0x19
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0x19
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0x19
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0x19
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0x19
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0x19
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0x19
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0x19
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0x19
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0x19
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0x19
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0x19
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0x19
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0x19
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0x19
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0x19
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0x19
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0x19
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0x19
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0x19
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0x19
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0x19
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0x19
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0x19
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0x19
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0x19
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0x19
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0x19
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0x19
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0x19
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0x19
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0x19
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x19
	.ascii "VT_VERSIONED_STREAM\0"
	.byte	0x49
	.uleb128 0x1b
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x1b
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x1b
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x1b
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x1b
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x1b
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x1b
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x1b
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x17
	.ascii "IID_IMallocSpy\0"
	.byte	0x12
	.word	0x1dbd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindCtx\0"
	.byte	0x12
	.word	0x1f3a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumMoniker\0"
	.byte	0x12
	.word	0x204a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRunnableObject\0"
	.byte	0x12
	.word	0x20e8
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x12
	.word	0x218e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersist\0"
	.byte	0x12
	.word	0x2269
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersistStream\0"
	.byte	0x12
	.word	0x22be
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMoniker\0"
	.byte	0x12
	.word	0x236a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IROTData\0"
	.byte	0x12
	.word	0x2558
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x12
	.word	0x25b5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IStorage\0"
	.byte	0x12
	.word	0x2658
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersistFile\0"
	.byte	0x12
	.word	0x2841
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPersistStorage\0"
	.byte	0x12
	.word	0x28f1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ILockBytes\0"
	.byte	0x12
	.word	0x29b1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x12
	.word	0x2ac0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x12
	.word	0x2b6c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRootStorage\0"
	.byte	0x12
	.word	0x2c08
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAdviseSink\0"
	.byte	0x12
	.word	0x2cb3
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x12
	.word	0x2d73
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAdviseSink2\0"
	.byte	0x12
	.word	0x2ea9
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x12
	.word	0x2f2e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDataObject\0"
	.byte	0x12
	.word	0x2ff4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x12
	.word	0x3118
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMessageFilter\0"
	.byte	0x12
	.word	0x31d3
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x12
	.word	0x325d
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x12
	.word	0x325f
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x12
	.word	0x3261
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x12
	.word	0x3263
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x12
	.word	0x3265
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x12
	.word	0x3267
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x12
	.word	0x3269
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x12
	.word	0x326b
	.byte	0x14
	.long	0x7f3
	.uleb128 0x17
	.ascii "IID_IClassActivator\0"
	.byte	0x12
	.word	0x3273
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IFillLockBytes\0"
	.byte	0x12
	.word	0x32d5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IProgressNotify\0"
	.byte	0x12
	.word	0x3389
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ILayoutStorage\0"
	.byte	0x12
	.word	0x33ee
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBlockingLock\0"
	.byte	0x12
	.word	0x3492
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x12
	.word	0x34f7
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOplockStorage\0"
	.byte	0x12
	.word	0x354e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x12
	.word	0x35d5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IUrlMon\0"
	.byte	0x12
	.word	0x364d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x12
	.word	0x36bc
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x12
	.word	0x3710
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x12
	.word	0x3786
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IProcessLock\0"
	.byte	0x12
	.word	0x37e5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISurrogateService\0"
	.byte	0x12
	.word	0x3848
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInitializeSpy\0"
	.byte	0x12
	.word	0x38f2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x12
	.word	0x398a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x13
	.byte	0xab
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleCache\0"
	.byte	0x13
	.word	0x162
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleCache2\0"
	.byte	0x13
	.word	0x229
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleCacheControl\0"
	.byte	0x13
	.word	0x2d4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IParseDisplayName\0"
	.byte	0x13
	.word	0x33c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleContainer\0"
	.byte	0x13
	.word	0x39c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleClientSite\0"
	.byte	0x13
	.word	0x417
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleObject\0"
	.byte	0x13
	.word	0x4fe
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x13
	.word	0x6fe
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x17
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x13
	.word	0x6ff
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x17
	.ascii "IID_IOleWindow\0"
	.byte	0x13
	.word	0x724
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleLink\0"
	.byte	0x13
	.word	0x79a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleItemContainer\0"
	.byte	0x13
	.word	0x8bf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x13
	.word	0x976
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x13
	.word	0xa1c
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x13
	.word	0xaf8
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x13
	.word	0xbf1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x13
	.word	0xc91
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IContinue\0"
	.byte	0x13
	.word	0xda4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IViewObject\0"
	.byte	0x13
	.word	0xdf9
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IViewObject2\0"
	.byte	0x13
	.word	0xf2a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDropSource\0"
	.byte	0x13
	.word	0xfd2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDropTarget\0"
	.byte	0x13
	.word	0x105b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x13
	.word	0x10ff
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x13
	.word	0x1176
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_IServiceProvider\0"
	.byte	0x14
	.byte	0x4d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x15
	.byte	0xf1
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x15
	.byte	0xf2
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x17
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x15
	.word	0x33b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x15
	.word	0x562
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x15
	.word	0x7b2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x15
	.word	0x8ba
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDispatch\0"
	.byte	0x15
	.word	0x9b6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x15
	.word	0xa87
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeComp\0"
	.byte	0x15
	.word	0xb35
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeInfo\0"
	.byte	0x15
	.word	0xbd9
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeInfo2\0"
	.byte	0x15
	.word	0xe50
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeLib\0"
	.byte	0x15
	.word	0x10d6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeLib2\0"
	.byte	0x15
	.word	0x123d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x15
	.word	0x1361
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IErrorInfo\0"
	.byte	0x15
	.word	0x13da
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x15
	.word	0x147d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x15
	.word	0x1520
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeFactory\0"
	.byte	0x15
	.word	0x1575
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ITypeMarshal\0"
	.byte	0x15
	.word	0x15d0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IRecordInfo\0"
	.byte	0x15
	.word	0x1684
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IErrorLog\0"
	.byte	0x15
	.word	0x1820
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPropertyBag\0"
	.byte	0x15
	.word	0x187a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x16
	.byte	0xeb
	.byte	0x18
	.long	0x1eb2
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x16
	.byte	0xec
	.byte	0x18
	.long	0x1eb2
	.uleb128 0x15
	.ascii "LIBID_MSXML\0"
	.byte	0x16
	.byte	0xfc
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x16
	.word	0x100
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x16
	.word	0x127
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x16
	.word	0x1fd
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x16
	.word	0x266
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x16
	.word	0x375
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x16
	.word	0x3b0
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x16
	.word	0x404
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x16
	.word	0x496
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x16
	.word	0x50f
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMText\0"
	.byte	0x16
	.word	0x5a6
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x16
	.word	0x625
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x16
	.word	0x69e
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x16
	.word	0x717
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x16
	.word	0x792
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x16
	.word	0x80b
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x16
	.word	0x87f
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x16
	.word	0x8f8
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x16
	.word	0x961
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXTLRuntime\0"
	.byte	0x16
	.word	0x9a6
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x16
	.word	0xa3d
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_DOMDocument\0"
	.byte	0x16
	.word	0xa5c
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x16
	.word	0xa60
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x16
	.word	0xa67
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x16
	.word	0xacd
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x16
	.word	0xad4
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x16
	.word	0xb0d
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x16
	.word	0xb14
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDocument\0"
	.byte	0x16
	.word	0xb4a
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLDocument2\0"
	.byte	0x16
	.word	0xbb2
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLElement\0"
	.byte	0x16
	.word	0xc24
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLElement2\0"
	.byte	0x16
	.word	0xc82
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLAttribute\0"
	.byte	0x16
	.word	0xce5
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IXMLError\0"
	.byte	0x16
	.word	0xd11
	.byte	0x14
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_XMLDocument\0"
	.byte	0x16
	.word	0xd2e
	.byte	0x16
	.long	0x7e0
	.uleb128 0x17
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x17
	.word	0x17e
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x17
	.word	0x17f
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x17
	.word	0x180
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x17
	.word	0x181
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x17
	.word	0x182
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x17
	.word	0x183
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x17
	.word	0x184
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x17
	.word	0x185
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x17
	.word	0x186
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x17
	.word	0x187
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x17
	.word	0x188
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x17
	.word	0x189
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x17
	.word	0x18a
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x17
	.word	0x193
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x17
	.word	0x194
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x17
	.word	0x195
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x17
	.word	0x196
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x17
	.word	0x197
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x17
	.word	0x198
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_FileProtocol\0"
	.byte	0x17
	.word	0x199
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_MkProtocol\0"
	.byte	0x17
	.word	0x19a
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x17
	.word	0x19b
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x17
	.word	0x19c
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x17
	.word	0x19d
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x17
	.word	0x19e
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x17
	.word	0x19f
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IPersistMoniker\0"
	.byte	0x17
	.word	0x250
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IMonikerProp\0"
	.byte	0x17
	.word	0x321
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindProtocol\0"
	.byte	0x17
	.word	0x37f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBinding\0"
	.byte	0x17
	.word	0x3e0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x17
	.word	0x575
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x17
	.word	0x6a5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAuthenticate\0"
	.byte	0x17
	.word	0x764
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x17
	.word	0x7d0
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x17
	.word	0x841
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x17
	.word	0x8c1
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x17
	.word	0x93b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x17
	.word	0x9bf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x17
	.word	0xa30
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICodeInstall\0"
	.byte	0x17
	.word	0xa9b
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetInfo\0"
	.byte	0x17
	.word	0x10a5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IHttpSecurity\0"
	.byte	0x17
	.word	0x1112
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x17
	.word	0x1179
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x17
	.word	0x11f8
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "SID_BindHost\0"
	.byte	0x17
	.word	0x1335
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindHost\0"
	.byte	0x17
	.word	0x133f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternet\0"
	.byte	0x17
	.word	0x144d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x17
	.word	0x14ac
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x17
	.word	0x1526
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x17
	.word	0x15bf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocol\0"
	.byte	0x17
	.word	0x1684
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x17
	.word	0x181a
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x17
	.word	0x18bd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetSession\0"
	.byte	0x17
	.word	0x193f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x17
	.word	0x1a48
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetPriority\0"
	.byte	0x17
	.word	0x1ab2
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x17
	.word	0x1b4e
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x17
	.word	0x1cb2
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x17
	.word	0x1cb3
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x17
	.word	0x1ccb
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x17
	.word	0x1d69
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x17
	.word	0x210f
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x17
	.word	0x22c4
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x17
	.word	0x269c
	.byte	0x12
	.long	0x7cd
	.uleb128 0x17
	.ascii "IID_ISoftDistExt\0"
	.byte	0x17
	.word	0x26cc
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x17
	.word	0x2778
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IDataFilter\0"
	.byte	0x17
	.word	0x27e6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x17
	.word	0x28a6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x17
	.word	0x2933
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x17
	.word	0x2941
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IGetBindHandle\0"
	.byte	0x17
	.word	0x29a5
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x17
	.word	0x2a0d
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPropertyStorage\0"
	.byte	0x18
	.word	0x1b7
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x18
	.word	0x304
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x18
	.word	0x3a6
	.byte	0x13
	.long	0x7bc
	.uleb128 0x17
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x18
	.word	0x444
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_StdOle\0"
	.byte	0x19
	.byte	0x15
	.byte	0x12
	.long	0x7cd
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x1a
	.byte	0xc
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x1a
	.byte	0xd
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x1a
	.byte	0xe
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x1a
	.byte	0xf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x1a
	.byte	0x10
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x1a
	.byte	0x11
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x1a
	.byte	0x12
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x1a
	.byte	0x13
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x1a
	.byte	0x14
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x1a
	.byte	0x15
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x1a
	.byte	0x16
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x1a
	.byte	0x17
	.byte	0x13
	.long	0x7bc
	.uleb128 0x12
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1b
	.byte	0xa1
	.byte	0x12
	.long	0x4b83
	.uleb128 0x13
	.ascii "dwProtocol\0"
	.byte	0x1b
	.byte	0xa2
	.byte	0xb
	.long	0x5e1
	.byte	0
	.uleb128 0x13
	.ascii "cbPciLength\0"
	.byte	0x1b
	.byte	0xa3
	.byte	0xb
	.long	0x5e1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1b
	.byte	0xa4
	.byte	0x5
	.long	0x4b3e
	.uleb128 0x4
	.long	0x4b83
	.uleb128 0x15
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x3c
	.long	0x4b9c
	.uleb128 0x15
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x4b
	.long	0x4b9c
	.uleb128 0x15
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1c
	.byte	0x25
	.byte	0x5a
	.long	0x4b9c
	.uleb128 0x15
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1d
	.byte	0xe
	.byte	0x13
	.long	0x7bc
	.uleb128 0x15
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1d
	.byte	0xf
	.byte	0x13
	.long	0x7bc
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1e
	.byte	0x27
	.byte	0xd
	.long	0x131
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1e
	.byte	0x28
	.byte	0x12
	.long	0x459
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x1e
	.byte	0x29
	.byte	0x21
	.long	0xf5
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1e
	.byte	0x2a
	.byte	0x2a
	.long	0xdb
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1f
	.byte	0x55
	.byte	0x11
	.long	0x4c29
	.uleb128 0x3
	.ascii "_INT64_T\0"
	.byte	0x1f
	.byte	0x56
	.byte	0x11
	.long	0x4c4a
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1f
	.byte	0x59
	.byte	0x12
	.long	0x4c39
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1f
	.byte	0x5a
	.byte	0x12
	.long	0x4c5a
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1f
	.byte	0x65
	.byte	0xd
	.long	0x131
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1f
	.byte	0x67
	.byte	0xd
	.long	0x131
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1f
	.byte	0x69
	.byte	0xd
	.long	0x131
	.uleb128 0x12
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1f
	.byte	0x6b
	.byte	0x10
	.long	0x4d83
	.uleb128 0x13
	.ascii "COUNT_MULTI64\0"
	.byte	0x1f
	.byte	0x6d
	.byte	0xa
	.long	0x138
	.byte	0
	.uleb128 0x13
	.ascii "COUNT_MULTI32\0"
	.byte	0x1f
	.byte	0x6e
	.byte	0xa
	.long	0x138
	.byte	0x4
	.uleb128 0x13
	.ascii "COUNT_DIV64\0"
	.byte	0x1f
	.byte	0x6f
	.byte	0xa
	.long	0x138
	.byte	0x8
	.uleb128 0x13
	.ascii "COUNT_DIV32\0"
	.byte	0x1f
	.byte	0x70
	.byte	0xa
	.long	0x138
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1f
	.byte	0x71
	.byte	0x3
	.long	0x4d07
	.uleb128 0x12
	.ascii "__tag_PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1f
	.byte	0x73
	.byte	0x10
	.long	0x4e1d
	.uleb128 0x1c
	.secrel32	.LASF1
	.byte	0x1f
	.byte	0x75
	.byte	0x9
	.long	0x131
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF2
	.byte	0x1f
	.byte	0x76
	.byte	0xd
	.long	0x4e1d
	.byte	0x4
	.uleb128 0x1c
	.secrel32	.LASF3
	.byte	0x1f
	.byte	0x77
	.byte	0xd
	.long	0x4e1d
	.byte	0xa
	.uleb128 0x1c
	.secrel32	.LASF4
	.byte	0x1f
	.byte	0x78
	.byte	0xd
	.long	0x4e2d
	.byte	0x10
	.uleb128 0x1c
	.secrel32	.LASF5
	.byte	0x1f
	.byte	0x79
	.byte	0x9
	.long	0x131
	.byte	0x28
	.uleb128 0x1c
	.secrel32	.LASF6
	.byte	0x1f
	.byte	0x7a
	.byte	0x9
	.long	0x131
	.byte	0x2c
	.byte	0
	.uleb128 0xe
	.long	0x106
	.long	0x4e2d
	.uleb128 0xf
	.long	0xdb
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x106
	.long	0x4e3d
	.uleb128 0xf
	.long	0xdb
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_CURRENCY_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x7b
	.byte	0x3
	.long	0x4d9f
	.uleb128 0x12
	.ascii "__tag_PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x2c
	.byte	0x1f
	.byte	0x7d
	.byte	0x10
	.long	0x4ed5
	.uleb128 0x1c
	.secrel32	.LASF1
	.byte	0x1f
	.byte	0x7f
	.byte	0x9
	.long	0x131
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF3
	.byte	0x1f
	.byte	0x80
	.byte	0xd
	.long	0x4e1d
	.byte	0x4
	.uleb128 0x1c
	.secrel32	.LASF2
	.byte	0x1f
	.byte	0x81
	.byte	0xd
	.long	0x4e1d
	.byte	0xa
	.uleb128 0x1c
	.secrel32	.LASF4
	.byte	0x1f
	.byte	0x82
	.byte	0xd
	.long	0x4e2d
	.byte	0x10
	.uleb128 0x1c
	.secrel32	.LASF5
	.byte	0x1f
	.byte	0x83
	.byte	0x9
	.long	0x131
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.ascii "PMC_GENERIC_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x84
	.byte	0x3
	.long	0x4e65
	.uleb128 0x12
	.ascii "__tag_PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x30
	.byte	0x1f
	.byte	0x86
	.byte	0x10
	.long	0x4f79
	.uleb128 0x1c
	.secrel32	.LASF1
	.byte	0x1f
	.byte	0x88
	.byte	0x9
	.long	0x131
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF3
	.byte	0x1f
	.byte	0x89
	.byte	0xd
	.long	0x4e1d
	.byte	0x4
	.uleb128 0x1c
	.secrel32	.LASF2
	.byte	0x1f
	.byte	0x8a
	.byte	0xd
	.long	0x4e1d
	.byte	0xa
	.uleb128 0x1c
	.secrel32	.LASF4
	.byte	0x1f
	.byte	0x8b
	.byte	0xd
	.long	0x4e2d
	.byte	0x10
	.uleb128 0x1c
	.secrel32	.LASF5
	.byte	0x1f
	.byte	0x8c
	.byte	0x9
	.long	0x131
	.byte	0x28
	.uleb128 0x1c
	.secrel32	.LASF6
	.byte	0x1f
	.byte	0x8d
	.byte	0x9
	.long	0x131
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.ascii "PMC_PERCENT_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x8e
	.byte	0x3
	.long	0x4efc
	.uleb128 0x12
	.ascii "__tag_PMC_NUMBER_FORMAT_INFO\0"
	.byte	0xc0
	.byte	0x1f
	.byte	0x90
	.byte	0x10
	.long	0x5083
	.uleb128 0x13
	.ascii "Currency\0"
	.byte	0x1f
	.byte	0x92
	.byte	0x25
	.long	0x4e3d
	.byte	0
	.uleb128 0x13
	.ascii "Number\0"
	.byte	0x1f
	.byte	0x93
	.byte	0x24
	.long	0x4ed5
	.byte	0x30
	.uleb128 0x13
	.ascii "Percent\0"
	.byte	0x1f
	.byte	0x94
	.byte	0x24
	.long	0x4f79
	.byte	0x5c
	.uleb128 0x13
	.ascii "CurrencySymbol\0"
	.byte	0x1f
	.byte	0x95
	.byte	0xd
	.long	0x4e1d
	.byte	0x8c
	.uleb128 0x13
	.ascii "NativeDigits\0"
	.byte	0x1f
	.byte	0x96
	.byte	0xd
	.long	0x4e2d
	.byte	0x92
	.uleb128 0x13
	.ascii "NegativeSign\0"
	.byte	0x1f
	.byte	0x97
	.byte	0xd
	.long	0x4e1d
	.byte	0xa8
	.uleb128 0x13
	.ascii "PositiveSign\0"
	.byte	0x1f
	.byte	0x98
	.byte	0xd
	.long	0x4e1d
	.byte	0xae
	.uleb128 0x13
	.ascii "PercentSymbol\0"
	.byte	0x1f
	.byte	0x99
	.byte	0xd
	.long	0x4e1d
	.byte	0xb4
	.uleb128 0x13
	.ascii "PerMilleSymbol\0"
	.byte	0x1f
	.byte	0x9a
	.byte	0xd
	.long	0x4e1d
	.byte	0xba
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_INFO\0"
	.byte	0x1f
	.byte	0x9b
	.byte	0x3
	.long	0x4fa0
	.uleb128 0x12
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x20
	.byte	0x26
	.byte	0x16
	.long	0x50fd
	.uleb128 0x1d
	.secrel32	.LASF7
	.byte	0x20
	.byte	0x28
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF8
	.byte	0x20
	.byte	0x29
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF9
	.byte	0x20
	.byte	0x2a
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF10
	.byte	0x20
	.byte	0x2b
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x50a2
	.uleb128 0x1e
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0xb
	.long	0x5140
	.uleb128 0x1f
	.ascii "FLAGS\0"
	.byte	0x20
	.byte	0x2c
	.byte	0xb
	.long	0x50fd
	.uleb128 0x1f
	.ascii "__dummy\0"
	.byte	0x20
	.byte	0x30
	.byte	0x13
	.long	0x4c9f
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x20
	.byte	0x35
	.byte	0x2a
	.long	0x5158
	.uleb128 0x6
	.byte	0x8
	.long	0x5102
	.uleb128 0x20
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x238
	.byte	0x20
	.byte	0x37
	.byte	0x14
	.long	0x588a
	.uleb128 0x21
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x20
	.byte	0x3a
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x21
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x20
	.byte	0x3b
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x21
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x20
	.byte	0x3c
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x21
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x20
	.byte	0x3d
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x21
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x20
	.byte	0x3e
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.ascii "GetStatisticsInfo\0"
	.byte	0x20
	.byte	0x41
	.byte	0x12
	.long	0x589b
	.byte	0x8
	.uleb128 0x13
	.ascii "From_I\0"
	.byte	0x20
	.byte	0x44
	.byte	0x1d
	.long	0x58bb
	.byte	0x10
	.uleb128 0x13
	.ascii "From_L\0"
	.byte	0x20
	.byte	0x47
	.byte	0x1d
	.long	0x58d5
	.byte	0x18
	.uleb128 0x13
	.ascii "Dispose\0"
	.byte	0x20
	.byte	0x4a
	.byte	0x12
	.long	0x58e6
	.byte	0x20
	.uleb128 0x13
	.ascii "GetConstantValue_I\0"
	.byte	0x20
	.byte	0x4d
	.byte	0x1d
	.long	0x5900
	.byte	0x28
	.uleb128 0x13
	.ascii "FromByteArray\0"
	.byte	0x20
	.byte	0x50
	.byte	0x1d
	.long	0x591f
	.byte	0x30
	.uleb128 0x13
	.ascii "ToByteArray\0"
	.byte	0x20
	.byte	0x51
	.byte	0x1d
	.long	0x5949
	.byte	0x38
	.uleb128 0x13
	.ascii "Clone_X\0"
	.byte	0x20
	.byte	0x54
	.byte	0x1d
	.long	0x5963
	.byte	0x40
	.uleb128 0x13
	.ascii "To_X_I\0"
	.byte	0x20
	.byte	0x57
	.byte	0x1d
	.long	0x5983
	.byte	0x48
	.uleb128 0x13
	.ascii "To_X_L\0"
	.byte	0x20
	.byte	0x58
	.byte	0x1d
	.long	0x59a3
	.byte	0x50
	.uleb128 0x13
	.ascii "InitializeNumberFormatInfo\0"
	.byte	0x20
	.byte	0x5b
	.byte	0x12
	.long	0x59ba
	.byte	0x58
	.uleb128 0x13
	.ascii "ToString\0"
	.byte	0x20
	.byte	0x5c
	.byte	0x1e
	.long	0x59e8
	.byte	0x60
	.uleb128 0x13
	.ascii "TryParse\0"
	.byte	0x20
	.byte	0x5d
	.byte	0x1d
	.long	0x5a0c
	.byte	0x68
	.uleb128 0x13
	.ascii "Add_I_X\0"
	.byte	0x20
	.byte	0x60
	.byte	0x1d
	.long	0x5a2b
	.byte	0x70
	.uleb128 0x13
	.ascii "Add_L_X\0"
	.byte	0x20
	.byte	0x61
	.byte	0x1d
	.long	0x5a4a
	.byte	0x78
	.uleb128 0x13
	.ascii "Add_X_I\0"
	.byte	0x20
	.byte	0x62
	.byte	0x1d
	.long	0x5a69
	.byte	0x80
	.uleb128 0x13
	.ascii "Add_X_L\0"
	.byte	0x20
	.byte	0x63
	.byte	0x1d
	.long	0x5a88
	.byte	0x88
	.uleb128 0x13
	.ascii "Add_X_X\0"
	.byte	0x20
	.byte	0x64
	.byte	0x1d
	.long	0x5aa7
	.byte	0x90
	.uleb128 0x13
	.ascii "Subtruct_I_X\0"
	.byte	0x20
	.byte	0x67
	.byte	0x1d
	.long	0x5ac6
	.byte	0x98
	.uleb128 0x13
	.ascii "Subtruct_L_X\0"
	.byte	0x20
	.byte	0x68
	.byte	0x1d
	.long	0x5ae5
	.byte	0xa0
	.uleb128 0x13
	.ascii "Subtruct_X_I\0"
	.byte	0x20
	.byte	0x69
	.byte	0x1d
	.long	0x5a69
	.byte	0xa8
	.uleb128 0x13
	.ascii "Subtruct_X_L\0"
	.byte	0x20
	.byte	0x6a
	.byte	0x1d
	.long	0x5a88
	.byte	0xb0
	.uleb128 0x13
	.ascii "Subtruct_X_X\0"
	.byte	0x20
	.byte	0x6b
	.byte	0x1d
	.long	0x5aa7
	.byte	0xb8
	.uleb128 0x13
	.ascii "Multiply_I_X\0"
	.byte	0x20
	.byte	0x6e
	.byte	0x1d
	.long	0x5a2b
	.byte	0xc0
	.uleb128 0x13
	.ascii "Multiply_L_X\0"
	.byte	0x20
	.byte	0x6f
	.byte	0x1d
	.long	0x5a4a
	.byte	0xc8
	.uleb128 0x13
	.ascii "Multiply_X_I\0"
	.byte	0x20
	.byte	0x70
	.byte	0x1d
	.long	0x5a69
	.byte	0xd0
	.uleb128 0x13
	.ascii "Multiply_X_L\0"
	.byte	0x20
	.byte	0x71
	.byte	0x1d
	.long	0x5a88
	.byte	0xd8
	.uleb128 0x13
	.ascii "Multiply_X_X\0"
	.byte	0x20
	.byte	0x72
	.byte	0x1d
	.long	0x5aa7
	.byte	0xe0
	.uleb128 0x13
	.ascii "DivRem_I_X\0"
	.byte	0x20
	.byte	0x75
	.byte	0x1d
	.long	0x5b09
	.byte	0xe8
	.uleb128 0x13
	.ascii "DivRem_L_X\0"
	.byte	0x20
	.byte	0x76
	.byte	0x1d
	.long	0x5b2d
	.byte	0xf0
	.uleb128 0x13
	.ascii "DivRem_X_I\0"
	.byte	0x20
	.byte	0x77
	.byte	0x1d
	.long	0x5b51
	.byte	0xf8
	.uleb128 0x22
	.ascii "DivRem_X_L\0"
	.byte	0x20
	.byte	0x78
	.byte	0x1d
	.long	0x5b75
	.word	0x100
	.uleb128 0x22
	.ascii "DivRem_X_X\0"
	.byte	0x20
	.byte	0x79
	.byte	0x1d
	.long	0x5b99
	.word	0x108
	.uleb128 0x22
	.ascii "LeftShift_X_I\0"
	.byte	0x20
	.byte	0x7c
	.byte	0x1d
	.long	0x5a69
	.word	0x110
	.uleb128 0x22
	.ascii "RightShift_X_I\0"
	.byte	0x20
	.byte	0x7f
	.byte	0x1d
	.long	0x5a69
	.word	0x118
	.uleb128 0x22
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x20
	.byte	0x82
	.byte	0x1d
	.long	0x5ac6
	.word	0x120
	.uleb128 0x22
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x20
	.byte	0x83
	.byte	0x1d
	.long	0x5ae5
	.word	0x128
	.uleb128 0x22
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x20
	.byte	0x84
	.byte	0x1d
	.long	0x5bb8
	.word	0x130
	.uleb128 0x22
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x20
	.byte	0x85
	.byte	0x1d
	.long	0x5bd7
	.word	0x138
	.uleb128 0x22
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x20
	.byte	0x86
	.byte	0x1d
	.long	0x5aa7
	.word	0x140
	.uleb128 0x22
	.ascii "BitwiseOr_I_X\0"
	.byte	0x20
	.byte	0x89
	.byte	0x1d
	.long	0x5a2b
	.word	0x148
	.uleb128 0x22
	.ascii "BitwiseOr_L_X\0"
	.byte	0x20
	.byte	0x8a
	.byte	0x1d
	.long	0x5a4a
	.word	0x150
	.uleb128 0x22
	.ascii "BitwiseOr_X_I\0"
	.byte	0x20
	.byte	0x8b
	.byte	0x1d
	.long	0x5a69
	.word	0x158
	.uleb128 0x22
	.ascii "BitwiseOr_X_L\0"
	.byte	0x20
	.byte	0x8c
	.byte	0x1d
	.long	0x5a88
	.word	0x160
	.uleb128 0x22
	.ascii "BitwiseOr_X_X\0"
	.byte	0x20
	.byte	0x8d
	.byte	0x1d
	.long	0x5aa7
	.word	0x168
	.uleb128 0x22
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x20
	.byte	0x90
	.byte	0x1d
	.long	0x5a2b
	.word	0x170
	.uleb128 0x22
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x20
	.byte	0x91
	.byte	0x1d
	.long	0x5a4a
	.word	0x178
	.uleb128 0x22
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x20
	.byte	0x92
	.byte	0x1d
	.long	0x5a69
	.word	0x180
	.uleb128 0x22
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x20
	.byte	0x93
	.byte	0x1d
	.long	0x5a88
	.word	0x188
	.uleb128 0x22
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x20
	.byte	0x94
	.byte	0x1d
	.long	0x5aa7
	.word	0x190
	.uleb128 0x22
	.ascii "Compare_I_X\0"
	.byte	0x20
	.byte	0x97
	.byte	0x1d
	.long	0x5bfc
	.word	0x198
	.uleb128 0x22
	.ascii "Compare_L_X\0"
	.byte	0x20
	.byte	0x98
	.byte	0x1d
	.long	0x5c1b
	.word	0x1a0
	.uleb128 0x22
	.ascii "Compare_X_I\0"
	.byte	0x20
	.byte	0x99
	.byte	0x1d
	.long	0x5c3a
	.word	0x1a8
	.uleb128 0x22
	.ascii "Compare_X_L\0"
	.byte	0x20
	.byte	0x9a
	.byte	0x1d
	.long	0x5c59
	.word	0x1b0
	.uleb128 0x22
	.ascii "Compare_X_X\0"
	.byte	0x20
	.byte	0x9b
	.byte	0x1d
	.long	0x5c78
	.word	0x1b8
	.uleb128 0x22
	.ascii "Equals_I_X\0"
	.byte	0x20
	.byte	0x9e
	.byte	0x1d
	.long	0x5bfc
	.word	0x1c0
	.uleb128 0x22
	.ascii "Equals_L_X\0"
	.byte	0x20
	.byte	0x9f
	.byte	0x1d
	.long	0x5c1b
	.word	0x1c8
	.uleb128 0x22
	.ascii "Equals_X_I\0"
	.byte	0x20
	.byte	0xa0
	.byte	0x1d
	.long	0x5c3a
	.word	0x1d0
	.uleb128 0x22
	.ascii "Equals_X_L\0"
	.byte	0x20
	.byte	0xa1
	.byte	0x1d
	.long	0x5c59
	.word	0x1d8
	.uleb128 0x22
	.ascii "Equals_X_X\0"
	.byte	0x20
	.byte	0xa2
	.byte	0x1d
	.long	0x5c78
	.word	0x1e0
	.uleb128 0x22
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x20
	.byte	0xa5
	.byte	0x1d
	.long	0x5a2b
	.word	0x1e8
	.uleb128 0x22
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x20
	.byte	0xa6
	.byte	0x1d
	.long	0x5a4a
	.word	0x1f0
	.uleb128 0x22
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x20
	.byte	0xa7
	.byte	0x1d
	.long	0x5a69
	.word	0x1f8
	.uleb128 0x22
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x20
	.byte	0xa8
	.byte	0x1d
	.long	0x5a88
	.word	0x200
	.uleb128 0x22
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x20
	.byte	0xa9
	.byte	0x1d
	.long	0x5aa7
	.word	0x208
	.uleb128 0x22
	.ascii "Pow_X_I\0"
	.byte	0x20
	.byte	0xac
	.byte	0x1d
	.long	0x5a69
	.word	0x210
	.uleb128 0x22
	.ascii "ModPow_X_X_X\0"
	.byte	0x20
	.byte	0xaf
	.byte	0x1d
	.long	0x5c9c
	.word	0x218
	.uleb128 0x22
	.ascii "FromByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb2
	.byte	0x1d
	.long	0x5cc0
	.word	0x220
	.uleb128 0x22
	.ascii "ToByteArrayForSINT\0"
	.byte	0x20
	.byte	0xb3
	.byte	0x1d
	.long	0x5ce9
	.word	0x228
	.uleb128 0x22
	.ascii "TryParseForSINT\0"
	.byte	0x20
	.byte	0xb4
	.byte	0x1d
	.long	0x5d12
	.word	0x230
	.byte	0
	.uleb128 0x10
	.long	0x5895
	.uleb128 0x11
	.long	0x5895
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d83
	.uleb128 0x6
	.byte	0x8
	.long	0x588a
	.uleb128 0x23
	.long	0x4cb1
	.long	0x58b5
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5140
	.uleb128 0x6
	.byte	0x8
	.long	0x58a1
	.uleb128 0x23
	.long	0x4cb1
	.long	0x58d5
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58c1
	.uleb128 0x10
	.long	0x58e6
	.uleb128 0x11
	.long	0x5140
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58db
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5900
	.uleb128 0x11
	.long	0x4cc9
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58ec
	.uleb128 0x23
	.long	0x4cb1
	.long	0x591f
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5906
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5943
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x5943
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcc
	.uleb128 0x6
	.byte	0x8
	.long	0x5925
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5963
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x594f
	.uleb128 0x23
	.long	0x4cb1
	.long	0x597d
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x597d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c8d
	.uleb128 0x6
	.byte	0x8
	.long	0x5969
	.uleb128 0x23
	.long	0x4cb1
	.long	0x599d
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x599d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c9f
	.uleb128 0x6
	.byte	0x8
	.long	0x5989
	.uleb128 0x10
	.long	0x59b4
	.uleb128 0x11
	.long	0x59b4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5083
	.uleb128 0x6
	.byte	0x8
	.long	0x59a9
	.uleb128 0x23
	.long	0x4cb1
	.long	0x59e8
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x44d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0xc4
	.uleb128 0x11
	.long	0x131
	.uleb128 0x11
	.long	0x59b4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x59c0
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5a0c
	.uleb128 0x11
	.long	0x44d
	.uleb128 0x11
	.long	0x4ce9
	.uleb128 0x11
	.long	0x59b4
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x59ee
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5a2b
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a12
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5a4a
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a31
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5a69
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a50
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5a88
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a6f
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5aa7
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a8e
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5ac6
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x597d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5aad
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5ae5
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x599d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5acc
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5b09
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x597d
	.uleb128 0x11
	.long	0x597d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5aeb
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5b2d
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x599d
	.uleb128 0x11
	.long	0x599d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b0f
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5b51
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x58b5
	.uleb128 0x11
	.long	0x597d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b33
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5b75
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x58b5
	.uleb128 0x11
	.long	0x599d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b57
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5b99
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x58b5
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b7b
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5bb8
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x597d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b9f
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5bd7
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x599d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bbe
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5bf6
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5bf6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c6b
	.uleb128 0x6
	.byte	0x8
	.long	0x5bdd
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5c1b
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5bf6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c02
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5c3a
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c8d
	.uleb128 0x11
	.long	0x5bf6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c21
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5c59
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x4c9f
	.uleb128 0x11
	.long	0x5bf6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c40
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5c78
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5bf6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c5f
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5c9c
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c7e
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5cc0
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x447
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5ca2
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5ce9
	.uleb128 0x11
	.long	0xc4
	.uleb128 0x11
	.long	0x5140
	.uleb128 0x11
	.long	0x74d
	.uleb128 0x11
	.long	0xcc
	.uleb128 0x11
	.long	0x5943
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cc6
	.uleb128 0x23
	.long	0x4cb1
	.long	0x5d12
	.uleb128 0x11
	.long	0x44d
	.uleb128 0x11
	.long	0x4ce9
	.uleb128 0x11
	.long	0x59b4
	.uleb128 0x11
	.long	0x447
	.uleb128 0x11
	.long	0x58b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cef
	.uleb128 0x3
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x20
	.byte	0xb5
	.byte	0x7
	.long	0x515e
	.uleb128 0x12
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x21
	.byte	0x28
	.byte	0x16
	.long	0x5da1
	.uleb128 0x1d
	.secrel32	.LASF7
	.byte	0x21
	.byte	0x2a
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF8
	.byte	0x21
	.byte	0x2b
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF11
	.byte	0x21
	.byte	0x2c
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF9
	.byte	0x21
	.byte	0x2d
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF10
	.byte	0x21
	.byte	0x2e
	.byte	0x16
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x5d36
	.uleb128 0x1e
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x8
	.byte	0x21
	.byte	0x26
	.byte	0xb
	.long	0x5de4
	.uleb128 0x1f
	.ascii "FLAGS\0"
	.byte	0x21
	.byte	0x2f
	.byte	0xb
	.long	0x5da1
	.uleb128 0x1f
	.ascii "__dummy\0"
	.byte	0x21
	.byte	0x33
	.byte	0x13
	.long	0x4c9f
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x21
	.byte	0x38
	.byte	0x2a
	.long	0x5dfc
	.uleb128 0x6
	.byte	0x8
	.long	0x5da6
	.uleb128 0x12
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x20
	.byte	0x22
	.byte	0x2d
	.byte	0x14
	.long	0x5ec9
	.uleb128 0x1d
	.secrel32	.LASF7
	.byte	0x22
	.byte	0x2f
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF8
	.byte	0x22
	.byte	0x30
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF11
	.byte	0x22
	.byte	0x31
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF9
	.byte	0x22
	.byte	0x32
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF10
	.byte	0x22
	.byte	0x33
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.ascii "SIGNATURE1\0"
	.byte	0x22
	.byte	0x35
	.byte	0x13
	.long	0x4c8d
	.byte	0x4
	.uleb128 0x13
	.ascii "SIGNATURE2\0"
	.byte	0x22
	.byte	0x36
	.byte	0x13
	.long	0x4c8d
	.byte	0x8
	.uleb128 0x13
	.ascii "ABS\0"
	.byte	0x22
	.byte	0x38
	.byte	0x19
	.long	0x5140
	.byte	0x10
	.uleb128 0x13
	.ascii "SIGN\0"
	.byte	0x22
	.byte	0x39
	.byte	0xe
	.long	0xc4
	.byte	0x18
	.uleb128 0x21
	.ascii "IS_STATIC\0"
	.byte	0x22
	.byte	0x3b
	.byte	0x12
	.long	0x459
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.ascii "NUMBER_HEADER\0"
	.byte	0x22
	.byte	0x3c
	.byte	0x7
	.long	0x5e02
	.uleb128 0x15
	.ascii "ep_uint\0"
	.byte	0x22
	.byte	0x42
	.byte	0x22
	.long	0x5d18
	.uleb128 0x15
	.ascii "number_zero\0"
	.byte	0x22
	.byte	0x45
	.byte	0x1a
	.long	0x5ec9
	.uleb128 0x15
	.ascii "number_one\0"
	.byte	0x22
	.byte	0x48
	.byte	0x1a
	.long	0x5ec9
	.uleb128 0x15
	.ascii "number_minus_one\0"
	.byte	0x22
	.byte	0x4b
	.byte	0x1a
	.long	0x5ec9
	.uleb128 0x24
	.ascii "uint_number_zero\0"
	.byte	0x22
	.byte	0x4e
	.byte	0x15
	.long	0x5140
	.uleb128 0x9
	.byte	0x3
	.quad	uint_number_zero
	.uleb128 0x24
	.ascii "uint_number_one\0"
	.byte	0x22
	.byte	0x51
	.byte	0x15
	.long	0x5140
	.uleb128 0x9
	.byte	0x3
	.quad	uint_number_one
	.uleb128 0x15
	.ascii "statistics_info\0"
	.byte	0x22
	.byte	0x54
	.byte	0x20
	.long	0x4d83
	.uleb128 0x25
	.ascii "PMC_Compare_X_X\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x11
	.long	0x4cb1
	.quad	.LFB4373
	.quad	.LFE4373-.LFB4373
	.uleb128 0x1
	.byte	0x9c
	.long	0x6014
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x31
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x44
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.ascii "w\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x51
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.secrel32	.LASF12
	.byte	0x2
	.word	0x1cf
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.ascii "nu\0"
	.byte	0x2
	.word	0x1d0
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "nv\0"
	.byte	0x2
	.word	0x1d1
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5ec9
	.uleb128 0x25
	.ascii "PMC_Compare_X_UX\0"
	.byte	0x2
	.word	0x186
	.byte	0x11
	.long	0x4cb1
	.quad	.LFB4372
	.quad	.LFE4372-.LFB4372
	.uleb128 0x1
	.byte	0x9c
	.long	0x6094
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.word	0x186
	.byte	0x32
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.word	0x186
	.byte	0x45
	.long	0x5140
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.ascii "w\0"
	.byte	0x2
	.word	0x186
	.byte	0x52
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.secrel32	.LASF12
	.byte	0x2
	.word	0x18e
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.ascii "nu\0"
	.byte	0x2
	.word	0x18f
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.ascii "PMC_Compare_X_L\0"
	.byte	0x2
	.word	0x144
	.byte	0x11
	.long	0x4cb1
	.quad	.LFB4371
	.quad	.LFE4371-.LFB4371
	.uleb128 0x1
	.byte	0x9c
	.long	0x6132
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.word	0x144
	.byte	0x31
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.word	0x144
	.byte	0x3d
	.long	0x4c7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.ascii "w\0"
	.byte	0x2
	.word	0x144
	.byte	0x4a
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.secrel32	.LASF12
	.byte	0x2
	.word	0x14a
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.ascii "nu\0"
	.byte	0x2
	.word	0x14b
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "v_sign\0"
	.byte	0x2
	.word	0x14e
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x28
	.ascii "v_abs\0"
	.byte	0x2
	.word	0x14f
	.byte	0xf
	.long	0x4c9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.ascii "PMC_Compare_X_I\0"
	.byte	0x2
	.word	0x102
	.byte	0x11
	.long	0x4cb1
	.quad	.LFB4370
	.quad	.LFE4370-.LFB4370
	.uleb128 0x1
	.byte	0x9c
	.long	0x61d0
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x2
	.word	0x102
	.byte	0x31
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "v\0"
	.byte	0x2
	.word	0x102
	.byte	0x3d
	.long	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.ascii "w\0"
	.byte	0x2
	.word	0x102
	.byte	0x4a
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.secrel32	.LASF12
	.byte	0x2
	.word	0x108
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.ascii "nu\0"
	.byte	0x2
	.word	0x109
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "v_sign\0"
	.byte	0x2
	.word	0x10c
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x28
	.ascii "v_abs\0"
	.byte	0x2
	.word	0x10d
	.byte	0xf
	.long	0x4c8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.ascii "PMC_Compare_UX_X\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x11
	.long	0x4cb1
	.quad	.LFB4369
	.quad	.LFE4369-.LFB4369
	.uleb128 0x1
	.byte	0x9c
	.long	0x6244
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x32
	.long	0x5140
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x45
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "w\0"
	.byte	0x2
	.byte	0xd6
	.byte	0x52
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.secrel32	.LASF12
	.byte	0x2
	.byte	0xdc
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.ascii "nv\0"
	.byte	0x2
	.byte	0xdd
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.ascii "PMC_Compare_L_X\0"
	.byte	0x2
	.byte	0x94
	.byte	0x11
	.long	0x4cb1
	.quad	.LFB4368
	.quad	.LFE4368-.LFB4368
	.uleb128 0x1
	.byte	0x9c
	.long	0x62da
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0x94
	.byte	0x2a
	.long	0x4c7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0x94
	.byte	0x3d
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "w\0"
	.byte	0x2
	.byte	0x94
	.byte	0x4a
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x9a
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.ascii "nv\0"
	.byte	0x2
	.byte	0x9b
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.ascii "u_sign\0"
	.byte	0x2
	.byte	0x9e
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2c
	.ascii "u_abs\0"
	.byte	0x2
	.byte	0x9f
	.byte	0xf
	.long	0x4c9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.ascii "PMC_Compare_I_X\0"
	.byte	0x2
	.byte	0x52
	.byte	0x11
	.long	0x4cb1
	.quad	.LFB4367
	.quad	.LFE4367-.LFB4367
	.uleb128 0x1
	.byte	0x9c
	.long	0x6370
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0x52
	.byte	0x2a
	.long	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0x52
	.byte	0x3d
	.long	0x5de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "w\0"
	.byte	0x2
	.byte	0x52
	.byte	0x4a
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x58
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.ascii "nv\0"
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.long	0x6014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.ascii "u_sign\0"
	.byte	0x2
	.byte	0x5c
	.byte	0xa
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2c
	.ascii "u_abs\0"
	.byte	0x2
	.byte	0x5d
	.byte	0xf
	.long	0x4c8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.ascii "CompareU_X_X_Imp\0"
	.byte	0x2
	.byte	0x41
	.byte	0x18
	.long	0x4cb1
	.quad	.LFB4366
	.quad	.LFE4366-.LFB4366
	.uleb128 0x1
	.byte	0x9c
	.long	0x63f5
	.uleb128 0x2a
	.ascii "sign\0"
	.byte	0x2
	.byte	0x41
	.byte	0x2e
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0x41
	.byte	0x44
	.long	0x5140
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0x41
	.byte	0x57
	.long	0x5140
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.ascii "w\0"
	.byte	0x2
	.byte	0x41
	.byte	0x64
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x43
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.secrel32	.LASF13
	.byte	0x2
	.byte	0x44
	.byte	0xe
	.long	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.ascii "CompareU_X_L_Imp\0"
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.long	0x4cb1
	.quad	.LFB4365
	.quad	.LFE4365-.LFB4365
	.uleb128 0x1
	.byte	0x9c
	.long	0x647a
	.uleb128 0x2a
	.ascii "sign\0"
	.byte	0x2
	.byte	0x30
	.byte	0x2e
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0x30
	.byte	0x44
	.long	0x5140
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0x30
	.byte	0x50
	.long	0x4c7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.ascii "w\0"
	.byte	0x2
	.byte	0x30
	.byte	0x5d
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x32
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.secrel32	.LASF13
	.byte	0x2
	.byte	0x33
	.byte	0xe
	.long	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.ascii "CompareU_X_I_Imp\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x18
	.long	0x4cb1
	.quad	.LFB4364
	.quad	.LFE4364-.LFB4364
	.uleb128 0x1
	.byte	0x9c
	.long	0x64ff
	.uleb128 0x2a
	.ascii "sign\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x2e
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "u\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x44
	.long	0x5140
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "v\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x50
	.long	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.ascii "w\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x5d
	.long	0x5bf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.long	0x4cb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.secrel32	.LASF13
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.ascii "GET_ABS_64\0"
	.byte	0x1
	.word	0x31f
	.byte	0x1f
	.long	0x4c9f
	.quad	.LFB4363
	.quad	.LFE4363-.LFB4363
	.uleb128 0x1
	.byte	0x9c
	.long	0x6549
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x1
	.word	0x31f
	.byte	0x33
	.long	0x4c7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "sign\0"
	.byte	0x1
	.word	0x31f
	.byte	0x3b
	.long	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2f
	.ascii "GET_ABS_32\0"
	.byte	0x1
	.word	0x30b
	.byte	0x1f
	.long	0x4c8d
	.quad	.LFB4362
	.quad	.LFE4362-.LFB4362
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.ascii "u\0"
	.byte	0x1
	.word	0x30b
	.byte	0x33
	.long	0x4c6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "sign\0"
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
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
.LASF10:
	.ascii "IS_POWER_OF_TWO\0"
.LASF13:
	.ascii "temp_w\0"
.LASF3:
	.ascii "GroupSeparator\0"
.LASF2:
	.ascii "DecimalSeparator\0"
.LASF4:
	.ascii "GroupSizes\0"
.LASF7:
	.ascii "IS_ZERO\0"
.LASF9:
	.ascii "IS_EVEN\0"
.LASF11:
	.ascii "IS_MINUS_ONE\0"
.LASF5:
	.ascii "NegativePattern\0"
.LASF12:
	.ascii "result\0"
.LASF1:
	.ascii "DecimalDigits\0"
.LASF6:
	.ascii "PositivePattern\0"
.LASF8:
	.ascii "IS_ONE\0"
.LASF0:
	.ascii "refcount\0"
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
