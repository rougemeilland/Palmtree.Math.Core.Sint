	.file	"pmc_from.c"
	.text
	.p2align 4,,15
	.def	_From_I_Imp.part.0;	.scl	3;	.type	32;	.endef
_From_I_Imp.part.0:
LFB87:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	leal	28(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L1
	movl	28(%esp), %eax
	movsbl	%bl, %ebx
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	call	_AllocateNumber
L1:
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE87:
	.p2align 4,,15
	.def	_From_L_Imp.part.1;	.scl	3;	.type	32;	.endef
_From_L_Imp.part.1:
LFB88:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	leal	28(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	call	*_ep_uint+12
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L6
	movl	28(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
L6:
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE88:
	.p2align 4,,15
	.globl	_From_I_Imp
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
_From_I_Imp:
LFB83:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	testb	%al, %al
	je	L14
	movsbl	%al, %eax
	jmp	_From_I_Imp.part.0
	.p2align 4,,10
L14:
	movl	$_number_zero, (%ecx)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE83:
	.p2align 4,,15
	.globl	_From_L_Imp
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
_From_L_Imp:
LFB84:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	testb	%al, %al
	je	L19
	movl	%ebx, 8(%esp)
	movsbl	%al, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_From_L_Imp.part.1
	.p2align 4,,10
L19:
	.cfi_restore_state
	movl	$_number_zero, (%ebx)
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE84:
	.p2align 4,,15
	.globl	_PMC_From_I@8
	.def	_PMC_From_I@8;	.scl	2;	.type	32;	.endef
_PMC_From_I@8:
LFB85:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %edx
	testl	%edx, %edx
	jne	L22
	movl	36(%esp), %eax
	movl	$_number_zero, (%eax)
	xorl	%eax, %eax
L21:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
L22:
	.cfi_restore_state
	jle	L24
	leal	12(%esp), %ecx
	movl	$1, %eax
	call	_From_I_Imp.part.0
L25:
	testl	%eax, %eax
	jne	L21
	movl	12(%esp), %edx
	movl	36(%esp), %ecx
	movl	%edx, (%ecx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
L24:
	.cfi_restore_state
	negl	%edx
	leal	12(%esp), %ecx
	movl	$-1, %eax
	call	_From_I_Imp.part.0
	jmp	L25
	.cfi_endproc
LFE85:
	.p2align 4,,15
	.globl	_PMC_From_L@12
	.def	_PMC_From_L@12;	.scl	2;	.type	32;	.endef
_PMC_From_L@12:
LFB86:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %ecx
	movl	48(%esp), %edx
	movl	%ecx, %ebx
	orl	%edx, %ebx
	jne	L29
	movl	56(%esp), %eax
	movl	$_number_zero, (%eax)
	xorl	%eax, %eax
L28:
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L29:
	.cfi_restore_state
	xorl	%eax, %eax
	cmpl	%edx, %eax
	sbbl	%ecx, %eax
	jge	L31
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_From_L_Imp.part.1
L32:
	testl	%eax, %eax
	jne	L28
	movl	28(%esp), %edx
	movl	56(%esp), %ecx
	movl	%edx, (%ecx)
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$12
	.p2align 4,,10
L31:
	.cfi_restore_state
	leal	28(%esp), %eax
	negl	%edx
	movl	%eax, (%esp)
	adcl	$0, %ecx
	movl	$-1, %eax
	negl	%ecx
	call	_From_L_Imp.part.1
	jmp	L32
	.cfi_endproc
LFE86:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
