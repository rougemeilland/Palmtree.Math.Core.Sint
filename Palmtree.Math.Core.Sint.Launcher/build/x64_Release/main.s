	.file	"main.c"
	.text
	.p2align 4,,15
	.def	pause_console;	.scl	3;	.type	32;	.endef
	.seh_proc	pause_console
pause_console:
	.seh_endprologue
	jmp	getchar
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Japanese\0"
.LC1:
	.ascii "***start\0"
.LC2:
	.ascii "\\\0"
.LC3:
	.ascii "Palmtree.Math.Core.Sint.dll\0"
.LC4:
	.ascii "***dll file path: %s\12\0"
	.align 8
.LC5:
	.ascii "***error: %d in LoadLibrary(\"%s\")\12\0"
.LC6:
	.ascii "DoDebug\0"
.LC7:
	.ascii "_DoDebug\0"
.LC8:
	.ascii "DoDebug@4\0"
.LC9:
	.ascii "_DoDebug@4\0"
	.align 8
.LC10:
	.ascii "***error: GetProcAddress(\"%s\"/\"%s\"/\"%s\"/\"%s\")\12\0"
.LC11:
	.ascii "***symbol resolved: %s\12\0"
.LC12:
	.ascii "***ok\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$608, %rsp
	.seh_stackalloc	608
	.seh_endprologue
	call	__main
	leaq	64(%rsp), %rsi
	xorl	%ecx, %ecx
	leaq	.LC0(%rip), %rdx
	call	setlocale
	leaq	.LC1(%rip), %rcx
	call	puts
	movl	$261, %r8d
	movq	%rsi, %rdx
	xorl	%ecx, %ecx
	call	*__imp_GetModuleFileNameA(%rip)
	movq	%rsi, %rcx
	movl	$92, %edx
	call	strrchr
	leaq	336(%rsp), %rbx
	movq	%rsi, %r8
	movl	$260, %edx
	movq	%rbx, %rcx
	movb	$0, (%rax)
	call	*__imp_strcpy_s(%rip)
	movq	__imp_strcat_s(%rip), %rsi
	movl	$260, %edx
	movq	%rbx, %rcx
	leaq	.LC2(%rip), %r8
	call	*%rsi
	leaq	.LC3(%rip), %r8
	movl	$260, %edx
	movq	%rbx, %rcx
	call	*%rsi
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %rdx
	call	printf
	movq	%rbx, %rcx
	call	*__imp_LoadLibraryA(%rip)
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L7
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp_GetProcAddress(%rip), %rdi
	call	*%rdi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L8
.L6:
	leaq	.LC6(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	call	printf
	movq	.refptr.wprintf(%rip), %rax
	leaq	48(%rsp), %rcx
	movq	%rax, 48(%rsp)
	leaq	pause_console(%rip), %rax
	movq	%rax, 56(%rsp)
	call	*%rbx
	leaq	.LC12(%rip), %rcx
	call	puts
	xorl	%eax, %eax
.L3:
	addq	$608, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L7:
	call	*__imp_GetLastError(%rip)
	movl	$2, %ecx
	movl	%eax, %esi
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r9
	movl	%esi, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	fprintf
	call	getchar
	movl	$1, %eax
	jmp	.L3
.L8:
	leaq	.LC7(%rip), %rdx
	movq	%rsi, %rcx
	call	*%rdi
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L6
	leaq	.LC8(%rip), %rdx
	movq	%rsi, %rcx
	call	*%rdi
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L6
	leaq	.LC9(%rip), %rdx
	movq	%rsi, %rcx
	call	*%rdi
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L6
	leaq	.LC9(%rip), %rdi
	movl	$2, %ecx
	call	*__imp___acrt_iob_func(%rip)
	movq	%rdi, 40(%rsp)
	leaq	.LC8(%rip), %rdi
	leaq	.LC7(%rip), %r9
	movq	%rax, %rcx
	movq	%rdi, 32(%rsp)
	leaq	.LC6(%rip), %r8
	leaq	.LC10(%rip), %rdx
	call	fprintf
	call	getchar
	movl	$1, %eax
	jmp	.L3
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	setlocale;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.wprintf, "dr"
	.globl	.refptr.wprintf
	.linkonce	discard
.refptr.wprintf:
	.quad	wprintf
