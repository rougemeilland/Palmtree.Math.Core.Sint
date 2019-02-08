	.file	"main.c"
	.text
	.p2align 4,,15
	.def	_pause_console;	.scl	3;	.type	32;	.endef
_pause_console:
LFB95:
	.cfi_startproc
	jmp	_getchar
	.cfi_endproc
LFE95:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Japanese\0"
LC1:
	.ascii "***start\0"
LC2:
	.ascii "\\\0"
LC3:
	.ascii "Palmtree.Math.Core.Sint.dll\0"
LC4:
	.ascii "***dll file path: %s\12\0"
	.align 4
LC5:
	.ascii "***error: %d in LoadLibrary(\"%s\")\12\0"
LC6:
	.ascii "DoDebug\0"
LC7:
	.ascii "_DoDebug\0"
LC8:
	.ascii "DoDebug@4\0"
LC9:
	.ascii "_DoDebug@4\0"
	.align 4
LC10:
	.ascii "***error: GetProcAddress(\"%s\"/\"%s\"/\"%s\"/\"%s\")\12\0"
LC11:
	.ascii "***symbol resolved: %s\12\0"
LC12:
	.ascii "***ok\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB96:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	leal	-546(%ebp), %ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	subl	$584, %esp
	call	___main
	movl	$LC0, 4(%esp)
	movl	$0, (%esp)
	call	_setlocale
	movl	$LC1, (%esp)
	call	_puts
	movl	%ebx, 4(%esp)
	movl	$261, 8(%esp)
	movl	$0, (%esp)
	call	*__imp__GetModuleFileNameA@12
	subl	$12, %esp
	movl	%ebx, (%esp)
	movl	$92, 4(%esp)
	call	_strrchr
	movb	$0, (%eax)
	movl	%ebx, 8(%esp)
	leal	-285(%ebp), %ebx
	movl	$260, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__strcpy_s
	movl	%ebx, (%esp)
	movl	__imp__strcat_s, %esi
	movl	$LC2, 8(%esp)
	movl	$260, 4(%esp)
	call	*%esi
	movl	$LC3, 8(%esp)
	movl	$260, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	movl	%ebx, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	%ebx, (%esp)
	call	*__imp__LoadLibraryA@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L8
	movl	%eax, %esi
	movl	$LC6, 4(%esp)
	movl	__imp__GetProcAddress@8, %edi
	movl	%eax, (%esp)
	call	*%edi
	subl	$8, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L9
L6:
	movl	$LC6, 4(%esp)
	movl	$LC11, (%esp)
	call	_printf
	leal	-556(%ebp), %eax
	movl	$_wprintf, -556(%ebp)
	movl	%eax, (%esp)
	movl	$_pause_console, -552(%ebp)
	call	*%ebx
	subl	$4, %esp
	movl	$LC12, (%esp)
	call	_puts
	xorl	%eax, %eax
L3:
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
L8:
	.cfi_restore_state
	call	*__imp__GetLastError@0
	movl	$2, (%esp)
	movl	%eax, %esi
	call	*__imp____acrt_iob_func
	movl	%ebx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_getchar
	movl	$1, %eax
	jmp	L3
L9:
	movl	$LC7, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	pushl	%ebx
	pushl	%ebx
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L6
	movl	$LC8, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	movl	%eax, %ebx
	pushl	%ecx
	pushl	%ecx
	testl	%eax, %eax
	jne	L6
	movl	$LC9, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	movl	%eax, %ebx
	pushl	%edx
	pushl	%edx
	testl	%eax, %eax
	jne	L6
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC9, 20(%esp)
	movl	$LC8, 16(%esp)
	movl	$LC7, 12(%esp)
	movl	$LC6, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_getchar
	movl	$1, %eax
	jmp	L3
	.cfi_endproc
LFE96:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_setlocale;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_strrchr;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_wprintf;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
