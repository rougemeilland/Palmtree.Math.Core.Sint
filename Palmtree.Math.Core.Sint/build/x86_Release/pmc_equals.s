	.file	"pmc_equals.c"
	.text
	.p2align 4,,15
	.globl	_PMC_Equals_I_X@12
	.def	_PMC_Equals_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Equals_I_X@12:
LFB5481:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %ebx
	movl	48(%esp), %esi
	movl	56(%esp), %edi
	testl	%ebx, %ebx
	je	L6
	testl	%edi, %edi
	je	L6
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L1
	movl	$1, %eax
	testl	%esi, %esi
	jg	L4
	je	L7
	cmpl	$-2147483648, %esi
	je	L8
	negl	%esi
	movl	$-1, %eax
L4:
	cmpb	%al, 16(%ebx)
	je	L5
L11:
	movl	$0, (%edi)
L1:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
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
	ret	$12
	.p2align 4,,10
L5:
	.cfi_restore_state
	movl	%edi, 8(%esp)
	movl	12(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+224
	.cfi_def_cfa_offset 36
	movl	%ebp, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	addl	$28, %esp
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
	ret	$12
	.p2align 4,,10
L7:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%esi, %esi
	cmpb	%al, 16(%ebx)
	jne	L11
	jmp	L5
	.p2align 4,,10
L8:
	movl	$-1, %eax
	movl	$-2147483648, %esi
	jmp	L4
	.p2align 4,,10
L6:
	movl	$-1, %ebp
	jmp	L1
	.cfi_endproc
LFE5481:
	.p2align 4,,15
	.globl	_PMC_Equals_L_X@16
	.def	_PMC_Equals_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Equals_L_X@16:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %ebp
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	testl	%ebp, %ebp
	je	L17
	movl	60(%esp), %eax
	testl	%eax, %eax
	je	L17
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L12
	cmpl	%esi, %eax
	sbbl	%edi, %eax
	movl	$1, %eax
	jl	L15
	movl	%edi, %edx
	orl	%esi, %edx
	je	L18
	leal	-2147483648(%edi), %edx
	orl	%esi, %edx
	je	L19
	negl	%esi
	movl	$-1, %eax
	adcl	$0, %edi
	negl	%edi
L15:
	cmpb	%al, 16(%ebp)
	movl	60(%esp), %eax
	je	L16
L21:
	movl	$0, (%eax)
L12:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	.p2align 4,,10
L16:
	.cfi_restore_state
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	call	*_ep_uint+228
	.cfi_def_cfa_offset 32
	movl	%ebx, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	addl	$28, %esp
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
	ret	$16
	.p2align 4,,10
L18:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%esi, %esi
	xorl	%edi, %edi
	cmpb	%al, 16(%ebp)
	movl	60(%esp), %eax
	jne	L21
	jmp	L16
	.p2align 4,,10
L19:
	movl	$-1, %eax
	xorl	%esi, %esi
	movl	$-2147483648, %edi
	jmp	L15
	.p2align 4,,10
L17:
	movl	$-1, %ebx
	jmp	L12
	.cfi_endproc
LFE5482:
	.p2align 4,,15
	.globl	_PMC_Equals_UX_X@12
	.def	_PMC_Equals_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Equals_UX_X@12:
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
	movl	40(%esp), %edi
	movl	36(%esp), %ebx
	movl	32(%esp), %esi
	testl	%edi, %edi
	sete	%dl
	testl	%ebx, %ebx
	sete	%al
	orb	%al, %dl
	jne	L26
	testl	%esi, %esi
	je	L26
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L22
	movzbl	16(%ebx), %edx
	testb	$1, (%esi)
	je	L24
	testb	%dl, %dl
	sete	%dl
	movzbl	%dl, %edx
	movl	%edx, (%edi)
L22:
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
L24:
	.cfi_restore_state
	testb	%dl, %dl
	jle	L28
	movl	%edi, 40(%esp)
	movl	12(%ebx), %eax
	movl	%esi, 32(%esp)
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
	jmp	*_ep_uint+240
	.p2align 4,,10
L28:
	.cfi_restore_state
	movl	$0, (%edi)
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
L26:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L22
	.cfi_endproc
LFE5483:
	.p2align 4,,15
	.globl	_PMC_Equals_X_I@12
	.def	_PMC_Equals_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Equals_X_I@12:
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
	movl	40(%esp), %edi
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	testl	%edi, %edi
	je	L34
	testl	%ebx, %ebx
	je	L34
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L29
	movl	$1, %edx
	testl	%esi, %esi
	jg	L32
	je	L35
	cmpl	$-2147483648, %esi
	je	L36
	negl	%esi
	movl	$-1, %edx
L32:
	cmpb	%dl, 16(%ebx)
	je	L33
L38:
	movl	$0, (%edi)
L29:
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
L33:
	.cfi_restore_state
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
	jmp	*_ep_uint+232
	.p2align 4,,10
L35:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%esi, %esi
	cmpb	%dl, 16(%ebx)
	jne	L38
	jmp	L33
	.p2align 4,,10
L36:
	movl	$-1, %edx
	movl	$-2147483648, %esi
	jmp	L32
	.p2align 4,,10
L34:
	movl	$-1, %eax
	jmp	L29
	.cfi_endproc
LFE5484:
	.p2align 4,,15
	.globl	_PMC_Equals_X_L@16
	.def	_PMC_Equals_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Equals_X_L@16:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %ebp
	movl	48(%esp), %ebx
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	testl	%ebp, %ebp
	je	L44
	testl	%ebx, %ebx
	je	L44
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L39
	cmpl	%esi, %eax
	movl	%eax, %ecx
	movl	$1, %edx
	sbbl	%edi, %ecx
	jl	L42
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L45
	leal	-2147483648(%edi), %ecx
	orl	%esi, %ecx
	je	L46
	negl	%esi
	movl	$-1, %edx
	adcl	$0, %edi
	negl	%edi
L42:
	cmpb	%dl, 16(%ebx)
	je	L43
L48:
	movl	$0, 0(%ebp)
L39:
	addl	$28, %esp
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
	ret	$16
	.p2align 4,,10
L43:
	.cfi_restore_state
	movl	%ebp, 60(%esp)
	movl	%esi, 52(%esp)
	movl	%edi, 56(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 48(%esp)
	addl	$28, %esp
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
	jmp	*_ep_uint+236
	.p2align 4,,10
L45:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	cmpb	%dl, 16(%ebx)
	jne	L48
	jmp	L43
	.p2align 4,,10
L46:
	movl	$-1, %edx
	xorl	%esi, %esi
	movl	$-2147483648, %edi
	jmp	L42
	.p2align 4,,10
L44:
	movl	$-1, %eax
	jmp	L39
	.cfi_endproc
LFE5485:
	.p2align 4,,15
	.globl	_PMC_Equals_X_UX@12
	.def	_PMC_Equals_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Equals_X_UX@12:
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
	movl	40(%esp), %esi
	movl	36(%esp), %edi
	movl	32(%esp), %ebx
	testl	%esi, %esi
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L54
	testl	%ebx, %ebx
	je	L54
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L49
	cmpb	$0, 16(%ebx)
	jne	L51
	movzbl	(%edi), %edx
	andl	$1, %edx
	movl	%edx, (%esi)
L49:
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
L51:
	.cfi_restore_state
	js	L53
	testb	$1, (%edi)
	jne	L53
	movl	%esi, 40(%esp)
	movl	%edi, 36(%esp)
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
	jmp	*_ep_uint+240
	.p2align 4,,10
L53:
	.cfi_restore_state
	movl	$0, (%esi)
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
L54:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L49
	.cfi_endproc
LFE5486:
	.p2align 4,,15
	.globl	_PMC_Equals_X_X@12
	.def	_PMC_Equals_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Equals_X_X@12:
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
	jne	L59
	testl	%ebx, %ebx
	je	L59
	movl	%ebx, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	je	L61
L56:
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
L61:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	_CheckNumber
	testl	%eax, %eax
	jne	L56
	movzbl	16(%esi), %ecx
	cmpb	%cl, 16(%ebx)
	je	L58
	movl	$0, (%edi)
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
L58:
	.cfi_restore_state
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
	jmp	*_ep_uint+240
	.p2align 4,,10
L59:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L56
	.cfi_endproc
LFE5487:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
