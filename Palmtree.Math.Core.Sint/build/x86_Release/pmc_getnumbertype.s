	.file	"pmc_getnumbertype.c"
	.text
	.p2align 4,,15
	.globl	_IsZero_UINT
	.def	_IsZero_UINT;	.scl	2;	.type	32;	.endef
_IsZero_UINT:
LFB83:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L1
	movzbl	28(%esp), %edx
	movl	52(%esp), %ecx
	andl	$1, %edx
	movb	%dl, (%ecx)
L1:
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE83:
	.p2align 4,,15
	.globl	_PMC_GetNumberType_X@8
	.def	_PMC_GetNumberType_X@8;	.scl	2;	.type	32;	.endef
_PMC_GetNumberType_X@8:
LFB84:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	36(%esp), %ebx
	testl	%esi, %esi
	je	L11
	testl	%ebx, %ebx
	je	L11
	movl	%esi, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L5
	movzbl	16(%esi), %ecx
	movl	%ecx, %edx
	shrb	%dl
	movl	%edx, %esi
	andl	$1, %esi
	movl	%esi, %edx
	orl	$2, %edx
	testb	$4, %cl
	cmove	%esi, %edx
	movl	%edx, %esi
	orl	$4, %esi
	testb	$8, %cl
	cmovne	%esi, %edx
	movl	%edx, %esi
	orl	$8, %esi
	testb	$16, %cl
	cmovne	%esi, %edx
	movl	%edx, %esi
	orl	$16, %esi
	andl	$32, %ecx
	cmovne	%esi, %edx
	movl	%edx, (%ebx)
L5:
	addl	$20, %esp
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
	movl	$-1, %eax
	jmp	L5
	.cfi_endproc
LFE84:
	.p2align 4,,15
	.globl	_Initialize_GetPropertyValue
	.def	_Initialize_GetPropertyValue;	.scl	2;	.type	32;	.endef
_Initialize_GetPropertyValue:
LFB85:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE85:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
