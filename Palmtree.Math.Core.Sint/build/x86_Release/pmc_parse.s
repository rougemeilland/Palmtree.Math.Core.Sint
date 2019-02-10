	.file	"pmc_parse.c"
	.text
	.p2align 4,,15
	.globl	_PMC_TryParse@16
	.def	_PMC_TryParse@16;	.scl	2;	.type	32;	.endef
_PMC_TryParse@16:
LFB83:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	76(%esp), %ebx
	movl	64(%esp), %eax
	testl	%ebx, %ebx
	je	L3
	testl	%eax, %eax
	je	L3
	leal	40(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	leal	39(%esp), %edx
	movl	%edx, 12(%esp)
	movl	72(%esp), %edx
	movl	%edx, 8(%esp)
	movl	68(%esp), %edx
	movl	%edx, 4(%esp)
	call	*_ep_uint+276
	.cfi_def_cfa_offset 44
	subl	$20, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L6
L1:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$16
	.p2align 4,,10
L6:
	.cfi_restore_state
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movsbl	39(%esp), %eax
	movl	%eax, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	jne	L1
	movl	44(%esp), %edx
	movl	%edx, (%ebx)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$16
L3:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L1
	.cfi_endproc
LFE83:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
