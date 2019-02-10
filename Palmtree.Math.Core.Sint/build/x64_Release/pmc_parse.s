	.file	"pmc_parse.c"
	.text
	.p2align 4,,15
	.globl	PMC_TryParse
	.def	PMC_TryParse;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_TryParse
PMC_TryParse:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	testq	%r9, %r9
	movq	%r9, %rbx
	je	.L3
	testq	%rcx, %rcx
	je	.L3
	leaq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	.refptr.ep_uint(%rip), %rax
	leaq	63(%rsp), %r9
	call	*560(%rax)
	testl	%eax, %eax
	je	.L5
.L1:
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5:
	movsbl	63(%rsp), %edx
	leaq	72(%rsp), %rcx
	movq	64(%rsp), %r8
	call	AllocateNumber
	testl	%eax, %eax
	jne	.L1
	movq	72(%rsp), %rdx
	movq	%rdx, (%rbx)
	addq	$80, %rsp
	popq	%rbx
	ret
.L3:
	movl	$-1, %eax
	jmp	.L1
	.seh_endproc
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
