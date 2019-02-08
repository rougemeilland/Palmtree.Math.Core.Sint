	.file	"pmc_add_sub.c"
	.text
	.p2align 4,,15
	.def	_SubtructU_X_I_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_I_Imp:
LFB5484:
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
LFE5484:
	.p2align 4,,15
	.def	_AddU_X_I_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_I_Imp:
LFB5481:
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
LFE5481:
	.p2align 4,,15
	.def	_SubtructU_X_L_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_L_Imp:
LFB5485:
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
LFE5485:
	.p2align 4,,15
	.def	_AddU_X_L_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_L_Imp:
LFB5482:
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
LFE5482:
	.p2align 4,,15
	.def	_AddU_X_X_Imp;	.scl	3;	.type	32;	.endef
_AddU_X_X_Imp:
LFB5483:
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
LFE5483:
	.p2align 4,,15
	.def	_SubtructU_X_X_Imp;	.scl	3;	.type	32;	.endef
_SubtructU_X_X_Imp:
LFB5486:
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
LFE5486:
	.p2align 4,,15
	.globl	_PMC_Add_I_X@12
	.def	_PMC_Add_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_I_X@12:
LFB5487:
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
LFE5487:
	.p2align 4,,15
	.globl	_PMC_Add_L_X@16
	.def	_PMC_Add_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Add_L_X@16:
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
LFE5488:
	.p2align 4,,15
	.globl	_PMC_Add_UX_X@12
	.def	_PMC_Add_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_UX_X@12:
LFB5489:
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
	movl	72(%esp), %edi
	movl	68(%esp), %esi
	testl	%edi, %edi
	je	L163
	testl	%esi, %esi
	je	L163
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L172
L155:
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
	ret	$12
	.p2align 4,,10
L172:
	.cfi_restore_state
	leal	39(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_IsZero_UINT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L155
	cmpb	$0, 39(%esp)
	movzbl	12(%esi), %eax
	jne	L173
	testb	%al, %al
	jne	L159
	leal	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L174
L167:
	movl	%eax, %ebx
	jmp	L155
	.p2align 4,,10
L173:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L175
L158:
	movl	%edx, (%edi)
L176:
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
	ret	$12
	.p2align 4,,10
L175:
	.cfi_restore_state
	leal	40(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	jne	L167
L171:
	movl	40(%esp), %edx
	movl	%edx, (%edi)
	jmp	L176
	.p2align 4,,10
L159:
	leal	40(%esp), %eax
	movl	8(%esi), %ecx
	movl	64(%esp), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L162
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L171
	jmp	L167
	.p2align 4,,10
L174:
	movl	44(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L158
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	movl	%eax, %ebx
	jmp	L155
	.p2align 4,,10
L162:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L171
	jmp	L167
	.p2align 4,,10
L163:
	movl	$-1, %ebx
	jmp	L155
	.cfi_endproc
LFE5489:
	.p2align 4,,15
	.globl	_PMC_Add_X_I@12
	.def	_PMC_Add_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_I@12:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %edi
	movl	64(%esp), %ebx
	movl	68(%esp), %ebp
	testl	%edi, %edi
	je	L191
	testl	%ebx, %ebx
	je	L191
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L177
	movzbl	12(%ebx), %eax
	testl	%ebp, %ebp
	jg	L215
	je	L216
	cmpl	$-2147483648, %ebp
	je	L217
	movl	%ebp, %ecx
	negl	%ecx
	testb	%al, %al
	je	L196
	jle	L188
L187:
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L209
L203:
	movl	%eax, %esi
L177:
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
L215:
	.cfi_restore_state
	movl	%ebp, %ecx
	testb	%al, %al
	je	L192
	movl	8(%ebx), %edx
	jle	L218
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	jne	L203
	.p2align 4,,10
L209:
	movl	28(%esp), %eax
	movl	%eax, (%edi)
L220:
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
L216:
	.cfi_restore_state
	testb	%al, %al
	jne	L219
	movl	$_number_zero, %eax
	movl	%eax, (%edi)
	jmp	L220
	.p2align 4,,10
L192:
	movl	$1, %eax
L180:
	leal	28(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L209
	movl	%eax, %esi
	jmp	L177
	.p2align 4,,10
L219:
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L209
	movl	%eax, %esi
	jmp	L177
	.p2align 4,,10
L217:
	testb	%al, %al
	je	L194
	movl	$-2147483648, %ecx
	jg	L187
L188:
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L209
	movl	%eax, %esi
	jmp	L177
	.p2align 4,,10
L196:
	movl	$-1, %eax
	jmp	L180
	.p2align 4,,10
L218:
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L209
	movl	%eax, %esi
	jmp	L177
	.p2align 4,,10
L194:
	movl	$-1, %eax
	movl	$-2147483648, %ecx
	jmp	L180
	.p2align 4,,10
L191:
	movl	$-1, %esi
	jmp	L177
	.cfi_endproc
LFE5490:
	.p2align 4,,15
	.globl	_PMC_Add_X_L@16
	.def	_PMC_Add_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Add_X_L@16:
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
	movl	76(%esp), %eax
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	testl	%eax, %eax
	je	L235
	testl	%esi, %esi
	je	L235
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L221
	cmpl	%edi, %eax
	movzbl	12(%esi), %ecx
	movl	%ebp, %edx
	sbbl	%ebp, %eax
	movl	%edi, %eax
	jl	L259
	orl	%edi, %edx
	jne	L226
	testb	%cl, %cl
	jne	L260
	movl	$_number_zero, %eax
L227:
	movl	76(%esp), %ecx
	movl	%eax, (%ecx)
L221:
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
L259:
	.cfi_restore_state
	testb	%cl, %cl
	je	L236
	movl	8(%esi), %edx
	jle	L261
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%ebp, 4(%esp)
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	jne	L247
	.p2align 4,,10
L253:
	movl	28(%esp), %eax
	jmp	L227
	.p2align 4,,10
L226:
	leal	-2147483648(%ebp), %edx
	orl	%edi, %edx
	je	L262
	negl	%eax
	movl	%ebp, %edx
	adcl	$0, %edx
	negl	%edx
	testb	%cl, %cl
	je	L240
	jle	L232
L231:
	movl	8(%esi), %ecx
	leal	28(%esp), %esi
	movl	%eax, (%esp)
	movl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, %edx
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L253
L247:
	movl	%eax, %ebx
L263:
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
L236:
	.cfi_restore_state
	movl	$1, %ecx
L224:
	leal	28(%esp), %esi
	movl	%eax, 4(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L253
	movl	%eax, %ebx
	jmp	L263
	.p2align 4,,10
L260:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L253
	movl	%eax, %ebx
	jmp	L263
	.p2align 4,,10
L262:
	testb	%cl, %cl
	je	L238
	movl	$0, %eax
	movl	$-2147483648, %edx
	jg	L231
L232:
	movl	8(%esi), %ecx
	leal	28(%esp), %esi
	movl	%eax, (%esp)
	movl	$-1, %eax
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, %edx
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L253
	movl	%eax, %ebx
	jmp	L263
	.p2align 4,,10
L240:
	movl	$-1, %ecx
	jmp	L224
	.p2align 4,,10
L261:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, %eax
	movl	%ebp, 4(%esp)
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L253
	movl	%eax, %ebx
	jmp	L263
	.p2align 4,,10
L238:
	movl	$-1, %ecx
	xorl	%eax, %eax
	movl	$-2147483648, %edx
	jmp	L224
	.p2align 4,,10
L235:
	movl	$-1, %ebx
	jmp	L221
	.cfi_endproc
LFE5491:
	.p2align 4,,15
	.globl	_PMC_Add_X_UX@12
	.def	_PMC_Add_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_UX@12:
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
	movl	72(%esp), %ebp
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L273
	testl	%esi, %esi
	je	L273
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L289
L264:
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
L289:
	.cfi_restore_state
	leal	19(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_IsZero_UINT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L264
	cmpb	$0, 12(%esi)
	movzbl	19(%esp), %eax
	jne	L266
	testb	%al, %al
	jne	L274
	leal	24(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L280
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+20
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	L290
L280:
	movl	%eax, %ebx
L291:
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
L266:
	.cfi_restore_state
	jle	L270
	testb	%al, %al
	je	L271
L286:
	leal	20(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	jne	L280
L284:
	movl	20(%esp), %edx
L267:
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
L274:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L267
	.p2align 4,,10
L270:
	testb	%al, %al
	jne	L286
	leal	20(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L284
	movl	%eax, %ebx
	jmp	L291
	.p2align 4,,10
L271:
	leal	20(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L284
	movl	%eax, %ebx
	jmp	L291
	.p2align 4,,10
L290:
	movl	24(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	20(%esp), %edx
	movl	%eax, %esi
	testl	%eax, %eax
	je	L267
	movl	24(%esp), %eax
	movl	%esi, %ebx
	movl	%eax, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 60
	subl	$4, %esp
	.cfi_def_cfa_offset 64
	jmp	L264
	.p2align 4,,10
L273:
	movl	$-1, %ebx
	jmp	L264
	.cfi_endproc
LFE5492:
	.p2align 4,,15
	.globl	_PMC_Add_X_X@12
	.def	_PMC_Add_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Add_X_X@12:
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
	movl	72(%esp), %ebp
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L301
	testl	%esi, %esi
	je	L301
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L318
L292:
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
L318:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L292
	cmpb	$0, 12(%esi)
	movzbl	12(%edi), %eax
	je	L319
	jle	L296
	testb	%al, %al
	je	L314
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L316
L300:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	jne	L309
L312:
	movl	28(%esp), %edx
	jmp	L295
	.p2align 4,,10
L319:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L320
L295:
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
L296:
	.cfi_restore_state
	testb	%al, %al
	je	L314
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	jle	L300
L316:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L312
L309:
	movl	%eax, %ebx
	jmp	L292
	.p2align 4,,10
L314:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L312
	jmp	L309
	.p2align 4,,10
L320:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L312
	jmp	L309
	.p2align 4,,10
L301:
	movl	$-1, %ebx
	jmp	L292
	.cfi_endproc
LFE5493:
	.p2align 4,,15
	.globl	_PMC_Subtruct_I_X@12
	.def	_PMC_Subtruct_I_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_I_X@12:
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
	movl	72(%esp), %edi
	movl	64(%esp), %ebp
	movl	68(%esp), %ebx
	testl	%edi, %edi
	je	L333
	testl	%ebx, %ebx
	je	L333
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L321
	movzbl	12(%ebx), %eax
	testl	%ebp, %ebp
	jg	L354
	je	L355
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	L356
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	jle	L332
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L348
L342:
	movl	%eax, %esi
L321:
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
L354:
	.cfi_restore_state
	testb	%al, %al
	je	L357
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	jle	L330
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	L342
	.p2align 4,,10
L348:
	movl	28(%esp), %edx
L327:
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
L355:
	.cfi_restore_state
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L327
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L348
	movl	%eax, %esi
	jmp	L321
	.p2align 4,,10
L357:
	leal	28(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L348
	movl	%eax, %esi
	jmp	L321
	.p2align 4,,10
L330:
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L348
	movl	%eax, %esi
	jmp	L321
	.p2align 4,,10
L356:
	leal	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$-1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L348
	movl	%eax, %esi
	jmp	L321
	.p2align 4,,10
L332:
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L348
	movl	%eax, %esi
	jmp	L321
	.p2align 4,,10
L333:
	movl	$-1, %esi
	jmp	L321
	.cfi_endproc
LFE5494:
	.p2align 4,,15
	.globl	_PMC_Subtruct_L_X@16
	.def	_PMC_Subtruct_L_X@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_L_X@16:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	92(%esp), %eax
	movl	80(%esp), %esi
	movl	84(%esp), %edi
	movl	88(%esp), %ebp
	testl	%eax, %eax
	je	L370
	testl	%ebp, %ebp
	je	L370
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L358
	cmpl	%esi, %ebx
	movl	%ebx, %ecx
	movzbl	12(%ebp), %eax
	sbbl	%edi, %ecx
	jl	L391
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L392
	leal	-2147483648(%edi), %ecx
	movl	$0, 24(%esp)
	orl	%esi, %ecx
	movl	$-2147483648, 28(%esp)
	je	L366
	negl	%esi
	adcl	$0, %edi
	movl	%esi, 24(%esp)
	negl	%edi
	movl	%edi, 28(%esp)
L366:
	testb	%al, %al
	je	L393
	movl	8(%ebp), %edx
	movl	24(%esp), %edi
	leal	44(%esp), %eax
	movl	28(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	jle	L369
	movl	$-1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L385
L379:
	movl	%eax, %ebx
L358:
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
L391:
	.cfi_restore_state
	testb	%al, %al
	je	L394
	leal	44(%esp), %eax
	movl	8(%ebp), %edx
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	jle	L367
	movl	$-1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	L379
	.p2align 4,,10
L385:
	movl	44(%esp), %edx
	jmp	L364
	.p2align 4,,10
L392:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L395
L364:
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
L394:
	.cfi_restore_state
	leal	44(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L385
	movl	%eax, %ebx
	jmp	L358
	.p2align 4,,10
L395:
	leal	44(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L385
	movl	%eax, %ebx
	jmp	L358
	.p2align 4,,10
L367:
	movl	$1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L385
	movl	%eax, %ebx
	jmp	L358
	.p2align 4,,10
L393:
	leal	44(%esp), %eax
	movl	28(%esp), %edx
	movl	$-1, (%esp)
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L385
	movl	%eax, %ebx
	jmp	L358
	.p2align 4,,10
L369:
	movl	$1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L385
	movl	%eax, %ebx
	jmp	L358
	.p2align 4,,10
L370:
	movl	$-1, %ebx
	jmp	L358
	.cfi_endproc
LFE5495:
	.p2align 4,,15
	.globl	_PMC_Subtruct_UX_X@12
	.def	_PMC_Subtruct_UX_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_UX_X@12:
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
	movl	88(%esp), %ebp
	movl	84(%esp), %esi
	movl	80(%esp), %edi
	testl	%ebp, %ebp
	sete	%dl
	testl	%esi, %esi
	sete	%al
	orb	%al, %dl
	jne	L404
	testl	%edi, %edi
	je	L404
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L413
L396:
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
L413:
	.cfi_restore_state
	leal	39(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_IsZero_UINT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L396
	cmpb	$0, 39(%esp)
	movzbl	12(%esi), %eax
	je	L398
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L414
L399:
	movl	%edx, 0(%ebp)
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
L398:
	.cfi_restore_state
	testb	%al, %al
	jne	L400
	leal	44(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	L415
L408:
	movl	%eax, %ebx
	jmp	L396
	.p2align 4,,10
L400:
	leal	40(%esp), %eax
	movl	8(%esi), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L403
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	L408
L412:
	movl	40(%esp), %edx
	jmp	L399
	.p2align 4,,10
L414:
	leal	40(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L412
	jmp	L408
	.p2align 4,,10
L415:
	movl	44(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L399
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	movl	%eax, %ebx
	jmp	L396
	.p2align 4,,10
L403:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L412
	jmp	L408
	.p2align 4,,10
L404:
	movl	$-1, %ebx
	jmp	L396
	.cfi_endproc
LFE5496:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_I@12
	.def	_PMC_Subtruct_X_I@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_I@12:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %edi
	movl	64(%esp), %ebx
	movl	68(%esp), %ebp
	testl	%edi, %edi
	je	L430
	testl	%ebx, %ebx
	je	L430
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L416
	movzbl	12(%ebx), %eax
	testl	%ebp, %ebp
	jg	L454
	je	L455
	cmpl	$-2147483648, %ebp
	je	L456
	movl	%ebp, %ecx
	negl	%ecx
	testb	%al, %al
	je	L435
	jle	L427
L426:
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L448
L442:
	movl	%eax, %esi
L416:
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
L454:
	.cfi_restore_state
	movl	%ebp, %ecx
	testb	%al, %al
	je	L431
	movl	8(%ebx), %edx
	jle	L457
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	L442
	.p2align 4,,10
L448:
	movl	28(%esp), %eax
	movl	%eax, (%edi)
L459:
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
L455:
	.cfi_restore_state
	testb	%al, %al
	jne	L458
	movl	$_number_zero, %eax
	movl	%eax, (%edi)
	jmp	L459
	.p2align 4,,10
L431:
	movl	$-1, %eax
L419:
	leal	28(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L448
	movl	%eax, %esi
	jmp	L416
	.p2align 4,,10
L458:
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L448
	movl	%eax, %esi
	jmp	L416
	.p2align 4,,10
L456:
	testb	%al, %al
	je	L433
	movl	$-2147483648, %ecx
	jg	L426
L427:
	leal	28(%esp), %eax
	movl	8(%ebx), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L448
	movl	%eax, %esi
	jmp	L416
	.p2align 4,,10
L435:
	movl	$1, %eax
	jmp	L419
	.p2align 4,,10
L457:
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L448
	movl	%eax, %esi
	jmp	L416
	.p2align 4,,10
L433:
	movl	$1, %eax
	movl	$-2147483648, %ecx
	jmp	L419
	.p2align 4,,10
L430:
	movl	$-1, %esi
	jmp	L416
	.cfi_endproc
LFE5497:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_L@16
	.def	_PMC_Subtruct_X_L@16;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_L@16:
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
	movl	76(%esp), %eax
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	testl	%eax, %eax
	je	L474
	testl	%esi, %esi
	je	L474
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L460
	cmpl	%edi, %eax
	movzbl	12(%esi), %ecx
	movl	%ebp, %edx
	sbbl	%ebp, %eax
	movl	%edi, %eax
	jl	L498
	orl	%edi, %edx
	jne	L465
	testb	%cl, %cl
	jne	L499
	movl	$_number_zero, %eax
L466:
	movl	76(%esp), %ecx
	movl	%eax, (%ecx)
L460:
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
L498:
	.cfi_restore_state
	testb	%cl, %cl
	je	L475
	movl	8(%esi), %edx
	jle	L500
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%ebp, 4(%esp)
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	L486
	.p2align 4,,10
L492:
	movl	28(%esp), %eax
	jmp	L466
	.p2align 4,,10
L465:
	leal	-2147483648(%ebp), %edx
	orl	%edi, %edx
	je	L501
	negl	%eax
	movl	%ebp, %edx
	adcl	$0, %edx
	negl	%edx
	testb	%cl, %cl
	je	L479
	jle	L471
L470:
	movl	8(%esi), %ecx
	leal	28(%esp), %esi
	movl	%eax, (%esp)
	movl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, %edx
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L492
L486:
	movl	%eax, %ebx
L502:
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
L475:
	.cfi_restore_state
	movl	$-1, %ecx
L463:
	leal	28(%esp), %esi
	movl	%eax, 4(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L492
	movl	%eax, %ebx
	jmp	L502
	.p2align 4,,10
L499:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L492
	movl	%eax, %ebx
	jmp	L502
	.p2align 4,,10
L501:
	testb	%cl, %cl
	je	L477
	movl	$0, %eax
	movl	$-2147483648, %edx
	jg	L470
L471:
	movl	8(%esi), %ecx
	leal	28(%esp), %esi
	movl	%eax, (%esp)
	movl	$-1, %eax
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, %edx
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L492
	movl	%eax, %ebx
	jmp	L502
	.p2align 4,,10
L479:
	movl	$1, %ecx
	jmp	L463
	.p2align 4,,10
L500:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, %eax
	movl	%ebp, 4(%esp)
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L492
	movl	%eax, %ebx
	jmp	L502
	.p2align 4,,10
L477:
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	$-2147483648, %edx
	jmp	L463
	.p2align 4,,10
L474:
	movl	$-1, %ebx
	jmp	L460
	.cfi_endproc
LFE5498:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_UX@12
	.def	_PMC_Subtruct_X_UX@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_UX@12:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	88(%esp), %ebp
	movl	84(%esp), %edi
	movl	80(%esp), %esi
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L512
	testl	%esi, %esi
	je	L512
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L526
L503:
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
L526:
	.cfi_restore_state
	leal	39(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_IsZero_UINT
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L503
	cmpb	$0, 12(%esi)
	movzbl	39(%esp), %eax
	jne	L505
	testb	%al, %al
	jne	L513
	leal	44(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+44
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	L527
L517:
	movl	%eax, %ebx
L528:
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
L505:
	.cfi_restore_state
	jle	L509
	testb	%al, %al
	je	L510
L523:
	leal	40(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	jne	L517
L521:
	movl	40(%esp), %edx
L506:
	movl	%edx, 0(%ebp)
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
L513:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L506
	.p2align 4,,10
L509:
	testb	%al, %al
	jne	L523
	leal	40(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L521
	movl	%eax, %ebx
	jmp	L528
	.p2align 4,,10
L510:
	leal	40(%esp), %eax
	movl	8(%esi), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L521
	movl	%eax, %ebx
	jmp	L528
	.p2align 4,,10
L527:
	movl	44(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L506
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	movl	%eax, %ebx
	jmp	L528
	.p2align 4,,10
L512:
	movl	$-1, %ebx
	jmp	L503
	.cfi_endproc
LFE5499:
	.p2align 4,,15
	.globl	_PMC_Subtruct_X_X@12
	.def	_PMC_Subtruct_X_X@12;	.scl	2;	.type	32;	.endef
_PMC_Subtruct_X_X@12:
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
	jne	L538
	testl	%esi, %esi
	je	L538
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L555
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
	ret	$12
	.p2align 4,,10
L555:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L529
	cmpb	$0, 12(%esi)
	movzbl	12(%edi), %eax
	je	L556
	jle	L533
	testb	%al, %al
	je	L551
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L553
L537:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	L546
L549:
	movl	28(%esp), %edx
	jmp	L532
	.p2align 4,,10
L556:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L557
L532:
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
L533:
	.cfi_restore_state
	testb	%al, %al
	je	L551
	leal	28(%esp), %eax
	movl	8(%edi), %ecx
	movl	8(%esi), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	jle	L537
L553:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L549
L546:
	movl	%eax, %ebx
	jmp	L529
	.p2align 4,,10
L551:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L549
	jmp	L546
	.p2align 4,,10
L557:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L549
	jmp	L546
	.p2align 4,,10
L538:
	movl	$-1, %ebx
	jmp	L529
	.cfi_endproc
LFE5500:
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	_IsZero_UINT;	.scl	2;	.type	32;	.endef
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
