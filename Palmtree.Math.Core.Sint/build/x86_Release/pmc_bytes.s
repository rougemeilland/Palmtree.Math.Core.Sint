	.file	"pmc_bytes.c"
	.text
	.p2align 4,,15
	.globl	_PMC_FromByteArray@12
	.def	_PMC_FromByteArray@12;	.scl	2;	.type	32;	.endef
_PMC_FromByteArray@12:
LFB83:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$52, %esp
	.cfi_def_cfa_offset 64
	movl	68(%esp), %eax
	movl	72(%esp), %esi
	movl	64(%esp), %edx
	testl	%eax, %eax
	sete	%bl
	testl	%esi, %esi
	sete	%cl
	orb	%cl, %bl
	jne	L4
	testl	%edx, %edx
	je	L4
	leal	40(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 12(%esp)
	leal	39(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+272
	.cfi_def_cfa_offset 48
	subl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L7
L1:
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L7:
	.cfi_restore_state
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movsbl	39(%esp), %eax
	movl	%eax, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	jne	L8
	movl	44(%esp), %edx
	movl	%edx, (%esi)
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L8:
	.cfi_restore_state
	movl	40(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L4:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L1
	.cfi_endproc
LFE83:
	.p2align 4,,15
	.globl	_PMC_ToByteArray@16
	.def	_PMC_ToByteArray@16;	.scl	2;	.type	32;	.endef
_PMC_ToByteArray@16:
LFB84:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	testl	%ebx, %ebx
	je	L11
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L9
	movl	60(%esp), %eax
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 4(%esp)
	movsbl	16(%ebx), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+276
	.cfi_def_cfa_offset 28
	subl	$20, %esp
	.cfi_def_cfa_offset 48
L9:
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$16
L11:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L9
	.cfi_endproc
LFE84:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
