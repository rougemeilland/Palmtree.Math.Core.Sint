	.file	"pmc_initialize.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "Palmtree.Math.Core.Uint.dll\0"
.LC1:
	.ascii "PMC_UINT_Initialize\0"
	.text
	.p2align 4,,15
	.globl	PMC_SINT_Initialize
	.def	PMC_SINT_Initialize;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_SINT_Initialize
PMC_SINT_Initialize:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	cmpq	$0, hLib_UINT(%rip)
	movq	%rcx, %rbx
	je	.L14
.L2:
	movq	fp_PMC_UINT_Initialize(%rip), %rax
	testq	%rax, %rax
	je	.L6
.L5:
	movq	%rbx, %rcx
	call	*%rax
	testq	%rax, %rax
	movq	%rax, %rdx
	je	.L6
	movl	initialized(%rip), %eax
	leaq	entry_points(%rip), %rbx
	testl	%eax, %eax
	je	.L15
.L1:
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L15:
	leaq	32(%rsp), %r8
	movl	$32, %r9d
	xorl	%eax, %eax
	movq	%r8, %rdi
	movq	%r9, %rcx
/APP
 # 1445 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$8, 32(%rsp)
	movq	%r8, %rdi
	movq	%r9, %rcx
/APP
 # 1445 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$4, 32(%rsp)
	movq	%r8, %rdi
	movq	%r9, %rcx
/APP
 # 1445 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$2, 32(%rsp)
	movq	%r8, %rdi
	movq	%r9, %rcx
/APP
 # 1445 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$16, 32(%rsp)
	movq	%r8, %rdi
	movq	%r9, %rcx
/APP
 # 1445 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	leaq	ep_uint(%rip), %rdi
	movl	$69, %eax
	movq	%rdx, %rsi
	orb	$1, 32(%rsp)
	movq	%rax, %rcx
/APP
 # 952 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsq
 # 0 "" 2
/NO_APP
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rcx
/APP
 # 952 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsq
 # 0 "" 2
/NO_APP
	call	Initialize_Memory
	testl	%eax, %eax
	jne	.L6
	movq	.refptr.PMC_GetStatisticsInfo(%rip), %rax
	movq	%rax, 552+entry_points(%rip)
	movq	.refptr.PMC_From_I(%rip), %rax
	movq	%rax, 560+entry_points(%rip)
	movq	.refptr.PMC_From_L(%rip), %rax
	movq	%rax, 568+entry_points(%rip)
	movq	.refptr.PMC_FromByteArray(%rip), %rax
	movq	%rax, 592+entry_points(%rip)
	movq	.refptr.PMC_Dispose(%rip), %rax
	movq	%rax, 576+entry_points(%rip)
	movq	.refptr.PMC_To_X_I(%rip), %rax
	movq	%rax, 616+entry_points(%rip)
	movq	.refptr.PMC_To_X_L(%rip), %rax
	movq	%rax, 624+entry_points(%rip)
	movq	.refptr.PMC_ToByteArray(%rip), %rax
	movq	%rax, 600+entry_points(%rip)
	movq	.refptr.PMC_Add_I_X(%rip), %rax
	movq	%rax, 640+entry_points(%rip)
	movq	.refptr.PMC_Add_L_X(%rip), %rax
	movq	%rax, 648+entry_points(%rip)
	movq	.refptr.PMC_Add_UX_X(%rip), %rax
	movq	%rax, 656+entry_points(%rip)
	movq	.refptr.PMC_Add_X_I(%rip), %rax
	movq	%rax, 664+entry_points(%rip)
	movq	.refptr.PMC_Add_X_L(%rip), %rax
	movq	%rax, 672+entry_points(%rip)
	movq	.refptr.PMC_Add_X_UX(%rip), %rax
	movq	%rax, 680+entry_points(%rip)
	movq	.refptr.PMC_Add_X_X(%rip), %rax
	movq	%rax, 688+entry_points(%rip)
	movq	.refptr.PMC_Subtruct_I_X(%rip), %rax
	movq	%rax, 696+entry_points(%rip)
	movq	.refptr.PMC_Subtruct_L_X(%rip), %rax
	movq	%rax, 704+entry_points(%rip)
	movq	.refptr.PMC_Subtruct_UX_X(%rip), %rax
	movq	%rax, 712+entry_points(%rip)
	movq	.refptr.PMC_Subtruct_X_I(%rip), %rax
	movq	%rax, 720+entry_points(%rip)
	movq	.refptr.PMC_Subtruct_X_L(%rip), %rax
	movq	%rax, 728+entry_points(%rip)
	movq	.refptr.PMC_Subtruct_X_UX(%rip), %rax
	movq	%rax, 736+entry_points(%rip)
	movq	.refptr.PMC_Subtruct_X_X(%rip), %rax
	movq	%rax, 744+entry_points(%rip)
	movq	.refptr.PMC_Multiply_I_X(%rip), %rax
	movq	%rax, 752+entry_points(%rip)
	movq	.refptr.PMC_Multiply_L_X(%rip), %rax
	movq	%rax, 760+entry_points(%rip)
	movq	.refptr.PMC_Multiply_UX_X(%rip), %rax
	movq	%rax, 768+entry_points(%rip)
	movq	.refptr.PMC_Multiply_X_I(%rip), %rax
	movq	%rax, 776+entry_points(%rip)
	movq	.refptr.PMC_Multiply_X_L(%rip), %rax
	movq	%rax, 784+entry_points(%rip)
	movq	.refptr.PMC_Multiply_X_UX(%rip), %rax
	movq	%rax, 792+entry_points(%rip)
	movq	.refptr.PMC_Multiply_X_X(%rip), %rax
	movq	%rax, 800+entry_points(%rip)
	movq	.refptr.PMC_DivRem_I_X(%rip), %rax
	movq	%rax, 808+entry_points(%rip)
	movq	.refptr.PMC_DivRem_L_X(%rip), %rax
	movq	%rax, 816+entry_points(%rip)
	movq	.refptr.PMC_DivRem_UX_X(%rip), %rax
	movq	%rax, 824+entry_points(%rip)
	movq	.refptr.PMC_DivRem_X_I(%rip), %rax
	movq	%rax, 832+entry_points(%rip)
	movq	.refptr.PMC_DivRem_X_L(%rip), %rax
	movq	%rax, 840+entry_points(%rip)
	movq	.refptr.PMC_DivRem_X_UX(%rip), %rax
	movq	%rax, 848+entry_points(%rip)
	movq	.refptr.PMC_DivRem_X_X(%rip), %rax
	movq	%rax, 856+entry_points(%rip)
	movq	.refptr.PMC_Compare_I_X(%rip), %rax
	movq	%rax, 864+entry_points(%rip)
	movq	.refptr.PMC_Compare_L_X(%rip), %rax
	movq	%rax, 872+entry_points(%rip)
	movq	.refptr.PMC_Compare_UX_X(%rip), %rax
	movq	%rax, 880+entry_points(%rip)
	movq	.refptr.PMC_Compare_X_I(%rip), %rax
	movq	%rax, 888+entry_points(%rip)
	movq	.refptr.PMC_Compare_X_L(%rip), %rax
	movq	%rax, 896+entry_points(%rip)
	movq	.refptr.PMC_Compare_X_UX(%rip), %rax
	movq	%rax, 904+entry_points(%rip)
	movq	.refptr.PMC_Compare_X_X(%rip), %rax
	movq	%rax, 912+entry_points(%rip)
	movq	.refptr.PMC_Equals_I_X(%rip), %rax
	movq	%rax, 920+entry_points(%rip)
	movq	.refptr.PMC_Equals_L_X(%rip), %rax
	movq	%rax, 928+entry_points(%rip)
	movq	.refptr.PMC_Equals_UX_X(%rip), %rax
	movq	%rax, 936+entry_points(%rip)
	movq	.refptr.PMC_Equals_X_I(%rip), %rax
	movq	%rax, 944+entry_points(%rip)
	movq	.refptr.PMC_Equals_X_L(%rip), %rax
	movq	%rax, 952+entry_points(%rip)
	movq	.refptr.PMC_Equals_X_UX(%rip), %rax
	movl	$1, initialized(%rip)
	movq	%rax, 960+entry_points(%rip)
	movq	.refptr.PMC_Equals_X_X(%rip), %rax
	movq	%rax, 968+entry_points(%rip)
	movq	.refptr.PMC_GetConstantValue_I(%rip), %rax
	movq	%rax, 584+entry_points(%rip)
	movq	.refptr.PMC_Clone_X(%rip), %rax
	movq	%rax, 608+entry_points(%rip)
	movq	.refptr.PMC_Negate_X(%rip), %rax
	movq	%rax, 632+entry_points(%rip)
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L14:
	leaq	.LC0(%rip), %rcx
	call	*__imp_LoadLibraryA(%rip)
	testq	%rax, %rax
	movq	%rax, hLib_UINT(%rip)
	je	.L16
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_GetProcAddress(%rip)
	testq	%rax, %rax
	movq	%rax, fp_PMC_UINT_Initialize(%rip)
	jne	.L5
	movq	hLib_UINT(%rip), %rcx
	call	*__imp_FreeLibrary(%rip)
	movq	$0, hLib_UINT(%rip)
	jmp	.L2
	.p2align 4,,10
.L6:
	xorl	%ebx, %ebx
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L16:
	movq	$0, fp_PMC_UINT_Initialize(%rip)
	xorl	%ebx, %ebx
	jmp	.L1
	.seh_endproc
.lcomm initialized,4,4
.lcomm fp_PMC_UINT_Initialize,8,8
.lcomm hLib_UINT,8,8
.lcomm entry_points,976,32
	.comm	ep_uint, 552, 5
	.comm	uint_number_one, 8, 3
	.comm	uint_number_zero, 8, 3
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	Initialize_Memory;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"PMC_SINT_Initialize\""
	.section	.rdata$.refptr.PMC_Negate_X, "dr"
	.globl	.refptr.PMC_Negate_X
	.linkonce	discard
.refptr.PMC_Negate_X:
	.quad	PMC_Negate_X
	.section	.rdata$.refptr.PMC_Clone_X, "dr"
	.globl	.refptr.PMC_Clone_X
	.linkonce	discard
.refptr.PMC_Clone_X:
	.quad	PMC_Clone_X
	.section	.rdata$.refptr.PMC_GetConstantValue_I, "dr"
	.globl	.refptr.PMC_GetConstantValue_I
	.linkonce	discard
.refptr.PMC_GetConstantValue_I:
	.quad	PMC_GetConstantValue_I
	.section	.rdata$.refptr.PMC_Equals_X_X, "dr"
	.globl	.refptr.PMC_Equals_X_X
	.linkonce	discard
.refptr.PMC_Equals_X_X:
	.quad	PMC_Equals_X_X
	.section	.rdata$.refptr.PMC_Equals_X_UX, "dr"
	.globl	.refptr.PMC_Equals_X_UX
	.linkonce	discard
.refptr.PMC_Equals_X_UX:
	.quad	PMC_Equals_X_UX
	.section	.rdata$.refptr.PMC_Equals_X_L, "dr"
	.globl	.refptr.PMC_Equals_X_L
	.linkonce	discard
.refptr.PMC_Equals_X_L:
	.quad	PMC_Equals_X_L
	.section	.rdata$.refptr.PMC_Equals_X_I, "dr"
	.globl	.refptr.PMC_Equals_X_I
	.linkonce	discard
.refptr.PMC_Equals_X_I:
	.quad	PMC_Equals_X_I
	.section	.rdata$.refptr.PMC_Equals_UX_X, "dr"
	.globl	.refptr.PMC_Equals_UX_X
	.linkonce	discard
.refptr.PMC_Equals_UX_X:
	.quad	PMC_Equals_UX_X
	.section	.rdata$.refptr.PMC_Equals_L_X, "dr"
	.globl	.refptr.PMC_Equals_L_X
	.linkonce	discard
.refptr.PMC_Equals_L_X:
	.quad	PMC_Equals_L_X
	.section	.rdata$.refptr.PMC_Equals_I_X, "dr"
	.globl	.refptr.PMC_Equals_I_X
	.linkonce	discard
.refptr.PMC_Equals_I_X:
	.quad	PMC_Equals_I_X
	.section	.rdata$.refptr.PMC_Compare_X_X, "dr"
	.globl	.refptr.PMC_Compare_X_X
	.linkonce	discard
.refptr.PMC_Compare_X_X:
	.quad	PMC_Compare_X_X
	.section	.rdata$.refptr.PMC_Compare_X_UX, "dr"
	.globl	.refptr.PMC_Compare_X_UX
	.linkonce	discard
.refptr.PMC_Compare_X_UX:
	.quad	PMC_Compare_X_UX
	.section	.rdata$.refptr.PMC_Compare_X_L, "dr"
	.globl	.refptr.PMC_Compare_X_L
	.linkonce	discard
.refptr.PMC_Compare_X_L:
	.quad	PMC_Compare_X_L
	.section	.rdata$.refptr.PMC_Compare_X_I, "dr"
	.globl	.refptr.PMC_Compare_X_I
	.linkonce	discard
.refptr.PMC_Compare_X_I:
	.quad	PMC_Compare_X_I
	.section	.rdata$.refptr.PMC_Compare_UX_X, "dr"
	.globl	.refptr.PMC_Compare_UX_X
	.linkonce	discard
.refptr.PMC_Compare_UX_X:
	.quad	PMC_Compare_UX_X
	.section	.rdata$.refptr.PMC_Compare_L_X, "dr"
	.globl	.refptr.PMC_Compare_L_X
	.linkonce	discard
.refptr.PMC_Compare_L_X:
	.quad	PMC_Compare_L_X
	.section	.rdata$.refptr.PMC_Compare_I_X, "dr"
	.globl	.refptr.PMC_Compare_I_X
	.linkonce	discard
.refptr.PMC_Compare_I_X:
	.quad	PMC_Compare_I_X
	.section	.rdata$.refptr.PMC_DivRem_X_X, "dr"
	.globl	.refptr.PMC_DivRem_X_X
	.linkonce	discard
.refptr.PMC_DivRem_X_X:
	.quad	PMC_DivRem_X_X
	.section	.rdata$.refptr.PMC_DivRem_X_UX, "dr"
	.globl	.refptr.PMC_DivRem_X_UX
	.linkonce	discard
.refptr.PMC_DivRem_X_UX:
	.quad	PMC_DivRem_X_UX
	.section	.rdata$.refptr.PMC_DivRem_X_L, "dr"
	.globl	.refptr.PMC_DivRem_X_L
	.linkonce	discard
.refptr.PMC_DivRem_X_L:
	.quad	PMC_DivRem_X_L
	.section	.rdata$.refptr.PMC_DivRem_X_I, "dr"
	.globl	.refptr.PMC_DivRem_X_I
	.linkonce	discard
.refptr.PMC_DivRem_X_I:
	.quad	PMC_DivRem_X_I
	.section	.rdata$.refptr.PMC_DivRem_UX_X, "dr"
	.globl	.refptr.PMC_DivRem_UX_X
	.linkonce	discard
.refptr.PMC_DivRem_UX_X:
	.quad	PMC_DivRem_UX_X
	.section	.rdata$.refptr.PMC_DivRem_L_X, "dr"
	.globl	.refptr.PMC_DivRem_L_X
	.linkonce	discard
.refptr.PMC_DivRem_L_X:
	.quad	PMC_DivRem_L_X
	.section	.rdata$.refptr.PMC_DivRem_I_X, "dr"
	.globl	.refptr.PMC_DivRem_I_X
	.linkonce	discard
.refptr.PMC_DivRem_I_X:
	.quad	PMC_DivRem_I_X
	.section	.rdata$.refptr.PMC_Multiply_X_X, "dr"
	.globl	.refptr.PMC_Multiply_X_X
	.linkonce	discard
.refptr.PMC_Multiply_X_X:
	.quad	PMC_Multiply_X_X
	.section	.rdata$.refptr.PMC_Multiply_X_UX, "dr"
	.globl	.refptr.PMC_Multiply_X_UX
	.linkonce	discard
.refptr.PMC_Multiply_X_UX:
	.quad	PMC_Multiply_X_UX
	.section	.rdata$.refptr.PMC_Multiply_X_L, "dr"
	.globl	.refptr.PMC_Multiply_X_L
	.linkonce	discard
.refptr.PMC_Multiply_X_L:
	.quad	PMC_Multiply_X_L
	.section	.rdata$.refptr.PMC_Multiply_X_I, "dr"
	.globl	.refptr.PMC_Multiply_X_I
	.linkonce	discard
.refptr.PMC_Multiply_X_I:
	.quad	PMC_Multiply_X_I
	.section	.rdata$.refptr.PMC_Multiply_UX_X, "dr"
	.globl	.refptr.PMC_Multiply_UX_X
	.linkonce	discard
.refptr.PMC_Multiply_UX_X:
	.quad	PMC_Multiply_UX_X
	.section	.rdata$.refptr.PMC_Multiply_L_X, "dr"
	.globl	.refptr.PMC_Multiply_L_X
	.linkonce	discard
.refptr.PMC_Multiply_L_X:
	.quad	PMC_Multiply_L_X
	.section	.rdata$.refptr.PMC_Multiply_I_X, "dr"
	.globl	.refptr.PMC_Multiply_I_X
	.linkonce	discard
.refptr.PMC_Multiply_I_X:
	.quad	PMC_Multiply_I_X
	.section	.rdata$.refptr.PMC_Subtruct_X_X, "dr"
	.globl	.refptr.PMC_Subtruct_X_X
	.linkonce	discard
.refptr.PMC_Subtruct_X_X:
	.quad	PMC_Subtruct_X_X
	.section	.rdata$.refptr.PMC_Subtruct_X_UX, "dr"
	.globl	.refptr.PMC_Subtruct_X_UX
	.linkonce	discard
.refptr.PMC_Subtruct_X_UX:
	.quad	PMC_Subtruct_X_UX
	.section	.rdata$.refptr.PMC_Subtruct_X_L, "dr"
	.globl	.refptr.PMC_Subtruct_X_L
	.linkonce	discard
.refptr.PMC_Subtruct_X_L:
	.quad	PMC_Subtruct_X_L
	.section	.rdata$.refptr.PMC_Subtruct_X_I, "dr"
	.globl	.refptr.PMC_Subtruct_X_I
	.linkonce	discard
.refptr.PMC_Subtruct_X_I:
	.quad	PMC_Subtruct_X_I
	.section	.rdata$.refptr.PMC_Subtruct_UX_X, "dr"
	.globl	.refptr.PMC_Subtruct_UX_X
	.linkonce	discard
.refptr.PMC_Subtruct_UX_X:
	.quad	PMC_Subtruct_UX_X
	.section	.rdata$.refptr.PMC_Subtruct_L_X, "dr"
	.globl	.refptr.PMC_Subtruct_L_X
	.linkonce	discard
.refptr.PMC_Subtruct_L_X:
	.quad	PMC_Subtruct_L_X
	.section	.rdata$.refptr.PMC_Subtruct_I_X, "dr"
	.globl	.refptr.PMC_Subtruct_I_X
	.linkonce	discard
.refptr.PMC_Subtruct_I_X:
	.quad	PMC_Subtruct_I_X
	.section	.rdata$.refptr.PMC_Add_X_X, "dr"
	.globl	.refptr.PMC_Add_X_X
	.linkonce	discard
.refptr.PMC_Add_X_X:
	.quad	PMC_Add_X_X
	.section	.rdata$.refptr.PMC_Add_X_UX, "dr"
	.globl	.refptr.PMC_Add_X_UX
	.linkonce	discard
.refptr.PMC_Add_X_UX:
	.quad	PMC_Add_X_UX
	.section	.rdata$.refptr.PMC_Add_X_L, "dr"
	.globl	.refptr.PMC_Add_X_L
	.linkonce	discard
.refptr.PMC_Add_X_L:
	.quad	PMC_Add_X_L
	.section	.rdata$.refptr.PMC_Add_X_I, "dr"
	.globl	.refptr.PMC_Add_X_I
	.linkonce	discard
.refptr.PMC_Add_X_I:
	.quad	PMC_Add_X_I
	.section	.rdata$.refptr.PMC_Add_UX_X, "dr"
	.globl	.refptr.PMC_Add_UX_X
	.linkonce	discard
.refptr.PMC_Add_UX_X:
	.quad	PMC_Add_UX_X
	.section	.rdata$.refptr.PMC_Add_L_X, "dr"
	.globl	.refptr.PMC_Add_L_X
	.linkonce	discard
.refptr.PMC_Add_L_X:
	.quad	PMC_Add_L_X
	.section	.rdata$.refptr.PMC_Add_I_X, "dr"
	.globl	.refptr.PMC_Add_I_X
	.linkonce	discard
.refptr.PMC_Add_I_X:
	.quad	PMC_Add_I_X
	.section	.rdata$.refptr.PMC_ToByteArray, "dr"
	.globl	.refptr.PMC_ToByteArray
	.linkonce	discard
.refptr.PMC_ToByteArray:
	.quad	PMC_ToByteArray
	.section	.rdata$.refptr.PMC_To_X_L, "dr"
	.globl	.refptr.PMC_To_X_L
	.linkonce	discard
.refptr.PMC_To_X_L:
	.quad	PMC_To_X_L
	.section	.rdata$.refptr.PMC_To_X_I, "dr"
	.globl	.refptr.PMC_To_X_I
	.linkonce	discard
.refptr.PMC_To_X_I:
	.quad	PMC_To_X_I
	.section	.rdata$.refptr.PMC_Dispose, "dr"
	.globl	.refptr.PMC_Dispose
	.linkonce	discard
.refptr.PMC_Dispose:
	.quad	PMC_Dispose
	.section	.rdata$.refptr.PMC_FromByteArray, "dr"
	.globl	.refptr.PMC_FromByteArray
	.linkonce	discard
.refptr.PMC_FromByteArray:
	.quad	PMC_FromByteArray
	.section	.rdata$.refptr.PMC_From_L, "dr"
	.globl	.refptr.PMC_From_L
	.linkonce	discard
.refptr.PMC_From_L:
	.quad	PMC_From_L
	.section	.rdata$.refptr.PMC_From_I, "dr"
	.globl	.refptr.PMC_From_I
	.linkonce	discard
.refptr.PMC_From_I:
	.quad	PMC_From_I
	.section	.rdata$.refptr.PMC_GetStatisticsInfo, "dr"
	.globl	.refptr.PMC_GetStatisticsInfo
	.linkonce	discard
.refptr.PMC_GetStatisticsInfo:
	.quad	PMC_GetStatisticsInfo
