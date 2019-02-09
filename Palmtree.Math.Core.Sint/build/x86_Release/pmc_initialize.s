	.file	"pmc_initialize.c"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "Palmtree.Math.Core.Uint.dll\0"
LC1:
	.ascii "PMC_UINT_Initialize\0"
	.text
	.p2align 4,,15
	.globl	_PMC_SINT_Initialize@4
	.def	_PMC_SINT_Initialize@4;	.scl	2;	.type	32;	.endef
_PMC_SINT_Initialize@4:
LFB5484:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	movl	_hLib_UINT, %edx
	testl	%edx, %edx
	je	L15
L2:
	movl	_fp_PMC_UINT_Initialize, %eax
	testl	%eax, %eax
	je	L6
L5:
	movl	64(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, %edx
	testl	%eax, %eax
	je	L6
	movl	_initialized, %eax
	movl	$_entry_points, %ebx
	testl	%eax, %eax
	je	L16
L1:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
L16:
	.cfi_restore_state
	movl	$24, %esi
	xorl	%eax, %eax
	leal	24(%esp), %edi
	movl	%esi, %ecx
/APP
 # 1445 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$8, 24(%esp)
	leal	24(%esp), %edi
	movl	%esi, %ecx
/APP
 # 1445 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$4, 24(%esp)
	leal	24(%esp), %edi
	movl	%esi, %ecx
/APP
 # 1445 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$2, 24(%esp)
	leal	24(%esp), %edi
	movl	%esi, %ecx
/APP
 # 1445 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	orb	$16, 24(%esp)
	leal	24(%esp), %edi
	movl	%esi, %ecx
/APP
 # 1445 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep stosb
 # 0 "" 2
/NO_APP
	movl	$276, %eax
	orb	$1, 24(%esp)
	movl	$_ep_uint, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
/APP
 # 1755 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
	movl	%ebx, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
/APP
 # 1755 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
	call	_Initialize_Memory
	testl	%eax, %eax
	jne	L6
	movl	$_PMC_GetStatisticsInfo@4, _entry_points+276
	movl	%ebx, %eax
	movl	$_PMC_From_I@8, _entry_points+280
	movl	$_PMC_From_L@12, _entry_points+284
	movl	$_PMC_FromByteArray@12, _entry_points+296
	movl	$_PMC_Dispose@4, _entry_points+288
	movl	$_PMC_To_X_I@8, _entry_points+308
	movl	$_PMC_To_X_L@8, _entry_points+312
	movl	$_PMC_ToByteArray@16, _entry_points+300
	movl	$_PMC_Add_I_X@12, _entry_points+320
	movl	$_PMC_Add_L_X@16, _entry_points+324
	movl	$_PMC_Add_UX_X@12, _entry_points+328
	movl	$_PMC_Add_X_I@12, _entry_points+332
	movl	$_PMC_Add_X_L@16, _entry_points+336
	movl	$_PMC_Add_X_UX@12, _entry_points+340
	movl	$_PMC_Add_X_X@12, _entry_points+344
	movl	$_PMC_Subtruct_I_X@12, _entry_points+348
	movl	$_PMC_Subtruct_L_X@16, _entry_points+352
	movl	$_PMC_Subtruct_UX_X@12, _entry_points+356
	movl	$_PMC_Subtruct_X_I@12, _entry_points+360
	movl	$_PMC_Subtruct_X_L@16, _entry_points+364
	movl	$_PMC_Subtruct_X_UX@12, _entry_points+368
	movl	$_PMC_Subtruct_X_X@12, _entry_points+372
	movl	$_PMC_Multiply_I_X@12, _entry_points+376
	movl	$_PMC_Multiply_L_X@16, _entry_points+380
	movl	$_PMC_Multiply_UX_X@12, _entry_points+384
	movl	$_PMC_Multiply_X_I@12, _entry_points+388
	movl	$_PMC_Multiply_X_L@16, _entry_points+392
	movl	$_PMC_Multiply_X_UX@12, _entry_points+396
	movl	$_PMC_Multiply_X_X@12, _entry_points+400
	movl	$_PMC_DivRem_I_X@16, _entry_points+404
	movl	$_PMC_DivRem_L_X@20, _entry_points+408
	movl	$_PMC_DivRem_UX_X@16, _entry_points+412
	movl	$_PMC_DivRem_X_I@16, _entry_points+416
	movl	$_PMC_DivRem_X_L@20, _entry_points+420
	movl	$_PMC_DivRem_X_UX@16, _entry_points+424
	movl	$_PMC_DivRem_X_X@16, _entry_points+428
	movl	$_PMC_Compare_I_X@12, _entry_points+432
	movl	$_PMC_Compare_L_X@16, _entry_points+436
	movl	$_PMC_Compare_UX_X@12, _entry_points+440
	movl	$_PMC_Compare_X_I@12, _entry_points+444
	movl	$_PMC_Compare_X_L@16, _entry_points+448
	movl	$_PMC_Compare_X_UX@12, _entry_points+452
	movl	$_PMC_Compare_X_X@12, _entry_points+456
	movl	$_PMC_Equals_I_X@12, _entry_points+460
	movl	$_PMC_Equals_L_X@16, _entry_points+464
	movl	$_PMC_Equals_UX_X@12, _entry_points+468
	movl	$_PMC_Equals_X_I@12, _entry_points+472
	movl	$_PMC_Equals_X_L@16, _entry_points+476
	movl	$_PMC_Equals_X_UX@12, _entry_points+480
	movl	$_PMC_Equals_X_X@12, _entry_points+484
	movl	$_PMC_GetConstantValue_I@8, _entry_points+292
	movl	$_PMC_Clone_X@8, _entry_points+304
	movl	$_PMC_Negate_X@8, _entry_points+316
	movl	$1, _initialized
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
L15:
	.cfi_restore_state
	movl	$LC0, (%esp)
	call	*__imp__LoadLibraryA@4
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, _hLib_UINT
	testl	%eax, %eax
	je	L17
	movl	$LC1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, _fp_PMC_UINT_Initialize
	testl	%eax, %eax
	jne	L5
	movl	_hLib_UINT, %eax
	movl	%eax, (%esp)
	call	*__imp__FreeLibrary@4
	.cfi_def_cfa_offset 60
	movl	$0, _hLib_UINT
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	jmp	L2
	.p2align 4,,10
L6:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
L17:
	.cfi_restore_state
	movl	$0, _fp_PMC_UINT_Initialize
	xorl	%ebx, %ebx
	jmp	L1
	.cfi_endproc
LFE5484:
.lcomm _initialized,4,4
.lcomm _fp_PMC_UINT_Initialize,4,4
.lcomm _hLib_UINT,4,4
.lcomm _entry_points,488,32
	.comm	_ep_uint, 276, 5
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_Initialize_Memory;	.scl	2;	.type	32;	.endef
	.def	_PMC_GetStatisticsInfo@4;	.scl	2;	.type	32;	.endef
	.def	_PMC_From_I@8;	.scl	2;	.type	32;	.endef
	.def	_PMC_From_L@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_FromByteArray@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Dispose@4;	.scl	2;	.type	32;	.endef
	.def	_PMC_To_X_I@8;	.scl	2;	.type	32;	.endef
	.def	_PMC_To_X_L@8;	.scl	2;	.type	32;	.endef
	.def	_PMC_ToByteArray@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Add_I_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Add_L_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Add_UX_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Add_X_I@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Add_X_L@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Add_X_UX@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Add_X_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Subtruct_I_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Subtruct_L_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Subtruct_UX_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Subtruct_X_I@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Subtruct_X_L@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Subtruct_X_UX@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Subtruct_X_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Multiply_I_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Multiply_L_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Multiply_UX_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Multiply_X_I@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Multiply_X_L@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Multiply_X_UX@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Multiply_X_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_DivRem_I_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_DivRem_L_X@20;	.scl	2;	.type	32;	.endef
	.def	_PMC_DivRem_UX_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_DivRem_X_I@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_DivRem_X_L@20;	.scl	2;	.type	32;	.endef
	.def	_PMC_DivRem_X_UX@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_DivRem_X_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Compare_I_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Compare_L_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Compare_UX_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Compare_X_I@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Compare_X_L@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Compare_X_UX@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Compare_X_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Equals_I_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Equals_L_X@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Equals_UX_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Equals_X_I@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Equals_X_L@16;	.scl	2;	.type	32;	.endef
	.def	_PMC_Equals_X_UX@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_Equals_X_X@12;	.scl	2;	.type	32;	.endef
	.def	_PMC_GetConstantValue_I@8;	.scl	2;	.type	32;	.endef
	.def	_PMC_Clone_X@8;	.scl	2;	.type	32;	.endef
	.def	_PMC_Negate_X@8;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"PMC_SINT_Initialize@4\""
