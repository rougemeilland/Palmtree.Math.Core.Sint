	.file	"dllmain.c"
	.text
	.p2align 4,,15
	.globl	DllMain
	.def	DllMain;	.scl	2;	.type	32;	.endef
	.seh_proc	DllMain
DllMain:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpl	$1, %edx
	je	.L2
	testl	%edx, %edx
	je	.L3
	xorl	%eax, %eax
	cmpl	$4, %edx
	setb	%al
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L2:
	call	AllocateHeapArea
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L3:
	call	DeallocateHeapArea
	movl	$1, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateHeapArea;	.scl	2;	.type	32;	.endef
	.def	DeallocateHeapArea;	.scl	2;	.type	32;	.endef
