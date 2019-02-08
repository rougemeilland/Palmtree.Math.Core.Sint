	.file	"pmc_add_sub.c"
	.text
	.p2align 4,,15
	.def	_SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_I_Imp:
LFB5485:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	leal	36(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+220
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L1
	movl	36(%esp), %edx
	testl	%edx, %edx
	jle	L3
	leal	44(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	*_ep_uint+92
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L20
L1:
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
	ret
	.p2align 4,,10
L3:
	.cfi_restore_state
	je	L21
	leal	40(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	*_ep_uint+84
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L1
	leal	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+8
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L1
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, %eax
	negl	%eax
	jmp	L18
	.p2align 4,,10
L20:
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, %eax
L18:
	movsbl	%al, %edi
	movl	64(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L1
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	jmp	L1
	.p2align 4,,10
L21:
	movl	64(%esp), %ecx
	movl	$_number_zero, (%ecx)
	addl	$48, %esp
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
	ret
	.cfi_endproc
LFE5485:
	.p2align 4,,15
	.def	_AddU_X_I_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_I_Imp:
LFB5482:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	leal	44(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+72
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L28
L22:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L28:
	.cfi_restore_state
	movl	44(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L22
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	addl	$56, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5482:
	.p2align 4,,15
	.def	_SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_L_Imp:
LFB5486:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %esi
	movl	84(%esp), %edi
	leal	32(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	call	*_ep_uint+224
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L29
	movl	32(%esp), %edx
	testl	%edx, %edx
	jle	L31
	leal	40(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, (%esp)
	call	*_ep_uint+96
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	L44
L29:
	addl	$60, %esp
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
	ret
	.p2align 4,,10
L31:
	.cfi_restore_state
	je	L45
	leal	40(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	*_ep_uint+88
	.cfi_def_cfa_offset 64
	subl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L29
	leal	36(%esp), %eax
	movl	44(%esp), %edx
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*_ep_uint+12
	.cfi_def_cfa_offset 68
	subl	$12, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L29
	movl	36(%esp), %eax
	negl	%ebx
	movsbl	%bl, %ebx
	movl	%eax, 8(%esp)
	movl	88(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L29
	movl	36(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	jmp	L29
	.p2align 4,,10
L44:
	movl	40(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	88(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L29
	movl	40(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	jmp	L29
	.p2align 4,,10
L45:
	movl	88(%esp), %ecx
	movl	$_number_zero, (%ecx)
	addl	$60, %esp
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
	ret
	.cfi_endproc
LFE5486:
	.p2align 4,,15
	.def	_AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_L_Imp:
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
	movl	%eax, %ebx
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	leal	44(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	call	*_ep_uint+76
	.cfi_def_cfa_offset 48
	subl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L52
L46:
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
	ret
	.p2align 4,,10
L52:
	.cfi_restore_state
	movl	44(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L46
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	addl	$48, %esp
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
	ret
	.cfi_endproc
LFE5483:
	.p2align 4,,15
	.def	_AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_X_Imp:
LFB5484:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	leal	44(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+80
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L59
L53:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L59:
	.cfi_restore_state
	movl	44(%esp), %eax
	movsbl	%bl, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L53
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	addl	$56, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5484:
	.p2align 4,,15
	.def	_SubtructU_X_X_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_X_Imp:
LFB5487:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	subl	$48, %esp
	.cfi_def_cfa_offset 64
	leal	40(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+228
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L60
	movl	40(%esp), %edx
	testl	%edx, %edx
	jle	L62
	leal	44(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	*_ep_uint+100
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L78
L60:
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
	ret
	.p2align 4,,10
L62:
	.cfi_restore_state
	je	L79
	leal	44(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	*_ep_uint+100
	.cfi_def_cfa_offset 52
	subl	$12, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L60
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, %eax
	negl	%eax
	jmp	L77
	.p2align 4,,10
L78:
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, %eax
L77:
	movsbl	%al, %edi
	movl	64(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_AllocateNumber
	testl	%eax, %eax
	je	L60
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	jmp	L60
	.p2align 4,,10
L79:
	movl	64(%esp), %ecx
	movl	$_number_zero, (%ecx)
	addl	$48, %esp
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
	ret
	.cfi_endproc
LFE5487:
	.p2align 4,,15
	.globl	_PMC_Add_I_X@12
	.def	_PMC_Add_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_I_X@12:
LFB5488:
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
	movl	72(%esp), %edi
	movl	64(%esp), %ebp
	movl	68(%esp), %ebx
	testl	%edi, %edi
	je	L92
	testl	%ebx, %ebx
	je	L92
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L80
	movzbl	12(%ebx), %eax
	testl	%ebp, %ebp
	jg	L113
	je	L114
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	L115
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	jle	L91
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L107
L101:
	movl	%eax, %esi
L80:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L113:
	.cfi_restore_state
	testb	%al, %al
	je	L116
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	jle	L89
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	jne	L101
	.p2align 4,,10
L107:
	movl	28(%esp), %edx
L86:
	movl	%edx, (%edi)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L114:
	.cfi_restore_state
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L86
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L107
	movl	%eax, %esi
	jmp	L80
	.p2align 4,,10
L116:
	leal	28(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L107
	movl	%eax, %esi
	jmp	L80
	.p2align 4,,10
L89:
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L107
	movl	%eax, %esi
	jmp	L80
	.p2align 4,,10
L115:
	leal	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$-1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L107
	movl	%eax, %esi
	jmp	L80
	.p2align 4,,10
L91:
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L107
	movl	%eax, %esi
	jmp	L80
	.p2align 4,,10
L92:
	movl	$-1, %esi
	jmp	L80
	.cfi_endproc
LFE5488:
	.p2align 4,,15
	.globl	_PMC_Add_L_X@16
	.def	_PMC_Add_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Add_L_X@16:
LFB5489:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	92(%esp), %eax
	movl	80(%esp), %esi
	movl	84(%esp), %edi
	movl	88(%esp), %ebp
	testl	%eax, %eax
	je	L129
	testl	%ebp, %ebp
	je	L129
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L117
	cmpl	%esi, %ebx
	movl	%ebx, %ecx
	movzbl	12(%ebp), %eax
	sbbl	%edi, %ecx
	jl	L150
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L151
	leal	-2147483648(%edi), %ecx
	movl	$0, 24(%esp)
	orl	%esi, %ecx
	movl	$-2147483648, 28(%esp)
	je	L125
	negl	%esi
	adcl	$0, %edi
	movl	%esi, 24(%esp)
	negl	%edi
	movl	%edi, 28(%esp)
L125:
	testb	%al, %al
	je	L152
	movl	8(%ebp), %edx
	movl	24(%esp), %edi
	leal	44(%esp), %eax
	movl	28(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	jle	L128
	movl	$1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L144
L138:
	movl	%eax, %ebx
L117:
	addl	$60, %esp
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
L150:
	.cfi_restore_state
	testb	%al, %al
	je	L153
	leal	44(%esp), %eax
	movl	8(%ebp), %edx
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	jle	L126
	movl	$1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	jne	L138
	.p2align 4,,10
L144:
	movl	44(%esp), %edx
	jmp	L123
	.p2align 4,,10
L151:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L154
L123:
	movl	92(%esp), %eax
	movl	%edx, (%eax)
	addl	$60, %esp
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
L153:
	.cfi_restore_state
	leal	44(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L144
	movl	%eax, %ebx
	jmp	L117
	.p2align 4,,10
L154:
	leal	44(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L144
	movl	%eax, %ebx
	jmp	L117
	.p2align 4,,10
L126:
	movl	$-1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L144
	movl	%eax, %ebx
	jmp	L117
	.p2align 4,,10
L152:
	leal	44(%esp), %eax
	movl	28(%esp), %edx
	movl	$-1, (%esp)
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L144
	movl	%eax, %ebx
	jmp	L117
	.p2align 4,,10
L128:
	movl	$-1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L144
	movl	%eax, %ebx
	jmp	L117
	.p2align 4,,10
L129:
	movl	$-1, %ebx
	jmp	L117
	.cfi_endproc
LFE5489:
	.p2align 4,,15
	.globl	_PMC_Add_UX_X@12
	.def	_PMC_Add_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_UX_X@12:
LFB5490:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	88(%esp), %edi
	movl	84(%esp), %esi
	testl	%edi, %edi
	je	L165
	testl	%esi, %esi
	je	L165
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L155
	movl	80(%esp), %eax
	leal	44(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L155
	movzbl	12(%esi), %eax
	testb	$1, 44(%esp)
	je	L172
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L175
L160:
	movl	%edx, (%edi)
L155:
	addl	$60, %esp
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
	ret	$12
	.p2align 4,,10
L172:
	.cfi_restore_state
	testb	%al, %al
	jne	L161
	movl	80(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L169
	movl	44(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L160
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
L169:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%eax, %ebx
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
	ret	$12
	.p2align 4,,10
L161:
	.cfi_restore_state
	leal	40(%esp), %eax
	movl	8(%esi), %ecx
	movl	80(%esp), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L164
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	jne	L169
L174:
	movl	40(%esp), %edx
	movl	%edx, (%edi)
	jmp	L155
	.p2align 4,,10
L175:
	leal	40(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L174
	jmp	L169
	.p2align 4,,10
L164:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L174
	jmp	L169
	.p2align 4,,10
L165:
	movl	$-1, %ebx
	jmp	L155
	.cfi_endproc
LFE5490:
	.p2align 4,,15
	.globl	_PMC_Add_X_I@12
	.def	_PMC_Add_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_I@12:
LFB5491:
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
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	testl	%ebx, %ebx
	je	L191
	testl	%ebp, %ebp
	je	L191
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L176
	movzbl	12(%ebx), %eax
	testl	%edi, %edi
	jg	L219
	jne	L181
	testb	%al, %al
	jne	L220
	movl	$_number_zero, %eax
L182:
	movl	%eax, 0(%ebp)
L176:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L219:
	.cfi_restore_state
	testb	%al, %al
	je	L179
	movl	8(%ebx), %edx
	jle	L221
	leal	28(%esp), %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	jne	L202
	.p2align 4,,10
L212:
	movl	28(%esp), %eax
	jmp	L182
	.p2align 4,,10
L181:
	cmpl	$-2147483648, %edi
	je	L222
	movl	%edi, %ecx
	negl	%ecx
	testb	%al, %al
	jne	L210
L186:
	leal	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$-1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L212
L202:
	movl	%eax, %esi
L223:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L179:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L212
	movl	%eax, %esi
	jmp	L223
	.p2align 4,,10
L220:
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L212
	movl	%eax, %esi
	jmp	L223
	.p2align 4,,10
L222:
	movl	$-2147483648, %ecx
	testb	%al, %al
	je	L186
L210:
	jle	L224
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L212
	movl	%eax, %esi
	jmp	L223
	.p2align 4,,10
L221:
	leal	28(%esp), %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L212
	movl	%eax, %esi
	jmp	L223
	.p2align 4,,10
L224:
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L212
	movl	%eax, %esi
	jmp	L223
	.p2align 4,,10
L191:
	movl	$-1, %esi
	jmp	L176
	.cfi_endproc
LFE5491:
	.p2align 4,,15
	.globl	_PMC_Add_X_L@16
	.def	_PMC_Add_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Add_X_L@16:
LFB5492:
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
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	testl	%esi, %esi
	je	L240
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L240
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L225
	cmpl	%edi, %ebx
	movl	%ebx, %ecx
	movzbl	12(%esi), %eax
	sbbl	%ebp, %ecx
	jl	L268
	movl	%ebp, %ecx
	orl	%edi, %ecx
	jne	L230
	testb	%al, %al
	jne	L269
	movl	$_number_zero, %eax
L231:
	movl	76(%esp), %edx
	movl	%eax, (%edx)
L225:
	addl	$44, %esp
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
L268:
	.cfi_restore_state
	testb	%al, %al
	je	L228
	movl	8(%esi), %edx
	jle	L270
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%ebp, 4(%esp)
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	jne	L251
	.p2align 4,,10
L261:
	movl	28(%esp), %eax
	jmp	L231
	.p2align 4,,10
L230:
	leal	-2147483648(%ebp), %ecx
	orl	%edi, %ecx
	je	L271
	negl	%edi
	adcl	$0, %ebp
	negl	%ebp
	testb	%al, %al
	jne	L259
L235:
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	$-1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L261
L251:
	movl	%eax, %ebx
L272:
	addl	$44, %esp
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
L228:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	$1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L261
	movl	%eax, %ebx
	jmp	L272
	.p2align 4,,10
L269:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L261
	movl	%eax, %ebx
	jmp	L272
	.p2align 4,,10
L271:
	xorl	%edi, %edi
	movl	$-2147483648, %ebp
	testb	%al, %al
	je	L235
L259:
	jle	L273
	leal	28(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%ebp, 4(%esp)
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L261
	movl	%eax, %ebx
	jmp	L272
	.p2align 4,,10
L270:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, %eax
	movl	%ebp, 4(%esp)
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L261
	movl	%eax, %ebx
	jmp	L272
	.p2align 4,,10
L273:
	leal	28(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, %eax
	movl	%ebp, 4(%esp)
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L261
	movl	%eax, %ebx
	jmp	L272
	.p2align 4,,10
L240:
	movl	$-1, %ebx
	jmp	L225
	.cfi_endproc
LFE5492:
	.p2align 4,,15
	.globl	_PMC_Add_X_UX@12
	.def	_PMC_Add_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_UX@12:
LFB5493:
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
	movl	72(%esp), %eax
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	testl	%eax, %eax
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L285
	testl	%esi, %esi
	je	L285
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L274
	leal	28(%esp), %ebp
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L274
	movzbl	28(%esp), %eax
	andl	$1, %eax
	cmpb	$0, 12(%esi)
	jne	L294
	testb	%al, %al
	je	L301
	movl	$_number_zero, %edx
L279:
	movl	72(%esp), %eax
	movl	%edx, (%eax)
L274:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L294:
	.cfi_restore_state
	jle	L282
	testb	%al, %al
	jne	L299
	leal	20(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L297
	.p2align 4,,10
L292:
	movl	%eax, %ebx
L302:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L301:
	.cfi_restore_state
	leal	24(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L292
	movl	24(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L292
	movl	24(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	20(%esp), %edx
	movl	%eax, %esi
	testl	%eax, %eax
	je	L279
	movl	24(%esp), %eax
	movl	%esi, %ebx
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	jmp	L274
	.p2align 4,,10
L282:
	testb	%al, %al
	je	L284
L299:
	leal	20(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	jne	L292
L297:
	movl	20(%esp), %edx
	jmp	L279
	.p2align 4,,10
L284:
	leal	20(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L297
	movl	%eax, %ebx
	jmp	L302
	.p2align 4,,10
L285:
	movl	$-1, %ebx
	jmp	L274
	.cfi_endproc
LFE5493:
	.p2align 4,,15
	.globl	_PMC_Add_X_X@12
	.def	_PMC_Add_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_X@12:
LFB5494:
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
	movl	72(%esp), %ebp
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L312
	testl	%esi, %esi
	je	L312
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L329
L303:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L329:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L303
	cmpb	$0, 12(%esi)
	movzbl	12(%edi), %eax
	je	L330
	jle	L307
	testb	%al, %al
	je	L325
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L327
L311:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	jne	L320
L323:
	movl	28(%esp), %edx
	jmp	L306
	.p2align 4,,10
L330:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L331
L306:
	movl	%edx, 0(%ebp)
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L307:
	.cfi_restore_state
	testb	%al, %al
	je	L325
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	jle	L311
L327:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L323
L320:
	movl	%eax, %ebx
	jmp	L303
	.p2align 4,,10
L325:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L323
	jmp	L320
	.p2align 4,,10
L331:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L323
	jmp	L320
	.p2align 4,,10
L312:
	movl	$-1, %ebx
	jmp	L303
	.cfi_endproc
LFE5494:
	.p2align 4,,15
	.globl	_PMC_Subtruct_I_X@12
	.def	_PMC_Subtruct_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_I_X@12:
LFB5495:
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
	movl	72(%esp), %edi
	movl	64(%esp), %ebp
	movl	68(%esp), %ebx
	testl	%edi, %edi
	je	L344
	testl	%ebx, %ebx
	je	L344
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L332
	movzbl	12(%ebx), %eax
	testl	%ebp, %ebp
	jg	L365
	je	L366
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	L367
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	jle	L343
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L359
L353:
	movl	%eax, %esi
L332:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L365:
	.cfi_restore_state
	testb	%al, %al
	je	L368
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	jle	L341
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	L353
	.p2align 4,,10
L359:
	movl	28(%esp), %edx
L338:
	movl	%edx, (%edi)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L366:
	.cfi_restore_state
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L338
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L359
	movl	%eax, %esi
	jmp	L332
	.p2align 4,,10
L368:
	leal	28(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L359
	movl	%eax, %esi
	jmp	L332
	.p2align 4,,10
L341:
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L359
	movl	%eax, %esi
	jmp	L332
	.p2align 4,,10
L367:
	leal	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$-1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L359
	movl	%eax, %esi
	jmp	L332
	.p2align 4,,10
L343:
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L359
	movl	%eax, %esi
	jmp	L332
	.p2align 4,,10
L344:
	movl	$-1, %esi
	jmp	L332
	.cfi_endproc
LFE5495:
	.p2align 4,,15
	.globl	_PMC_Subtruct_L_X@16
	.def	_PMC_Subtruct_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_L_X@16:
LFB5496:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	92(%esp), %eax
	movl	80(%esp), %esi
	movl	84(%esp), %edi
	movl	88(%esp), %ebp
	testl	%eax, %eax
	je	L381
	testl	%ebp, %ebp
	je	L381
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L369
	cmpl	%esi, %ebx
	movl	%ebx, %ecx
	movzbl	12(%ebp), %eax
	sbbl	%edi, %ecx
	jl	L402
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L403
	leal	-2147483648(%edi), %ecx
	movl	$0, 24(%esp)
	orl	%esi, %ecx
	movl	$-2147483648, 28(%esp)
	je	L377
	negl	%esi
	adcl	$0, %edi
	movl	%esi, 24(%esp)
	negl	%edi
	movl	%edi, 28(%esp)
L377:
	testb	%al, %al
	je	L404
	movl	8(%ebp), %edx
	movl	24(%esp), %edi
	leal	44(%esp), %eax
	movl	28(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	jle	L380
	movl	$-1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L396
L390:
	movl	%eax, %ebx
L369:
	addl	$60, %esp
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
L402:
	.cfi_restore_state
	testb	%al, %al
	je	L405
	leal	44(%esp), %eax
	movl	8(%ebp), %edx
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	jle	L378
	movl	$-1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	L390
	.p2align 4,,10
L396:
	movl	44(%esp), %edx
	jmp	L375
	.p2align 4,,10
L403:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L406
L375:
	movl	92(%esp), %eax
	movl	%edx, (%eax)
	addl	$60, %esp
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
L405:
	.cfi_restore_state
	leal	44(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L396
	movl	%eax, %ebx
	jmp	L369
	.p2align 4,,10
L406:
	leal	44(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L396
	movl	%eax, %ebx
	jmp	L369
	.p2align 4,,10
L378:
	movl	$1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L396
	movl	%eax, %ebx
	jmp	L369
	.p2align 4,,10
L404:
	leal	44(%esp), %eax
	movl	28(%esp), %edx
	movl	$-1, (%esp)
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L396
	movl	%eax, %ebx
	jmp	L369
	.p2align 4,,10
L380:
	movl	$1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L396
	movl	%eax, %ebx
	jmp	L369
	.p2align 4,,10
L381:
	movl	$-1, %ebx
	jmp	L369
	.cfi_endproc
LFE5496:
	.p2align 4,,15
	.globl	_PMC_Subtruct_UX_X@12
	.def	_PMC_Subtruct_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_UX_X@12:
LFB5497:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	88(%esp), %eax
	movl	84(%esp), %esi
	movl	80(%esp), %edi
	testl	%eax, %eax
	sete	%dl
	testl	%esi, %esi
	sete	%al
	orb	%al, %dl
	jne	L418
	testl	%edi, %edi
	je	L418
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L407
	leal	44(%esp), %ebp
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L407
	movzbl	12(%esi), %eax
	testb	$1, 44(%esp)
	je	L425
	testb	%al, %al
	je	L419
	leal	40(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	jne	L423
L428:
	movl	40(%esp), %edx
L412:
	movl	88(%esp), %eax
	movl	%edx, (%eax)
L407:
	addl	$60, %esp
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
	ret	$12
	.p2align 4,,10
L425:
	.cfi_restore_state
	testb	%al, %al
	jne	L414
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L423
	movl	44(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L412
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	.p2align 4,,10
L423:
	movl	%eax, %ebx
L432:
	addl	$60, %esp
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
	ret	$12
	.p2align 4,,10
L414:
	.cfi_restore_state
	leal	40(%esp), %eax
	movl	8(%esi), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L417
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L428
	movl	%eax, %ebx
	jmp	L432
	.p2align 4,,10
L419:
	movl	$_number_zero, %edx
	jmp	L412
	.p2align 4,,10
L417:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L428
	movl	%eax, %ebx
	jmp	L432
	.p2align 4,,10
L418:
	movl	$-1, %ebx
	jmp	L407
	.cfi_endproc
LFE5497:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_I@12
	.def	_PMC_Subtruct_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_I@12:
LFB5498:
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
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	testl	%ebx, %ebx
	je	L448
	testl	%ebp, %ebp
	je	L448
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L433
	movzbl	12(%ebx), %eax
	testl	%edi, %edi
	jg	L476
	jne	L438
	testb	%al, %al
	jne	L477
	movl	$_number_zero, %eax
L439:
	movl	%eax, 0(%ebp)
L433:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L476:
	.cfi_restore_state
	testb	%al, %al
	je	L436
	movl	8(%ebx), %edx
	jle	L478
	leal	28(%esp), %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	L459
	.p2align 4,,10
L469:
	movl	28(%esp), %eax
	jmp	L439
	.p2align 4,,10
L438:
	cmpl	$-2147483648, %edi
	je	L479
	movl	%edi, %ecx
	negl	%ecx
	testb	%al, %al
	jne	L467
L443:
	leal	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L469
L459:
	movl	%eax, %esi
L480:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L436:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$-1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L469
	movl	%eax, %esi
	jmp	L480
	.p2align 4,,10
L477:
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L469
	movl	%eax, %esi
	jmp	L480
	.p2align 4,,10
L479:
	movl	$-2147483648, %ecx
	testb	%al, %al
	je	L443
L467:
	jle	L481
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L469
	movl	%eax, %esi
	jmp	L480
	.p2align 4,,10
L478:
	leal	28(%esp), %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L469
	movl	%eax, %esi
	jmp	L480
	.p2align 4,,10
L481:
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L469
	movl	%eax, %esi
	jmp	L480
	.p2align 4,,10
L448:
	movl	$-1, %esi
	jmp	L433
	.cfi_endproc
LFE5498:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_L@16
	.def	_PMC_Subtruct_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_L@16:
LFB5499:
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
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	testl	%esi, %esi
	je	L497
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L497
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L482
	cmpl	%edi, %ebx
	movl	%ebx, %ecx
	movzbl	12(%esi), %eax
	sbbl	%ebp, %ecx
	jl	L525
	movl	%ebp, %ecx
	orl	%edi, %ecx
	jne	L487
	testb	%al, %al
	jne	L526
	movl	$_number_zero, %eax
L488:
	movl	76(%esp), %edx
	movl	%eax, (%edx)
L482:
	addl	$44, %esp
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
L525:
	.cfi_restore_state
	testb	%al, %al
	je	L485
	movl	8(%esi), %edx
	jle	L527
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%ebp, 4(%esp)
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	L508
	.p2align 4,,10
L518:
	movl	28(%esp), %eax
	jmp	L488
	.p2align 4,,10
L487:
	leal	-2147483648(%ebp), %ecx
	orl	%edi, %ecx
	je	L528
	negl	%edi
	adcl	$0, %ebp
	negl	%ebp
	testb	%al, %al
	jne	L516
L492:
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	$1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L518
L508:
	movl	%eax, %ebx
L529:
	addl	$44, %esp
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
L485:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	$-1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L518
	movl	%eax, %ebx
	jmp	L529
	.p2align 4,,10
L526:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L518
	movl	%eax, %ebx
	jmp	L529
	.p2align 4,,10
L528:
	xorl	%edi, %edi
	movl	$-2147483648, %ebp
	testb	%al, %al
	je	L492
L516:
	jle	L530
	leal	28(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%ebp, 4(%esp)
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L518
	movl	%eax, %ebx
	jmp	L529
	.p2align 4,,10
L527:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, %eax
	movl	%ebp, 4(%esp)
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L518
	movl	%eax, %ebx
	jmp	L529
	.p2align 4,,10
L530:
	leal	28(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, %eax
	movl	%ebp, 4(%esp)
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L518
	movl	%eax, %ebx
	jmp	L529
	.p2align 4,,10
L497:
	movl	$-1, %ebx
	jmp	L482
	.cfi_endproc
LFE5499:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_UX@12
	.def	_PMC_Subtruct_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_UX@12:
LFB5500:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	88(%esp), %eax
	movl	84(%esp), %edi
	movl	80(%esp), %esi
	testl	%eax, %eax
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L542
	testl	%esi, %esi
	je	L542
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L531
	leal	44(%esp), %ebp
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L531
	movzbl	44(%esp), %eax
	andl	$1, %eax
	cmpb	$0, 12(%esi)
	jne	L549
	testb	%al, %al
	je	L556
	movl	$_number_zero, %edx
L536:
	movl	88(%esp), %eax
	movl	%edx, (%eax)
L531:
	addl	$60, %esp
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
	ret	$12
	.p2align 4,,10
L549:
	.cfi_restore_state
	jle	L539
	testb	%al, %al
	jne	L554
	leal	40(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L552
	.p2align 4,,10
L547:
	movl	%eax, %ebx
L557:
	addl	$60, %esp
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
	ret	$12
	.p2align 4,,10
L556:
	.cfi_restore_state
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L547
	movl	44(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L536
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	movl	%eax, %ebx
	jmp	L557
	.p2align 4,,10
L539:
	testb	%al, %al
	je	L541
L554:
	leal	40(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	jne	L547
L552:
	movl	40(%esp), %edx
	jmp	L536
	.p2align 4,,10
L541:
	leal	40(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L552
	movl	%eax, %ebx
	jmp	L557
	.p2align 4,,10
L542:
	movl	$-1, %ebx
	jmp	L531
	.cfi_endproc
LFE5500:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_X@12
	.def	_PMC_Subtruct_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_X@12:
LFB5501:
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
	movl	72(%esp), %ebp
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L567
	testl	%esi, %esi
	je	L567
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L584
L558:
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L584:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L558
	cmpb	$0, 12(%esi)
	movzbl	12(%edi), %eax
	je	L585
	jle	L562
	testb	%al, %al
	je	L580
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L582
L566:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	L575
L578:
	movl	28(%esp), %edx
	jmp	L561
	.p2align 4,,10
L585:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L586
L561:
	movl	%edx, 0(%ebp)
	addl	$44, %esp
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
	ret	$12
	.p2align 4,,10
L562:
	.cfi_restore_state
	testb	%al, %al
	je	L580
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	jle	L566
L582:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L578
L575:
	movl	%eax, %ebx
	jmp	L558
	.p2align 4,,10
L580:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L578
	jmp	L575
	.p2align 4,,10
L586:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L578
	jmp	L575
	.p2align 4,,10
L567:
	movl	$-1, %ebx
	jmp	L558
	.cfi_endproc
LFE5501:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
