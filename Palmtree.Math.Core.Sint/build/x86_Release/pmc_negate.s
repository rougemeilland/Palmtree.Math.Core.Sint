	.file	"pmc_negate.c"
	.text
	.p2align 4,,15
	.globl	_PMC_Negate_X@8
	.def	_PMC_Negate_X@8;	.scl	2;	.type	32;	.endef
_PMC_Negate_X@8:
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
	movl	52(%esp), %esi
	movl	48(%esp), %ebx
	testl	%esi, %esi
	je	L3
	testl	%ebx, %ebx
	je	L3
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	je	L6
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
L6:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	jne	L1
	movl	28(%esp), %edx
	movl	%edx, (%esi)
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
	movl	$-1, %eax
	jmp	L1
	.cfi_endproc
LFE83:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
