	.file	"pmc_greatestcommondivisor.c"
	.text
	.p2align 4,,15
	.globl	_PMC_GreatestCommonDivisor_I_X@12
	.def	_PMC_GreatestCommonDivisor_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_GreatestCommonDivisor_I_X@12:
LFB5481:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %ebx
	movl	32(%esp), %edi
	movl	40(%esp), %esi
	testl	%ebx, %ebx
	je	L5
	testl	%esi, %esi
	je	L5
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L1
	movl	%edi, %eax
	testl	%edi, %edi
	jg	L4
	movl	$0, %eax
	jne	L11
L4:
	movl	%esi, 40(%esp)
	movl	12(%ebx), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	addl	$16, %esp
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
	jmp	*_ep_uint+240
	.p2align 4,,10
L5:
	.cfi_restore_state
	movl	$-1, %eax
L1:
	addl	$16, %esp
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
	ret	$12
	.p2align 4,,10
L11:
	.cfi_restore_state
	movl	%edi, %eax
	movl	$-2147483648, %edx
	negl	%eax
	cmpl	$-2147483648, %edi
	cmove	%edx, %eax
	jmp	L4
	.cfi_endproc
LFE5481:
	.p2align 4,,15
	.globl	_PMC_GreatestCommonDivisor_L_X@16
	.def	_PMC_GreatestCommonDivisor_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_GreatestCommonDivisor_L_X@16:
LFB5482:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %ebx
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	movl	76(%esp), %ebp
	testl	%ebx, %ebx
	je	L16
	testl	%ebp, %ebp
	je	L16
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L12
	cmpl	%esi, %eax
	sbbl	%edi, %eax
	jl	L22
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$0, 24(%esp)
	orl	%esi, %edx
	movl	$0, 28(%esp)
	je	L15
	leal	-2147483648(%edi), %ecx
	movl	$0, 24(%esp)
	orl	%ecx, %eax
	movl	$-2147483648, 28(%esp)
	je	L15
	movl	%esi, %eax
	movl	%edi, %edx
	negl	%eax
	adcl	$0, %edx
	movl	%eax, 24(%esp)
	negl	%edx
	movl	%edx, 28(%esp)
	jmp	L15
	.p2align 4,,10
L22:
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
L15:
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%ebp, 76(%esp)
	movl	12(%ebx), %ecx
	movl	%eax, 64(%esp)
	movl	%ecx, 72(%esp)
	movl	%edx, 68(%esp)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	*_ep_uint+244
	.p2align 4,,10
L16:
	.cfi_restore_state
	movl	$-1, %eax
L12:
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$16
	.cfi_endproc
LFE5482:
	.p2align 4,,15
	.globl	_PMC_GreatestCommonDivisor_UX_X@12
	.def	_PMC_GreatestCommonDivisor_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_GreatestCommonDivisor_UX_X@12:
LFB5483:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %esi
	movl	36(%esp), %ebx
	movl	32(%esp), %edi
	testl	%esi, %esi
	sete	%dl
	testl	%ebx, %ebx
	sete	%al
	orb	%al, %dl
	jne	L25
	testl	%edi, %edi
	je	L25
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L23
	movl	%esi, 40(%esp)
	movl	12(%ebx), %eax
	movl	%edi, 32(%esp)
	movl	%eax, 36(%esp)
	addl	$16, %esp
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
	jmp	*_ep_uint+256
	.p2align 4,,10
L25:
	.cfi_restore_state
	movl	$-1, %eax
L23:
	addl	$16, %esp
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
	ret	$12
	.cfi_endproc
LFE5483:
	.p2align 4,,15
	.globl	_PMC_GreatestCommonDivisor_X_I@12
	.def	_PMC_GreatestCommonDivisor_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_GreatestCommonDivisor_X_I@12:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	36(%esp), %edi
	movl	40(%esp), %esi
	testl	%ebx, %ebx
	je	L31
	testl	%esi, %esi
	je	L31
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L27
	movl	%edi, %eax
	testl	%edi, %edi
	jg	L30
	movl	$0, %eax
	jne	L36
L30:
	movl	%esi, 40(%esp)
	movl	%eax, 36(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 32(%esp)
	addl	$16, %esp
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
	jmp	*_ep_uint+248
	.p2align 4,,10
L31:
	.cfi_restore_state
	movl	$-1, %eax
L27:
	addl	$16, %esp
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
	ret	$12
	.p2align 4,,10
L36:
	.cfi_restore_state
	movl	%edi, %eax
	movl	$-2147483648, %edx
	negl	%eax
	cmpl	$-2147483648, %edi
	cmove	%edx, %eax
	jmp	L30
	.cfi_endproc
LFE5484:
	.p2align 4,,15
	.globl	_PMC_GreatestCommonDivisor_X_L@16
	.def	_PMC_GreatestCommonDivisor_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_GreatestCommonDivisor_X_L@16:
LFB5485:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	movl	76(%esp), %ebp
	testl	%ebx, %ebx
	je	L41
	testl	%ebp, %ebp
	je	L41
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L37
	cmpl	%esi, %eax
	sbbl	%edi, %eax
	jl	L47
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$0, 24(%esp)
	orl	%esi, %edx
	movl	$0, 28(%esp)
	je	L40
	leal	-2147483648(%edi), %ecx
	movl	$0, 24(%esp)
	orl	%ecx, %eax
	movl	$-2147483648, 28(%esp)
	je	L40
	movl	%esi, %eax
	movl	%edi, %edx
	negl	%eax
	adcl	$0, %edx
	movl	%eax, 24(%esp)
	negl	%edx
	movl	%edx, 28(%esp)
	jmp	L40
	.p2align 4,,10
L47:
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
L40:
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%ebp, 76(%esp)
	movl	%eax, 68(%esp)
	movl	%edx, 72(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 64(%esp)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	*_ep_uint+252
	.p2align 4,,10
L41:
	.cfi_restore_state
	movl	$-1, %eax
L37:
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$16
	.cfi_endproc
LFE5485:
	.p2align 4,,15
	.globl	_PMC_GreatestCommonDivisor_X_UX@12
	.def	_PMC_GreatestCommonDivisor_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_GreatestCommonDivisor_X_UX@12:
LFB5486:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %edi
	movl	36(%esp), %esi
	movl	32(%esp), %ebx
	testl	%edi, %edi
	sete	%dl
	testl	%esi, %esi
	sete	%al
	orb	%al, %dl
	jne	L50
	testl	%ebx, %ebx
	je	L50
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L48
	movl	%edi, 40(%esp)
	movl	%esi, 36(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 32(%esp)
	addl	$16, %esp
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
	jmp	*_ep_uint+256
	.p2align 4,,10
L50:
	.cfi_restore_state
	movl	$-1, %eax
L48:
	addl	$16, %esp
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
	ret	$12
	.cfi_endproc
LFE5486:
	.p2align 4,,15
	.globl	_PMC_GreatestCommonDivisor_X_X@12
	.def	_PMC_GreatestCommonDivisor_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_GreatestCommonDivisor_X_X@12:
LFB5487:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %edi
	movl	36(%esp), %esi
	movl	32(%esp), %ebx
	testl	%edi, %edi
	sete	%dl
	testl	%esi, %esi
	sete	%al
	orb	%al, %dl
	jne	L54
	testl	%ebx, %ebx
	je	L54
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	je	L56
L52:
	addl	$16, %esp
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
	ret	$12
	.p2align 4,,10
L56:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L52
	movl	%edi, 40(%esp)
	movl	12(%esi), %eax
	movl	%eax, 36(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 32(%esp)
	addl	$16, %esp
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
	jmp	*_ep_uint+256
	.p2align 4,,10
L54:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L52
	.cfi_endproc
LFE5487:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
