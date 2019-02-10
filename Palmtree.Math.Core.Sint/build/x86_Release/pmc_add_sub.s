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
	call	*_ep_uint+208
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
	call	*_ep_uint+80
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
	call	*_ep_uint+72
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
	call	*_ep_uint+60
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
	call	*_ep_uint+212
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
	call	*_ep_uint+84
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
	call	*_ep_uint+76
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
	call	*_ep_uint+64
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
	call	*_ep_uint+68
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
	call	*_ep_uint+216
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
	call	*_ep_uint+88
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
	call	*_ep_uint+88
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
	movzbl	16(%ebx), %eax
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
	movl	12(%ebx), %edx
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
	movl	12(%ebx), %edx
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
	movzbl	16(%ebp), %eax
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
	movl	12(%ebp), %edx
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
	movl	12(%ebp), %edx
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
	movl	68(%esp), %ebx
	testl	%edi, %edi
	je	L163
	testl	%ebx, %ebx
	je	L163
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L155
	movl	64(%esp), %ecx
	movzbl	16(%ebx), %eax
	testb	$1, (%ecx)
	je	L157
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L174
L158:
	movl	%edx, (%edi)
L155:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L157:
	.cfi_restore_state
	testb	%al, %al
	je	L175
	leal	40(%esp), %eax
	movl	12(%ebx), %ecx
	movl	64(%esp), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L162
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	jne	L167
L171:
	movl	40(%esp), %edx
	movl	%edx, (%edi)
	jmp	L155
	.p2align 4,,10
L175:
	leal	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	*_ep_uint+32
	.cfi_def_cfa_offset 56
	subl	$8, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	jne	L167
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
	.p2align 4,,10
L167:
	movl	%eax, %esi
L176:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L174:
	.cfi_restore_state
	leal	40(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L171
	movl	%eax, %esi
	jmp	L176
	.p2align 4,,10
L162:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L171
	movl	%eax, %esi
	jmp	L176
	.p2align 4,,10
L163:
	movl	$-1, %esi
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
	movzbl	16(%ebx), %eax
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
	movl	12(%ebx), %edx
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
	movl	12(%ebx), %edx
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
	movl	12(%ebx), %edx
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
	movzbl	16(%esi), %ecx
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
	movl	12(%esi), %edx
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
	movl	12(%esi), %ecx
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
	movl	12(%esi), %ecx
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	88(%esp), %ebp
	movl	84(%esp), %edi
	movl	80(%esp), %ebx
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L273
	testl	%ebx, %ebx
	je	L273
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L264
	movzbl	(%edi), %eax
	andl	$1, %eax
	cmpb	$0, 16(%ebx)
	jne	L266
	testb	%al, %al
	jne	L274
	leal	44(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+32
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L278
	movl	44(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L267
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	.p2align 4,,10
L278:
	movl	%eax, %esi
L264:
	addl	$60, %esp
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
L266:
	.cfi_restore_state
	jle	L270
	testb	%al, %al
	jne	L284
	leal	40(%esp), %eax
	movl	12(%ebx), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	jne	L278
L282:
	movl	40(%esp), %edx
L267:
	movl	%edx, 0(%ebp)
	addl	$60, %esp
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
L274:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L267
	.p2align 4,,10
L270:
	testb	%al, %al
	jne	L284
	leal	40(%esp), %eax
	movl	12(%ebx), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L282
	movl	%eax, %esi
	jmp	L264
	.p2align 4,,10
L284:
	leal	40(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L282
	movl	%eax, %esi
	jmp	L264
	.p2align 4,,10
L273:
	movl	$-1, %esi
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
	jne	L296
	testl	%esi, %esi
	je	L296
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L313
L287:
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
L313:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L287
	cmpb	$0, 16(%esi)
	movzbl	16(%edi), %eax
	je	L314
	jle	L291
	testb	%al, %al
	je	L309
	leal	28(%esp), %eax
	movl	12(%edi), %ecx
	movl	12(%esi), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L311
L295:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	jne	L304
L307:
	movl	28(%esp), %edx
	jmp	L290
	.p2align 4,,10
L314:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L315
L290:
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
L291:
	.cfi_restore_state
	testb	%al, %al
	je	L309
	leal	28(%esp), %eax
	movl	12(%edi), %ecx
	movl	12(%esi), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	jle	L295
L311:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	je	L307
L304:
	movl	%eax, %ebx
	jmp	L287
	.p2align 4,,10
L309:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L307
	jmp	L304
	.p2align 4,,10
L315:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L307
	jmp	L304
	.p2align 4,,10
L296:
	movl	$-1, %ebx
	jmp	L287
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
	je	L328
	testl	%ebx, %ebx
	je	L328
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L316
	movzbl	16(%ebx), %eax
	testl	%ebp, %ebp
	jg	L349
	je	L350
	movl	%ebp, %edx
	movl	$-2147483648, %ecx
	negl	%edx
	cmpl	$-2147483648, %ebp
	cmovne	%edx, %ecx
	testb	%al, %al
	je	L351
	leal	28(%esp), %eax
	movl	12(%ebx), %edx
	movl	%eax, (%esp)
	jle	L327
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L343
L337:
	movl	%eax, %esi
L316:
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
L349:
	.cfi_restore_state
	testb	%al, %al
	je	L352
	leal	28(%esp), %eax
	movl	12(%ebx), %edx
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	jle	L325
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	L337
	.p2align 4,,10
L343:
	movl	28(%esp), %edx
L322:
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
L350:
	.cfi_restore_state
	movl	$_number_zero, %edx
	testb	%al, %al
	je	L322
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L343
	movl	%eax, %esi
	jmp	L316
	.p2align 4,,10
L352:
	leal	28(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L343
	movl	%eax, %esi
	jmp	L316
	.p2align 4,,10
L325:
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L343
	movl	%eax, %esi
	jmp	L316
	.p2align 4,,10
L351:
	leal	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$-1, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L343
	movl	%eax, %esi
	jmp	L316
	.p2align 4,,10
L327:
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L343
	movl	%eax, %esi
	jmp	L316
	.p2align 4,,10
L328:
	movl	$-1, %esi
	jmp	L316
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
	je	L365
	testl	%ebp, %ebp
	je	L365
	movl	%ebp, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L353
	cmpl	%esi, %ebx
	movl	%ebx, %ecx
	movzbl	16(%ebp), %eax
	sbbl	%edi, %ecx
	jl	L386
	movl	%edi, %ecx
	orl	%esi, %ecx
	je	L387
	leal	-2147483648(%edi), %ecx
	movl	$0, 24(%esp)
	orl	%esi, %ecx
	movl	$-2147483648, 28(%esp)
	je	L361
	negl	%esi
	adcl	$0, %edi
	movl	%esi, 24(%esp)
	negl	%edi
	movl	%edi, 28(%esp)
L361:
	testb	%al, %al
	je	L388
	movl	12(%ebp), %edx
	movl	24(%esp), %edi
	leal	44(%esp), %eax
	movl	28(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
	jle	L364
	movl	$-1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L380
L374:
	movl	%eax, %ebx
L353:
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
L386:
	.cfi_restore_state
	testb	%al, %al
	je	L389
	leal	44(%esp), %eax
	movl	12(%ebp), %edx
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	jle	L362
	movl	$-1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	L374
	.p2align 4,,10
L380:
	movl	44(%esp), %edx
	jmp	L359
	.p2align 4,,10
L387:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L390
L359:
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
L389:
	.cfi_restore_state
	leal	44(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$1, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L380
	movl	%eax, %ebx
	jmp	L353
	.p2align 4,,10
L390:
	leal	44(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L380
	movl	%eax, %ebx
	jmp	L353
	.p2align 4,,10
L362:
	movl	$1, %eax
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L380
	movl	%eax, %ebx
	jmp	L353
	.p2align 4,,10
L388:
	leal	44(%esp), %eax
	movl	28(%esp), %edx
	movl	$-1, (%esp)
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L380
	movl	%eax, %ebx
	jmp	L353
	.p2align 4,,10
L364:
	movl	$1, %eax
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L380
	movl	%eax, %ebx
	jmp	L353
	.p2align 4,,10
L365:
	movl	$-1, %ebx
	jmp	L353
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
	movl	84(%esp), %ebx
	movl	80(%esp), %edi
	testl	%ebp, %ebp
	sete	%dl
	testl	%ebx, %ebx
	sete	%al
	orb	%al, %dl
	jne	L399
	testl	%edi, %edi
	je	L399
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L391
	movzbl	16(%ebx), %eax
	testb	$1, (%edi)
	je	L393
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L410
L394:
	movl	%edx, 0(%ebp)
L391:
	addl	$60, %esp
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
L393:
	.cfi_restore_state
	testb	%al, %al
	je	L411
	leal	40(%esp), %eax
	movl	12(%ebx), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L398
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	L403
L407:
	movl	40(%esp), %edx
	jmp	L394
	.p2align 4,,10
L411:
	leal	44(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+32
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L403
	movl	44(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L394
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	.p2align 4,,10
L403:
	movl	%eax, %esi
L412:
	addl	$60, %esp
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
L410:
	.cfi_restore_state
	leal	40(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L407
	movl	%eax, %esi
	jmp	L412
	.p2align 4,,10
L398:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L407
	movl	%eax, %esi
	jmp	L412
	.p2align 4,,10
L399:
	movl	$-1, %esi
	jmp	L391
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
	je	L427
	testl	%ebx, %ebx
	je	L427
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L413
	movzbl	16(%ebx), %eax
	testl	%ebp, %ebp
	jg	L451
	je	L452
	cmpl	$-2147483648, %ebp
	je	L453
	movl	%ebp, %ecx
	negl	%ecx
	testb	%al, %al
	je	L432
	jle	L424
L423:
	leal	28(%esp), %eax
	movl	12(%ebx), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L445
L439:
	movl	%eax, %esi
L413:
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
L451:
	.cfi_restore_state
	movl	%ebp, %ecx
	testb	%al, %al
	je	L428
	movl	12(%ebx), %edx
	jle	L454
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	jne	L439
	.p2align 4,,10
L445:
	movl	28(%esp), %eax
	movl	%eax, (%edi)
L456:
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
L452:
	.cfi_restore_state
	testb	%al, %al
	jne	L455
	movl	$_number_zero, %eax
	movl	%eax, (%edi)
	jmp	L456
	.p2align 4,,10
L428:
	movl	$-1, %eax
L416:
	leal	28(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_From_I_Imp
	testl	%eax, %eax
	je	L445
	movl	%eax, %esi
	jmp	L413
	.p2align 4,,10
L455:
	leal	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L445
	movl	%eax, %esi
	jmp	L413
	.p2align 4,,10
L453:
	testb	%al, %al
	je	L430
	movl	$-2147483648, %ecx
	jg	L423
L424:
	leal	28(%esp), %eax
	movl	12(%ebx), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_SubtructU_X_I_Imp
	testl	%eax, %eax
	je	L445
	movl	%eax, %esi
	jmp	L413
	.p2align 4,,10
L432:
	movl	$1, %eax
	jmp	L416
	.p2align 4,,10
L454:
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_I_Imp
	testl	%eax, %eax
	je	L445
	movl	%eax, %esi
	jmp	L413
	.p2align 4,,10
L430:
	movl	$1, %eax
	movl	$-2147483648, %ecx
	jmp	L416
	.p2align 4,,10
L427:
	movl	$-1, %esi
	jmp	L413
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
	je	L471
	testl	%esi, %esi
	je	L471
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L457
	cmpl	%edi, %eax
	movzbl	16(%esi), %ecx
	movl	%ebp, %edx
	sbbl	%ebp, %eax
	movl	%edi, %eax
	jl	L495
	orl	%edi, %edx
	jne	L462
	testb	%cl, %cl
	jne	L496
	movl	$_number_zero, %eax
L463:
	movl	76(%esp), %ecx
	movl	%eax, (%ecx)
L457:
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
L495:
	.cfi_restore_state
	testb	%cl, %cl
	je	L472
	movl	12(%esi), %edx
	jle	L497
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%ebp, 4(%esp)
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	jne	L483
	.p2align 4,,10
L489:
	movl	28(%esp), %eax
	jmp	L463
	.p2align 4,,10
L462:
	leal	-2147483648(%ebp), %edx
	orl	%edi, %edx
	je	L498
	negl	%eax
	movl	%ebp, %edx
	adcl	$0, %edx
	negl	%edx
	testb	%cl, %cl
	je	L476
	jle	L468
L467:
	movl	12(%esi), %ecx
	leal	28(%esp), %esi
	movl	%eax, (%esp)
	movl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, %edx
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L489
L483:
	movl	%eax, %ebx
L499:
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
L472:
	.cfi_restore_state
	movl	$-1, %ecx
L460:
	leal	28(%esp), %esi
	movl	%eax, 4(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	_From_L_Imp
	testl	%eax, %eax
	je	L489
	movl	%eax, %ebx
	jmp	L499
	.p2align 4,,10
L496:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L489
	movl	%eax, %ebx
	jmp	L499
	.p2align 4,,10
L498:
	testb	%cl, %cl
	je	L474
	movl	$0, %eax
	movl	$-2147483648, %edx
	jg	L467
L468:
	movl	12(%esi), %ecx
	leal	28(%esp), %esi
	movl	%eax, (%esp)
	movl	$-1, %eax
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, %edx
	call	_SubtructU_X_L_Imp
	testl	%eax, %eax
	je	L489
	movl	%eax, %ebx
	jmp	L499
	.p2align 4,,10
L476:
	movl	$1, %ecx
	jmp	L460
	.p2align 4,,10
L497:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, %eax
	movl	%ebp, 4(%esp)
	call	_AddU_X_L_Imp
	testl	%eax, %eax
	je	L489
	movl	%eax, %ebx
	jmp	L499
	.p2align 4,,10
L474:
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	$-2147483648, %edx
	jmp	L460
	.p2align 4,,10
L471:
	movl	$-1, %ebx
	jmp	L457
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
	movl	80(%esp), %ebx
	testl	%ebp, %ebp
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orb	%al, %dl
	jne	L509
	testl	%ebx, %ebx
	je	L509
	movl	%ebx, (%esp)
	call	_CheckNumber
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L500
	movzbl	(%edi), %eax
	andl	$1, %eax
	cmpb	$0, 16(%ebx)
	jne	L502
	testb	%al, %al
	jne	L510
	leal	44(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*_ep_uint+32
	.cfi_def_cfa_offset 72
	subl	$8, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	jne	L514
	movl	44(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, 8(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	40(%esp), %edx
	testl	%eax, %eax
	je	L503
	movl	44(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, (%esp)
	call	*_ep_uint+16
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	28(%esp), %eax
	.p2align 4,,10
L514:
	movl	%eax, %esi
L500:
	addl	$60, %esp
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
L502:
	.cfi_restore_state
	jle	L506
	testb	%al, %al
	jne	L520
	leal	40(%esp), %eax
	movl	12(%ebx), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$1, %eax
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	L514
L518:
	movl	40(%esp), %edx
L503:
	movl	%edx, 0(%ebp)
	addl	$60, %esp
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
L510:
	.cfi_restore_state
	movl	$_number_zero, %edx
	jmp	L503
	.p2align 4,,10
L506:
	testb	%al, %al
	jne	L520
	leal	40(%esp), %eax
	movl	12(%ebx), %edx
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L518
	movl	%eax, %esi
	jmp	L500
	.p2align 4,,10
L520:
	leal	40(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L518
	movl	%eax, %esi
	jmp	L500
	.p2align 4,,10
L509:
	movl	$-1, %esi
	jmp	L500
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
	jne	L532
	testl	%esi, %esi
	je	L532
	movl	%esi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L549
L523:
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
L549:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	_CheckNumber
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L523
	cmpb	$0, 16(%esi)
	movzbl	16(%edi), %eax
	je	L550
	jle	L527
	testb	%al, %al
	je	L545
	leal	28(%esp), %eax
	movl	12(%edi), %ecx
	movl	12(%esi), %edx
	movl	%eax, (%esp)
	movl	$1, %eax
	jle	L547
L531:
	call	_SubtructU_X_X_Imp
	testl	%eax, %eax
	jne	L540
L543:
	movl	28(%esp), %edx
	jmp	L526
	.p2align 4,,10
L550:
	movl	$_number_zero, %edx
	testb	%al, %al
	jne	L551
L526:
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
L527:
	.cfi_restore_state
	testb	%al, %al
	je	L545
	leal	28(%esp), %eax
	movl	12(%edi), %ecx
	movl	12(%esi), %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	jle	L531
L547:
	call	_AddU_X_X_Imp
	testl	%eax, %eax
	je	L543
L540:
	movl	%eax, %ebx
	jmp	L523
	.p2align 4,,10
L545:
	leal	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_DuplicateNumber
	testl	%eax, %eax
	je	L543
	jmp	L540
	.p2align 4,,10
L551:
	leal	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_Negate_Imp
	testl	%eax, %eax
	je	L543
	jmp	L540
	.p2align 4,,10
L532:
	movl	$-1, %ebx
	jmp	L523
	.cfi_endproc
LFE5500:
	.comm	_uint_number_one, 4, 2
	.comm	_uint_number_zero, 4, 2
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
	.def	_From_I_Imp;	.scl	2;	.type	32;	.endef
	.def	_From_L_Imp;	.scl	2;	.type	32;	.endef
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
