	.file	"pmc_clone.c"
	.text
	.p2align 4,,15
	.globl	_PMC_Clone_X@8
	.def	_PMC_Clone_X@8;	.scl	2;	.type	32;	.endef
_PMC_Clone_X@8:
LFB83:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %edi
	movl	48(%esp), %ebx
	testl	%edi, %edi
	je	L4
	testl	%ebx, %ebx
	je	L4
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1
	movl	$_number_zero, %eax
	testb	$1, (%ebx)
	je	L9
L3:
	movl	%eax, (%edi)
L1:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
L9:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	jne	L6
	movl	28(%esp), %eax
	jmp	L3
	.p2align 4,,10
L6:
	movl	%eax, %esi
	jmp	L1
	.p2align 4,,10
L4:
	movl	$-1, %esi
	jmp	L1
	.cfi_endproc
LFE83:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
