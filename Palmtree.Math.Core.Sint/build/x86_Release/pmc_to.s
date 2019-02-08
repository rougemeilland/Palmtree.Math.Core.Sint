	.file	"pmc_to.c"
	.text
	.p2align 4,,15
	.globl	_PMC_To_X_I@8
	.def	_PMC_To_X_I@8;	.scl	2;	.type	32;	.endef
_PMC_To_X_I@8:
LFB83:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L1
	leal	28(%esp), %eax
	movzbl	12(%ebx), %esi
	movl	%eax, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+48
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L1
	movl	%esi, %ecx
	testb	%cl, %cl
	jne	L3
	movl	52(%esp), %edx
	movl	$0, (%edx)
L1:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
L3:
	.cfi_restore_state
	movl	28(%esp), %edx
	jle	L4
	testl	%edx, %edx
	js	L6
	movl	52(%esp), %ecx
	movl	%edx, (%ecx)
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
L4:
	.cfi_restore_state
	cmpl	$-2147483648, %edx
	ja	L6
	movl	52(%esp), %esi
	negl	%edx
	movl	%edx, (%esi)
	jmp	L1
L6:
	movl	$-2, %eax
	jmp	L1
	.cfi_endproc
LFE83:
	.p2align 4,,15
	.globl	_PMC_To_X_L@8
	.def	_PMC_To_X_L@8;	.scl	2;	.type	32;	.endef
_PMC_To_X_L@8:
LFB84:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L9
	leal	24(%esp), %eax
	movzbl	12(%ebx), %esi
	movl	%eax, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+52
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L9
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L11
	movl	52(%esp), %ecx
	movl	$0, (%ecx)
	movl	$0, 4(%ecx)
L9:
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
L11:
	.cfi_restore_state
	movl	24(%esp), %ecx
	movl	28(%esp), %ebx
	jle	L12
	testl	%ebx, %ebx
	js	L14
	movl	52(%esp), %esi
	movl	%ecx, (%esi)
	movl	%esi, %ecx
	movl	%ebx, 4(%ecx)
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
L12:
	.cfi_restore_state
	cmpl	%ecx, %eax
	movl	$-2147483648, %edx
	sbbl	%ebx, %edx
	jc	L14
	negl	%ecx
	movl	52(%esp), %esi
	adcl	$0, %ebx
	negl	%ebx
	movl	%ecx, (%esi)
	movl	%ebx, 4(%esi)
	jmp	L9
L14:
	movl	$-2, %eax
	jmp	L9
	.cfi_endproc
LFE84:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
