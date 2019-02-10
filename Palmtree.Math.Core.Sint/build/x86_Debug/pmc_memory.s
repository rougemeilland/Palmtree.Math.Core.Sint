	.file	"pmc_memory.c"
	.text
Ltext0:
	.comm	_uint_number_zero, 4, 2
	.comm	_uint_number_one, 4, 2
	.comm	_hLocalHeap, 4, 2
	.comm	_number_zero, 24, 2
	.comm	_number_one, 24, 2
	.comm	_number_minus_one, 24, 2
	.def	_ClearNumberHeader;	.scl	3;	.type	32;	.endef
_ClearNumberHeader:
LFB4233:
	.file 1 "../pmc_memory.c"
	.loc 1 53 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
LBB2:
	.loc 1 68 24
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 69 20
	movl	-4(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 70 16
	movl	-4(%ebp), %eax
	addl	$4, %eax
	.loc 1 70 20
	movl	$0, (%eax)
	.loc 1 71 16
	movl	-4(%ebp), %eax
	addl	$8, %eax
	.loc 1 71 20
	movl	$0, (%eax)
	.loc 1 72 16
	movl	-4(%ebp), %eax
	addl	$12, %eax
	.loc 1 72 20
	movl	$0, (%eax)
	.loc 1 73 16
	movl	-4(%ebp), %eax
	addl	$16, %eax
	.loc 1 73 20
	movl	$0, (%eax)
	.loc 1 74 16
	movl	-4(%ebp), %eax
	addl	$20, %eax
	.loc 1 74 20
	movl	$0, (%eax)
LBE2:
	.loc 1 89 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4233:
	.def	_FillNumberHeader;	.scl	3;	.type	32;	.endef
_FillNumberHeader:
LFB4234:
	.loc 1 92 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
LBB3:
	.loc 1 107 24
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 108 20
	movl	-4(%ebp), %eax
	movl	$-858993460, (%eax)
	.loc 1 109 16
	movl	-4(%ebp), %eax
	addl	$4, %eax
	.loc 1 109 20
	movl	$-858993460, (%eax)
	.loc 1 110 16
	movl	-4(%ebp), %eax
	addl	$8, %eax
	.loc 1 110 20
	movl	$-858993460, (%eax)
	.loc 1 111 16
	movl	-4(%ebp), %eax
	addl	$12, %eax
	.loc 1 111 20
	movl	$-858993460, (%eax)
	.loc 1 112 16
	movl	-4(%ebp), %eax
	addl	$16, %eax
	.loc 1 112 20
	movl	$-858993460, (%eax)
	.loc 1 113 16
	movl	-4(%ebp), %eax
	addl	$20, %eax
	.loc 1 113 20
	movl	$-858993460, (%eax)
LBE3:
	.loc 1 128 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4234:
	.def	_InitializeNumber;	.scl	3;	.type	32;	.endef
_InitializeNumber:
LFB4235:
	.loc 1 131 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	12(%ebp), %eax
	movb	%al, -4(%ebp)
	.loc 1 132 5
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ClearNumberHeader
	.loc 1 133 19
	movl	8(%ebp), %eax
	movl	$1231244656, 4(%eax)
	.loc 1 134 19
	movl	8(%ebp), %eax
	movl	$1951287667, 8(%eax)
	.loc 1 135 13
	movl	8(%ebp), %eax
	movzbl	-4(%ebp), %edx
	movb	%dl, 16(%eax)
	.loc 1 136 12
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%eax)
	.loc 1 137 28
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	.loc 1 137 16
	movl	8(%ebp), %edx
	andl	$1, %eax
	leal	0(,%eax,8), %ecx
	movzbl	(%edx), %eax
	andl	$-9, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	.loc 1 138 32
	cmpb	$0, -4(%ebp)
	jns	L4
	.loc 1 138 32 is_stmt 0 discriminator 1
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	L4
	.loc 1 138 32 discriminator 3
	movl	$1, %eax
	jmp	L5
L4:
	.loc 1 138 32 discriminator 4
	movl	$0, %eax
L5:
	.loc 1 138 32 discriminator 6
	andl	$1, %eax
	.loc 1 138 21 is_stmt 1 discriminator 6
	movl	8(%ebp), %edx
	andl	$1, %eax
	leal	0(,%eax,4), %ecx
	movzbl	(%edx), %eax
	andl	$-5, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	.loc 1 139 26 discriminator 6
	cmpb	$0, -4(%ebp)
	jle	L6
	.loc 1 139 26 is_stmt 0 discriminator 1
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	L6
	.loc 1 139 26 discriminator 3
	movl	$1, %eax
	jmp	L7
L6:
	.loc 1 139 26 discriminator 4
	movl	$0, %eax
L7:
	.loc 1 139 26 discriminator 6
	andl	$1, %eax
	.loc 1 139 15 is_stmt 1 discriminator 6
	movl	8(%ebp), %edx
	andl	$1, %eax
	leal	(%eax,%eax), %ecx
	movzbl	(%edx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	.loc 1 140 35 discriminator 6
	cmpb	$0, -4(%ebp)
	jle	L8
	.loc 1 140 35 is_stmt 0 discriminator 1
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	L8
	.loc 1 140 35 discriminator 3
	movl	$1, %eax
	jmp	L9
L8:
	.loc 1 140 35 discriminator 4
	movl	$0, %eax
L9:
	.loc 1 140 35 discriminator 6
	andl	$1, %eax
	.loc 1 140 24 is_stmt 1 discriminator 6
	movl	8(%ebp), %edx
	andl	$1, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movzbl	(%edx), %eax
	andl	$-17, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	.loc 1 141 28 discriminator 6
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	.loc 1 141 16 discriminator 6
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	(%eax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, (%eax)
	.loc 1 144 8 discriminator 6
	cmpb	$-1, -4(%ebp)
	je	L10
	.loc 1 144 20 discriminator 1
	cmpb	$0, -4(%ebp)
	je	L10
	.loc 1 144 33 discriminator 2
	cmpb	$1, -4(%ebp)
	je	L10
	.loc 1 145 16
	movl	$-256, %eax
	jmp	L11
L10:
	.loc 1 147 8
	cmpb	$0, -4(%ebp)
	je	L12
	.loc 1 147 19 discriminator 1
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L12
	.loc 1 148 16
	movl	$-256, %eax
	jmp	L11
L12:
	.loc 1 150 8
	cmpb	$0, -4(%ebp)
	jne	L13
	.loc 1 150 22 discriminator 1
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 1 150 19 discriminator 1
	testb	%al, %al
	jne	L13
	.loc 1 151 16
	movl	$-256, %eax
	jmp	L11
L13:
	.loc 1 154 12
	movl	$0, %eax
L11:
	.loc 1 155 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4235:
	.def	_CleanUpNumber;	.scl	3;	.type	32;	.endef
_CleanUpNumber:
LFB4236:
	.loc 1 158 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 159 12
	movl	_ep_uint+16, %eax
	.loc 1 159 5
	movl	8(%ebp), %edx
	movl	12(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL0:
	subl	$4, %esp
	.loc 1 160 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4236:
	.globl	_AttatchNumber
	.def	_AttatchNumber;	.scl	2;	.type	32;	.endef
_AttatchNumber:
LFB4237:
	.loc 1 163 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	12(%ebp), %eax
	movb	%al, -20(%ebp)
	.loc 1 164 30
	movsbl	-20(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_InitializeNumber
	movl	%eax, -4(%ebp)
	.loc 1 165 8
	cmpl	$0, -4(%ebp)
	je	L16
	.loc 1 166 16
	movl	-4(%ebp), %eax
	jmp	L17
L16:
	.loc 1 167 18
	movl	8(%ebp), %eax
	movzbl	20(%eax), %edx
	orl	$1, %edx
	movb	%dl, 20(%eax)
	.loc 1 168 12
	movl	$0, %eax
L17:
	.loc 1 169 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4237:
	.globl	_AllocateNumber
	.def	_AllocateNumber;	.scl	2;	.type	32;	.endef
_AllocateNumber:
LFB4238:
	.loc 1 172 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movb	%al, -28(%ebp)
	.loc 1 173 40
	movl	_hLocalHeap, %eax
	movl	$24, 8(%esp)
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__HeapAlloc@12, %eax
	call	*%eax
LVL1:
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	.loc 1 174 8
	cmpl	$0, -12(%ebp)
	jne	L19
	.loc 1 175 16
	movl	$-5, %eax
	jmp	L20
L19:
	.loc 1 176 30
	movsbl	-28(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_InitializeNumber
	movl	%eax, -16(%ebp)
	.loc 1 177 8
	cmpl	$0, -16(%ebp)
	je	L21
	.loc 1 178 16
	movl	-16(%ebp), %eax
	jmp	L20
L21:
	.loc 1 179 18
	movl	-12(%ebp), %eax
	movzbl	20(%eax), %edx
	andl	$-2, %edx
	movb	%dl, 20(%eax)
	.loc 1 180 9
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 181 12
	movl	$0, %eax
L20:
	.loc 1 182 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4238:
	.globl	_DetatchNumber
	.def	_DetatchNumber;	.scl	2;	.type	32;	.endef
_DetatchNumber:
LFB4239:
	.loc 1 185 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 186 8
	cmpl	$0, 8(%ebp)
	je	L26
	.loc 1 186 21 discriminator 1
	movl	8(%ebp), %eax
	movzbl	20(%eax), %eax
	andl	$1, %eax
	.loc 1 186 18 discriminator 1
	testb	%al, %al
	je	L26
	.loc 1 188 5
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_CleanUpNumber
	jmp	L22
L26:
	.loc 1 187 9
	nop
L22:
	.loc 1 189 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4239:
	.globl	_DeallocateNumber
	.def	_DeallocateNumber;	.scl	2;	.type	32;	.endef
_DeallocateNumber:
LFB4240:
	.loc 1 192 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 193 8
	cmpl	$0, 8(%ebp)
	je	L31
	.loc 1 193 18 discriminator 1
	movl	8(%ebp), %eax
	movzbl	20(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	L31
	.loc 1 195 5
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_CleanUpNumber
	.loc 1 196 5
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_FillNumberHeader
	.loc 1 197 5
	movl	_hLocalHeap, %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	__imp__HeapFree@12, %eax
	call	*%eax
LVL2:
	subl	$12, %esp
	jmp	L27
L31:
	.loc 1 194 9
	nop
L27:
	.loc 1 198 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4240:
	.globl	_CheckNumber
	.def	_CheckNumber;	.scl	2;	.type	32;	.endef
_CheckNumber:
LFB4241:
	.loc 1 201 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 202 10
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	.loc 1 202 8
	cmpl	$1231244656, %eax
	jne	L33
	.loc 1 202 121 discriminator 1
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 202 117 discriminator 1
	cmpl	$1951287667, %eax
	je	L34
L33:
	.loc 1 203 16
	movl	$-257, %eax
	jmp	L35
L34:
	.loc 1 204 12
	movl	$0, %eax
L35:
	.loc 1 205 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4241:
	.globl	_DuplicateNumber
	.def	_DuplicateNumber;	.scl	2;	.type	32;	.endef
_DuplicateNumber:
LFB4242:
	.loc 1 208 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 209 9
	movl	8(%ebp), %eax
	movzbl	20(%eax), %eax
	andl	$1, %eax
	.loc 1 209 8
	testb	%al, %al
	je	L37
	.loc 1 211 13
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 212 16
	movl	$0, %eax
	jmp	L44
L37:
	.loc 1 214 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 1 214 8
	testb	%al, %al
	je	L39
	.loc 1 216 13
	movl	12(%ebp), %eax
	movl	$_number_zero, (%eax)
	.loc 1 217 16
	movl	$0, %eax
	jmp	L44
L39:
	.loc 1 219 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	.loc 1 219 8
	testb	%al, %al
	je	L40
	.loc 1 221 13
	movl	12(%ebp), %eax
	movl	$_number_one, (%eax)
	.loc 1 222 16
	movl	$0, %eax
	jmp	L44
L40:
	.loc 1 224 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	.loc 1 224 8
	testb	%al, %al
	je	L41
	.loc 1 226 13
	movl	12(%ebp), %eax
	movl	$_number_minus_one, (%eax)
	.loc 1 227 16
	movl	$0, %eax
	jmp	L44
L41:
	.loc 1 231 26
	movl	_ep_uint+32, %eax
	.loc 1 231 19
	movl	8(%ebp), %edx
	movl	12(%edx), %edx
	leal	-16(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL3:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 1 231 8
	cmpl	$0, -12(%ebp)
	je	L42
	.loc 1 232 16
	movl	-12(%ebp), %eax
	jmp	L44
L42:
	.loc 1 234 19
	movl	-16(%ebp), %edx
	.loc 1 234 39
	movl	8(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 1 234 19
	movsbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 1 234 8
	cmpl	$0, -12(%ebp)
	je	L43
	.loc 1 236 16
	movl	_ep_uint+16, %eax
	.loc 1 236 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL4:
	subl	$4, %esp
	.loc 1 237 16
	movl	-12(%ebp), %eax
	jmp	L44
L43:
	.loc 1 239 9
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 240 12
	movl	$0, %eax
L44:
	.loc 1 241 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4242:
	.globl	_Negate_Imp
	.def	_Negate_Imp;	.scl	2;	.type	32;	.endef
_Negate_Imp:
LFB4243:
	.loc 1 244 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 245 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	.loc 1 245 8
	testb	%al, %al
	je	L46
	.loc 1 247 13
	movl	12(%ebp), %eax
	movl	$_number_zero, (%eax)
	.loc 1 248 16
	movl	$0, %eax
	jmp	L52
L46:
	.loc 1 250 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	.loc 1 250 8
	testb	%al, %al
	je	L48
	.loc 1 252 13
	movl	12(%ebp), %eax
	movl	$_number_minus_one, (%eax)
	.loc 1 253 16
	movl	$0, %eax
	jmp	L52
L48:
	.loc 1 255 9
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	.loc 1 255 8
	testb	%al, %al
	je	L49
	.loc 1 257 13
	movl	12(%ebp), %eax
	movl	$_number_one, (%eax)
	.loc 1 258 16
	movl	$0, %eax
	jmp	L52
L49:
	.loc 1 262 26
	movl	_ep_uint+32, %eax
	.loc 1 262 19
	movl	8(%ebp), %edx
	movl	12(%edx), %edx
	leal	-16(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 1 262 8
	cmpl	$0, -12(%ebp)
	je	L50
	.loc 1 263 16
	movl	-12(%ebp), %eax
	jmp	L52
L50:
	.loc 1 265 19
	movl	-16(%ebp), %edx
	.loc 1 265 40
	movl	8(%ebp), %eax
	movzbl	16(%eax), %eax
	.loc 1 265 19
	negl	%eax
	movsbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_AllocateNumber
	movl	%eax, -12(%ebp)
	.loc 1 265 8
	cmpl	$0, -12(%ebp)
	je	L51
	.loc 1 267 16
	movl	_ep_uint+16, %eax
	.loc 1 267 9
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL6:
	subl	$4, %esp
	.loc 1 268 16
	movl	-12(%ebp), %eax
	jmp	L52
L51:
	.loc 1 270 9
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 271 12
	movl	$0, %eax
L52:
	.loc 1 272 1 discriminator 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4243:
	.globl	_PMC_GetConstantValue_I@8
	.def	_PMC_GetConstantValue_I@8;	.scl	2;	.type	32;	.endef
_PMC_GetConstantValue_I@8:
LFB4244:
	.loc 1 275 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$2, 8(%ebp)
	je	L54
	cmpl	$3, 8(%ebp)
	je	L55
	cmpl	$1, 8(%ebp)
	jne	L56
	.loc 1 279 12
	movl	12(%ebp), %eax
	movl	$_number_zero, (%eax)
	.loc 1 280 16
	movl	$0, %eax
	jmp	L57
L54:
	.loc 1 282 12
	movl	12(%ebp), %eax
	movl	$_number_one, (%eax)
	.loc 1 283 16
	movl	$0, %eax
	jmp	L57
L55:
	.loc 1 285 12
	movl	12(%ebp), %eax
	movl	$_number_minus_one, (%eax)
	.loc 1 286 16
	movl	$0, %eax
	jmp	L57
L56:
	.loc 1 288 16
	movl	$-1, %eax
L57:
	.loc 1 290 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE4244:
	.globl	_PMC_Dispose@4
	.def	_PMC_Dispose@4;	.scl	2;	.type	32;	.endef
_PMC_Dispose@4:
LFB4245:
	.loc 1 293 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 294 20
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 295 5
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeallocateNumber
	.loc 1 296 5
	nop
	.loc 1 297 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE4245:
	.globl	_Initialize_Memory
	.def	_Initialize_Memory;	.scl	2;	.type	32;	.endef
_Initialize_Memory:
LFB4246:
	.loc 1 300 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	.loc 1 301 21
	movl	$0, -12(%ebp)
	.loc 1 303 10
	movl	$1, -28(%ebp)
	.loc 1 304 10
	movl	$1, -32(%ebp)
	.loc 1 305 10
	movl	$1, -16(%ebp)
	.loc 1 306 10
	movl	$1, -20(%ebp)
	.loc 1 307 10
	movl	$1, -24(%ebp)
	.loc 1 309 8
	cmpl	$0, -12(%ebp)
	jne	L61
	.loc 1 311 30
	movl	_ep_uint+20, %eax
	.loc 1 311 23
	movl	$_uint_number_zero, 4(%esp)
	movl	$1, (%esp)
	call	*%eax
LVL7:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 1 311 12
	cmpl	$0, -12(%ebp)
	jne	L61
	.loc 1 312 37
	movl	$1, -28(%ebp)
L61:
	.loc 1 315 8
	cmpl	$0, -12(%ebp)
	jne	L62
	.loc 1 317 30
	movl	_ep_uint+20, %eax
	.loc 1 317 23
	movl	$_uint_number_one, 4(%esp)
	movl	$2, (%esp)
	call	*%eax
LVL8:
	subl	$8, %esp
	movl	%eax, -12(%ebp)
	.loc 1 317 12
	cmpl	$0, -12(%ebp)
	jne	L62
	.loc 1 318 36
	movl	$1, -32(%ebp)
L62:
	.loc 1 321 8
	cmpl	$0, -12(%ebp)
	jne	L63
	.loc 1 323 23
	movl	_uint_number_zero, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_number_zero, (%esp)
	call	_AttatchNumber
	movl	%eax, -12(%ebp)
	.loc 1 323 12
	cmpl	$0, -12(%ebp)
	jne	L63
	.loc 1 324 28
	movl	$1, -16(%ebp)
L63:
	.loc 1 327 8
	cmpl	$0, -12(%ebp)
	jne	L64
	.loc 1 329 23
	movl	_uint_number_one, %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$_number_one, (%esp)
	call	_AttatchNumber
	movl	%eax, -12(%ebp)
	.loc 1 329 12
	cmpl	$0, -12(%ebp)
	jne	L64
	.loc 1 330 27
	movl	$1, -20(%ebp)
L64:
	.loc 1 333 8
	cmpl	$0, -12(%ebp)
	jne	L65
	.loc 1 335 23
	movl	_uint_number_one, %eax
	movl	%eax, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_number_minus_one, (%esp)
	call	_AttatchNumber
	movl	%eax, -12(%ebp)
	.loc 1 335 12
	cmpl	$0, -12(%ebp)
	jne	L65
	.loc 1 336 33
	movl	$1, -24(%ebp)
L65:
	.loc 1 339 8
	cmpl	$0, -12(%ebp)
	je	L66
	.loc 1 341 12
	cmpl	$0, -16(%ebp)
	je	L67
	.loc 1 342 13
	movl	$_number_zero, (%esp)
	call	_DetatchNumber
L67:
	.loc 1 343 12
	cmpl	$0, -20(%ebp)
	je	L68
	.loc 1 344 13
	movl	$_number_one, (%esp)
	call	_DetatchNumber
L68:
	.loc 1 345 12
	cmpl	$0, -24(%ebp)
	je	L66
	.loc 1 346 13
	movl	$_number_minus_one, (%esp)
	call	_DetatchNumber
L66:
	.loc 1 349 12
	movl	-12(%ebp), %eax
	.loc 1 350 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4246:
	.globl	_AllocateHeapArea
	.def	_AllocateHeapArea;	.scl	2;	.type	32;	.endef
_AllocateHeapArea:
LFB4247:
	.loc 1 353 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 354 18
	movl	$0, 8(%esp)
	movl	$4096, 4(%esp)
	movl	$0, (%esp)
	movl	__imp__HeapCreate@12, %eax
	call	*%eax
LVL9:
	subl	$12, %esp
	.loc 1 354 16
	movl	%eax, _hLocalHeap
	.loc 1 355 20
	movl	_hLocalHeap, %eax
	.loc 1 355 8
	testl	%eax, %eax
	jne	L71
	.loc 1 356 16
	movl	$0, %eax
	jmp	L72
L71:
	.loc 1 357 12
	movl	$1, %eax
L72:
	.loc 1 358 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4247:
	.globl	_DeallocateHeapArea
	.def	_DeallocateHeapArea;	.scl	2;	.type	32;	.endef
_DeallocateHeapArea:
LFB4248:
	.loc 1 361 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 362 20
	movl	_hLocalHeap, %eax
	.loc 1 362 8
	testl	%eax, %eax
	je	L75
	.loc 1 364 9
	movl	_hLocalHeap, %eax
	movl	%eax, (%esp)
	movl	__imp__HeapDestroy@4, %eax
	call	*%eax
LVL10:
	subl	$4, %esp
	.loc 1 365 20
	movl	$0, _hLocalHeap
L75:
	.loc 1 367 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4248:
Letext0:
	.file 2 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/crtdefs.h"
	.file 3 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/excpt.h"
	.file 4 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/minwindef.h"
	.file 5 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/ctype.h"
	.file 6 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winnt.h"
	.file 7 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/guiddef.h"
	.file 8 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/rpcdce.h"
	.file 9 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/stdlib.h"
	.file 10 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/malloc.h"
	.file 11 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/wtypesbase.h"
	.file 12 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/unknwnbase.h"
	.file 13 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/objidlbase.h"
	.file 14 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/cguid.h"
	.file 15 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/wtypes.h"
	.file 16 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/combaseapi.h"
	.file 17 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/objidl.h"
	.file 18 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oleidl.h"
	.file 19 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/servprov.h"
	.file 20 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oaidl.h"
	.file 21 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/msxml.h"
	.file 22 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/urlmon.h"
	.file 23 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/propidl.h"
	.file 24 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/oleauto.h"
	.file 25 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winioctl.h"
	.file 26 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winsmcrd.h"
	.file 27 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/winscard.h"
	.file 28 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/commdlg.h"
	.file 29 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 30 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc.h"
	.file 31 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc_uint.h"
	.file 32 "../pmc_sint.h"
	.file 33 "../pmc_sint_internal.h"
	.file 34 "C:/GNU/MINGW64/i686-8.1.0-win32-dwarf-rt_v6-rev0/mingw32/i686-w64-mingw32/include/heapapi.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x6346
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=generic -march=i686 -g\0"
	.byte	0xc
	.ascii "../pmc_memory.c\0"
	.ascii "Z:\\\\Sources\\\\Lunor\\\\Repos\\\\rougemeilland\\\\Palmtree.Math.Core.Sint\\\\Palmtree.Math.Core.Sint\\\\myproject\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x2
	.byte	0x25
	.byte	0x16
	.long	0xd2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x3
	.ascii "wchar_t\0"
	.byte	0x2
	.byte	0x62
	.byte	0x18
	.long	0xf9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0xf9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x5
	.ascii "pthreadlocinfo\0"
	.byte	0x2
	.word	0x1a8
	.byte	0x28
	.long	0x149
	.uleb128 0x6
	.byte	0x4
	.long	0x14f
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.byte	0xd8
	.byte	0x2
	.word	0x1bc
	.byte	0x10
	.long	0x2ec
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x2
	.word	0x1bd
	.byte	0x7
	.long	0xe2
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x2
	.word	0x1be
	.byte	0x10
	.long	0xd2
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x2
	.word	0x1bf
	.byte	0x10
	.long	0xd2
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x2
	.word	0x1c0
	.byte	0x11
	.long	0x439
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x2
	.word	0x1c1
	.byte	0x9
	.long	0x45e
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x5
	.long	0x46e
	.byte	0x48
	.uleb128 0x9
	.ascii "lc_clike\0"
	.byte	0x2
	.word	0x1c8
	.byte	0x7
	.long	0xe2
	.byte	0xa8
	.uleb128 0x9
	.ascii "mb_cur_max\0"
	.byte	0x2
	.word	0x1c9
	.byte	0x7
	.long	0xe2
	.byte	0xac
	.uleb128 0x9
	.ascii "lconv_intl_refcount\0"
	.byte	0x2
	.word	0x1ca
	.byte	0x8
	.long	0x433
	.byte	0xb0
	.uleb128 0x9
	.ascii "lconv_num_refcount\0"
	.byte	0x2
	.word	0x1cb
	.byte	0x8
	.long	0x433
	.byte	0xb4
	.uleb128 0x9
	.ascii "lconv_mon_refcount\0"
	.byte	0x2
	.word	0x1cc
	.byte	0x8
	.long	0x433
	.byte	0xb8
	.uleb128 0x9
	.ascii "lconv\0"
	.byte	0x2
	.word	0x1cd
	.byte	0x11
	.long	0x485
	.byte	0xbc
	.uleb128 0x9
	.ascii "ctype1_refcount\0"
	.byte	0x2
	.word	0x1ce
	.byte	0x8
	.long	0x433
	.byte	0xc0
	.uleb128 0x9
	.ascii "ctype1\0"
	.byte	0x2
	.word	0x1cf
	.byte	0x13
	.long	0x48b
	.byte	0xc4
	.uleb128 0x9
	.ascii "pctype\0"
	.byte	0x2
	.word	0x1d0
	.byte	0x19
	.long	0x491
	.byte	0xc8
	.uleb128 0x9
	.ascii "pclmap\0"
	.byte	0x2
	.word	0x1d1
	.byte	0x18
	.long	0x497
	.byte	0xcc
	.uleb128 0x9
	.ascii "pcumap\0"
	.byte	0x2
	.word	0x1d2
	.byte	0x18
	.long	0x497
	.byte	0xd0
	.uleb128 0x9
	.ascii "lc_time_curr\0"
	.byte	0x2
	.word	0x1d3
	.byte	0x1a
	.long	0x4c3
	.byte	0xd4
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x2
	.word	0x1a9
	.byte	0x25
	.long	0x304
	.uleb128 0x6
	.byte	0x4
	.long	0x30a
	.uleb128 0xa
	.ascii "threadmbcinfostruct\0"
	.uleb128 0x7
	.ascii "localeinfo_struct\0"
	.byte	0x8
	.byte	0x2
	.word	0x1ac
	.byte	0x10
	.long	0x360
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x2
	.word	0x1ad
	.byte	0x12
	.long	0x131
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x2
	.word	0x1ae
	.byte	0x12
	.long	0x2ec
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x2
	.word	0x1af
	.byte	0x3
	.long	0x31f
	.uleb128 0x7
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x2
	.word	0x1b3
	.byte	0x10
	.long	0x3c8
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x2
	.word	0x1b4
	.byte	0x12
	.long	0xf9
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x2
	.word	0x1b5
	.byte	0x12
	.long	0xf9
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x2
	.word	0x1b6
	.byte	0x12
	.long	0xf9
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x2
	.word	0x1b7
	.byte	0x3
	.long	0x379
	.uleb128 0xb
	.byte	0x10
	.byte	0x2
	.word	0x1c2
	.byte	0x3
	.long	0x427
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x2
	.word	0x1c3
	.byte	0xb
	.long	0x427
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x2
	.word	0x1c4
	.byte	0xe
	.long	0x42d
	.byte	0x4
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x2
	.word	0x1c5
	.byte	0xa
	.long	0x433
	.byte	0x8
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x2
	.word	0x1c6
	.byte	0xa
	.long	0x433
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xbb
	.uleb128 0x6
	.byte	0x4
	.long	0xe9
	.uleb128 0x6
	.byte	0x4
	.long	0xe2
	.uleb128 0xc
	.long	0x449
	.long	0x449
	.uleb128 0xd
	.long	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xc
	.long	0x3c8
	.long	0x46e
	.uleb128 0xd
	.long	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x3d7
	.long	0x47e
	.uleb128 0xd
	.long	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x47e
	.uleb128 0x6
	.byte	0x4
	.long	0xf9
	.uleb128 0x6
	.byte	0x4
	.long	0x10f
	.uleb128 0x6
	.byte	0x4
	.long	0x4ae
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x49d
	.uleb128 0xa
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x4b3
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x3
	.byte	0x3f
	.byte	0x2e
	.long	0x4d9
	.uleb128 0x6
	.byte	0x4
	.long	0x4df
	.uleb128 0xe
	.long	0x4ea
	.uleb128 0xf
	.long	0xe2
	.byte	0
	.uleb128 0x10
	.ascii "_XCPT_ACTION\0"
	.byte	0xc
	.byte	0x3
	.byte	0x41
	.byte	0xa
	.long	0x536
	.uleb128 0x11
	.ascii "XcptNum\0"
	.byte	0x3
	.byte	0x42
	.byte	0x13
	.long	0x449
	.byte	0
	.uleb128 0x11
	.ascii "SigNum\0"
	.byte	0x3
	.byte	0x43
	.byte	0x9
	.long	0xe2
	.byte	0x4
	.uleb128 0x11
	.ascii "XcptAction\0"
	.byte	0x3
	.byte	0x44
	.byte	0xd
	.long	0x4c9
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x4ea
	.long	0x541
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.ascii "_XcptActTab\0"
	.byte	0x3
	.byte	0x47
	.byte	0x1e
	.long	0x536
	.uleb128 0x13
	.ascii "_XcptActTabCount\0"
	.byte	0x3
	.byte	0x48
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "_XcptActTabSize\0"
	.byte	0x3
	.byte	0x49
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "_First_FPE_Indx\0"
	.byte	0x3
	.byte	0x4a
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "_Num_FPE\0"
	.byte	0x3
	.byte	0x4b
	.byte	0xe
	.long	0xe2
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.ascii "BOOL\0"
	.byte	0x4
	.byte	0x83
	.byte	0xf
	.long	0xe2
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x4
	.byte	0x8d
	.byte	0x19
	.long	0x449
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xd2
	.uleb128 0x13
	.ascii "_imp___pctype\0"
	.byte	0x5
	.byte	0x2b
	.byte	0x1c
	.long	0x5f1
	.uleb128 0x6
	.byte	0x4
	.long	0x48b
	.uleb128 0x13
	.ascii "_imp___wctype\0"
	.byte	0x5
	.byte	0x3b
	.byte	0x1c
	.long	0x5f1
	.uleb128 0x13
	.ascii "_imp___pwctype\0"
	.byte	0x5
	.byte	0x47
	.byte	0x1c
	.long	0x5f1
	.uleb128 0xc
	.long	0x4ae
	.long	0x62f
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x624
	.uleb128 0x13
	.ascii "__newclmap\0"
	.byte	0x5
	.byte	0x50
	.byte	0x1e
	.long	0x62f
	.uleb128 0x13
	.ascii "__newcumap\0"
	.byte	0x5
	.byte	0x51
	.byte	0x1e
	.long	0x62f
	.uleb128 0x13
	.ascii "__ptlocinfo\0"
	.byte	0x5
	.byte	0x52
	.byte	0x19
	.long	0x131
	.uleb128 0x13
	.ascii "__ptmbcinfo\0"
	.byte	0x5
	.byte	0x53
	.byte	0x19
	.long	0x2ec
	.uleb128 0x13
	.ascii "__globallocalestatus\0"
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "__locale_changed\0"
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.long	0xe2
	.uleb128 0x13
	.ascii "__initiallocinfo\0"
	.byte	0x5
	.byte	0x56
	.byte	0x28
	.long	0x14f
	.uleb128 0x13
	.ascii "__initiallocalestructinfo\0"
	.byte	0x5
	.byte	0x57
	.byte	0x1a
	.long	0x360
	.uleb128 0x13
	.ascii "_imp____mb_cur_max\0"
	.byte	0x5
	.byte	0xcb
	.byte	0x10
	.long	0x433
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x49d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x5
	.ascii "HANDLE\0"
	.byte	0x6
	.word	0x195
	.byte	0x11
	.long	0x5af
	.uleb128 0x10
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x7
	.byte	0x13
	.byte	0x10
	.long	0x7a6
	.uleb128 0x11
	.ascii "Data1\0"
	.byte	0x7
	.byte	0x14
	.byte	0x11
	.long	0x449
	.byte	0
	.uleb128 0x11
	.ascii "Data2\0"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.long	0xf9
	.byte	0x4
	.uleb128 0x11
	.ascii "Data3\0"
	.byte	0x7
	.byte	0x16
	.byte	0x12
	.long	0xf9
	.byte	0x6
	.uleb128 0x11
	.ascii "Data4\0"
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.long	0x7a6
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x49d
	.long	0x7b6
	.uleb128 0xd
	.long	0xd2
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x75a
	.uleb128 0x4
	.long	0x7b6
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x7
	.byte	0x53
	.byte	0xe
	.long	0x7b6
	.uleb128 0x4
	.long	0x7c8
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x7b6
	.uleb128 0x4
	.long	0x7d9
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.long	0x7b6
	.uleb128 0x4
	.long	0x7ec
	.uleb128 0x15
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0x6
	.word	0x13a9
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0x6
	.word	0x13aa
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0x6
	.word	0x13ab
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0x6
	.word	0x13ac
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0x6
	.word	0x13ad
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0x6
	.word	0x13ae
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0x6
	.word	0x13af
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0x6
	.word	0x13b0
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0x6
	.word	0x13b1
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0x6
	.word	0x13b2
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0x6
	.word	0x13b3
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0x6
	.word	0x13b4
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0x6
	.word	0x13b5
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0x6
	.word	0x13b6
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0x6
	.word	0x13b7
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0x6
	.word	0x13b8
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0x6
	.word	0x13b9
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0x6
	.word	0x13ba
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13bb
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13bc
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13bd
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13be
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0x6
	.word	0x13bf
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0x6
	.word	0x13c0
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0x6
	.word	0x13c1
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0x6
	.word	0x13c2
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0x6
	.word	0x13c3
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0x6
	.word	0x13c4
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0x6
	.word	0x13c5
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0x6
	.word	0x13c6
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0x6
	.word	0x13c7
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0x6
	.word	0x13c8
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0x6
	.word	0x13c9
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0x6
	.word	0x13ca
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0x6
	.word	0x13cb
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0x6
	.word	0x13cc
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0x6
	.word	0x13cd
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0x6
	.word	0x13ce
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0x6
	.word	0x13cf
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0x6
	.word	0x13d0
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0x6
	.word	0x13d1
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0x6
	.word	0x13d2
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0x6
	.word	0x13d3
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0x6
	.word	0x13d4
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0x6
	.word	0x13d5
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0x6
	.word	0x13d6
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0x6
	.word	0x13d7
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0x6
	.word	0x13d8
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0x6
	.word	0x13d9
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0x6
	.word	0x13da
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0x6
	.word	0x13db
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0x6
	.word	0x13dc
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0x6
	.word	0x13dd
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0x6
	.word	0x13de
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0x6
	.word	0x13df
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0x6
	.word	0x13e0
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0x6
	.word	0x13e1
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0x6
	.word	0x13e2
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0x6
	.word	0x13e3
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0x6
	.word	0x13e4
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0x6
	.word	0x13e5
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0x6
	.word	0x13e6
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0x6
	.word	0x13e7
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0x6
	.word	0x13e8
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0x6
	.word	0x13e9
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0x6
	.word	0x13ea
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0x6
	.word	0x13eb
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0x6
	.word	0x13ec
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0x6
	.word	0x13ed
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0x6
	.word	0x13ee
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13ef
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13f0
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0x6
	.word	0x13f1
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0x6
	.word	0x13f2
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0x6
	.word	0x13f3
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0x6
	.word	0x13f4
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0x6
	.word	0x13f5
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0x6
	.word	0x13f6
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0x6
	.word	0x13f7
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0x6
	.word	0x13f8
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0x6
	.word	0x13f9
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0x6
	.word	0x13fa
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0x6
	.word	0x13fb
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0x6
	.word	0x13fc
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0x6
	.word	0x13fd
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13fe
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13ff
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0x6
	.word	0x1400
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0x6
	.word	0x1401
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0x6
	.word	0x1402
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0x6
	.word	0x1403
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0x6
	.word	0x1404
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0x6
	.word	0x1405
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0x6
	.word	0x1406
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0x6
	.word	0x1407
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0x6
	.word	0x1408
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0x6
	.word	0x1409
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0x6
	.word	0x140a
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0x6
	.word	0x140b
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0x6
	.word	0x140c
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0x6
	.word	0x140d
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0x6
	.word	0x140e
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0x6
	.word	0x140f
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0x6
	.word	0x1410
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0x6
	.word	0x1411
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0x6
	.word	0x1412
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0x6
	.word	0x1413
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0x6
	.word	0x1414
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0x6
	.word	0x1415
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0x6
	.word	0x1416
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0x6
	.word	0x1417
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0x6
	.word	0x1418
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0x6
	.word	0x1419
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0x6
	.word	0x141a
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0x6
	.word	0x141b
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0x6
	.word	0x141c
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0x6
	.word	0x141d
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0x6
	.word	0x141e
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0x6
	.word	0x141f
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0x6
	.word	0x1420
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0x6
	.word	0x1421
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0x6
	.word	0x1422
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1620
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1621
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1622
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0x6
	.word	0x1623
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0x6
	.word	0x1624
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0x6
	.word	0x1625
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0x6
	.word	0x1626
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0x6
	.word	0x1627
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0x6
	.word	0x1628
	.byte	0x17
	.long	0x7c3
	.uleb128 0x15
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1629
	.byte	0x17
	.long	0x7c3
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0x8
	.byte	0x42
	.byte	0x11
	.long	0x5af
	.uleb128 0x6
	.byte	0x4
	.long	0x427
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xc
	.long	0x427
	.long	0x1d67
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "_sys_errlist\0"
	.byte	0x9
	.byte	0xac
	.byte	0x2b
	.long	0x1d57
	.uleb128 0x13
	.ascii "_sys_nerr\0"
	.byte	0x9
	.byte	0xad
	.byte	0x29
	.long	0xe2
	.uleb128 0x15
	.ascii "_imp____argc\0"
	.byte	0x9
	.word	0x119
	.byte	0x10
	.long	0x433
	.uleb128 0x15
	.ascii "_imp____argv\0"
	.byte	0x9
	.word	0x11d
	.byte	0x13
	.long	0x1dba
	.uleb128 0x6
	.byte	0x4
	.long	0x1d38
	.uleb128 0x15
	.ascii "_imp____wargv\0"
	.byte	0x9
	.word	0x121
	.byte	0x16
	.long	0x1dd7
	.uleb128 0x6
	.byte	0x4
	.long	0x1ddd
	.uleb128 0x6
	.byte	0x4
	.long	0x42d
	.uleb128 0x15
	.ascii "_imp___environ\0"
	.byte	0x9
	.word	0x127
	.byte	0x13
	.long	0x1dba
	.uleb128 0x15
	.ascii "_imp___wenviron\0"
	.byte	0x9
	.word	0x12c
	.byte	0x16
	.long	0x1dd7
	.uleb128 0x15
	.ascii "_imp___pgmptr\0"
	.byte	0x9
	.word	0x132
	.byte	0x12
	.long	0x1d38
	.uleb128 0x15
	.ascii "_imp___wpgmptr\0"
	.byte	0x9
	.word	0x137
	.byte	0x15
	.long	0x1ddd
	.uleb128 0x15
	.ascii "_imp___osplatform\0"
	.byte	0x9
	.word	0x13c
	.byte	0x19
	.long	0x5d5
	.uleb128 0x15
	.ascii "_imp___osver\0"
	.byte	0x9
	.word	0x141
	.byte	0x19
	.long	0x5d5
	.uleb128 0x15
	.ascii "_imp___winver\0"
	.byte	0x9
	.word	0x146
	.byte	0x19
	.long	0x5d5
	.uleb128 0x15
	.ascii "_imp___winmajor\0"
	.byte	0x9
	.word	0x14b
	.byte	0x19
	.long	0x5d5
	.uleb128 0x15
	.ascii "_imp___winminor\0"
	.byte	0x9
	.word	0x150
	.byte	0x19
	.long	0x5d5
	.uleb128 0x13
	.ascii "_amblksiz\0"
	.byte	0xa
	.byte	0x35
	.byte	0x17
	.long	0xd2
	.uleb128 0x16
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0xd2
	.byte	0x10
	.byte	0x95
	.byte	0xe
	.long	0x1f07
	.uleb128 0x17
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xb
	.byte	0x29
	.byte	0x16
	.long	0x1d22
	.uleb128 0x13
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xb
	.byte	0x2a
	.byte	0x16
	.long	0x1d22
	.uleb128 0x13
	.ascii "IID_IUnknown\0"
	.byte	0xc
	.byte	0x57
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xc
	.byte	0xbd
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IClassFactory\0"
	.byte	0xc
	.word	0x16d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMarshal\0"
	.byte	0xd
	.word	0x16e
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_INoMarshal\0"
	.byte	0xd
	.word	0x255
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAgileObject\0"
	.byte	0xd
	.word	0x294
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAgileReference\0"
	.byte	0xd
	.word	0x2d2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMarshal2\0"
	.byte	0xd
	.word	0x32d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMalloc\0"
	.byte	0xd
	.word	0x3b2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xd
	.word	0x469
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IExternalConnection\0"
	.byte	0xd
	.word	0x4cc
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMultiQI\0"
	.byte	0xd
	.word	0x547
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xd
	.word	0x59e
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternalUnknown\0"
	.byte	0xd
	.word	0x60c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumUnknown\0"
	.byte	0xd
	.word	0x668
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumString\0"
	.byte	0xd
	.word	0x706
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISequentialStream\0"
	.byte	0xd
	.word	0x7a2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IStream\0"
	.byte	0xd
	.word	0x84d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xd
	.word	0x991
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xd
	.word	0xa3b
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xd
	.word	0xabd
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xd
	.word	0xb7f
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xd
	.word	0xc99
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xd
	.word	0xcee
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xd
	.word	0xd56
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xd
	.word	0xe1c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IChannelHook\0"
	.byte	0xd
	.word	0xe9f
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IClientSecurity\0"
	.byte	0xd
	.word	0xfc3
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IServerSecurity\0"
	.byte	0xd
	.word	0x106d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcOptions\0"
	.byte	0xd
	.word	0x1113
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IGlobalOptions\0"
	.byte	0xd
	.word	0x11ae
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISurrogate\0"
	.byte	0xd
	.word	0x1221
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xd
	.word	0x1289
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISynchronize\0"
	.byte	0xd
	.word	0x1312
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xd
	.word	0x138c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xd
	.word	0x13e1
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xd
	.word	0x1441
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xd
	.word	0x14af
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xd
	.word	0x151e
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAsyncManager\0"
	.byte	0xd
	.word	0x158a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICallFactory\0"
	.byte	0xd
	.word	0x1608
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRpcHelper\0"
	.byte	0xd
	.word	0x1666
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xd
	.word	0x16d1
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IWaitMultiple\0"
	.byte	0xd
	.word	0x172c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xd
	.word	0x1798
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xd
	.word	0x17fd
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPipeByte\0"
	.byte	0xd
	.word	0x1868
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPipeLong\0"
	.byte	0xd
	.word	0x18d9
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPipeDouble\0"
	.byte	0xd
	.word	0x194a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xd
	.word	0x1b24
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IProcessInitControl\0"
	.byte	0xd
	.word	0x1bb2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IFastRundown\0"
	.byte	0xd
	.word	0x1c07
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMarshalingStream\0"
	.byte	0xd
	.word	0x1c4a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xd
	.word	0x1d09
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_NULL\0"
	.byte	0xe
	.byte	0xd
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "CATID_MARSHALER\0"
	.byte	0xe
	.byte	0xe
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IRpcChannel\0"
	.byte	0xe
	.byte	0xf
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IRpcStub\0"
	.byte	0xe
	.byte	0x10
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IStubManager\0"
	.byte	0xe
	.byte	0x11
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IRpcProxy\0"
	.byte	0xe
	.byte	0x12
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IProxyManager\0"
	.byte	0xe
	.byte	0x13
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IPSFactory\0"
	.byte	0xe
	.byte	0x14
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IInternalMoniker\0"
	.byte	0xe
	.byte	0x15
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IDfReserved1\0"
	.byte	0xe
	.byte	0x16
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IDfReserved2\0"
	.byte	0xe
	.byte	0x17
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IDfReserved3\0"
	.byte	0xe
	.byte	0x18
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_StdMarshal\0"
	.byte	0xe
	.byte	0x19
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xe
	.byte	0x1a
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xe
	.byte	0x1b
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "IID_IStub\0"
	.byte	0xe
	.byte	0x1c
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IProxy\0"
	.byte	0xe
	.byte	0x1d
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IEnumGeneric\0"
	.byte	0xe
	.byte	0x1e
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IEnumHolder\0"
	.byte	0xe
	.byte	0x1f
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IEnumCallback\0"
	.byte	0xe
	.byte	0x20
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IOleManager\0"
	.byte	0xe
	.byte	0x21
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IOlePresObj\0"
	.byte	0xe
	.byte	0x22
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IDebug\0"
	.byte	0xe
	.byte	0x23
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "IID_IDebugStream\0"
	.byte	0xe
	.byte	0x24
	.byte	0x14
	.long	0x7d4
	.uleb128 0x13
	.ascii "CLSID_PSGenObject\0"
	.byte	0xe
	.byte	0x25
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_PSClientSite\0"
	.byte	0xe
	.byte	0x26
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_PSClassObject\0"
	.byte	0xe
	.byte	0x27
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xe
	.byte	0x28
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xe
	.byte	0x29
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xe
	.byte	0x2a
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xe
	.byte	0x2b
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xe
	.byte	0x2c
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xe
	.byte	0x2d
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_StaticDib\0"
	.byte	0xe
	.byte	0x2e
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CID_CDfsVolume\0"
	.byte	0xe
	.byte	0x2f
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xe
	.byte	0x30
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xe
	.byte	0x31
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xe
	.byte	0x32
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_ComBinding\0"
	.byte	0xe
	.byte	0x33
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_StdEvent\0"
	.byte	0xe
	.byte	0x34
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xe
	.byte	0x35
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xe
	.byte	0x36
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_AddrControl\0"
	.byte	0xe
	.byte	0x37
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xe
	.byte	0x38
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xe
	.byte	0x39
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xe
	.byte	0x3a
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xe
	.byte	0x3b
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xe
	.byte	0x3c
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xe
	.byte	0x3d
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xe
	.byte	0x3e
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDLabel\0"
	.byte	0xe
	.byte	0x3f
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xe
	.byte	0x40
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDListBox\0"
	.byte	0xe
	.byte	0x41
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xe
	.byte	0x42
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xe
	.byte	0x43
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xe
	.byte	0x45
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xe
	.byte	0x46
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xe
	.byte	0x47
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xe
	.byte	0x48
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xe
	.byte	0x49
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4a
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xe
	.byte	0x4b
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4c
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xe
	.byte	0x4d
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4e
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xe
	.byte	0x4f
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xe
	.byte	0x50
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xe
	.byte	0x51
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xe
	.byte	0x52
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xe
	.byte	0x53
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xe
	.byte	0x54
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xe
	.byte	0x55
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_CSystemPage\0"
	.byte	0xe
	.byte	0x56
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xe
	.byte	0x57
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xe
	.byte	0x58
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xe
	.byte	0x59
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xe
	.byte	0x5a
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xe
	.byte	0x5b
	.byte	0x16
	.long	0x7e7
	.uleb128 0x13
	.ascii "GUID_TRISTATE\0"
	.byte	0xe
	.byte	0x5c
	.byte	0x15
	.long	0x7c3
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x1d22
	.uleb128 0x13
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x1d22
	.uleb128 0x18
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0xd2
	.byte	0xf
	.word	0x200
	.byte	0x6
	.long	0x311d
	.uleb128 0x17
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0x17
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0x17
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0x17
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0x17
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0x17
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0x17
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0x17
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0x17
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0x17
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0x17
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0x17
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0x17
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0x17
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0x17
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0x17
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0x17
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0x17
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0x17
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0x17
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0x17
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0x17
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0x17
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0x17
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0x17
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0x17
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0x17
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0x17
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0x17
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0x17
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0x17
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0x17
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0x17
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0x17
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0x17
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0x17
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0x17
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0x17
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0x17
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0x17
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0x17
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0x17
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x17
	.ascii "VT_VERSIONED_STREAM\0"
	.byte	0x49
	.uleb128 0x19
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x19
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x19
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x19
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x19
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x19
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x19
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x19
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x15
	.ascii "IID_IMallocSpy\0"
	.byte	0x11
	.word	0x1dbd
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBindCtx\0"
	.byte	0x11
	.word	0x1f3a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumMoniker\0"
	.byte	0x11
	.word	0x204a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRunnableObject\0"
	.byte	0x11
	.word	0x20e8
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x11
	.word	0x218e
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPersist\0"
	.byte	0x11
	.word	0x2269
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPersistStream\0"
	.byte	0x11
	.word	0x22be
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMoniker\0"
	.byte	0x11
	.word	0x236a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IROTData\0"
	.byte	0x11
	.word	0x2558
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x11
	.word	0x25b5
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IStorage\0"
	.byte	0x11
	.word	0x2658
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPersistFile\0"
	.byte	0x11
	.word	0x2841
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPersistStorage\0"
	.byte	0x11
	.word	0x28f1
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ILockBytes\0"
	.byte	0x11
	.word	0x29b1
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x11
	.word	0x2ac0
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x11
	.word	0x2b6c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRootStorage\0"
	.byte	0x11
	.word	0x2c08
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAdviseSink\0"
	.byte	0x11
	.word	0x2cb3
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x11
	.word	0x2d73
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAdviseSink2\0"
	.byte	0x11
	.word	0x2ea9
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x11
	.word	0x2f2e
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDataObject\0"
	.byte	0x11
	.word	0x2ff4
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x11
	.word	0x3118
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMessageFilter\0"
	.byte	0x11
	.word	0x31d3
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x11
	.word	0x325d
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x11
	.word	0x325f
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x11
	.word	0x3261
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x11
	.word	0x3263
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x11
	.word	0x3265
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x11
	.word	0x3267
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x11
	.word	0x3269
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x11
	.word	0x326b
	.byte	0x14
	.long	0x7fa
	.uleb128 0x15
	.ascii "IID_IClassActivator\0"
	.byte	0x11
	.word	0x3273
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IFillLockBytes\0"
	.byte	0x11
	.word	0x32d5
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IProgressNotify\0"
	.byte	0x11
	.word	0x3389
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ILayoutStorage\0"
	.byte	0x11
	.word	0x33ee
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBlockingLock\0"
	.byte	0x11
	.word	0x3492
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x11
	.word	0x34f7
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOplockStorage\0"
	.byte	0x11
	.word	0x354e
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x11
	.word	0x35d5
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IUrlMon\0"
	.byte	0x11
	.word	0x364d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x11
	.word	0x36bc
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x11
	.word	0x3710
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x11
	.word	0x3786
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IProcessLock\0"
	.byte	0x11
	.word	0x37e5
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISurrogateService\0"
	.byte	0x11
	.word	0x3848
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInitializeSpy\0"
	.byte	0x11
	.word	0x38f2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x11
	.word	0x398a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x12
	.byte	0xab
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleCache\0"
	.byte	0x12
	.word	0x162
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleCache2\0"
	.byte	0x12
	.word	0x229
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleCacheControl\0"
	.byte	0x12
	.word	0x2d4
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IParseDisplayName\0"
	.byte	0x12
	.word	0x33c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleContainer\0"
	.byte	0x12
	.word	0x39c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleClientSite\0"
	.byte	0x12
	.word	0x417
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleObject\0"
	.byte	0x12
	.word	0x4fe
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x12
	.word	0x6fe
	.byte	0x16
	.long	0x1d22
	.uleb128 0x15
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x12
	.word	0x6ff
	.byte	0x16
	.long	0x1d22
	.uleb128 0x15
	.ascii "IID_IOleWindow\0"
	.byte	0x12
	.word	0x724
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleLink\0"
	.byte	0x12
	.word	0x79a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleItemContainer\0"
	.byte	0x12
	.word	0x8bf
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x12
	.word	0x976
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x12
	.word	0xa1c
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x12
	.word	0xaf8
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x12
	.word	0xbf1
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x12
	.word	0xc91
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IContinue\0"
	.byte	0x12
	.word	0xda4
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IViewObject\0"
	.byte	0x12
	.word	0xdf9
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IViewObject2\0"
	.byte	0x12
	.word	0xf2a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDropSource\0"
	.byte	0x12
	.word	0xfd2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDropTarget\0"
	.byte	0x12
	.word	0x105b
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x12
	.word	0x10ff
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x12
	.word	0x1176
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "IID_IServiceProvider\0"
	.byte	0x13
	.byte	0x4d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x14
	.byte	0xf1
	.byte	0x16
	.long	0x1d22
	.uleb128 0x13
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x14
	.byte	0xf2
	.byte	0x16
	.long	0x1d22
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x14
	.word	0x33b
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x14
	.word	0x562
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x14
	.word	0x7b2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x14
	.word	0x8ba
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDispatch\0"
	.byte	0x14
	.word	0x9b6
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x14
	.word	0xa87
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeComp\0"
	.byte	0x14
	.word	0xb35
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeInfo\0"
	.byte	0x14
	.word	0xbd9
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeInfo2\0"
	.byte	0x14
	.word	0xe50
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeLib\0"
	.byte	0x14
	.word	0x10d6
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeLib2\0"
	.byte	0x14
	.word	0x123d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x14
	.word	0x1361
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IErrorInfo\0"
	.byte	0x14
	.word	0x13da
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x14
	.word	0x147d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x14
	.word	0x1520
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeFactory\0"
	.byte	0x14
	.word	0x1575
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ITypeMarshal\0"
	.byte	0x14
	.word	0x15d0
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IRecordInfo\0"
	.byte	0x14
	.word	0x1684
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IErrorLog\0"
	.byte	0x14
	.word	0x1820
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPropertyBag\0"
	.byte	0x14
	.word	0x187a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x15
	.byte	0xeb
	.byte	0x18
	.long	0x1d22
	.uleb128 0x13
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.long	0x1d22
	.uleb128 0x13
	.ascii "LIBID_MSXML\0"
	.byte	0x15
	.byte	0xfc
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x15
	.word	0x100
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x15
	.word	0x127
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x15
	.word	0x1fd
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x15
	.word	0x266
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x15
	.word	0x375
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x15
	.word	0x3b0
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x15
	.word	0x404
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x15
	.word	0x496
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x15
	.word	0x50f
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMText\0"
	.byte	0x15
	.word	0x5a6
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x15
	.word	0x625
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x15
	.word	0x69e
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x15
	.word	0x717
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x15
	.word	0x792
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x15
	.word	0x80b
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x15
	.word	0x87f
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x15
	.word	0x8f8
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x15
	.word	0x961
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXTLRuntime\0"
	.byte	0x15
	.word	0x9a6
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x15
	.word	0xa3d
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_DOMDocument\0"
	.byte	0x15
	.word	0xa5c
	.byte	0x16
	.long	0x7e7
	.uleb128 0x15
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x15
	.word	0xa60
	.byte	0x16
	.long	0x7e7
	.uleb128 0x15
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x15
	.word	0xa67
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x15
	.word	0xacd
	.byte	0x16
	.long	0x7e7
	.uleb128 0x15
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x15
	.word	0xad4
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x15
	.word	0xb0d
	.byte	0x16
	.long	0x7e7
	.uleb128 0x15
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x15
	.word	0xb14
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDocument\0"
	.byte	0x15
	.word	0xb4a
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLDocument2\0"
	.byte	0x15
	.word	0xbb2
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLElement\0"
	.byte	0x15
	.word	0xc24
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLElement2\0"
	.byte	0x15
	.word	0xc82
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLAttribute\0"
	.byte	0x15
	.word	0xce5
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IXMLError\0"
	.byte	0x15
	.word	0xd11
	.byte	0x14
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_XMLDocument\0"
	.byte	0x15
	.word	0xd2e
	.byte	0x16
	.long	0x7e7
	.uleb128 0x15
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x16
	.word	0x17e
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x16
	.word	0x17f
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x16
	.word	0x180
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x16
	.word	0x181
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x16
	.word	0x182
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x16
	.word	0x183
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x16
	.word	0x184
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x185
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x16
	.word	0x186
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x16
	.word	0x187
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x16
	.word	0x188
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x16
	.word	0x189
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x16
	.word	0x18a
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x16
	.word	0x193
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x16
	.word	0x194
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x16
	.word	0x195
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x16
	.word	0x196
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x16
	.word	0x197
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x16
	.word	0x198
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_FileProtocol\0"
	.byte	0x16
	.word	0x199
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_MkProtocol\0"
	.byte	0x16
	.word	0x19a
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x16
	.word	0x19b
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x19c
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x16
	.word	0x19d
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x16
	.word	0x19e
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x16
	.word	0x19f
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IPersistMoniker\0"
	.byte	0x16
	.word	0x250
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IMonikerProp\0"
	.byte	0x16
	.word	0x321
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBindProtocol\0"
	.byte	0x16
	.word	0x37f
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBinding\0"
	.byte	0x16
	.word	0x3e0
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x16
	.word	0x575
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x16
	.word	0x6a5
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAuthenticate\0"
	.byte	0x16
	.word	0x764
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x16
	.word	0x7d0
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x16
	.word	0x841
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x16
	.word	0x8c1
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x16
	.word	0x93b
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x16
	.word	0x9bf
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x16
	.word	0xa30
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICodeInstall\0"
	.byte	0x16
	.word	0xa9b
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IWinInetInfo\0"
	.byte	0x16
	.word	0x10a5
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IHttpSecurity\0"
	.byte	0x16
	.word	0x1112
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x16
	.word	0x1179
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x16
	.word	0x11f8
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "SID_BindHost\0"
	.byte	0x16
	.word	0x1335
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBindHost\0"
	.byte	0x16
	.word	0x133f
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternet\0"
	.byte	0x16
	.word	0x144d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x16
	.word	0x14ac
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x16
	.word	0x1526
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x16
	.word	0x15bf
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetProtocol\0"
	.byte	0x16
	.word	0x1684
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x16
	.word	0x181a
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x16
	.word	0x18bd
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetSession\0"
	.byte	0x16
	.word	0x193f
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x16
	.word	0x1a48
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetPriority\0"
	.byte	0x16
	.word	0x1ab2
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x16
	.word	0x1b4e
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x16
	.word	0x1cb2
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x16
	.word	0x1cb3
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x16
	.word	0x1ccb
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x16
	.word	0x1d69
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x16
	.word	0x210f
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x16
	.word	0x22c4
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x16
	.word	0x269c
	.byte	0x12
	.long	0x7d4
	.uleb128 0x15
	.ascii "IID_ISoftDistExt\0"
	.byte	0x16
	.word	0x26cc
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x16
	.word	0x2778
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IDataFilter\0"
	.byte	0x16
	.word	0x27e6
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x16
	.word	0x28a6
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x16
	.word	0x2933
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x16
	.word	0x2941
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IGetBindHandle\0"
	.byte	0x16
	.word	0x29a5
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x16
	.word	0x2a0d
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPropertyStorage\0"
	.byte	0x17
	.word	0x1b7
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x17
	.word	0x304
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x17
	.word	0x3a6
	.byte	0x13
	.long	0x7c3
	.uleb128 0x15
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x17
	.word	0x444
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "IID_StdOle\0"
	.byte	0x18
	.byte	0x15
	.byte	0x12
	.long	0x7d4
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x19
	.byte	0xc
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x19
	.byte	0xd
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x19
	.byte	0xe
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x19
	.byte	0xf
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x19
	.byte	0x10
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x19
	.byte	0x11
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x19
	.byte	0x12
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x19
	.byte	0x13
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x19
	.byte	0x14
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x19
	.byte	0x15
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x19
	.byte	0x16
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x19
	.byte	0x17
	.byte	0x13
	.long	0x7c3
	.uleb128 0x10
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1a
	.byte	0xa1
	.byte	0x12
	.long	0x4b8a
	.uleb128 0x11
	.ascii "dwProtocol\0"
	.byte	0x1a
	.byte	0xa2
	.byte	0xb
	.long	0x5be
	.byte	0
	.uleb128 0x11
	.ascii "cbPciLength\0"
	.byte	0x1a
	.byte	0xa3
	.byte	0xb
	.long	0x5be
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1a
	.byte	0xa4
	.byte	0x5
	.long	0x4b45
	.uleb128 0x4
	.long	0x4b8a
	.uleb128 0x13
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x3c
	.long	0x4ba3
	.uleb128 0x13
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x4b
	.long	0x4ba3
	.uleb128 0x13
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x5a
	.long	0x4ba3
	.uleb128 0x13
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1c
	.byte	0xe
	.byte	0x13
	.long	0x7c3
	.uleb128 0x13
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1c
	.byte	0xf
	.byte	0x13
	.long	0x7c3
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "_Float128\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x1d
	.byte	0x26
	.byte	0x18
	.long	0xf9
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1d
	.byte	0x27
	.byte	0xd
	.long	0xe2
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1d
	.byte	0x28
	.byte	0x12
	.long	0xd2
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1d
	.byte	0x2a
	.byte	0x2a
	.long	0x730
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1e
	.byte	0x54
	.byte	0x11
	.long	0x4c4e
	.uleb128 0x3
	.ascii "_UINT16_T\0"
	.byte	0x1e
	.byte	0x57
	.byte	0x12
	.long	0x4c3d
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1e
	.byte	0x58
	.byte	0x12
	.long	0x4c5e
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1e
	.byte	0x59
	.byte	0x12
	.long	0x4c6f
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1e
	.byte	0x64
	.byte	0xd
	.long	0xe2
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1e
	.byte	0x66
	.byte	0xd
	.long	0xe2
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1e
	.byte	0x68
	.byte	0xd
	.long	0xe2
	.uleb128 0x10
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x6a
	.byte	0x10
	.long	0x4d99
	.uleb128 0x11
	.ascii "COUNT_MULTI64\0"
	.byte	0x1e
	.byte	0x6c
	.byte	0xa
	.long	0x114
	.byte	0
	.uleb128 0x11
	.ascii "COUNT_MULTI32\0"
	.byte	0x1e
	.byte	0x6d
	.byte	0xa
	.long	0x114
	.byte	0x4
	.uleb128 0x11
	.ascii "COUNT_DIV64\0"
	.byte	0x1e
	.byte	0x6e
	.byte	0xa
	.long	0x114
	.byte	0x8
	.uleb128 0x11
	.ascii "COUNT_DIV32\0"
	.byte	0x1e
	.byte	0x6f
	.byte	0xa
	.long	0x114
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1e
	.byte	0x70
	.byte	0x3
	.long	0x4d1d
	.uleb128 0x10
	.ascii "__tag_PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x34
	.byte	0x1e
	.byte	0x72
	.byte	0x10
	.long	0x4e67
	.uleb128 0x11
	.ascii "DecimalDigits\0"
	.byte	0x1e
	.byte	0x74
	.byte	0x9
	.long	0xe2
	.byte	0
	.uleb128 0x11
	.ascii "GroupSeparator\0"
	.byte	0x1e
	.byte	0x75
	.byte	0xd
	.long	0x4e67
	.byte	0x4
	.uleb128 0x11
	.ascii "DecimalSeparator\0"
	.byte	0x1e
	.byte	0x76
	.byte	0xd
	.long	0x4e67
	.byte	0xa
	.uleb128 0x11
	.ascii "PositiveSign\0"
	.byte	0x1e
	.byte	0x77
	.byte	0xd
	.long	0x4e67
	.byte	0x10
	.uleb128 0x11
	.ascii "NegativeSign\0"
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.long	0x4e67
	.byte	0x16
	.uleb128 0x11
	.ascii "GroupSizes\0"
	.byte	0x1e
	.byte	0x79
	.byte	0xd
	.long	0x4e77
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.long	0xe9
	.long	0x4e77
	.uleb128 0xd
	.long	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xe9
	.long	0x4e87
	.uleb128 0xd
	.long	0xd2
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x1e
	.byte	0x7a
	.byte	0x3
	.long	0x4db5
	.uleb128 0x10
	.ascii "__tag_UINT_FLAGS\0"
	.byte	0x4
	.byte	0x1f
	.byte	0x26
	.byte	0x16
	.long	0x4f03
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1f
	.byte	0x28
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1f
	.byte	0x29
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1f
	.byte	0x2a
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1f
	.byte	0x2b
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x4ea8
	.uleb128 0x1b
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x4
	.byte	0x1f
	.byte	0x24
	.byte	0xb
	.long	0x4f46
	.uleb128 0x1c
	.ascii "FLAGS\0"
	.byte	0x1f
	.byte	0x2c
	.byte	0xb
	.long	0x4f03
	.uleb128 0x1c
	.ascii "__dummy\0"
	.byte	0x1f
	.byte	0x2e
	.byte	0x13
	.long	0x4ca3
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x1f
	.byte	0x35
	.byte	0x2a
	.long	0x4f5e
	.uleb128 0x6
	.byte	0x4
	.long	0x4f08
	.uleb128 0x1d
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x118
	.byte	0x1f
	.byte	0x37
	.byte	0x14
	.long	0x564b
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x1f
	.byte	0x3a
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x1f
	.byte	0x3b
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x1f
	.byte	0x3c
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x1f
	.byte	0x3d
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1e
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x1f
	.byte	0x3e
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "GetStatisticsInfo\0"
	.byte	0x1f
	.byte	0x41
	.byte	0x2e
	.long	0x565c
	.byte	0x4
	.uleb128 0x11
	.ascii "From_I\0"
	.byte	0x1f
	.byte	0x44
	.byte	0x39
	.long	0x567c
	.byte	0x8
	.uleb128 0x11
	.ascii "From_L\0"
	.byte	0x1f
	.byte	0x47
	.byte	0x39
	.long	0x5696
	.byte	0xc
	.uleb128 0x11
	.ascii "Dispose\0"
	.byte	0x1f
	.byte	0x4a
	.byte	0x2e
	.long	0x56a7
	.byte	0x10
	.uleb128 0x11
	.ascii "GetConstantValue_I\0"
	.byte	0x1f
	.byte	0x4d
	.byte	0x39
	.long	0x56c1
	.byte	0x14
	.uleb128 0x11
	.ascii "FromByteArray\0"
	.byte	0x1f
	.byte	0x50
	.byte	0x39
	.long	0x56e0
	.byte	0x18
	.uleb128 0x11
	.ascii "ToByteArray\0"
	.byte	0x1f
	.byte	0x51
	.byte	0x39
	.long	0x570a
	.byte	0x1c
	.uleb128 0x11
	.ascii "Clone_X\0"
	.byte	0x1f
	.byte	0x54
	.byte	0x39
	.long	0x5724
	.byte	0x20
	.uleb128 0x11
	.ascii "To_X_I\0"
	.byte	0x1f
	.byte	0x57
	.byte	0x39
	.long	0x5744
	.byte	0x24
	.uleb128 0x11
	.ascii "To_X_L\0"
	.byte	0x1f
	.byte	0x58
	.byte	0x39
	.long	0x5764
	.byte	0x28
	.uleb128 0x11
	.ascii "ToString\0"
	.byte	0x1f
	.byte	0x5b
	.byte	0x39
	.long	0x5798
	.byte	0x2c
	.uleb128 0x11
	.ascii "TryParse\0"
	.byte	0x1f
	.byte	0x5e
	.byte	0x39
	.long	0x57bc
	.byte	0x30
	.uleb128 0x11
	.ascii "Add_I_X\0"
	.byte	0x1f
	.byte	0x61
	.byte	0x39
	.long	0x57db
	.byte	0x34
	.uleb128 0x11
	.ascii "Add_L_X\0"
	.byte	0x1f
	.byte	0x62
	.byte	0x39
	.long	0x57fa
	.byte	0x38
	.uleb128 0x11
	.ascii "Add_X_I\0"
	.byte	0x1f
	.byte	0x63
	.byte	0x39
	.long	0x5819
	.byte	0x3c
	.uleb128 0x11
	.ascii "Add_X_L\0"
	.byte	0x1f
	.byte	0x64
	.byte	0x39
	.long	0x5838
	.byte	0x40
	.uleb128 0x11
	.ascii "Add_X_X\0"
	.byte	0x1f
	.byte	0x65
	.byte	0x39
	.long	0x5857
	.byte	0x44
	.uleb128 0x11
	.ascii "Subtruct_I_X\0"
	.byte	0x1f
	.byte	0x68
	.byte	0x39
	.long	0x5876
	.byte	0x48
	.uleb128 0x11
	.ascii "Subtruct_L_X\0"
	.byte	0x1f
	.byte	0x69
	.byte	0x39
	.long	0x5895
	.byte	0x4c
	.uleb128 0x11
	.ascii "Subtruct_X_I\0"
	.byte	0x1f
	.byte	0x6a
	.byte	0x39
	.long	0x5819
	.byte	0x50
	.uleb128 0x11
	.ascii "Subtruct_X_L\0"
	.byte	0x1f
	.byte	0x6b
	.byte	0x39
	.long	0x5838
	.byte	0x54
	.uleb128 0x11
	.ascii "Subtruct_X_X\0"
	.byte	0x1f
	.byte	0x6c
	.byte	0x39
	.long	0x5857
	.byte	0x58
	.uleb128 0x11
	.ascii "Multiply_I_X\0"
	.byte	0x1f
	.byte	0x6f
	.byte	0x39
	.long	0x57db
	.byte	0x5c
	.uleb128 0x11
	.ascii "Multiply_L_X\0"
	.byte	0x1f
	.byte	0x70
	.byte	0x39
	.long	0x57fa
	.byte	0x60
	.uleb128 0x11
	.ascii "Multiply_X_I\0"
	.byte	0x1f
	.byte	0x71
	.byte	0x39
	.long	0x5819
	.byte	0x64
	.uleb128 0x11
	.ascii "Multiply_X_L\0"
	.byte	0x1f
	.byte	0x72
	.byte	0x39
	.long	0x5838
	.byte	0x68
	.uleb128 0x11
	.ascii "Multiply_X_X\0"
	.byte	0x1f
	.byte	0x73
	.byte	0x39
	.long	0x5857
	.byte	0x6c
	.uleb128 0x11
	.ascii "DivRem_I_X\0"
	.byte	0x1f
	.byte	0x76
	.byte	0x39
	.long	0x58b9
	.byte	0x70
	.uleb128 0x11
	.ascii "DivRem_L_X\0"
	.byte	0x1f
	.byte	0x77
	.byte	0x39
	.long	0x58dd
	.byte	0x74
	.uleb128 0x11
	.ascii "DivRem_X_I\0"
	.byte	0x1f
	.byte	0x78
	.byte	0x39
	.long	0x5901
	.byte	0x78
	.uleb128 0x11
	.ascii "DivRem_X_L\0"
	.byte	0x1f
	.byte	0x79
	.byte	0x39
	.long	0x5925
	.byte	0x7c
	.uleb128 0x11
	.ascii "DivRem_X_X\0"
	.byte	0x1f
	.byte	0x7a
	.byte	0x39
	.long	0x5949
	.byte	0x80
	.uleb128 0x11
	.ascii "LeftShift_X_I\0"
	.byte	0x1f
	.byte	0x7d
	.byte	0x39
	.long	0x5819
	.byte	0x84
	.uleb128 0x11
	.ascii "RightShift_X_I\0"
	.byte	0x1f
	.byte	0x80
	.byte	0x39
	.long	0x5819
	.byte	0x88
	.uleb128 0x11
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x1f
	.byte	0x83
	.byte	0x39
	.long	0x5876
	.byte	0x8c
	.uleb128 0x11
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x1f
	.byte	0x84
	.byte	0x39
	.long	0x5895
	.byte	0x90
	.uleb128 0x11
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x1f
	.byte	0x85
	.byte	0x39
	.long	0x5968
	.byte	0x94
	.uleb128 0x11
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x1f
	.byte	0x86
	.byte	0x39
	.long	0x5987
	.byte	0x98
	.uleb128 0x11
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x1f
	.byte	0x87
	.byte	0x39
	.long	0x5857
	.byte	0x9c
	.uleb128 0x11
	.ascii "BitwiseOr_I_X\0"
	.byte	0x1f
	.byte	0x8a
	.byte	0x39
	.long	0x57db
	.byte	0xa0
	.uleb128 0x11
	.ascii "BitwiseOr_L_X\0"
	.byte	0x1f
	.byte	0x8b
	.byte	0x39
	.long	0x57fa
	.byte	0xa4
	.uleb128 0x11
	.ascii "BitwiseOr_X_I\0"
	.byte	0x1f
	.byte	0x8c
	.byte	0x39
	.long	0x5819
	.byte	0xa8
	.uleb128 0x11
	.ascii "BitwiseOr_X_L\0"
	.byte	0x1f
	.byte	0x8d
	.byte	0x39
	.long	0x5838
	.byte	0xac
	.uleb128 0x11
	.ascii "BitwiseOr_X_X\0"
	.byte	0x1f
	.byte	0x8e
	.byte	0x39
	.long	0x5857
	.byte	0xb0
	.uleb128 0x11
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x1f
	.byte	0x91
	.byte	0x39
	.long	0x57db
	.byte	0xb4
	.uleb128 0x11
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x1f
	.byte	0x92
	.byte	0x39
	.long	0x57fa
	.byte	0xb8
	.uleb128 0x11
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x1f
	.byte	0x93
	.byte	0x39
	.long	0x5819
	.byte	0xbc
	.uleb128 0x11
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x1f
	.byte	0x94
	.byte	0x39
	.long	0x5838
	.byte	0xc0
	.uleb128 0x11
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x1f
	.byte	0x95
	.byte	0x39
	.long	0x5857
	.byte	0xc4
	.uleb128 0x11
	.ascii "Compare_I_X\0"
	.byte	0x1f
	.byte	0x98
	.byte	0x39
	.long	0x59ac
	.byte	0xc8
	.uleb128 0x11
	.ascii "Compare_L_X\0"
	.byte	0x1f
	.byte	0x99
	.byte	0x39
	.long	0x59cb
	.byte	0xcc
	.uleb128 0x11
	.ascii "Compare_X_I\0"
	.byte	0x1f
	.byte	0x9a
	.byte	0x39
	.long	0x59ea
	.byte	0xd0
	.uleb128 0x11
	.ascii "Compare_X_L\0"
	.byte	0x1f
	.byte	0x9b
	.byte	0x39
	.long	0x5a09
	.byte	0xd4
	.uleb128 0x11
	.ascii "Compare_X_X\0"
	.byte	0x1f
	.byte	0x9c
	.byte	0x39
	.long	0x5a28
	.byte	0xd8
	.uleb128 0x11
	.ascii "Equals_I_X\0"
	.byte	0x1f
	.byte	0x9f
	.byte	0x39
	.long	0x59ac
	.byte	0xdc
	.uleb128 0x11
	.ascii "Equals_L_X\0"
	.byte	0x1f
	.byte	0xa0
	.byte	0x39
	.long	0x59cb
	.byte	0xe0
	.uleb128 0x11
	.ascii "Equals_X_I\0"
	.byte	0x1f
	.byte	0xa1
	.byte	0x39
	.long	0x59ea
	.byte	0xe4
	.uleb128 0x11
	.ascii "Equals_X_L\0"
	.byte	0x1f
	.byte	0xa2
	.byte	0x39
	.long	0x5a09
	.byte	0xe8
	.uleb128 0x11
	.ascii "Equals_X_X\0"
	.byte	0x1f
	.byte	0xa3
	.byte	0x39
	.long	0x5a28
	.byte	0xec
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x1f
	.byte	0xa6
	.byte	0x39
	.long	0x57db
	.byte	0xf0
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x1f
	.byte	0xa7
	.byte	0x39
	.long	0x57fa
	.byte	0xf4
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x1f
	.byte	0xa8
	.byte	0x39
	.long	0x5819
	.byte	0xf8
	.uleb128 0x11
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x1f
	.byte	0xa9
	.byte	0x39
	.long	0x5838
	.byte	0xfc
	.uleb128 0x1f
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x1f
	.byte	0xaa
	.byte	0x39
	.long	0x5857
	.word	0x100
	.uleb128 0x1f
	.ascii "Pow_X_I\0"
	.byte	0x1f
	.byte	0xad
	.byte	0x39
	.long	0x5819
	.word	0x104
	.uleb128 0x1f
	.ascii "ModPow_X_X_X\0"
	.byte	0x1f
	.byte	0xb0
	.byte	0x39
	.long	0x5a4c
	.word	0x108
	.uleb128 0x1f
	.ascii "FromByteArrayForSINT\0"
	.byte	0x1f
	.byte	0xb3
	.byte	0x39
	.long	0x5a70
	.word	0x10c
	.uleb128 0x1f
	.ascii "ToByteArrayForSINT\0"
	.byte	0x1f
	.byte	0xb4
	.byte	0x39
	.long	0x5a99
	.word	0x110
	.uleb128 0x1f
	.ascii "TryParseForSINT\0"
	.byte	0x1f
	.byte	0xb5
	.byte	0x39
	.long	0x5ac2
	.word	0x114
	.byte	0
	.uleb128 0xe
	.long	0x5656
	.uleb128 0xf
	.long	0x5656
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4d99
	.uleb128 0x6
	.byte	0x4
	.long	0x564b
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5676
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4f46
	.uleb128 0x6
	.byte	0x4
	.long	0x5662
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5696
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5682
	.uleb128 0xe
	.long	0x56a7
	.uleb128 0xf
	.long	0x4f46
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x569c
	.uleb128 0x20
	.long	0x4cc7
	.long	0x56c1
	.uleb128 0xf
	.long	0x4cdf
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56ad
	.uleb128 0x20
	.long	0x4cc7
	.long	0x56e0
	.uleb128 0xf
	.long	0x72a
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x56c7
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5704
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x72a
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x5704
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc3
	.uleb128 0x6
	.byte	0x4
	.long	0x56e6
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5724
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5710
	.uleb128 0x20
	.long	0x4cc7
	.long	0x573e
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x573e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4ca3
	.uleb128 0x6
	.byte	0x4
	.long	0x572a
	.uleb128 0x20
	.long	0x4cc7
	.long	0x575e
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x575e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4cb5
	.uleb128 0x6
	.byte	0x4
	.long	0x574a
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5792
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x42d
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0xbb
	.uleb128 0xf
	.long	0xe2
	.uleb128 0xf
	.long	0x5792
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4e87
	.uleb128 0x6
	.byte	0x4
	.long	0x576a
	.uleb128 0x20
	.long	0x4cc7
	.long	0x57bc
	.uleb128 0xf
	.long	0x42d
	.uleb128 0xf
	.long	0x4cff
	.uleb128 0xf
	.long	0x5792
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x579e
	.uleb128 0x20
	.long	0x4cc7
	.long	0x57db
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57c2
	.uleb128 0x20
	.long	0x4cc7
	.long	0x57fa
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x57e1
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5819
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5800
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5838
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x581f
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5857
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x583e
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5876
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x573e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x585d
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5895
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x575e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x587c
	.uleb128 0x20
	.long	0x4cc7
	.long	0x58b9
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x573e
	.uleb128 0xf
	.long	0x573e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x589b
	.uleb128 0x20
	.long	0x4cc7
	.long	0x58dd
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x575e
	.uleb128 0xf
	.long	0x575e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58bf
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5901
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x5676
	.uleb128 0xf
	.long	0x573e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x58e3
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5925
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x5676
	.uleb128 0xf
	.long	0x575e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5907
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5949
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x5676
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x592b
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5968
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x573e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x594f
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5987
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x575e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x596e
	.uleb128 0x20
	.long	0x4cc7
	.long	0x59a6
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x59a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4c80
	.uleb128 0x6
	.byte	0x4
	.long	0x598d
	.uleb128 0x20
	.long	0x4cc7
	.long	0x59cb
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x59a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59b2
	.uleb128 0x20
	.long	0x4cc7
	.long	0x59ea
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4ca3
	.uleb128 0xf
	.long	0x59a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59d1
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5a09
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4cb5
	.uleb128 0xf
	.long	0x59a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x59f0
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5a28
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x59a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a0f
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5a4c
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a2e
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5a70
	.uleb128 0xf
	.long	0x72a
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x427
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a52
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5a99
	.uleb128 0xf
	.long	0xbb
	.uleb128 0xf
	.long	0x4f46
	.uleb128 0xf
	.long	0x72a
	.uleb128 0xf
	.long	0xc3
	.uleb128 0xf
	.long	0x5704
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a76
	.uleb128 0x20
	.long	0x4cc7
	.long	0x5ac2
	.uleb128 0xf
	.long	0x42d
	.uleb128 0xf
	.long	0x4cff
	.uleb128 0xf
	.long	0x5792
	.uleb128 0xf
	.long	0x427
	.uleb128 0xf
	.long	0x5676
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a9f
	.uleb128 0x3
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x1f
	.byte	0xb6
	.byte	0x7
	.long	0x4f64
	.uleb128 0x10
	.ascii "__tag_SINT_FLAGS\0"
	.byte	0x4
	.byte	0x20
	.byte	0x28
	.byte	0x16
	.long	0x5b51
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x20
	.byte	0x2a
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x20
	.byte	0x2b
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x20
	.byte	0x2c
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x20
	.byte	0x2d
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x20
	.byte	0x2e
	.byte	0x16
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x5ae6
	.uleb128 0x1b
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x4
	.byte	0x20
	.byte	0x26
	.byte	0xb
	.long	0x5b94
	.uleb128 0x1c
	.ascii "FLAGS\0"
	.byte	0x20
	.byte	0x2f
	.byte	0xb
	.long	0x5b51
	.uleb128 0x1c
	.ascii "__dummy\0"
	.byte	0x20
	.byte	0x31
	.byte	0x13
	.long	0x4ca3
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x20
	.byte	0x38
	.byte	0x2a
	.long	0x5bac
	.uleb128 0x6
	.byte	0x4
	.long	0x5b56
	.uleb128 0x6
	.byte	0x4
	.long	0x5b94
	.uleb128 0x10
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x18
	.byte	0x21
	.byte	0x2d
	.byte	0x14
	.long	0x5c7f
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x21
	.byte	0x2f
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x21
	.byte	0x30
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x21
	.byte	0x31
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x21
	.byte	0x32
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x21
	.byte	0x33
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.ascii "SIGNATURE1\0"
	.byte	0x21
	.byte	0x35
	.byte	0x13
	.long	0x4ca3
	.byte	0x4
	.uleb128 0x11
	.ascii "SIGNATURE2\0"
	.byte	0x21
	.byte	0x36
	.byte	0x13
	.long	0x4ca3
	.byte	0x8
	.uleb128 0x11
	.ascii "ABS\0"
	.byte	0x21
	.byte	0x38
	.byte	0x19
	.long	0x4f46
	.byte	0xc
	.uleb128 0x11
	.ascii "SIGN\0"
	.byte	0x21
	.byte	0x39
	.byte	0xe
	.long	0xbb
	.byte	0x10
	.uleb128 0x1e
	.ascii "IS_STATIC\0"
	.byte	0x21
	.byte	0x3b
	.byte	0x12
	.long	0xd2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.ascii "NUMBER_HEADER\0"
	.byte	0x21
	.byte	0x3c
	.byte	0x7
	.long	0x5bb8
	.uleb128 0x13
	.ascii "ep_uint\0"
	.byte	0x21
	.byte	0x42
	.byte	0x22
	.long	0x5ac8
	.uleb128 0x13
	.ascii "number_zero\0"
	.byte	0x21
	.byte	0x45
	.byte	0x1a
	.long	0x5c7f
	.uleb128 0x13
	.ascii "number_one\0"
	.byte	0x21
	.byte	0x48
	.byte	0x1a
	.long	0x5c7f
	.uleb128 0x13
	.ascii "number_minus_one\0"
	.byte	0x21
	.byte	0x4b
	.byte	0x1a
	.long	0x5c7f
	.uleb128 0x21
	.ascii "uint_number_zero\0"
	.byte	0x21
	.byte	0x4e
	.byte	0x15
	.long	0x4f46
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_zero
	.uleb128 0x21
	.ascii "uint_number_one\0"
	.byte	0x21
	.byte	0x51
	.byte	0x15
	.long	0x4f46
	.uleb128 0x5
	.byte	0x3
	.long	_uint_number_one
	.uleb128 0x13
	.ascii "statistics_info\0"
	.byte	0x21
	.byte	0x54
	.byte	0x20
	.long	0x4d99
	.uleb128 0x21
	.ascii "hLocalHeap\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.long	0x74a
	.uleb128 0x5
	.byte	0x3
	.long	_hLocalHeap
	.uleb128 0x22
	.long	0x5ca5
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.long	_number_zero
	.uleb128 0x22
	.long	0x5cb9
	.byte	0x1
	.byte	0x2d
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.long	_number_one
	.uleb128 0x22
	.long	0x5ccc
	.byte	0x1
	.byte	0x2e
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.long	_number_minus_one
	.uleb128 0x23
	.ascii "DeallocateHeapArea\0"
	.byte	0x1
	.word	0x168
	.byte	0x6
	.long	LFB4248
	.long	LFE4248-LFB4248
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dad
	.uleb128 0x24
	.long	LVL10
	.long	0x62da
	.byte	0
	.uleb128 0x25
	.ascii "AllocateHeapArea\0"
	.byte	0x1
	.word	0x160
	.byte	0x6
	.long	0x5b1
	.long	LFB4247
	.long	LFE4247-LFB4247
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ddf
	.uleb128 0x24
	.long	LVL9
	.long	0x62f8
	.byte	0
	.uleb128 0x26
	.ascii "Initialize_Memory\0"
	.byte	0x1
	.word	0x12b
	.byte	0x11
	.long	0x4cc7
	.long	LFB4246
	.long	LFE4246-LFB4246
	.uleb128 0x1
	.byte	0x9c
	.long	0x5eb5
	.uleb128 0x27
	.secrel32	LASF6
	.byte	0x1
	.word	0x12d
	.byte	0x15
	.long	0x4cc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.ascii "number_unsigned_zero_ok\0"
	.byte	0x1
	.word	0x12f
	.byte	0xa
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.ascii "number_unsigned_one_ok\0"
	.byte	0x1
	.word	0x130
	.byte	0xa
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.ascii "number_zero_ok\0"
	.byte	0x1
	.word	0x131
	.byte	0xa
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "number_one_ok\0"
	.byte	0x1
	.word	0x132
	.byte	0xa
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.ascii "number_minus_one_ok\0"
	.byte	0x1
	.word	0x133
	.byte	0xa
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.ascii "PMC_Dispose\0"
	.byte	0x1
	.word	0x124
	.byte	0x23
	.ascii "PMC_Dispose@4\0"
	.long	LFB4245
	.long	LFE4245-LFB4245
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f00
	.uleb128 0x2a
	.ascii "p\0"
	.byte	0x1
	.word	0x124
	.byte	0x3f
	.long	0x5b94
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.ascii "np\0"
	.byte	0x1
	.word	0x126
	.byte	0x14
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c7f
	.uleb128 0x2b
	.ascii "PMC_GetConstantValue_I\0"
	.byte	0x1
	.word	0x112
	.byte	0x2e
	.ascii "PMC_GetConstantValue_I@8\0"
	.long	0x4cc7
	.long	LFB4244
	.long	LFE4244-LFB4244
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f6d
	.uleb128 0x2a
	.ascii "type\0"
	.byte	0x1
	.word	0x112
	.byte	0x5d
	.long	0x4cdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "o\0"
	.byte	0x1
	.word	0x112
	.byte	0x74
	.long	0x5bb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x2c
	.ascii "Negate_Imp\0"
	.byte	0x1
	.byte	0xf3
	.byte	0x11
	.long	0x4cc7
	.long	LFB4243
	.long	LFE4243-LFB4243
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fdc
	.uleb128 0x2d
	.ascii "x\0"
	.byte	0x1
	.byte	0xf3
	.byte	0x2b
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.ascii "op\0"
	.byte	0x1
	.byte	0xf3
	.byte	0x3e
	.long	0x5fdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.secrel32	LASF6
	.byte	0x1
	.word	0x104
	.byte	0x15
	.long	0x4cc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.ascii "new_abs\0"
	.byte	0x1
	.word	0x105
	.byte	0x15
	.long	0x4f46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.ascii "o\0"
	.byte	0x1
	.word	0x108
	.byte	0x14
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f00
	.uleb128 0x2c
	.ascii "DuplicateNumber\0"
	.byte	0x1
	.byte	0xcf
	.byte	0x11
	.long	0x4cc7
	.long	LFB4242
	.long	LFE4242-LFB4242
	.uleb128 0x1
	.byte	0x9c
	.long	0x6053
	.uleb128 0x2d
	.ascii "x\0"
	.byte	0x1
	.byte	0xcf
	.byte	0x30
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.ascii "op\0"
	.byte	0x1
	.byte	0xcf
	.byte	0x43
	.long	0x5fdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.secrel32	LASF6
	.byte	0x1
	.byte	0xe5
	.byte	0x15
	.long	0x4cc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.ascii "new_abs\0"
	.byte	0x1
	.byte	0xe6
	.byte	0x15
	.long	0x4f46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.ascii "o\0"
	.byte	0x1
	.byte	0xe9
	.byte	0x14
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x30
	.ascii "CheckNumber\0"
	.byte	0x1
	.byte	0xc8
	.byte	0x11
	.long	0x4cc7
	.long	LFB4241
	.long	LFE4241-LFB4241
	.uleb128 0x1
	.byte	0x9c
	.long	0x6083
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0xc8
	.byte	0x2c
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.ascii "DeallocateNumber\0"
	.byte	0x1
	.byte	0xbf
	.byte	0x6
	.long	LFB4240
	.long	LFE4240-LFB4240
	.uleb128 0x1
	.byte	0x9c
	.long	0x60bd
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0xbf
	.byte	0x26
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	LVL2
	.long	0x6315
	.byte	0
	.uleb128 0x31
	.ascii "DetatchNumber\0"
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.long	LFB4239
	.long	LFE4239-LFB4239
	.uleb128 0x1
	.byte	0x9c
	.long	0x60eb
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0xb8
	.byte	0x23
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.ascii "AllocateNumber\0"
	.byte	0x1
	.byte	0xab
	.byte	0x11
	.long	0x4cc7
	.long	LFB4238
	.long	LFE4238-LFB4238
	.uleb128 0x1
	.byte	0x9c
	.long	0x6163
	.uleb128 0x2d
	.ascii "pp\0"
	.byte	0x1
	.byte	0xab
	.byte	0x30
	.long	0x5fdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.ascii "sign\0"
	.byte	0x1
	.byte	0xab
	.byte	0x39
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.ascii "abs\0"
	.byte	0x1
	.byte	0xab
	.byte	0x4f
	.long	0x4f46
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.ascii "p\0"
	.byte	0x1
	.byte	0xad
	.byte	0x14
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.secrel32	LASF6
	.byte	0x1
	.byte	0xb0
	.byte	0x15
	.long	0x4cc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	LVL1
	.long	0x632e
	.byte	0
	.uleb128 0x2c
	.ascii "AttatchNumber\0"
	.byte	0x1
	.byte	0xa2
	.byte	0x11
	.long	0x4cc7
	.long	LFB4237
	.long	LFE4237-LFB4237
	.uleb128 0x1
	.byte	0x9c
	.long	0x61c3
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0xa2
	.byte	0x2e
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.ascii "sign\0"
	.byte	0x1
	.byte	0xa2
	.byte	0x36
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.ascii "abs\0"
	.byte	0x1
	.byte	0xa2
	.byte	0x4c
	.long	0x4f46
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.secrel32	LASF6
	.byte	0x1
	.byte	0xa4
	.byte	0x15
	.long	0x4cc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x32
	.ascii "CleanUpNumber\0"
	.byte	0x1
	.byte	0x9d
	.byte	0xd
	.long	LFB4236
	.long	LFE4236-LFB4236
	.uleb128 0x1
	.byte	0x9c
	.long	0x61f1
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0x9d
	.byte	0x2a
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.ascii "InitializeNumber\0"
	.byte	0x1
	.byte	0x82
	.byte	0x18
	.long	0x4cc7
	.long	LFB4235
	.long	LFE4235-LFB4235
	.uleb128 0x1
	.byte	0x9c
	.long	0x6245
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0x82
	.byte	0x38
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.ascii "sign\0"
	.byte	0x1
	.byte	0x82
	.byte	0x40
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.ascii "abs\0"
	.byte	0x1
	.byte	0x82
	.byte	0x56
	.long	0x4f46
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x34
	.ascii "FillNumberHeader\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.long	LFB4234
	.long	LFE4234-LFB4234
	.uleb128 0x1
	.byte	0x9c
	.long	0x628f
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x36
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x2f
	.ascii "__p\0"
	.byte	0x1
	.byte	0x6b
	.byte	0x18
	.long	0x573e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x34
	.ascii "ClearNumberHeader\0"
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.long	LFB4233
	.long	LFE4233-LFB4233
	.uleb128 0x1
	.byte	0x9c
	.long	0x62da
	.uleb128 0x2d
	.ascii "p\0"
	.byte	0x1
	.byte	0x34
	.byte	0x37
	.long	0x5f00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x2f
	.ascii "__p\0"
	.byte	0x1
	.byte	0x44
	.byte	0x18
	.long	0x573e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x36
	.ascii "HeapDestroy@4\0"
	.ascii "HeapDestroy\0"
	.byte	0x22
	.byte	0x1d
	.byte	0x43
	.uleb128 0x36
	.ascii "HeapCreate@12\0"
	.ascii "HeapCreate\0"
	.byte	0x22
	.byte	0x1c
	.byte	0x42
	.uleb128 0x36
	.ascii "HeapFree@12\0"
	.ascii "HeapFree\0"
	.byte	0x22
	.byte	0x2c
	.byte	0x43
	.uleb128 0x36
	.ascii "HeapAlloc@12\0"
	.ascii "HeapAlloc\0"
	.byte	0x22
	.byte	0x2a
	.byte	0x42
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF2:
	.ascii "IS_ONE\0"
LASF1:
	.ascii "IS_ZERO\0"
LASF5:
	.ascii "IS_MINUS_ONE\0"
LASF6:
	.ascii "result\0"
LASF0:
	.ascii "refcount\0"
LASF3:
	.ascii "IS_EVEN\0"
LASF4:
	.ascii "IS_POWER_OF_TWO\0"
	.ident	"GCC: (i686-win32-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
