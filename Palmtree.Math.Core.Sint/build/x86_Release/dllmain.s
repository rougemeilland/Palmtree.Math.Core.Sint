	.file	"dllmain.c"
	.text
	.p2align 4,,15
	.globl	_DllMain@12
	.def	_DllMain@12;	.scl	2;	.type	32;	.endef
_DllMain@12:
LFB83:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	20(%esp), %eax
	cmpl	$1, %eax
	je	L2
	testl	%eax, %eax
	je	L3
	cmpl	$4, %eax
	setb	%al
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret	$12
	.p2align 4,,10
L2:
	.cfi_restore_state
	call	_AllocateHeapArea
	testl	%eax, %eax
	setne	%al
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	ret	$12
	.p2align 4,,10
L3:
	.cfi_restore_state
	call	_DeallocateHeapArea
	movl	$1, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret	$12
	.cfi_endproc
LFE83:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateHeapArea;	.scl	2;	.type	32;	.endef
	.def	_DeallocateHeapArea;	.scl	2;	.type	32;	.endef
