	.file	"pmc_statistics.c"
	.text
	.p2align 4,,15
	.globl	PMC_GetStatisticsInfo
	.def	PMC_GetStatisticsInfo;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GetStatisticsInfo
PMC_GetStatisticsInfo:
	.seh_endprologue
	movq	.refptr.ep_uint(%rip), %rax
	rex.W jmp	*8(%rax)
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
