	.file	"pmc_memory.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	hLocalHeap, 8, 3
	.comm	number_zero, 24, 4
	.comm	number_one, 24, 4
	.comm	number_minus_one, 24, 4
	.def	ClearNumberHeader;	.scl	3;	.type	32;	.endef
	.seh_proc	ClearNumberHeader
ClearNumberHeader:
.LFB4364:
	.file 1 "../pmc_memory.c"
	.loc 1 51 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.LBB2:
	.loc 1 55 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 56 16
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 57 12
	movq	-8(%rbp), %rax
	addq	$8, %rax
	.loc 1 57 16
	movq	$0, (%rax)
	.loc 1 58 12
	movq	-8(%rbp), %rax
	addq	$16, %rax
	.loc 1 58 16
	movq	$0, (%rax)
.LBE2:
	.loc 1 84 1
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4364:
	.seh_endproc
	.def	FillNumberHeader;	.scl	3;	.type	32;	.endef
	.seh_proc	FillNumberHeader
FillNumberHeader:
.LFB4365:
	.loc 1 87 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.LBB3:
	.loc 1 91 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 92 16
	movq	-8(%rbp), %rax
	movabsq	$-3689348814741910324, %rdx
	movq	%rdx, (%rax)
	.loc 1 93 12
	movq	-8(%rbp), %rax
	addq	$8, %rax
	.loc 1 93 16
	movq	%rdx, (%rax)
	.loc 1 94 12
	movq	-8(%rbp), %rax
	addq	$16, %rax
	.loc 1 94 16
	movq	%rdx, (%rax)
.LBE3:
	.loc 1 120 1
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4365:
	.seh_endproc
	.def	InitializeNumber;	.scl	3;	.type	32;	.endef
	.seh_proc	InitializeNumber
InitializeNumber:
.LFB4366:
	.loc 1 123 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movq	%r8, 32(%rbp)
	movb	%al, 24(%rbp)
	.loc 1 125 5
	movq	16(%rbp), %rcx
	call	ClearNumberHeader
	.loc 1 126 19
	movq	16(%rbp), %rax
	movl	$1231244656, (%rax)
	.loc 1 127 19
	movq	16(%rbp), %rax
	movl	$1951287667, 4(%rax)
	.loc 1 128 13
	movq	16(%rbp), %rdx
	movzbl	24(%rbp), %eax
	movb	%al, 16(%rdx)
	.loc 1 129 12
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 132 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	40(%rax), %r8
	.loc 1 132 19
	leaq	-8(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	%rax, %rdx
	call	*%r8
.LVL0:
	movl	%eax, -4(%rbp)
	.loc 1 132 8
	cmpl	$0, -4(%rbp)
	je	.L4
	.loc 1 133 16
	movl	-4(%rbp), %eax
	jmp	.L14
.L4:
	.loc 1 134 24
	movl	-8(%rbp), %eax
	andl	$8, %eax
	.loc 1 134 36
	testl	%eax, %eax
	setne	%dl
	.loc 1 134 16
	movq	16(%rbp), %rax
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	20(%rax), %edx
	andl	$-17, %edx
	orl	%ecx, %edx
	movb	%dl, 20(%rax)
	.loc 1 135 32
	cmpb	$0, 24(%rbp)
	jns	.L6
	.loc 1 135 41 discriminator 1
	movl	-8(%rbp), %eax
	andl	$2, %eax
	.loc 1 135 32 discriminator 1
	testl	%eax, %eax
	je	.L6
	.loc 1 135 32 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L7
.L6:
	.loc 1 135 32 discriminator 4
	movl	$0, %eax
.L7:
	.loc 1 135 32 discriminator 6
	andl	$1, %eax
	.loc 1 135 21 is_stmt 1 discriminator 6
	movq	16(%rbp), %rdx
	andl	$1, %eax
	leal	0(,%rax,8), %ecx
	movzbl	20(%rdx), %eax
	andl	$-9, %eax
	orl	%ecx, %eax
	movb	%al, 20(%rdx)
	.loc 1 136 26 discriminator 6
	cmpb	$0, 24(%rbp)
	jle	.L8
	.loc 1 136 35 discriminator 1
	movl	-8(%rbp), %eax
	andl	$2, %eax
	.loc 1 136 26 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 136 26 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L9
.L8:
	.loc 1 136 26 discriminator 4
	movl	$0, %eax
.L9:
	.loc 1 136 26 discriminator 6
	andl	$1, %eax
	.loc 1 136 15 is_stmt 1 discriminator 6
	movq	16(%rbp), %rdx
	andl	$1, %eax
	leal	0(,%rax,4), %ecx
	movzbl	20(%rdx), %eax
	andl	$-5, %eax
	orl	%ecx, %eax
	movb	%al, 20(%rdx)
	.loc 1 137 35 discriminator 6
	cmpb	$0, 24(%rbp)
	jle	.L10
	.loc 1 137 44 discriminator 1
	movl	-8(%rbp), %eax
	andl	$16, %eax
	.loc 1 137 35 discriminator 1
	testl	%eax, %eax
	je	.L10
	.loc 1 137 35 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L11
.L10:
	.loc 1 137 35 discriminator 4
	movl	$0, %eax
.L11:
	.loc 1 137 35 discriminator 6
	andl	$1, %eax
	.loc 1 137 24 is_stmt 1 discriminator 6
	movq	16(%rbp), %rdx
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %ecx
	movzbl	20(%rdx), %eax
	andl	$-33, %eax
	orl	%ecx, %eax
	movb	%al, 20(%rdx)
	.loc 1 138 24 discriminator 6
	movl	-8(%rbp), %eax
	andl	$1, %eax
	.loc 1 138 36 discriminator 6
	testl	%eax, %eax
	setne	%dl
	.loc 1 138 16 discriminator 6
	movq	16(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	20(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 20(%rax)
	.loc 1 140 8 discriminator 6
	cmpb	$0, 24(%rbp)
	je	.L12
	.loc 1 140 19 discriminator 1
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L12
	.loc 1 141 16
	movl	$-256, %eax
	jmp	.L14
.L12:
	.loc 1 143 8
	cmpb	$0, 24(%rbp)
	jne	.L13
	.loc 1 143 22 discriminator 1
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$2, %eax
	.loc 1 143 19 discriminator 1
	testb	%al, %al
	jne	.L13
	.loc 1 144 16
	movl	$-256, %eax
	jmp	.L14
.L13:
	.loc 1 146 12
	movl	$0, %eax
.L14:
	.loc 1 147 1 discriminator 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4366:
	.seh_endproc
	.def	CleanUpNumber;	.scl	3;	.type	32;	.endef
	.seh_proc	CleanUpNumber
CleanUpNumber:
.LFB4367:
	.loc 1 150 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 151 12
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 1 151 5
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL1:
	.loc 1 152 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4367:
	.seh_endproc
	.globl	AttatchNumber
	.def	AttatchNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	AttatchNumber
AttatchNumber:
.LFB4368:
	.loc 1 155 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movq	%r8, 32(%rbp)
	movb	%al, 24(%rbp)
	.loc 1 156 30
	movsbl	24(%rbp), %eax
	movq	32(%rbp), %rdx
	movq	%rdx, %r8
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	InitializeNumber
	movl	%eax, -4(%rbp)
	.loc 1 157 8
	cmpl	$0, -4(%rbp)
	je	.L17
	.loc 1 158 16
	movl	-4(%rbp), %eax
	jmp	.L18
.L17:
	.loc 1 159 18
	movq	16(%rbp), %rax
	movzbl	20(%rax), %edx
	orl	$1, %edx
	movb	%dl, 20(%rax)
	.loc 1 160 12
	movl	$0, %eax
.L18:
	.loc 1 161 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4368:
	.seh_endproc
	.globl	AllocateNumber
	.def	AllocateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	AllocateNumber
AllocateNumber:
.LFB4369:
	.loc 1 164 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movq	%r8, 32(%rbp)
	movb	%al, 24(%rbp)
	.loc 1 165 40
	leaq	hLocalHeap(%rip), %rax
	movq	(%rax), %rax
	movl	$24, %r8d
	movl	$8, %edx
	movq	%rax, %rcx
	movq	__imp_HeapAlloc(%rip), %rax
	call	*%rax
.LVL2:
	movq	%rax, -8(%rbp)
	.loc 1 166 8
	cmpq	$0, -8(%rbp)
	jne	.L20
	.loc 1 167 16
	movl	$-5, %eax
	jmp	.L21
.L20:
	.loc 1 168 30
	movsbl	24(%rbp), %eax
	movq	32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rdx, %r8
	movl	%eax, %edx
	call	InitializeNumber
	movl	%eax, -12(%rbp)
	.loc 1 169 8
	cmpl	$0, -12(%rbp)
	je	.L22
	.loc 1 170 16
	movl	-12(%rbp), %eax
	jmp	.L21
.L22:
	.loc 1 171 18
	movq	-8(%rbp), %rax
	movzbl	20(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 20(%rax)
	.loc 1 172 9
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 173 12
	movl	$0, %eax
.L21:
	.loc 1 174 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4369:
	.seh_endproc
	.globl	DetatchNumber
	.def	DetatchNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DetatchNumber
DetatchNumber:
.LFB4370:
	.loc 1 177 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 178 8
	cmpq	$0, 16(%rbp)
	je	.L27
	.loc 1 178 21 discriminator 1
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$1, %eax
	.loc 1 178 18 discriminator 1
	testb	%al, %al
	je	.L27
	.loc 1 180 5
	movq	16(%rbp), %rcx
	call	CleanUpNumber
	jmp	.L23
.L27:
	.loc 1 179 9
	nop
.L23:
	.loc 1 181 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4370:
	.seh_endproc
	.globl	DeallocateNumber
	.def	DeallocateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DeallocateNumber
DeallocateNumber:
.LFB4371:
	.loc 1 184 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 185 8
	cmpq	$0, 16(%rbp)
	je	.L32
	.loc 1 185 18 discriminator 1
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L32
	.loc 1 187 5
	movq	16(%rbp), %rcx
	call	CleanUpNumber
	.loc 1 188 5
	movq	16(%rbp), %rcx
	call	FillNumberHeader
	.loc 1 189 5
	leaq	hLocalHeap(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rbp), %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_HeapFree(%rip), %rax
	call	*%rax
.LVL3:
	jmp	.L28
.L32:
	.loc 1 186 9
	nop
.L28:
	.loc 1 190 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4371:
	.seh_endproc
	.globl	CheckNumber
	.def	CheckNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	CheckNumber
CheckNumber:
.LFB4372:
	.loc 1 193 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 194 10
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 194 8
	cmpl	$1231244656, %eax
	jne	.L34
	.loc 1 194 121 discriminator 1
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 194 117 discriminator 1
	cmpl	$1951287667, %eax
	je	.L35
.L34:
	.loc 1 195 16
	movl	$-257, %eax
	jmp	.L36
.L35:
	.loc 1 196 12
	movl	$0, %eax
.L36:
	.loc 1 197 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4372:
	.seh_endproc
	.globl	DuplicateNumber
	.def	DuplicateNumber;	.scl	2;	.type	32;	.endef
	.seh_proc	DuplicateNumber
DuplicateNumber:
.LFB4373:
	.loc 1 200 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 201 9
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$1, %eax
	.loc 1 201 8
	testb	%al, %al
	je	.L38
	.loc 1 203 13
	movq	24(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 204 16
	movl	$0, %eax
	jmp	.L45
.L38:
	.loc 1 206 9
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$2, %eax
	.loc 1 206 8
	testb	%al, %al
	je	.L40
	.loc 1 208 13
	movq	24(%rbp), %rax
	leaq	number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 209 16
	movl	$0, %eax
	jmp	.L45
.L40:
	.loc 1 211 9
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$4, %eax
	.loc 1 211 8
	testb	%al, %al
	je	.L41
	.loc 1 213 13
	movq	24(%rbp), %rax
	leaq	number_one(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 214 16
	movl	$0, %eax
	jmp	.L45
.L41:
	.loc 1 216 9
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$8, %eax
	.loc 1 216 8
	testb	%al, %al
	je	.L42
	.loc 1 218 13
	movq	24(%rbp), %rax
	leaq	number_minus_one(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 219 16
	movl	$0, %eax
	jmp	.L45
.L42:
	.loc 1 223 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 1 223 19
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL4:
	movl	%eax, -4(%rbp)
	.loc 1 223 8
	cmpl	$0, -4(%rbp)
	je	.L43
	.loc 1 224 16
	movl	-4(%rbp), %eax
	jmp	.L45
.L43:
	.loc 1 226 19
	movq	-16(%rbp), %rcx
	.loc 1 226 39
	movq	16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 1 226 19
	movsbl	%al, %edx
	leaq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 1 226 8
	cmpl	$0, -4(%rbp)
	je	.L44
	.loc 1 228 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 1 228 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL5:
	.loc 1 229 16
	movl	-4(%rbp), %eax
	jmp	.L45
.L44:
	.loc 1 231 9
	movq	-24(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 232 12
	movl	$0, %eax
.L45:
	.loc 1 233 1 discriminator 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4373:
	.seh_endproc
	.globl	Negate_Imp
	.def	Negate_Imp;	.scl	2;	.type	32;	.endef
	.seh_proc	Negate_Imp
Negate_Imp:
.LFB4374:
	.loc 1 236 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 237 9
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$2, %eax
	.loc 1 237 8
	testb	%al, %al
	je	.L47
	.loc 1 239 13
	movq	24(%rbp), %rax
	leaq	number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 240 16
	movl	$0, %eax
	jmp	.L53
.L47:
	.loc 1 242 9
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$4, %eax
	.loc 1 242 8
	testb	%al, %al
	je	.L49
	.loc 1 244 13
	movq	24(%rbp), %rax
	leaq	number_minus_one(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 245 16
	movl	$0, %eax
	jmp	.L53
.L49:
	.loc 1 247 9
	movq	16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$8, %eax
	.loc 1 247 8
	testb	%al, %al
	je	.L50
	.loc 1 249 13
	movq	24(%rbp), %rax
	leaq	number_one(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 250 16
	movl	$0, %eax
	jmp	.L53
.L50:
	.loc 1 254 26
	movq	.refptr.ep_uint(%rip), %rax
	movq	88(%rax), %r8
	.loc 1 254 19
	movq	16(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	*%r8
.LVL6:
	movl	%eax, -4(%rbp)
	.loc 1 254 8
	cmpl	$0, -4(%rbp)
	je	.L51
	.loc 1 255 16
	movl	-4(%rbp), %eax
	jmp	.L53
.L51:
	.loc 1 257 19
	movq	-16(%rbp), %rcx
	.loc 1 257 40
	movq	16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 1 257 19
	negl	%eax
	movsbl	%al, %edx
	leaq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	AllocateNumber
	movl	%eax, -4(%rbp)
	.loc 1 257 8
	cmpl	$0, -4(%rbp)
	je	.L52
	.loc 1 259 16
	movq	.refptr.ep_uint(%rip), %rax
	movq	32(%rax), %rax
	.loc 1 259 9
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	call	*%rax
.LVL7:
	.loc 1 260 16
	movl	-4(%rbp), %eax
	jmp	.L53
.L52:
	.loc 1 262 9
	movq	-24(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 263 12
	movl	$0, %eax
.L53:
	.loc 1 264 1 discriminator 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4374:
	.seh_endproc
	.globl	PMC_GetConstantValue_I
	.def	PMC_GetConstantValue_I;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_GetConstantValue_I
PMC_GetConstantValue_I:
.LFB4375:
	.loc 1 267 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpl	$2, 16(%rbp)
	je	.L55
	cmpl	$3, 16(%rbp)
	je	.L56
	cmpl	$1, 16(%rbp)
	jne	.L57
	.loc 1 271 12
	movq	24(%rbp), %rax
	leaq	number_zero(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 272 16
	movl	$0, %eax
	jmp	.L58
.L55:
	.loc 1 274 12
	movq	24(%rbp), %rax
	leaq	number_one(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 275 16
	movl	$0, %eax
	jmp	.L58
.L56:
	.loc 1 277 12
	movq	24(%rbp), %rax
	leaq	number_minus_one(%rip), %rdx
	movq	%rdx, (%rax)
	.loc 1 278 16
	movl	$0, %eax
	jmp	.L58
.L57:
	.loc 1 280 16
	movl	$-1, %eax
.L58:
	.loc 1 282 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4375:
	.seh_endproc
	.globl	PMC_Dispose
	.def	PMC_Dispose;	.scl	2;	.type	32;	.endef
	.seh_proc	PMC_Dispose
PMC_Dispose:
.LFB4376:
	.loc 1 285 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 286 20
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 287 5
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	DeallocateNumber
	.loc 1 288 5
	nop
	.loc 1 289 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4376:
	.seh_endproc
	.globl	Initialize_Memory
	.def	Initialize_Memory;	.scl	2;	.type	32;	.endef
	.seh_proc	Initialize_Memory
Initialize_Memory:
.LFB4377:
	.loc 1 292 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	.loc 1 293 21
	movl	$0, -4(%rbp)
	.loc 1 295 10
	movl	$1, -20(%rbp)
	.loc 1 296 10
	movl	$1, -24(%rbp)
	.loc 1 297 10
	movl	$1, -8(%rbp)
	.loc 1 298 10
	movl	$1, -12(%rbp)
	.loc 1 299 10
	movl	$1, -16(%rbp)
	.loc 1 301 21
	movq	$0, -32(%rbp)
	.loc 1 302 21
	movq	$0, -40(%rbp)
	.loc 1 304 8
	cmpl	$0, -4(%rbp)
	jne	.L62
	.loc 1 306 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	48(%rax), %r8
	.loc 1 306 23
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$1, %ecx
	call	*%r8
.LVL8:
	movl	%eax, -4(%rbp)
	.loc 1 306 12
	cmpl	$0, -4(%rbp)
	jne	.L62
	.loc 1 307 37
	movl	$1, -20(%rbp)
.L62:
	.loc 1 310 8
	cmpl	$0, -4(%rbp)
	jne	.L63
	.loc 1 312 30
	movq	.refptr.ep_uint(%rip), %rax
	movq	48(%rax), %r8
	.loc 1 312 23
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %ecx
	call	*%r8
.LVL9:
	movl	%eax, -4(%rbp)
	.loc 1 312 12
	cmpl	$0, -4(%rbp)
	jne	.L63
	.loc 1 313 36
	movl	$1, -24(%rbp)
.L63:
	.loc 1 316 8
	cmpl	$0, -4(%rbp)
	jne	.L64
	.loc 1 318 23
	movq	-32(%rbp), %rax
	movq	%rax, %r8
	movl	$0, %edx
	leaq	number_zero(%rip), %rax
	movq	%rax, %rcx
	call	AttatchNumber
	movl	%eax, -4(%rbp)
	.loc 1 318 12
	cmpl	$0, -4(%rbp)
	jne	.L64
	.loc 1 319 28
	movl	$1, -8(%rbp)
.L64:
	.loc 1 322 8
	cmpl	$0, -4(%rbp)
	jne	.L65
	.loc 1 324 23
	movq	-40(%rbp), %rax
	movq	%rax, %r8
	movl	$1, %edx
	leaq	number_one(%rip), %rax
	movq	%rax, %rcx
	call	AttatchNumber
	movl	%eax, -4(%rbp)
	.loc 1 324 12
	cmpl	$0, -4(%rbp)
	jne	.L65
	.loc 1 325 27
	movl	$1, -12(%rbp)
.L65:
	.loc 1 328 8
	cmpl	$0, -4(%rbp)
	jne	.L66
	.loc 1 330 23
	movq	-40(%rbp), %rax
	movq	%rax, %r8
	movl	$-1, %edx
	leaq	number_minus_one(%rip), %rax
	movq	%rax, %rcx
	call	AttatchNumber
	movl	%eax, -4(%rbp)
	.loc 1 330 12
	cmpl	$0, -4(%rbp)
	jne	.L66
	.loc 1 331 33
	movl	$1, -16(%rbp)
.L66:
	.loc 1 334 8
	cmpl	$0, -4(%rbp)
	je	.L67
	.loc 1 336 12
	cmpl	$0, -8(%rbp)
	je	.L68
	.loc 1 337 13
	leaq	number_zero(%rip), %rax
	movq	%rax, %rcx
	call	DetatchNumber
.L68:
	.loc 1 338 12
	cmpl	$0, -12(%rbp)
	je	.L69
	.loc 1 339 13
	leaq	number_one(%rip), %rax
	movq	%rax, %rcx
	call	DetatchNumber
.L69:
	.loc 1 340 12
	cmpl	$0, -16(%rbp)
	je	.L67
	.loc 1 341 13
	leaq	number_minus_one(%rip), %rax
	movq	%rax, %rcx
	call	DetatchNumber
.L67:
	.loc 1 344 12
	movl	-4(%rbp), %eax
	.loc 1 345 1
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4377:
	.seh_endproc
	.globl	AllocateHeapArea
	.def	AllocateHeapArea;	.scl	2;	.type	32;	.endef
	.seh_proc	AllocateHeapArea
AllocateHeapArea:
.LFB4378:
	.loc 1 348 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 1 349 18
	movl	$0, %r8d
	movl	$4096, %edx
	movl	$0, %ecx
	movq	__imp_HeapCreate(%rip), %rax
	call	*%rax
.LVL10:
	movq	%rax, %rdx
	.loc 1 349 16
	leaq	hLocalHeap(%rip), %rax
	movq	%rdx, (%rax)
	.loc 1 350 20
	leaq	hLocalHeap(%rip), %rax
	movq	(%rax), %rax
	.loc 1 350 8
	testq	%rax, %rax
	jne	.L72
	.loc 1 351 16
	movl	$0, %eax
	jmp	.L73
.L72:
	.loc 1 352 12
	movl	$1, %eax
.L73:
	.loc 1 353 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4378:
	.seh_endproc
	.globl	DeallocateHeapArea
	.def	DeallocateHeapArea;	.scl	2;	.type	32;	.endef
	.seh_proc	DeallocateHeapArea
DeallocateHeapArea:
.LFB4379:
	.loc 1 356 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 1 357 20
	leaq	hLocalHeap(%rip), %rax
	movq	(%rax), %rax
	.loc 1 357 8
	testq	%rax, %rax
	je	.L76
	.loc 1 359 9
	leaq	hLocalHeap(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movq	__imp_HeapDestroy(%rip), %rax
	call	*%rax
.LVL11:
	.loc 1 360 20
	leaq	hLocalHeap(%rip), %rax
	movq	$0, (%rax)
.L76:
	.loc 1 362 1
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4379:
	.seh_endproc
.Letext0:
	.file 2 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/crtdefs.h"
	.file 3 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/excpt.h"
	.file 4 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/minwindef.h"
	.file 5 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/ctype.h"
	.file 6 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winnt.h"
	.file 7 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/guiddef.h"
	.file 8 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.file 9 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/malloc.h"
	.file 10 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/rpcdce.h"
	.file 11 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/wtypesbase.h"
	.file 12 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/unknwnbase.h"
	.file 13 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/objidlbase.h"
	.file 14 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/cguid.h"
	.file 15 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/wtypes.h"
	.file 16 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/combaseapi.h"
	.file 17 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/objidl.h"
	.file 18 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oleidl.h"
	.file 19 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/servprov.h"
	.file 20 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oaidl.h"
	.file 21 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/msxml.h"
	.file 22 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/urlmon.h"
	.file 23 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/propidl.h"
	.file 24 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/oleauto.h"
	.file 25 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winioctl.h"
	.file 26 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winsmcrd.h"
	.file 27 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/winscard.h"
	.file 28 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/commdlg.h"
	.file 29 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/stdint.h"
	.file 30 "Z:/Sources/Lunor/Repos/rougemeilland/Palmtree.Math.Core.Uint/Palmtree.Math.Core.Uint/pmc.h"
	.file 31 "../pmc_sint_internal.h"
	.file 32 "C:/GNU/MINGW64/x86_64-8.1.0-win32-seh-rt_v6-rev0/mingw64/x86_64-w64-mingw32/include/heapapi.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x6347
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 8.1.0 -mtune=core2 -march=nocona -g\0"
	.byte	0xc
	.ascii "../pmc_memory.c\0"
	.ascii "Z:\\\\Sources\\\\Lunor\\\\Repos\\\\rougemeilland\\\\Palmtree.Math.Core.Sint\\\\Palmtree.Math.Core.Sint\\\\myproject\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x2
	.byte	0x23
	.byte	0x2a
	.long	0xda
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.ascii "wchar_t\0"
	.byte	0x2
	.byte	0x62
	.byte	0x18
	.long	0x115
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.long	0x115
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x5
	.ascii "pthreadlocinfo\0"
	.byte	0x2
	.word	0x1a8
	.byte	0x28
	.long	0x15b
	.uleb128 0x6
	.byte	0x8
	.long	0x161
	.uleb128 0x7
	.ascii "threadlocaleinfostruct\0"
	.word	0x160
	.byte	0x2
	.word	0x1bc
	.byte	0x10
	.long	0x30b
	.uleb128 0x8
	.secrel32	.LASF0
	.byte	0x2
	.word	0x1bd
	.byte	0x7
	.long	0x130
	.byte	0
	.uleb128 0x9
	.ascii "lc_codepage\0"
	.byte	0x2
	.word	0x1be
	.byte	0x10
	.long	0x458
	.byte	0x4
	.uleb128 0x9
	.ascii "lc_collate_cp\0"
	.byte	0x2
	.word	0x1bf
	.byte	0x10
	.long	0x458
	.byte	0x8
	.uleb128 0x9
	.ascii "lc_handle\0"
	.byte	0x2
	.word	0x1c0
	.byte	0x11
	.long	0x468
	.byte	0xc
	.uleb128 0x9
	.ascii "lc_id\0"
	.byte	0x2
	.word	0x1c1
	.byte	0x9
	.long	0x48d
	.byte	0x24
	.uleb128 0x9
	.ascii "lc_category\0"
	.byte	0x2
	.word	0x1c7
	.byte	0x5
	.long	0x49d
	.byte	0x48
	.uleb128 0xa
	.ascii "lc_clike\0"
	.byte	0x2
	.word	0x1c8
	.byte	0x7
	.long	0x130
	.word	0x108
	.uleb128 0xa
	.ascii "mb_cur_max\0"
	.byte	0x2
	.word	0x1c9
	.byte	0x7
	.long	0x130
	.word	0x10c
	.uleb128 0xa
	.ascii "lconv_intl_refcount\0"
	.byte	0x2
	.word	0x1ca
	.byte	0x8
	.long	0x452
	.word	0x110
	.uleb128 0xa
	.ascii "lconv_num_refcount\0"
	.byte	0x2
	.word	0x1cb
	.byte	0x8
	.long	0x452
	.word	0x118
	.uleb128 0xa
	.ascii "lconv_mon_refcount\0"
	.byte	0x2
	.word	0x1cc
	.byte	0x8
	.long	0x452
	.word	0x120
	.uleb128 0xa
	.ascii "lconv\0"
	.byte	0x2
	.word	0x1cd
	.byte	0x11
	.long	0x4b4
	.word	0x128
	.uleb128 0xa
	.ascii "ctype1_refcount\0"
	.byte	0x2
	.word	0x1ce
	.byte	0x8
	.long	0x452
	.word	0x130
	.uleb128 0xa
	.ascii "ctype1\0"
	.byte	0x2
	.word	0x1cf
	.byte	0x13
	.long	0x4ba
	.word	0x138
	.uleb128 0xa
	.ascii "pctype\0"
	.byte	0x2
	.word	0x1d0
	.byte	0x19
	.long	0x4c0
	.word	0x140
	.uleb128 0xa
	.ascii "pclmap\0"
	.byte	0x2
	.word	0x1d1
	.byte	0x18
	.long	0x4c6
	.word	0x148
	.uleb128 0xa
	.ascii "pcumap\0"
	.byte	0x2
	.word	0x1d2
	.byte	0x18
	.long	0x4c6
	.word	0x150
	.uleb128 0xa
	.ascii "lc_time_curr\0"
	.byte	0x2
	.word	0x1d3
	.byte	0x1a
	.long	0x4f2
	.word	0x158
	.byte	0
	.uleb128 0x5
	.ascii "pthreadmbcinfo\0"
	.byte	0x2
	.word	0x1a9
	.byte	0x25
	.long	0x323
	.uleb128 0x6
	.byte	0x8
	.long	0x329
	.uleb128 0xb
	.ascii "threadmbcinfostruct\0"
	.uleb128 0xc
	.ascii "localeinfo_struct\0"
	.byte	0x10
	.byte	0x2
	.word	0x1ac
	.byte	0x10
	.long	0x37f
	.uleb128 0x9
	.ascii "locinfo\0"
	.byte	0x2
	.word	0x1ad
	.byte	0x12
	.long	0x143
	.byte	0
	.uleb128 0x9
	.ascii "mbcinfo\0"
	.byte	0x2
	.word	0x1ae
	.byte	0x12
	.long	0x30b
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "_locale_tstruct\0"
	.byte	0x2
	.word	0x1af
	.byte	0x3
	.long	0x33e
	.uleb128 0xc
	.ascii "tagLC_ID\0"
	.byte	0x6
	.byte	0x2
	.word	0x1b3
	.byte	0x10
	.long	0x3e7
	.uleb128 0x9
	.ascii "wLanguage\0"
	.byte	0x2
	.word	0x1b4
	.byte	0x12
	.long	0x115
	.byte	0
	.uleb128 0x9
	.ascii "wCountry\0"
	.byte	0x2
	.word	0x1b5
	.byte	0x12
	.long	0x115
	.byte	0x2
	.uleb128 0x9
	.ascii "wCodePage\0"
	.byte	0x2
	.word	0x1b6
	.byte	0x12
	.long	0x115
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii "LC_ID\0"
	.byte	0x2
	.word	0x1b7
	.byte	0x3
	.long	0x398
	.uleb128 0xd
	.byte	0x20
	.byte	0x2
	.word	0x1c2
	.byte	0x3
	.long	0x446
	.uleb128 0x9
	.ascii "locale\0"
	.byte	0x2
	.word	0x1c3
	.byte	0xb
	.long	0x446
	.byte	0
	.uleb128 0x9
	.ascii "wlocale\0"
	.byte	0x2
	.word	0x1c4
	.byte	0xe
	.long	0x44c
	.byte	0x8
	.uleb128 0x8
	.secrel32	.LASF0
	.byte	0x2
	.word	0x1c5
	.byte	0xa
	.long	0x452
	.byte	0x10
	.uleb128 0x9
	.ascii "wrefcount\0"
	.byte	0x2
	.word	0x1c6
	.byte	0xa
	.long	0x452
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc3
	.uleb128 0x6
	.byte	0x8
	.long	0x105
	.uleb128 0x6
	.byte	0x8
	.long	0x130
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xe
	.long	0x478
	.long	0x478
	.uleb128 0xf
	.long	0xda
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xe
	.long	0x3e7
	.long	0x49d
	.uleb128 0xf
	.long	0xda
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x3f6
	.long	0x4ad
	.uleb128 0xf
	.long	0xda
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.ascii "lconv\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4ad
	.uleb128 0x6
	.byte	0x8
	.long	0x115
	.uleb128 0x6
	.byte	0x8
	.long	0x12b
	.uleb128 0x6
	.byte	0x8
	.long	0x4dd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.long	0x4cc
	.uleb128 0xb
	.ascii "__lc_time_data\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4e2
	.uleb128 0x3
	.ascii "_PHNDLR\0"
	.byte	0x3
	.byte	0x3f
	.byte	0x2e
	.long	0x508
	.uleb128 0x6
	.byte	0x8
	.long	0x50e
	.uleb128 0x10
	.long	0x519
	.uleb128 0x11
	.long	0x130
	.byte	0
	.uleb128 0x12
	.ascii "_XCPT_ACTION\0"
	.byte	0x10
	.byte	0x3
	.byte	0x41
	.byte	0xa
	.long	0x565
	.uleb128 0x13
	.ascii "XcptNum\0"
	.byte	0x3
	.byte	0x42
	.byte	0x13
	.long	0x478
	.byte	0
	.uleb128 0x13
	.ascii "SigNum\0"
	.byte	0x3
	.byte	0x43
	.byte	0x9
	.long	0x130
	.byte	0x4
	.uleb128 0x13
	.ascii "XcptAction\0"
	.byte	0x3
	.byte	0x44
	.byte	0xd
	.long	0x4f8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x519
	.long	0x570
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.ascii "_XcptActTab\0"
	.byte	0x3
	.byte	0x47
	.byte	0x1e
	.long	0x565
	.uleb128 0x15
	.ascii "_XcptActTabCount\0"
	.byte	0x3
	.byte	0x48
	.byte	0xe
	.long	0x130
	.uleb128 0x15
	.ascii "_XcptActTabSize\0"
	.byte	0x3
	.byte	0x49
	.byte	0xe
	.long	0x130
	.uleb128 0x15
	.ascii "_First_FPE_Indx\0"
	.byte	0x3
	.byte	0x4a
	.byte	0xe
	.long	0x130
	.uleb128 0x15
	.ascii "_Num_FPE\0"
	.byte	0x3
	.byte	0x4b
	.byte	0xe
	.long	0x130
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x3
	.ascii "BOOL\0"
	.byte	0x4
	.byte	0x83
	.byte	0xf
	.long	0x130
	.uleb128 0x3
	.ascii "DWORD\0"
	.byte	0x4
	.byte	0x8d
	.byte	0x19
	.long	0x478
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x458
	.uleb128 0x15
	.ascii "__imp__pctype\0"
	.byte	0x5
	.byte	0x2b
	.byte	0x1c
	.long	0x620
	.uleb128 0x6
	.byte	0x8
	.long	0x4ba
	.uleb128 0x15
	.ascii "__imp__wctype\0"
	.byte	0x5
	.byte	0x3b
	.byte	0x1c
	.long	0x620
	.uleb128 0x15
	.ascii "__imp__pwctype\0"
	.byte	0x5
	.byte	0x47
	.byte	0x1c
	.long	0x620
	.uleb128 0xe
	.long	0x4dd
	.long	0x65e
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x653
	.uleb128 0x15
	.ascii "__newclmap\0"
	.byte	0x5
	.byte	0x50
	.byte	0x1e
	.long	0x65e
	.uleb128 0x15
	.ascii "__newcumap\0"
	.byte	0x5
	.byte	0x51
	.byte	0x1e
	.long	0x65e
	.uleb128 0x15
	.ascii "__ptlocinfo\0"
	.byte	0x5
	.byte	0x52
	.byte	0x19
	.long	0x143
	.uleb128 0x15
	.ascii "__ptmbcinfo\0"
	.byte	0x5
	.byte	0x53
	.byte	0x19
	.long	0x30b
	.uleb128 0x15
	.ascii "__globallocalestatus\0"
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.long	0x130
	.uleb128 0x15
	.ascii "__locale_changed\0"
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.long	0x130
	.uleb128 0x15
	.ascii "__initiallocinfo\0"
	.byte	0x5
	.byte	0x56
	.byte	0x28
	.long	0x161
	.uleb128 0x15
	.ascii "__initiallocalestructinfo\0"
	.byte	0x5
	.byte	0x57
	.byte	0x1a
	.long	0x37f
	.uleb128 0x15
	.ascii "__imp___mb_cur_max\0"
	.byte	0x5
	.byte	0xcb
	.byte	0x10
	.long	0x452
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x4cc
	.uleb128 0x5
	.ascii "HANDLE\0"
	.byte	0x6
	.word	0x195
	.byte	0x11
	.long	0x5de
	.uleb128 0x12
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x7
	.byte	0x13
	.byte	0x10
	.long	0x7bb
	.uleb128 0x13
	.ascii "Data1\0"
	.byte	0x7
	.byte	0x14
	.byte	0x11
	.long	0x478
	.byte	0
	.uleb128 0x13
	.ascii "Data2\0"
	.byte	0x7
	.byte	0x15
	.byte	0x12
	.long	0x115
	.byte	0x4
	.uleb128 0x13
	.ascii "Data3\0"
	.byte	0x7
	.byte	0x16
	.byte	0x12
	.long	0x115
	.byte	0x6
	.uleb128 0x13
	.ascii "Data4\0"
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.long	0x7bb
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x4cc
	.long	0x7cb
	.uleb128 0xf
	.long	0xda
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.ascii "GUID\0"
	.byte	0x7
	.byte	0x18
	.byte	0x3
	.long	0x76f
	.uleb128 0x4
	.long	0x7cb
	.uleb128 0x3
	.ascii "IID\0"
	.byte	0x7
	.byte	0x53
	.byte	0xe
	.long	0x7cb
	.uleb128 0x4
	.long	0x7dd
	.uleb128 0x3
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x5b
	.byte	0xe
	.long	0x7cb
	.uleb128 0x4
	.long	0x7ee
	.uleb128 0x3
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.long	0x7cb
	.uleb128 0x4
	.long	0x801
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xe
	.long	0x446
	.long	0x83d
	.uleb128 0xf
	.long	0xda
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "_sys_errlist\0"
	.byte	0x8
	.byte	0xac
	.byte	0x2b
	.long	0x82d
	.uleb128 0x15
	.ascii "_sys_nerr\0"
	.byte	0x8
	.byte	0xad
	.byte	0x29
	.long	0x130
	.uleb128 0x17
	.ascii "__imp___argc\0"
	.byte	0x8
	.word	0x119
	.byte	0x10
	.long	0x452
	.uleb128 0x17
	.ascii "__imp___argv\0"
	.byte	0x8
	.word	0x11d
	.byte	0x13
	.long	0x890
	.uleb128 0x6
	.byte	0x8
	.long	0x896
	.uleb128 0x6
	.byte	0x8
	.long	0x446
	.uleb128 0x17
	.ascii "__imp___wargv\0"
	.byte	0x8
	.word	0x121
	.byte	0x16
	.long	0x8b3
	.uleb128 0x6
	.byte	0x8
	.long	0x8b9
	.uleb128 0x6
	.byte	0x8
	.long	0x44c
	.uleb128 0x17
	.ascii "__imp__environ\0"
	.byte	0x8
	.word	0x127
	.byte	0x13
	.long	0x890
	.uleb128 0x17
	.ascii "__imp__wenviron\0"
	.byte	0x8
	.word	0x12c
	.byte	0x16
	.long	0x8b3
	.uleb128 0x17
	.ascii "__imp__pgmptr\0"
	.byte	0x8
	.word	0x132
	.byte	0x12
	.long	0x896
	.uleb128 0x17
	.ascii "__imp__wpgmptr\0"
	.byte	0x8
	.word	0x137
	.byte	0x15
	.long	0x8b9
	.uleb128 0x17
	.ascii "__imp__osplatform\0"
	.byte	0x8
	.word	0x13c
	.byte	0x19
	.long	0x604
	.uleb128 0x17
	.ascii "__imp__osver\0"
	.byte	0x8
	.word	0x141
	.byte	0x19
	.long	0x604
	.uleb128 0x17
	.ascii "__imp__winver\0"
	.byte	0x8
	.word	0x146
	.byte	0x19
	.long	0x604
	.uleb128 0x17
	.ascii "__imp__winmajor\0"
	.byte	0x8
	.word	0x14b
	.byte	0x19
	.long	0x604
	.uleb128 0x17
	.ascii "__imp__winminor\0"
	.byte	0x8
	.word	0x150
	.byte	0x19
	.long	0x604
	.uleb128 0x15
	.ascii "_amblksiz\0"
	.byte	0x9
	.byte	0x35
	.byte	0x17
	.long	0x458
	.uleb128 0x17
	.ascii "GUID_MAX_POWER_SAVINGS\0"
	.byte	0x6
	.word	0x13a9
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_MIN_POWER_SAVINGS\0"
	.byte	0x6
	.word	0x13aa
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_TYPICAL_POWER_SAVINGS\0"
	.byte	0x6
	.word	0x13ab
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "NO_SUBGROUP_GUID\0"
	.byte	0x6
	.word	0x13ac
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "ALL_POWERSCHEMES_GUID\0"
	.byte	0x6
	.word	0x13ad
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_POWERSCHEME_PERSONALITY\0"
	.byte	0x6
	.word	0x13ae
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ACTIVE_POWERSCHEME\0"
	.byte	0x6
	.word	0x13af
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_IDLE_RESILIENCY_SUBGROUP\0"
	.byte	0x6
	.word	0x13b0
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_IDLE_RESILIENCY_PERIOD\0"
	.byte	0x6
	.word	0x13b1
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DISK_COALESCING_POWERDOWN_TIMEOUT\0"
	.byte	0x6
	.word	0x13b2
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_EXECUTION_REQUIRED_REQUEST_TIMEOUT\0"
	.byte	0x6
	.word	0x13b3
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_SUBGROUP\0"
	.byte	0x6
	.word	0x13b4
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_POWERDOWN_TIMEOUT\0"
	.byte	0x6
	.word	0x13b5
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_ANNOYANCE_TIMEOUT\0"
	.byte	0x6
	.word	0x13b6
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_ADAPTIVE_PERCENT_INCREASE\0"
	.byte	0x6
	.word	0x13b7
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_DIM_TIMEOUT\0"
	.byte	0x6
	.word	0x13b8
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_ADAPTIVE_POWERDOWN\0"
	.byte	0x6
	.word	0x13b9
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_MONITOR_POWER_ON\0"
	.byte	0x6
	.word	0x13ba
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13bb
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DEVICE_POWER_POLICY_VIDEO_DIM_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13bc
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_CURRENT_MONITOR_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13bd
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_ADAPTIVE_DISPLAY_BRIGHTNESS\0"
	.byte	0x6
	.word	0x13be
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_CONSOLE_DISPLAY_STATE\0"
	.byte	0x6
	.word	0x13bf
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ALLOW_DISPLAY_REQUIRED\0"
	.byte	0x6
	.word	0x13c0
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_VIDEO_CONSOLE_LOCK_TIMEOUT\0"
	.byte	0x6
	.word	0x13c1
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ADAPTIVE_POWER_BEHAVIOR_SUBGROUP\0"
	.byte	0x6
	.word	0x13c2
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_NON_ADAPTIVE_INPUT_TIMEOUT\0"
	.byte	0x6
	.word	0x13c3
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DISK_SUBGROUP\0"
	.byte	0x6
	.word	0x13c4
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DISK_POWERDOWN_TIMEOUT\0"
	.byte	0x6
	.word	0x13c5
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DISK_IDLE_TIMEOUT\0"
	.byte	0x6
	.word	0x13c6
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DISK_BURST_IGNORE_THRESHOLD\0"
	.byte	0x6
	.word	0x13c7
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DISK_ADAPTIVE_POWERDOWN\0"
	.byte	0x6
	.word	0x13c8
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SLEEP_SUBGROUP\0"
	.byte	0x6
	.word	0x13c9
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SLEEP_IDLE_THRESHOLD\0"
	.byte	0x6
	.word	0x13ca
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_STANDBY_TIMEOUT\0"
	.byte	0x6
	.word	0x13cb
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_UNATTEND_SLEEP_TIMEOUT\0"
	.byte	0x6
	.word	0x13cc
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_HIBERNATE_TIMEOUT\0"
	.byte	0x6
	.word	0x13cd
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_HIBERNATE_FASTS4_POLICY\0"
	.byte	0x6
	.word	0x13ce
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_CRITICAL_POWER_TRANSITION\0"
	.byte	0x6
	.word	0x13cf
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SYSTEM_AWAYMODE\0"
	.byte	0x6
	.word	0x13d0
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ALLOW_AWAYMODE\0"
	.byte	0x6
	.word	0x13d1
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ALLOW_STANDBY_STATES\0"
	.byte	0x6
	.word	0x13d2
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ALLOW_RTC_WAKE\0"
	.byte	0x6
	.word	0x13d3
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ALLOW_SYSTEM_REQUIRED\0"
	.byte	0x6
	.word	0x13d4
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SYSTEM_BUTTON_SUBGROUP\0"
	.byte	0x6
	.word	0x13d5
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_POWERBUTTON_ACTION\0"
	.byte	0x6
	.word	0x13d6
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SLEEPBUTTON_ACTION\0"
	.byte	0x6
	.word	0x13d7
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_USERINTERFACEBUTTON_ACTION\0"
	.byte	0x6
	.word	0x13d8
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_LIDCLOSE_ACTION\0"
	.byte	0x6
	.word	0x13d9
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_LIDOPEN_POWERSTATE\0"
	.byte	0x6
	.word	0x13da
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_SUBGROUP\0"
	.byte	0x6
	.word	0x13db
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_0\0"
	.byte	0x6
	.word	0x13dc
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_0\0"
	.byte	0x6
	.word	0x13dd
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_0\0"
	.byte	0x6
	.word	0x13de
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_1\0"
	.byte	0x6
	.word	0x13df
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_1\0"
	.byte	0x6
	.word	0x13e0
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_1\0"
	.byte	0x6
	.word	0x13e1
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_2\0"
	.byte	0x6
	.word	0x13e2
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_2\0"
	.byte	0x6
	.word	0x13e3
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_2\0"
	.byte	0x6
	.word	0x13e4
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_ACTION_3\0"
	.byte	0x6
	.word	0x13e5
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_LEVEL_3\0"
	.byte	0x6
	.word	0x13e6
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_DISCHARGE_FLAGS_3\0"
	.byte	0x6
	.word	0x13e7
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_SETTINGS_SUBGROUP\0"
	.byte	0x6
	.word	0x13e8
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_THROTTLE_POLICY\0"
	.byte	0x6
	.word	0x13e9
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_THROTTLE_MAXIMUM\0"
	.byte	0x6
	.word	0x13ea
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_THROTTLE_MINIMUM\0"
	.byte	0x6
	.word	0x13eb
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_ALLOW_THROTTLING\0"
	.byte	0x6
	.word	0x13ec
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLESTATE_POLICY\0"
	.byte	0x6
	.word	0x13ed
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERFSTATE_POLICY\0"
	.byte	0x6
	.word	0x13ee
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_INCREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13ef
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_DECREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13f0
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_INCREASE_POLICY\0"
	.byte	0x6
	.word	0x13f1
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_DECREASE_POLICY\0"
	.byte	0x6
	.word	0x13f2
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_INCREASE_TIME\0"
	.byte	0x6
	.word	0x13f3
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_DECREASE_TIME\0"
	.byte	0x6
	.word	0x13f4
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_TIME_CHECK\0"
	.byte	0x6
	.word	0x13f5
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_BOOST_POLICY\0"
	.byte	0x6
	.word	0x13f6
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_BOOST_MODE\0"
	.byte	0x6
	.word	0x13f7
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_ALLOW_SCALING\0"
	.byte	0x6
	.word	0x13f8
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_DISABLE\0"
	.byte	0x6
	.word	0x13f9
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_STATE_MAXIMUM\0"
	.byte	0x6
	.word	0x13fa
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_TIME_CHECK\0"
	.byte	0x6
	.word	0x13fb
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_DEMOTE_THRESHOLD\0"
	.byte	0x6
	.word	0x13fc
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_IDLE_PROMOTE_THRESHOLD\0"
	.byte	0x6
	.word	0x13fd
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13fe
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_THRESHOLD\0"
	.byte	0x6
	.word	0x13ff
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_POLICY\0"
	.byte	0x6
	.word	0x1400
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_POLICY\0"
	.byte	0x6
	.word	0x1401
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_MAX_CORES\0"
	.byte	0x6
	.word	0x1402
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_MIN_CORES\0"
	.byte	0x6
	.word	0x1403
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_INCREASE_TIME\0"
	.byte	0x6
	.word	0x1404
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_DECREASE_TIME\0"
	.byte	0x6
	.word	0x1405
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_DECREASE_FACTOR\0"
	.byte	0x6
	.word	0x1406
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_HISTORY_THRESHOLD\0"
	.byte	0x6
	.word	0x1407
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_AFFINITY_WEIGHTING\0"
	.byte	0x6
	.word	0x1408
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_DECREASE_FACTOR\0"
	.byte	0x6
	.word	0x1409
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_HISTORY_THRESHOLD\0"
	.byte	0x6
	.word	0x140a
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_WEIGHTING\0"
	.byte	0x6
	.word	0x140b
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_CORE_PARKING_OVER_UTILIZATION_THRESHOLD\0"
	.byte	0x6
	.word	0x140c
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_CORE_OVERRIDE\0"
	.byte	0x6
	.word	0x140d
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_PERF_STATE\0"
	.byte	0x6
	.word	0x140e
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_CONCURRENCY_THRESHOLD\0"
	.byte	0x6
	.word	0x140f
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PARKING_HEADROOM_THRESHOLD\0"
	.byte	0x6
	.word	0x1410
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_HISTORY\0"
	.byte	0x6
	.word	0x1411
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_PERF_LATENCY_HINT\0"
	.byte	0x6
	.word	0x1412
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PROCESSOR_DISTRIBUTE_UTILITY\0"
	.byte	0x6
	.word	0x1413
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SYSTEM_COOLING_POLICY\0"
	.byte	0x6
	.word	0x1414
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_LOCK_CONSOLE_ON_WAKE\0"
	.byte	0x6
	.word	0x1415
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_DEVICE_IDLE_POLICY\0"
	.byte	0x6
	.word	0x1416
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ACDC_POWER_SOURCE\0"
	.byte	0x6
	.word	0x1417
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_LIDSWITCH_STATE_CHANGE\0"
	.byte	0x6
	.word	0x1418
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BATTERY_PERCENTAGE_REMAINING\0"
	.byte	0x6
	.word	0x1419
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_GLOBAL_USER_PRESENCE\0"
	.byte	0x6
	.word	0x141a
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SESSION_DISPLAY_STATUS\0"
	.byte	0x6
	.word	0x141b
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_SESSION_USER_PRESENCE\0"
	.byte	0x6
	.word	0x141c
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_IDLE_BACKGROUND_TASK\0"
	.byte	0x6
	.word	0x141d
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_BACKGROUND_TASK_NOTIFICATION\0"
	.byte	0x6
	.word	0x141e
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_APPLAUNCH_BUTTON\0"
	.byte	0x6
	.word	0x141f
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PCIEXPRESS_SETTINGS_SUBGROUP\0"
	.byte	0x6
	.word	0x1420
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_PCIEXPRESS_ASPM_POLICY\0"
	.byte	0x6
	.word	0x1421
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_ENABLE_SWITCH_FORCED_SHUTDOWN\0"
	.byte	0x6
	.word	0x1422
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_PERFSTATE_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1620
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_PERFSTATE_DOMAIN_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1621
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_IDLESTATE_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1622
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_PERFSTATES_DATA_GUID\0"
	.byte	0x6
	.word	0x1623
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_IDLESTATES_DATA_GUID\0"
	.byte	0x6
	.word	0x1624
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_IDLE_ACCOUNTING_GUID\0"
	.byte	0x6
	.word	0x1625
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_IDLE_ACCOUNTING_EX_GUID\0"
	.byte	0x6
	.word	0x1626
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_THERMALCONSTRAINT_GUID\0"
	.byte	0x6
	.word	0x1627
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_PERFMON_PERFSTATE_GUID\0"
	.byte	0x6
	.word	0x1628
	.byte	0x17
	.long	0x7d8
	.uleb128 0x17
	.ascii "PPM_THERMAL_POLICY_CHANGE_GUID\0"
	.byte	0x6
	.word	0x1629
	.byte	0x17
	.long	0x7d8
	.uleb128 0x3
	.ascii "RPC_IF_HANDLE\0"
	.byte	0xa
	.byte	0x42
	.byte	0x11
	.long	0x5de
	.uleb128 0x18
	.ascii "tagCOINITBASE\0"
	.byte	0x7
	.byte	0x4
	.long	0x458
	.byte	0x10
	.byte	0x95
	.byte	0xe
	.long	0x1f1c
	.uleb128 0x19
	.ascii "COINITBASE_MULTITHREADED\0"
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "IWinTypesBase_v0_1_c_ifspec\0"
	.byte	0xb
	.byte	0x29
	.byte	0x16
	.long	0x1ece
	.uleb128 0x15
	.ascii "IWinTypesBase_v0_1_s_ifspec\0"
	.byte	0xb
	.byte	0x2a
	.byte	0x16
	.long	0x1ece
	.uleb128 0x15
	.ascii "IID_IUnknown\0"
	.byte	0xc
	.byte	0x57
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_AsyncIUnknown\0"
	.byte	0xc
	.byte	0xbd
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IClassFactory\0"
	.byte	0xc
	.word	0x16d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMarshal\0"
	.byte	0xd
	.word	0x16e
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_INoMarshal\0"
	.byte	0xd
	.word	0x255
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAgileObject\0"
	.byte	0xd
	.word	0x294
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAgileReference\0"
	.byte	0xd
	.word	0x2d2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMarshal2\0"
	.byte	0xd
	.word	0x32d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMalloc\0"
	.byte	0xd
	.word	0x3b2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0xd
	.word	0x469
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IExternalConnection\0"
	.byte	0xd
	.word	0x4cc
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMultiQI\0"
	.byte	0xd
	.word	0x547
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_AsyncIMultiQI\0"
	.byte	0xd
	.word	0x59e
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternalUnknown\0"
	.byte	0xd
	.word	0x60c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumUnknown\0"
	.byte	0xd
	.word	0x668
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumString\0"
	.byte	0xd
	.word	0x706
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISequentialStream\0"
	.byte	0xd
	.word	0x7a2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IStream\0"
	.byte	0xd
	.word	0x84d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0xd
	.word	0x991
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcChannelBuffer2\0"
	.byte	0xd
	.word	0xa3b
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAsyncRpcChannelBuffer\0"
	.byte	0xd
	.word	0xabd
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcChannelBuffer3\0"
	.byte	0xd
	.word	0xb7f
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcSyntaxNegotiate\0"
	.byte	0xd
	.word	0xc99
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0xd
	.word	0xcee
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0xd
	.word	0xd56
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0xd
	.word	0xe1c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IChannelHook\0"
	.byte	0xd
	.word	0xe9f
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IClientSecurity\0"
	.byte	0xd
	.word	0xfc3
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IServerSecurity\0"
	.byte	0xd
	.word	0x106d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcOptions\0"
	.byte	0xd
	.word	0x1113
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IGlobalOptions\0"
	.byte	0xd
	.word	0x11ae
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISurrogate\0"
	.byte	0xd
	.word	0x1221
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0xd
	.word	0x1289
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISynchronize\0"
	.byte	0xd
	.word	0x1312
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISynchronizeHandle\0"
	.byte	0xd
	.word	0x138c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISynchronizeEvent\0"
	.byte	0xd
	.word	0x13e1
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISynchronizeContainer\0"
	.byte	0xd
	.word	0x1441
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISynchronizeMutex\0"
	.byte	0xd
	.word	0x14af
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICancelMethodCalls\0"
	.byte	0xd
	.word	0x151e
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAsyncManager\0"
	.byte	0xd
	.word	0x158a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICallFactory\0"
	.byte	0xd
	.word	0x1608
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRpcHelper\0"
	.byte	0xd
	.word	0x1666
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IReleaseMarshalBuffers\0"
	.byte	0xd
	.word	0x16d1
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IWaitMultiple\0"
	.byte	0xd
	.word	0x172c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAddrTrackingControl\0"
	.byte	0xd
	.word	0x1798
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAddrExclusionControl\0"
	.byte	0xd
	.word	0x17fd
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPipeByte\0"
	.byte	0xd
	.word	0x1868
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPipeLong\0"
	.byte	0xd
	.word	0x18d9
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPipeDouble\0"
	.byte	0xd
	.word	0x194a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IComThreadingInfo\0"
	.byte	0xd
	.word	0x1b24
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IProcessInitControl\0"
	.byte	0xd
	.word	0x1bb2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IFastRundown\0"
	.byte	0xd
	.word	0x1c07
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMarshalingStream\0"
	.byte	0xd
	.word	0x1c4a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICallbackWithNoReentrancyToApplicationSTA\0"
	.byte	0xd
	.word	0x1d09
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_NULL\0"
	.byte	0xe
	.byte	0xd
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "CATID_MARSHALER\0"
	.byte	0xe
	.byte	0xe
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IRpcChannel\0"
	.byte	0xe
	.byte	0xf
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IRpcStub\0"
	.byte	0xe
	.byte	0x10
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IStubManager\0"
	.byte	0xe
	.byte	0x11
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IRpcProxy\0"
	.byte	0xe
	.byte	0x12
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IProxyManager\0"
	.byte	0xe
	.byte	0x13
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IPSFactory\0"
	.byte	0xe
	.byte	0x14
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IInternalMoniker\0"
	.byte	0xe
	.byte	0x15
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IDfReserved1\0"
	.byte	0xe
	.byte	0x16
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IDfReserved2\0"
	.byte	0xe
	.byte	0x17
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IDfReserved3\0"
	.byte	0xe
	.byte	0x18
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "CLSID_StdMarshal\0"
	.byte	0xe
	.byte	0x19
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_AggStdMarshal\0"
	.byte	0xe
	.byte	0x1a
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_StdAsyncActManager\0"
	.byte	0xe
	.byte	0x1b
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "IID_IStub\0"
	.byte	0xe
	.byte	0x1c
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IProxy\0"
	.byte	0xe
	.byte	0x1d
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IEnumGeneric\0"
	.byte	0xe
	.byte	0x1e
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IEnumHolder\0"
	.byte	0xe
	.byte	0x1f
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IEnumCallback\0"
	.byte	0xe
	.byte	0x20
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IOleManager\0"
	.byte	0xe
	.byte	0x21
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IOlePresObj\0"
	.byte	0xe
	.byte	0x22
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IDebug\0"
	.byte	0xe
	.byte	0x23
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "IID_IDebugStream\0"
	.byte	0xe
	.byte	0x24
	.byte	0x14
	.long	0x7e9
	.uleb128 0x15
	.ascii "CLSID_PSGenObject\0"
	.byte	0xe
	.byte	0x25
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_PSClientSite\0"
	.byte	0xe
	.byte	0x26
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_PSClassObject\0"
	.byte	0xe
	.byte	0x27
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xe
	.byte	0x28
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xe
	.byte	0x29
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xe
	.byte	0x2a
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xe
	.byte	0x2b
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xe
	.byte	0x2c
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xe
	.byte	0x2d
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_StaticDib\0"
	.byte	0xe
	.byte	0x2e
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CID_CDfsVolume\0"
	.byte	0xe
	.byte	0x2f
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_DCOMAccessControl\0"
	.byte	0xe
	.byte	0x30
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_GlobalOptions\0"
	.byte	0xe
	.byte	0x31
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xe
	.byte	0x32
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_ComBinding\0"
	.byte	0xe
	.byte	0x33
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_StdEvent\0"
	.byte	0xe
	.byte	0x34
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_ManualResetEvent\0"
	.byte	0xe
	.byte	0x35
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_SynchronizeContainer\0"
	.byte	0xe
	.byte	0x36
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_AddrControl\0"
	.byte	0xe
	.byte	0x37
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xe
	.byte	0x38
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xe
	.byte	0x39
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xe
	.byte	0x3a
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xe
	.byte	0x3b
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xe
	.byte	0x3c
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xe
	.byte	0x3d
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xe
	.byte	0x3e
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDLabel\0"
	.byte	0xe
	.byte	0x3f
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xe
	.byte	0x40
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDListBox\0"
	.byte	0xe
	.byte	0x41
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xe
	.byte	0x42
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xe
	.byte	0x43
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xe
	.byte	0x45
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xe
	.byte	0x46
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xe
	.byte	0x47
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xe
	.byte	0x48
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xe
	.byte	0x49
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4a
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xe
	.byte	0x4b
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4c
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xe
	.byte	0x4d
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xe
	.byte	0x4e
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xe
	.byte	0x4f
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xe
	.byte	0x50
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xe
	.byte	0x51
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xe
	.byte	0x52
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xe
	.byte	0x53
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xe
	.byte	0x54
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xe
	.byte	0x55
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_CSystemPage\0"
	.byte	0xe
	.byte	0x56
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xe
	.byte	0x57
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xe
	.byte	0x58
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xe
	.byte	0x59
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xe
	.byte	0x5a
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xe
	.byte	0x5b
	.byte	0x16
	.long	0x7fc
	.uleb128 0x15
	.ascii "GUID_TRISTATE\0"
	.byte	0xe
	.byte	0x5c
	.byte	0x15
	.long	0x7d8
	.uleb128 0x15
	.ascii "IWinTypes_v0_1_c_ifspec\0"
	.byte	0xf
	.byte	0x28
	.byte	0x16
	.long	0x1ece
	.uleb128 0x15
	.ascii "IWinTypes_v0_1_s_ifspec\0"
	.byte	0xf
	.byte	0x29
	.byte	0x16
	.long	0x1ece
	.uleb128 0x1a
	.ascii "VARENUM\0"
	.byte	0x7
	.byte	0x4
	.long	0x458
	.byte	0xf
	.word	0x200
	.byte	0x6
	.long	0x3132
	.uleb128 0x19
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0x19
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0x19
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0x19
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0x19
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0x19
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0x19
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0x19
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0x19
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0x19
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0x19
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0x19
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0x19
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0x19
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0x19
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0x19
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0x19
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0x19
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0x19
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0x19
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0x19
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0x19
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0x19
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0x19
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0x19
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0x19
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0x19
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0x19
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0x19
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0x19
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0x19
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0x19
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0x19
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0x19
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0x19
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0x19
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0x19
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0x19
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0x19
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0x19
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0x19
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0x19
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x19
	.ascii "VT_VERSIONED_STREAM\0"
	.byte	0x49
	.uleb128 0x1b
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x1b
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x1b
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x1b
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x1b
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x1b
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x1b
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x1b
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x17
	.ascii "IID_IMallocSpy\0"
	.byte	0x11
	.word	0x1dbd
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBindCtx\0"
	.byte	0x11
	.word	0x1f3a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumMoniker\0"
	.byte	0x11
	.word	0x204a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRunnableObject\0"
	.byte	0x11
	.word	0x20e8
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x11
	.word	0x218e
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPersist\0"
	.byte	0x11
	.word	0x2269
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPersistStream\0"
	.byte	0x11
	.word	0x22be
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMoniker\0"
	.byte	0x11
	.word	0x236a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IROTData\0"
	.byte	0x11
	.word	0x2558
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0x11
	.word	0x25b5
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IStorage\0"
	.byte	0x11
	.word	0x2658
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPersistFile\0"
	.byte	0x11
	.word	0x2841
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPersistStorage\0"
	.byte	0x11
	.word	0x28f1
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ILockBytes\0"
	.byte	0x11
	.word	0x29b1
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0x11
	.word	0x2ac0
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0x11
	.word	0x2b6c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRootStorage\0"
	.byte	0x11
	.word	0x2c08
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAdviseSink\0"
	.byte	0x11
	.word	0x2cb3
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_AsyncIAdviseSink\0"
	.byte	0x11
	.word	0x2d73
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAdviseSink2\0"
	.byte	0x11
	.word	0x2ea9
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_AsyncIAdviseSink2\0"
	.byte	0x11
	.word	0x2f2e
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDataObject\0"
	.byte	0x11
	.word	0x2ff4
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x11
	.word	0x3118
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMessageFilter\0"
	.byte	0x11
	.word	0x31d3
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x11
	.word	0x325d
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x11
	.word	0x325f
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x11
	.word	0x3261
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "FMTID_DiscardableInformation\0"
	.byte	0x11
	.word	0x3263
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "FMTID_ImageSummaryInformation\0"
	.byte	0x11
	.word	0x3265
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "FMTID_AudioSummaryInformation\0"
	.byte	0x11
	.word	0x3267
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "FMTID_VideoSummaryInformation\0"
	.byte	0x11
	.word	0x3269
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "FMTID_MediaFileSummaryInformation\0"
	.byte	0x11
	.word	0x326b
	.byte	0x14
	.long	0x80f
	.uleb128 0x17
	.ascii "IID_IClassActivator\0"
	.byte	0x11
	.word	0x3273
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IFillLockBytes\0"
	.byte	0x11
	.word	0x32d5
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IProgressNotify\0"
	.byte	0x11
	.word	0x3389
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ILayoutStorage\0"
	.byte	0x11
	.word	0x33ee
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBlockingLock\0"
	.byte	0x11
	.word	0x3492
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITimeAndNoticeControl\0"
	.byte	0x11
	.word	0x34f7
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOplockStorage\0"
	.byte	0x11
	.word	0x354e
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDirectWriterLock\0"
	.byte	0x11
	.word	0x35d5
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IUrlMon\0"
	.byte	0x11
	.word	0x364d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IForegroundTransfer\0"
	.byte	0x11
	.word	0x36bc
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IThumbnailExtractor\0"
	.byte	0x11
	.word	0x3710
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDummyHICONIncluder\0"
	.byte	0x11
	.word	0x3786
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IProcessLock\0"
	.byte	0x11
	.word	0x37e5
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISurrogateService\0"
	.byte	0x11
	.word	0x3848
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInitializeSpy\0"
	.byte	0x11
	.word	0x38f2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IApartmentShutdown\0"
	.byte	0x11
	.word	0x398a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0x12
	.byte	0xab
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleCache\0"
	.byte	0x12
	.word	0x162
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleCache2\0"
	.byte	0x12
	.word	0x229
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleCacheControl\0"
	.byte	0x12
	.word	0x2d4
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IParseDisplayName\0"
	.byte	0x12
	.word	0x33c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleContainer\0"
	.byte	0x12
	.word	0x39c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleClientSite\0"
	.byte	0x12
	.word	0x417
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleObject\0"
	.byte	0x12
	.word	0x4fe
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IOLETypes_v0_0_c_ifspec\0"
	.byte	0x12
	.word	0x6fe
	.byte	0x16
	.long	0x1ece
	.uleb128 0x17
	.ascii "IOLETypes_v0_0_s_ifspec\0"
	.byte	0x12
	.word	0x6ff
	.byte	0x16
	.long	0x1ece
	.uleb128 0x17
	.ascii "IID_IOleWindow\0"
	.byte	0x12
	.word	0x724
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleLink\0"
	.byte	0x12
	.word	0x79a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleItemContainer\0"
	.byte	0x12
	.word	0x8bf
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0x12
	.word	0x976
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0x12
	.word	0xa1c
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0x12
	.word	0xaf8
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0x12
	.word	0xbf1
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0x12
	.word	0xc91
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IContinue\0"
	.byte	0x12
	.word	0xda4
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IViewObject\0"
	.byte	0x12
	.word	0xdf9
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IViewObject2\0"
	.byte	0x12
	.word	0xf2a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDropSource\0"
	.byte	0x12
	.word	0xfd2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDropTarget\0"
	.byte	0x12
	.word	0x105b
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDropSourceNotify\0"
	.byte	0x12
	.word	0x10ff
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0x12
	.word	0x1176
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IServiceProvider\0"
	.byte	0x13
	.byte	0x4d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_c_ifspec\0"
	.byte	0x14
	.byte	0xf1
	.byte	0x16
	.long	0x1ece
	.uleb128 0x15
	.ascii "IOleAutomationTypes_v1_0_s_ifspec\0"
	.byte	0x14
	.byte	0xf2
	.byte	0x16
	.long	0x1ece
	.uleb128 0x17
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0x14
	.word	0x33b
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0x14
	.word	0x562
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICreateTypeLib\0"
	.byte	0x14
	.word	0x7b2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0x14
	.word	0x8ba
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDispatch\0"
	.byte	0x14
	.word	0x9b6
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumVARIANT\0"
	.byte	0x14
	.word	0xa87
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeComp\0"
	.byte	0x14
	.word	0xb35
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeInfo\0"
	.byte	0x14
	.word	0xbd9
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeInfo2\0"
	.byte	0x14
	.word	0xe50
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeLib\0"
	.byte	0x14
	.word	0x10d6
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeLib2\0"
	.byte	0x14
	.word	0x123d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeChangeEvents\0"
	.byte	0x14
	.word	0x1361
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IErrorInfo\0"
	.byte	0x14
	.word	0x13da
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0x14
	.word	0x147d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0x14
	.word	0x1520
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeFactory\0"
	.byte	0x14
	.word	0x1575
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ITypeMarshal\0"
	.byte	0x14
	.word	0x15d0
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IRecordInfo\0"
	.byte	0x14
	.word	0x1684
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IErrorLog\0"
	.byte	0x14
	.word	0x1820
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPropertyBag\0"
	.byte	0x14
	.word	0x187a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_c_ifspec\0"
	.byte	0x15
	.byte	0xeb
	.byte	0x18
	.long	0x1ece
	.uleb128 0x15
	.ascii "__MIDL_itf_msxml_0000_v0_0_s_ifspec\0"
	.byte	0x15
	.byte	0xec
	.byte	0x18
	.long	0x1ece
	.uleb128 0x15
	.ascii "LIBID_MSXML\0"
	.byte	0x15
	.byte	0xfc
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMImplementation\0"
	.byte	0x15
	.word	0x100
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMNode\0"
	.byte	0x15
	.word	0x127
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocumentFragment\0"
	.byte	0x15
	.word	0x1fd
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocument\0"
	.byte	0x15
	.word	0x266
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMNodeList\0"
	.byte	0x15
	.word	0x375
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMNamedNodeMap\0"
	.byte	0x15
	.word	0x3b0
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMCharacterData\0"
	.byte	0x15
	.word	0x404
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMAttribute\0"
	.byte	0x15
	.word	0x496
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMElement\0"
	.byte	0x15
	.word	0x50f
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMText\0"
	.byte	0x15
	.word	0x5a6
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMComment\0"
	.byte	0x15
	.word	0x625
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMProcessingInstruction\0"
	.byte	0x15
	.word	0x69e
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMCDATASection\0"
	.byte	0x15
	.word	0x717
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMDocumentType\0"
	.byte	0x15
	.word	0x792
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMNotation\0"
	.byte	0x15
	.word	0x80b
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMEntity\0"
	.byte	0x15
	.word	0x87f
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMEntityReference\0"
	.byte	0x15
	.word	0x8f8
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDOMParseError\0"
	.byte	0x15
	.word	0x961
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXTLRuntime\0"
	.byte	0x15
	.word	0x9a6
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "DIID_XMLDOMDocumentEvents\0"
	.byte	0x15
	.word	0xa3d
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_DOMDocument\0"
	.byte	0x15
	.word	0xa5c
	.byte	0x16
	.long	0x7fc
	.uleb128 0x17
	.ascii "CLSID_DOMFreeThreadedDocument\0"
	.byte	0x15
	.word	0xa60
	.byte	0x16
	.long	0x7fc
	.uleb128 0x17
	.ascii "IID_IXMLHttpRequest\0"
	.byte	0x15
	.word	0xa67
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_XMLHTTPRequest\0"
	.byte	0x15
	.word	0xacd
	.byte	0x16
	.long	0x7fc
	.uleb128 0x17
	.ascii "IID_IXMLDSOControl\0"
	.byte	0x15
	.word	0xad4
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_XMLDSOControl\0"
	.byte	0x15
	.word	0xb0d
	.byte	0x16
	.long	0x7fc
	.uleb128 0x17
	.ascii "IID_IXMLElementCollection\0"
	.byte	0x15
	.word	0xb14
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDocument\0"
	.byte	0x15
	.word	0xb4a
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLDocument2\0"
	.byte	0x15
	.word	0xbb2
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLElement\0"
	.byte	0x15
	.word	0xc24
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLElement2\0"
	.byte	0x15
	.word	0xc82
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLAttribute\0"
	.byte	0x15
	.word	0xce5
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IXMLError\0"
	.byte	0x15
	.word	0xd11
	.byte	0x14
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_XMLDocument\0"
	.byte	0x15
	.word	0xd2e
	.byte	0x16
	.long	0x7fc
	.uleb128 0x17
	.ascii "CLSID_SBS_StdURLMoniker\0"
	.byte	0x16
	.word	0x17e
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_HttpProtocol\0"
	.byte	0x16
	.word	0x17f
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_FtpProtocol\0"
	.byte	0x16
	.word	0x180
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_GopherProtocol\0"
	.byte	0x16
	.word	0x181
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_HttpSProtocol\0"
	.byte	0x16
	.word	0x182
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_FileProtocol\0"
	.byte	0x16
	.word	0x183
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_MkProtocol\0"
	.byte	0x16
	.word	0x184
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x185
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_SoftDistExt\0"
	.byte	0x16
	.word	0x186
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_CdlProtocol\0"
	.byte	0x16
	.word	0x187
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_ClassInstallFilter\0"
	.byte	0x16
	.word	0x188
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_InternetSecurityManager\0"
	.byte	0x16
	.word	0x189
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_SBS_InternetZoneManager\0"
	.byte	0x16
	.word	0x18a
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IAsyncMoniker\0"
	.byte	0x16
	.word	0x193
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_StdURLMoniker\0"
	.byte	0x16
	.word	0x194
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_HttpProtocol\0"
	.byte	0x16
	.word	0x195
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_FtpProtocol\0"
	.byte	0x16
	.word	0x196
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_GopherProtocol\0"
	.byte	0x16
	.word	0x197
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_HttpSProtocol\0"
	.byte	0x16
	.word	0x198
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_FileProtocol\0"
	.byte	0x16
	.word	0x199
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_MkProtocol\0"
	.byte	0x16
	.word	0x19a
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_StdURLProtocol\0"
	.byte	0x16
	.word	0x19b
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_UrlMkBindCtx\0"
	.byte	0x16
	.word	0x19c
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_CdlProtocol\0"
	.byte	0x16
	.word	0x19d
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_ClassInstallFilter\0"
	.byte	0x16
	.word	0x19e
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IAsyncBindCtx\0"
	.byte	0x16
	.word	0x19f
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IPersistMoniker\0"
	.byte	0x16
	.word	0x250
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IMonikerProp\0"
	.byte	0x16
	.word	0x321
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBindProtocol\0"
	.byte	0x16
	.word	0x37f
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBinding\0"
	.byte	0x16
	.word	0x3e0
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBindStatusCallback\0"
	.byte	0x16
	.word	0x575
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBindStatusCallbackEx\0"
	.byte	0x16
	.word	0x6a5
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAuthenticate\0"
	.byte	0x16
	.word	0x764
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IAuthenticateEx\0"
	.byte	0x16
	.word	0x7d0
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate\0"
	.byte	0x16
	.word	0x841
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate2\0"
	.byte	0x16
	.word	0x8c1
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IHttpNegotiate3\0"
	.byte	0x16
	.word	0x93b
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IWinInetFileStream\0"
	.byte	0x16
	.word	0x9bf
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IWindowForBindingUI\0"
	.byte	0x16
	.word	0xa30
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICodeInstall\0"
	.byte	0x16
	.word	0xa9b
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IWinInetInfo\0"
	.byte	0x16
	.word	0x10a5
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IHttpSecurity\0"
	.byte	0x16
	.word	0x1112
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IWinInetHttpInfo\0"
	.byte	0x16
	.word	0x1179
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IWinInetHttpTimeouts\0"
	.byte	0x16
	.word	0x11f8
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "SID_BindHost\0"
	.byte	0x16
	.word	0x1335
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBindHost\0"
	.byte	0x16
	.word	0x133f
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternet\0"
	.byte	0x16
	.word	0x144d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetBindInfo\0"
	.byte	0x16
	.word	0x14ac
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetBindInfoEx\0"
	.byte	0x16
	.word	0x1526
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetProtocolRoot\0"
	.byte	0x16
	.word	0x15bf
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetProtocol\0"
	.byte	0x16
	.word	0x1684
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetProtocolSink\0"
	.byte	0x16
	.word	0x181a
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetProtocolSinkStackable\0"
	.byte	0x16
	.word	0x18bd
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetSession\0"
	.byte	0x16
	.word	0x193f
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetThreadSwitch\0"
	.byte	0x16
	.word	0x1a48
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetPriority\0"
	.byte	0x16
	.word	0x1ab2
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetProtocolInfo\0"
	.byte	0x16
	.word	0x1b4e
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "CLSID_InternetSecurityManager\0"
	.byte	0x16
	.word	0x1cb2
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "CLSID_InternetZoneManager\0"
	.byte	0x16
	.word	0x1cb3
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_IInternetSecurityMgrSite\0"
	.byte	0x16
	.word	0x1ccb
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetSecurityManager\0"
	.byte	0x16
	.word	0x1d69
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetHostSecurityManager\0"
	.byte	0x16
	.word	0x210f
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IInternetZoneManager\0"
	.byte	0x16
	.word	0x22c4
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "CLSID_SoftDistExt\0"
	.byte	0x16
	.word	0x269c
	.byte	0x12
	.long	0x7e9
	.uleb128 0x17
	.ascii "IID_ISoftDistExt\0"
	.byte	0x16
	.word	0x26cc
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_ICatalogFileInfo\0"
	.byte	0x16
	.word	0x2778
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IDataFilter\0"
	.byte	0x16
	.word	0x27e6
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEncodingFilterFactory\0"
	.byte	0x16
	.word	0x28a6
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "GUID_CUSTOM_CONFIRMOBJECTSAFETY\0"
	.byte	0x16
	.word	0x2933
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IWrappedProtocol\0"
	.byte	0x16
	.word	0x2941
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IGetBindHandle\0"
	.byte	0x16
	.word	0x29a5
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IBindCallbackRedirect\0"
	.byte	0x16
	.word	0x2a0d
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPropertyStorage\0"
	.byte	0x17
	.word	0x1b7
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x17
	.word	0x304
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumSTATPROPSTG\0"
	.byte	0x17
	.word	0x3a6
	.byte	0x13
	.long	0x7d8
	.uleb128 0x17
	.ascii "IID_IEnumSTATPROPSETSTG\0"
	.byte	0x17
	.word	0x444
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_StdOle\0"
	.byte	0x18
	.byte	0x15
	.byte	0x12
	.long	0x7e9
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_DISK\0"
	.byte	0x19
	.byte	0xc
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDROM\0"
	.byte	0x19
	.byte	0xd
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_PARTITION\0"
	.byte	0x19
	.byte	0xe
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_TAPE\0"
	.byte	0x19
	.byte	0xf
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_WRITEONCEDISK\0"
	.byte	0x19
	.byte	0x10
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_VOLUME\0"
	.byte	0x19
	.byte	0x11
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_MEDIUMCHANGER\0"
	.byte	0x19
	.byte	0x12
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_FLOPPY\0"
	.byte	0x19
	.byte	0x13
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_CDCHANGER\0"
	.byte	0x19
	.byte	0x14
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_STORAGEPORT\0"
	.byte	0x19
	.byte	0x15
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_COMPORT\0"
	.byte	0x19
	.byte	0x16
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR\0"
	.byte	0x19
	.byte	0x17
	.byte	0x13
	.long	0x7d8
	.uleb128 0x12
	.ascii "_SCARD_IO_REQUEST\0"
	.byte	0x8
	.byte	0x1a
	.byte	0xa1
	.byte	0x12
	.long	0x4b9f
	.uleb128 0x13
	.ascii "dwProtocol\0"
	.byte	0x1a
	.byte	0xa2
	.byte	0xb
	.long	0x5ed
	.byte	0
	.uleb128 0x13
	.ascii "cbPciLength\0"
	.byte	0x1a
	.byte	0xa3
	.byte	0xb
	.long	0x5ed
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.ascii "SCARD_IO_REQUEST\0"
	.byte	0x1a
	.byte	0xa4
	.byte	0x5
	.long	0x4b5a
	.uleb128 0x4
	.long	0x4b9f
	.uleb128 0x15
	.ascii "g_rgSCardT0Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x3c
	.long	0x4bb8
	.uleb128 0x15
	.ascii "g_rgSCardT1Pci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x4b
	.long	0x4bb8
	.uleb128 0x15
	.ascii "g_rgSCardRawPci\0"
	.byte	0x1b
	.byte	0x25
	.byte	0x5a
	.long	0x4bb8
	.uleb128 0x15
	.ascii "IID_IPrintDialogCallback\0"
	.byte	0x1c
	.byte	0xe
	.byte	0x13
	.long	0x7d8
	.uleb128 0x15
	.ascii "IID_IPrintDialogServices\0"
	.byte	0x1c
	.byte	0xf
	.byte	0x13
	.long	0x7d8
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x1d
	.byte	0x26
	.byte	0x18
	.long	0x115
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x1d
	.byte	0x27
	.byte	0xd
	.long	0x130
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x1d
	.byte	0x28
	.byte	0x12
	.long	0x458
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x1d
	.byte	0x2a
	.byte	0x2a
	.long	0xda
	.uleb128 0x3
	.ascii "_INT32_T\0"
	.byte	0x1e
	.byte	0x5a
	.byte	0x11
	.long	0x4c56
	.uleb128 0x3
	.ascii "_UINT16_T\0"
	.byte	0x1e
	.byte	0x5d
	.byte	0x12
	.long	0x4c45
	.uleb128 0x3
	.ascii "_UINT32_T\0"
	.byte	0x1e
	.byte	0x5e
	.byte	0x12
	.long	0x4c66
	.uleb128 0x3
	.ascii "_UINT64_T\0"
	.byte	0x1e
	.byte	0x5f
	.byte	0x12
	.long	0x4c77
	.uleb128 0x3
	.ascii "PMC_STATUS_CODE\0"
	.byte	0x1e
	.byte	0x6a
	.byte	0xd
	.long	0x130
	.uleb128 0x3
	.ascii "PMC_NUMBER_TYPE_CODE\0"
	.byte	0x1e
	.byte	0x6c
	.byte	0xd
	.long	0x130
	.uleb128 0x3
	.ascii "PMC_CONSTANT_VALUE_CODE\0"
	.byte	0x1e
	.byte	0x6e
	.byte	0xd
	.long	0x130
	.uleb128 0x3
	.ascii "PMC_NUMBER_STYLE_CODE\0"
	.byte	0x1e
	.byte	0x70
	.byte	0xd
	.long	0x130
	.uleb128 0x12
	.ascii "__tag_PMC_HANDLE_UINT\0"
	.byte	0x8
	.byte	0x1e
	.byte	0x72
	.byte	0x8
	.long	0x4d71
	.uleb128 0x13
	.ascii "dummy\0"
	.byte	0x1e
	.byte	0x77
	.byte	0xf
	.long	0x4cbd
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_UINT\0"
	.byte	0x1e
	.byte	0x7c
	.byte	0x27
	.long	0x4d89
	.uleb128 0x6
	.byte	0x8
	.long	0x4d42
	.uleb128 0x12
	.ascii "__tag_PMC_HANDLE_SINT\0"
	.byte	0x8
	.byte	0x1e
	.byte	0x7e
	.byte	0x8
	.long	0x4dbe
	.uleb128 0x13
	.ascii "dummy\0"
	.byte	0x1e
	.byte	0x83
	.byte	0xf
	.long	0x4cbd
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "PMC_HANDLE_SINT\0"
	.byte	0x1e
	.byte	0x88
	.byte	0x27
	.long	0x4dd6
	.uleb128 0x6
	.byte	0x8
	.long	0x4d8f
	.uleb128 0x12
	.ascii "__tag_PMC_STATISTICS_INFO\0"
	.byte	0x10
	.byte	0x1e
	.byte	0x8a
	.byte	0x10
	.long	0x4e58
	.uleb128 0x13
	.ascii "COUNT_MULTI64\0"
	.byte	0x1e
	.byte	0x8c
	.byte	0xa
	.long	0x137
	.byte	0
	.uleb128 0x13
	.ascii "COUNT_MULTI32\0"
	.byte	0x1e
	.byte	0x8d
	.byte	0xa
	.long	0x137
	.byte	0x4
	.uleb128 0x13
	.ascii "COUNT_DIV64\0"
	.byte	0x1e
	.byte	0x8e
	.byte	0xa
	.long	0x137
	.byte	0x8
	.uleb128 0x13
	.ascii "COUNT_DIV32\0"
	.byte	0x1e
	.byte	0x8f
	.byte	0xa
	.long	0x137
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.ascii "PMC_STATISTICS_INFO\0"
	.byte	0x1e
	.byte	0x90
	.byte	0x3
	.long	0x4ddc
	.uleb128 0x12
	.ascii "__tag_PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x28
	.byte	0x1e
	.byte	0x92
	.byte	0x10
	.long	0x4f26
	.uleb128 0x13
	.ascii "DecimalDigits\0"
	.byte	0x1e
	.byte	0x94
	.byte	0x9
	.long	0x130
	.byte	0
	.uleb128 0x13
	.ascii "GroupSeparator\0"
	.byte	0x1e
	.byte	0x95
	.byte	0xd
	.long	0x4f26
	.byte	0x4
	.uleb128 0x13
	.ascii "DecimalSeparator\0"
	.byte	0x1e
	.byte	0x96
	.byte	0xd
	.long	0x4f26
	.byte	0xa
	.uleb128 0x13
	.ascii "PositiveSign\0"
	.byte	0x1e
	.byte	0x97
	.byte	0xd
	.long	0x4f26
	.byte	0x10
	.uleb128 0x13
	.ascii "NegativeSign\0"
	.byte	0x1e
	.byte	0x98
	.byte	0xd
	.long	0x4f26
	.byte	0x16
	.uleb128 0x13
	.ascii "GroupSizes\0"
	.byte	0x1e
	.byte	0x99
	.byte	0xa
	.long	0x4f36
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.long	0x105
	.long	0x4f36
	.uleb128 0xf
	.long	0xda
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0xc3
	.long	0x4f46
	.uleb128 0xf
	.long	0xda
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.ascii "PMC_NUMBER_FORMAT_OPTION\0"
	.byte	0x1e
	.byte	0x9a
	.byte	0x3
	.long	0x4e74
	.uleb128 0x1c
	.ascii "__tag_PMC_UINT_ENTRY_POINTS\0"
	.word	0x230
	.byte	0x1e
	.byte	0x9c
	.byte	0x10
	.long	0x567f
	.uleb128 0x1d
	.ascii "PROCESSOR_FEATURE_POPCNT\0"
	.byte	0x1e
	.byte	0x9f
	.byte	0xe
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.ascii "PROCESSOR_FEATURE_ADX\0"
	.byte	0x1e
	.byte	0xa0
	.byte	0xe
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1d
	.ascii "PROCESSOR_FEATURE_BMI1\0"
	.byte	0x1e
	.byte	0xa1
	.byte	0xe
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.ascii "PROCESSOR_FEATURE_BMI2\0"
	.byte	0x1e
	.byte	0xa2
	.byte	0xe
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1d
	.ascii "PROCESSOR_FEATURE_ABM\0"
	.byte	0x1e
	.byte	0xa3
	.byte	0xe
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.ascii "GetStatisticsInfo\0"
	.byte	0x1e
	.byte	0xa6
	.byte	0xe
	.long	0x5690
	.byte	0x8
	.uleb128 0x13
	.ascii "From_I\0"
	.byte	0x1e
	.byte	0xa9
	.byte	0x19
	.long	0x56b0
	.byte	0x10
	.uleb128 0x13
	.ascii "From_L\0"
	.byte	0x1e
	.byte	0xac
	.byte	0x19
	.long	0x56ca
	.byte	0x18
	.uleb128 0x13
	.ascii "Dispose\0"
	.byte	0x1e
	.byte	0xaf
	.byte	0xe
	.long	0x56db
	.byte	0x20
	.uleb128 0x13
	.ascii "GetNumberType_X\0"
	.byte	0x1e
	.byte	0xb2
	.byte	0x19
	.long	0x56fb
	.byte	0x28
	.uleb128 0x13
	.ascii "GetConstantValue_I\0"
	.byte	0x1e
	.byte	0xb5
	.byte	0x19
	.long	0x5715
	.byte	0x30
	.uleb128 0x13
	.ascii "FromByteArray\0"
	.byte	0x1e
	.byte	0xb8
	.byte	0x19
	.long	0x5734
	.byte	0x38
	.uleb128 0x13
	.ascii "ToByteArray\0"
	.byte	0x1e
	.byte	0xb9
	.byte	0x19
	.long	0x575e
	.byte	0x40
	.uleb128 0x13
	.ascii "FromByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xba
	.byte	0x18
	.long	0x5782
	.byte	0x48
	.uleb128 0x13
	.ascii "ToByteArrayForSINT\0"
	.byte	0x1e
	.byte	0xbb
	.byte	0x18
	.long	0x57ab
	.byte	0x50
	.uleb128 0x13
	.ascii "Clone_X\0"
	.byte	0x1e
	.byte	0xbe
	.byte	0x19
	.long	0x57c5
	.byte	0x58
	.uleb128 0x13
	.ascii "To_X_I\0"
	.byte	0x1e
	.byte	0xc1
	.byte	0x19
	.long	0x57e5
	.byte	0x60
	.uleb128 0x13
	.ascii "To_X_L\0"
	.byte	0x1e
	.byte	0xc2
	.byte	0x19
	.long	0x5805
	.byte	0x68
	.uleb128 0x13
	.ascii "ToString\0"
	.byte	0x1e
	.byte	0xc5
	.byte	0x19
	.long	0x5839
	.byte	0x70
	.uleb128 0x13
	.ascii "TryParse\0"
	.byte	0x1e
	.byte	0xc8
	.byte	0x19
	.long	0x585d
	.byte	0x78
	.uleb128 0x13
	.ascii "Add_I_X\0"
	.byte	0x1e
	.byte	0xcb
	.byte	0x19
	.long	0x587c
	.byte	0x80
	.uleb128 0x13
	.ascii "Add_L_X\0"
	.byte	0x1e
	.byte	0xcc
	.byte	0x19
	.long	0x589b
	.byte	0x88
	.uleb128 0x13
	.ascii "Add_X_I\0"
	.byte	0x1e
	.byte	0xcd
	.byte	0x19
	.long	0x58ba
	.byte	0x90
	.uleb128 0x13
	.ascii "Add_X_L\0"
	.byte	0x1e
	.byte	0xce
	.byte	0x19
	.long	0x58d9
	.byte	0x98
	.uleb128 0x13
	.ascii "Add_X_X\0"
	.byte	0x1e
	.byte	0xcf
	.byte	0x19
	.long	0x58f8
	.byte	0xa0
	.uleb128 0x13
	.ascii "Subtruct_I_X\0"
	.byte	0x1e
	.byte	0xd2
	.byte	0x19
	.long	0x5917
	.byte	0xa8
	.uleb128 0x13
	.ascii "Subtruct_L_X\0"
	.byte	0x1e
	.byte	0xd3
	.byte	0x19
	.long	0x5936
	.byte	0xb0
	.uleb128 0x13
	.ascii "Subtruct_X_I\0"
	.byte	0x1e
	.byte	0xd4
	.byte	0x19
	.long	0x58ba
	.byte	0xb8
	.uleb128 0x13
	.ascii "Subtruct_X_L\0"
	.byte	0x1e
	.byte	0xd5
	.byte	0x19
	.long	0x58d9
	.byte	0xc0
	.uleb128 0x13
	.ascii "Subtruct_X_X\0"
	.byte	0x1e
	.byte	0xd6
	.byte	0x19
	.long	0x58f8
	.byte	0xc8
	.uleb128 0x13
	.ascii "Multiply_I_X\0"
	.byte	0x1e
	.byte	0xd9
	.byte	0x19
	.long	0x587c
	.byte	0xd0
	.uleb128 0x13
	.ascii "Multiply_L_X\0"
	.byte	0x1e
	.byte	0xda
	.byte	0x19
	.long	0x589b
	.byte	0xd8
	.uleb128 0x13
	.ascii "Multiply_X_I\0"
	.byte	0x1e
	.byte	0xdb
	.byte	0x19
	.long	0x58ba
	.byte	0xe0
	.uleb128 0x13
	.ascii "Multiply_X_L\0"
	.byte	0x1e
	.byte	0xdc
	.byte	0x19
	.long	0x58d9
	.byte	0xe8
	.uleb128 0x13
	.ascii "Multiply_X_X\0"
	.byte	0x1e
	.byte	0xdd
	.byte	0x19
	.long	0x58f8
	.byte	0xf0
	.uleb128 0x13
	.ascii "DivRem_I_X\0"
	.byte	0x1e
	.byte	0xe0
	.byte	0x19
	.long	0x595a
	.byte	0xf8
	.uleb128 0x1e
	.ascii "DivRem_L_X\0"
	.byte	0x1e
	.byte	0xe1
	.byte	0x19
	.long	0x597e
	.word	0x100
	.uleb128 0x1e
	.ascii "DivRem_X_I\0"
	.byte	0x1e
	.byte	0xe2
	.byte	0x19
	.long	0x59a2
	.word	0x108
	.uleb128 0x1e
	.ascii "DivRem_X_L\0"
	.byte	0x1e
	.byte	0xe3
	.byte	0x19
	.long	0x59c6
	.word	0x110
	.uleb128 0x1e
	.ascii "DivRem_X_X\0"
	.byte	0x1e
	.byte	0xe4
	.byte	0x19
	.long	0x59ea
	.word	0x118
	.uleb128 0x1e
	.ascii "LeftShift_X_I\0"
	.byte	0x1e
	.byte	0xe7
	.byte	0x19
	.long	0x58ba
	.word	0x120
	.uleb128 0x1e
	.ascii "RightShift_X_I\0"
	.byte	0x1e
	.byte	0xea
	.byte	0x19
	.long	0x58ba
	.word	0x128
	.uleb128 0x1e
	.ascii "BitwiseAnd_I_X\0"
	.byte	0x1e
	.byte	0xed
	.byte	0x19
	.long	0x5917
	.word	0x130
	.uleb128 0x1e
	.ascii "BitwiseAnd_L_X\0"
	.byte	0x1e
	.byte	0xee
	.byte	0x19
	.long	0x5936
	.word	0x138
	.uleb128 0x1e
	.ascii "BitwiseAnd_X_I\0"
	.byte	0x1e
	.byte	0xef
	.byte	0x19
	.long	0x5a09
	.word	0x140
	.uleb128 0x1e
	.ascii "BitwiseAnd_X_L\0"
	.byte	0x1e
	.byte	0xf0
	.byte	0x19
	.long	0x5a28
	.word	0x148
	.uleb128 0x1e
	.ascii "BitwiseAnd_X_X\0"
	.byte	0x1e
	.byte	0xf1
	.byte	0x19
	.long	0x58f8
	.word	0x150
	.uleb128 0x1e
	.ascii "BitwiseOr_I_X\0"
	.byte	0x1e
	.byte	0xf4
	.byte	0x19
	.long	0x587c
	.word	0x158
	.uleb128 0x1e
	.ascii "BitwiseOr_L_X\0"
	.byte	0x1e
	.byte	0xf5
	.byte	0x19
	.long	0x589b
	.word	0x160
	.uleb128 0x1e
	.ascii "BitwiseOr_X_I\0"
	.byte	0x1e
	.byte	0xf6
	.byte	0x19
	.long	0x58ba
	.word	0x168
	.uleb128 0x1e
	.ascii "BitwiseOr_X_L\0"
	.byte	0x1e
	.byte	0xf7
	.byte	0x19
	.long	0x58d9
	.word	0x170
	.uleb128 0x1e
	.ascii "BitwiseOr_X_X\0"
	.byte	0x1e
	.byte	0xf8
	.byte	0x19
	.long	0x58f8
	.word	0x178
	.uleb128 0x1e
	.ascii "ExclusiveOr_I_X\0"
	.byte	0x1e
	.byte	0xfb
	.byte	0x19
	.long	0x587c
	.word	0x180
	.uleb128 0x1e
	.ascii "ExclusiveOr_L_X\0"
	.byte	0x1e
	.byte	0xfc
	.byte	0x19
	.long	0x589b
	.word	0x188
	.uleb128 0x1e
	.ascii "ExclusiveOr_X_I\0"
	.byte	0x1e
	.byte	0xfd
	.byte	0x19
	.long	0x58ba
	.word	0x190
	.uleb128 0x1e
	.ascii "ExclusiveOr_X_L\0"
	.byte	0x1e
	.byte	0xfe
	.byte	0x19
	.long	0x58d9
	.word	0x198
	.uleb128 0x1e
	.ascii "ExclusiveOr_X_X\0"
	.byte	0x1e
	.byte	0xff
	.byte	0x19
	.long	0x58f8
	.word	0x1a0
	.uleb128 0xa
	.ascii "Compare_I_X\0"
	.byte	0x1e
	.word	0x102
	.byte	0x19
	.long	0x5a4d
	.word	0x1a8
	.uleb128 0xa
	.ascii "Compare_L_X\0"
	.byte	0x1e
	.word	0x103
	.byte	0x19
	.long	0x5a6c
	.word	0x1b0
	.uleb128 0xa
	.ascii "Compare_X_I\0"
	.byte	0x1e
	.word	0x104
	.byte	0x19
	.long	0x5a8b
	.word	0x1b8
	.uleb128 0xa
	.ascii "Compare_X_L\0"
	.byte	0x1e
	.word	0x105
	.byte	0x19
	.long	0x5aaa
	.word	0x1c0
	.uleb128 0xa
	.ascii "Compare_X_X\0"
	.byte	0x1e
	.word	0x106
	.byte	0x19
	.long	0x5ac9
	.word	0x1c8
	.uleb128 0xa
	.ascii "Equals_I_X\0"
	.byte	0x1e
	.word	0x109
	.byte	0x19
	.long	0x5a4d
	.word	0x1d0
	.uleb128 0xa
	.ascii "Equals_L_X\0"
	.byte	0x1e
	.word	0x10a
	.byte	0x19
	.long	0x5a6c
	.word	0x1d8
	.uleb128 0xa
	.ascii "Equals_X_I\0"
	.byte	0x1e
	.word	0x10b
	.byte	0x19
	.long	0x5a8b
	.word	0x1e0
	.uleb128 0xa
	.ascii "Equals_X_L\0"
	.byte	0x1e
	.word	0x10c
	.byte	0x19
	.long	0x5aaa
	.word	0x1e8
	.uleb128 0xa
	.ascii "Equals_X_X\0"
	.byte	0x1e
	.word	0x10d
	.byte	0x19
	.long	0x5ac9
	.word	0x1f0
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_I_X\0"
	.byte	0x1e
	.word	0x110
	.byte	0x19
	.long	0x587c
	.word	0x1f8
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_L_X\0"
	.byte	0x1e
	.word	0x111
	.byte	0x19
	.long	0x589b
	.word	0x200
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_I\0"
	.byte	0x1e
	.word	0x112
	.byte	0x19
	.long	0x58ba
	.word	0x208
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_L\0"
	.byte	0x1e
	.word	0x113
	.byte	0x19
	.long	0x58d9
	.word	0x210
	.uleb128 0xa
	.ascii "GreatestCommonDivisor_X_X\0"
	.byte	0x1e
	.word	0x114
	.byte	0x19
	.long	0x58f8
	.word	0x218
	.uleb128 0xa
	.ascii "Pow_X_I\0"
	.byte	0x1e
	.word	0x117
	.byte	0x19
	.long	0x58ba
	.word	0x220
	.uleb128 0xa
	.ascii "ModPow_X_X_X\0"
	.byte	0x1e
	.word	0x11a
	.byte	0x19
	.long	0x5aed
	.word	0x228
	.byte	0
	.uleb128 0x10
	.long	0x568a
	.uleb128 0x11
	.long	0x568a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4e58
	.uleb128 0x6
	.byte	0x8
	.long	0x567f
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x56aa
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d71
	.uleb128 0x6
	.byte	0x8
	.long	0x5696
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x56ca
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56b6
	.uleb128 0x10
	.long	0x56db
	.uleb128 0x11
	.long	0x4d71
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56d0
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x56f5
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x56f5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ce7
	.uleb128 0x6
	.byte	0x8
	.long	0x56e1
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5715
	.uleb128 0x11
	.long	0x4d04
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5701
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5734
	.uleb128 0x11
	.long	0x759
	.uleb128 0x11
	.long	0xcb
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x571b
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5758
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x759
	.uleb128 0x11
	.long	0xcb
	.uleb128 0x11
	.long	0x5758
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcb
	.uleb128 0x6
	.byte	0x8
	.long	0x573a
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5782
	.uleb128 0x11
	.long	0x759
	.uleb128 0x11
	.long	0xcb
	.uleb128 0x11
	.long	0x446
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5764
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x57ab
	.uleb128 0x11
	.long	0xc3
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x759
	.uleb128 0x11
	.long	0xcb
	.uleb128 0x11
	.long	0x5758
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5788
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x57c5
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57b1
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x57df
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x57df
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4cab
	.uleb128 0x6
	.byte	0x8
	.long	0x57cb
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x57ff
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x57ff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4cbd
	.uleb128 0x6
	.byte	0x8
	.long	0x57eb
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5833
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x44c
	.uleb128 0x11
	.long	0xcb
	.uleb128 0x11
	.long	0xc3
	.uleb128 0x11
	.long	0x130
	.uleb128 0x11
	.long	0x5833
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4f46
	.uleb128 0x6
	.byte	0x8
	.long	0x580b
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x585d
	.uleb128 0x11
	.long	0x44c
	.uleb128 0x11
	.long	0x4d24
	.uleb128 0x11
	.long	0x5833
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x583f
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x587c
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5863
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x589b
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5882
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x58ba
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58a1
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x58d9
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58c0
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x58f8
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58df
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5917
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x57df
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58fe
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5936
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x57ff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x591d
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x595a
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x57df
	.uleb128 0x11
	.long	0x57df
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x593c
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x597e
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x57ff
	.uleb128 0x11
	.long	0x57ff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5960
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x59a2
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x56aa
	.uleb128 0x11
	.long	0x57df
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5984
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x59c6
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x56aa
	.uleb128 0x11
	.long	0x57ff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x59a8
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x59ea
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x56aa
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x59cc
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5a09
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x57df
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x59f0
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5a28
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x57ff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a0f
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5a47
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x5a47
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c88
	.uleb128 0x6
	.byte	0x8
	.long	0x5a2e
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5a6c
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x5a47
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a53
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5a8b
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cab
	.uleb128 0x11
	.long	0x5a47
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a72
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5aaa
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4cbd
	.uleb128 0x11
	.long	0x5a47
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a91
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5ac9
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x5a47
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5ab0
	.uleb128 0x1f
	.long	0x4ccf
	.long	0x5aed
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x4d71
	.uleb128 0x11
	.long	0x56aa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5acf
	.uleb128 0x5
	.ascii "PMC_UINT_ENTRY_POINTS\0"
	.byte	0x1e
	.word	0x11c
	.byte	0x3
	.long	0x4f67
	.uleb128 0x6
	.byte	0x8
	.long	0x4dbe
	.uleb128 0x12
	.ascii "__tag_NUMBER_HEADER\0"
	.byte	0x18
	.byte	0x1f
	.byte	0x2b
	.byte	0x14
	.long	0x5bff
	.uleb128 0x13
	.ascii "SIGNATURE1\0"
	.byte	0x1f
	.byte	0x2d
	.byte	0x13
	.long	0x4cab
	.byte	0
	.uleb128 0x13
	.ascii "SIGNATURE2\0"
	.byte	0x1f
	.byte	0x2e
	.byte	0x13
	.long	0x4cab
	.byte	0x4
	.uleb128 0x13
	.ascii "ABS\0"
	.byte	0x1f
	.byte	0x2f
	.byte	0x19
	.long	0x4d71
	.byte	0x8
	.uleb128 0x13
	.ascii "SIGN\0"
	.byte	0x1f
	.byte	0x30
	.byte	0xe
	.long	0xc3
	.byte	0x10
	.uleb128 0x1d
	.ascii "IS_STATIC\0"
	.byte	0x1f
	.byte	0x31
	.byte	0x12
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.uleb128 0x1d
	.ascii "IS_ZERO\0"
	.byte	0x1f
	.byte	0x32
	.byte	0x12
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.uleb128 0x1d
	.ascii "IS_ONE\0"
	.byte	0x1f
	.byte	0x33
	.byte	0x12
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x14
	.uleb128 0x1d
	.ascii "IS_MINUS_ONE\0"
	.byte	0x1f
	.byte	0x34
	.byte	0x12
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x14
	.uleb128 0x1d
	.ascii "IS_EVEN\0"
	.byte	0x1f
	.byte	0x35
	.byte	0x12
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.uleb128 0x1d
	.ascii "IS_POWER_OF_TWO\0"
	.byte	0x1f
	.byte	0x36
	.byte	0x12
	.long	0x458
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.ascii "NUMBER_HEADER\0"
	.byte	0x1f
	.byte	0x37
	.byte	0x7
	.long	0x5b18
	.uleb128 0x15
	.ascii "ep_uint\0"
	.byte	0x1f
	.byte	0x3d
	.byte	0x22
	.long	0x5af3
	.uleb128 0x15
	.ascii "number_zero\0"
	.byte	0x1f
	.byte	0x40
	.byte	0x1a
	.long	0x5bff
	.uleb128 0x15
	.ascii "number_one\0"
	.byte	0x1f
	.byte	0x43
	.byte	0x1a
	.long	0x5bff
	.uleb128 0x15
	.ascii "number_minus_one\0"
	.byte	0x1f
	.byte	0x46
	.byte	0x1a
	.long	0x5bff
	.uleb128 0x15
	.ascii "statistics_info\0"
	.byte	0x1f
	.byte	0x49
	.byte	0x20
	.long	0x4e58
	.uleb128 0x20
	.ascii "hLocalHeap\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.long	0x75f
	.uleb128 0x9
	.byte	0x3
	.quad	hLocalHeap
	.uleb128 0x21
	.long	0x5c25
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	number_zero
	.uleb128 0x21
	.long	0x5c39
	.byte	0x1
	.byte	0x2d
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	number_one
	.uleb128 0x21
	.long	0x5c4c
	.byte	0x1
	.byte	0x2e
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	number_minus_one
	.uleb128 0x22
	.ascii "DeallocateHeapArea\0"
	.byte	0x1
	.word	0x163
	.byte	0x6
	.quad	.LFB4379
	.quad	.LFE4379-.LFB4379
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d0c
	.uleb128 0x23
	.quad	.LVL11
	.long	0x631a
	.byte	0
	.uleb128 0x24
	.ascii "AllocateHeapArea\0"
	.byte	0x1
	.word	0x15b
	.byte	0x6
	.long	0x5e0
	.quad	.LFB4378
	.quad	.LFE4378-.LFB4378
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d4a
	.uleb128 0x23
	.quad	.LVL10
	.long	0x6326
	.byte	0
	.uleb128 0x25
	.ascii "Initialize_Memory\0"
	.byte	0x1
	.word	0x123
	.byte	0x11
	.long	0x4ccf
	.quad	.LFB4377
	.quad	.LFE4377-.LFB4377
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e5b
	.uleb128 0x26
	.secrel32	.LASF1
	.byte	0x1
	.word	0x125
	.byte	0x15
	.long	0x4ccf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.ascii "number_unsigned_zero_ok\0"
	.byte	0x1
	.word	0x127
	.byte	0xa
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.ascii "number_unsigned_one_ok\0"
	.byte	0x1
	.word	0x128
	.byte	0xa
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.ascii "number_zero_ok\0"
	.byte	0x1
	.word	0x129
	.byte	0xa
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.ascii "number_one_ok\0"
	.byte	0x1
	.word	0x12a
	.byte	0xa
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.ascii "number_minus_one_ok\0"
	.byte	0x1
	.word	0x12b
	.byte	0xa
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.ascii "unsigned_zero\0"
	.byte	0x1
	.word	0x12d
	.byte	0x15
	.long	0x4d71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.ascii "unsigned_one\0"
	.byte	0x1
	.word	0x12e
	.byte	0x15
	.long	0x4d71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x28
	.ascii "PMC_Dispose\0"
	.byte	0x1
	.word	0x11c
	.byte	0x6
	.quad	.LFB4376
	.quad	.LFE4376-.LFB4376
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ea0
	.uleb128 0x29
	.ascii "p\0"
	.byte	0x1
	.word	0x11c
	.byte	0x22
	.long	0x4dbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.ascii "np\0"
	.byte	0x1
	.word	0x11e
	.byte	0x14
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bff
	.uleb128 0x2a
	.ascii "PMC_GetConstantValue_I\0"
	.byte	0x1
	.word	0x10a
	.byte	0x11
	.long	0x4ccf
	.quad	.LFB4375
	.quad	.LFE4375-.LFB4375
	.uleb128 0x1
	.byte	0x9c
	.long	0x5efc
	.uleb128 0x29
	.ascii "type\0"
	.byte	0x1
	.word	0x10a
	.byte	0x40
	.long	0x4d04
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.ascii "o\0"
	.byte	0x1
	.word	0x10a
	.byte	0x57
	.long	0x5b12
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2b
	.ascii "Negate_Imp\0"
	.byte	0x1
	.byte	0xeb
	.byte	0x11
	.long	0x4ccf
	.quad	.LFB4374
	.quad	.LFE4374-.LFB4374
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f71
	.uleb128 0x2c
	.ascii "x\0"
	.byte	0x1
	.byte	0xeb
	.byte	0x2b
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "op\0"
	.byte	0x1
	.byte	0xeb
	.byte	0x3e
	.long	0x5f71
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.secrel32	.LASF1
	.byte	0x1
	.byte	0xfc
	.byte	0x15
	.long	0x4ccf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.ascii "new_abs\0"
	.byte	0x1
	.byte	0xfd
	.byte	0x15
	.long	0x4d71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.ascii "o\0"
	.byte	0x1
	.word	0x100
	.byte	0x14
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5ea0
	.uleb128 0x2b
	.ascii "DuplicateNumber\0"
	.byte	0x1
	.byte	0xc7
	.byte	0x11
	.long	0x4ccf
	.quad	.LFB4373
	.quad	.LFE4373-.LFB4373
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ff0
	.uleb128 0x2c
	.ascii "x\0"
	.byte	0x1
	.byte	0xc7
	.byte	0x30
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "op\0"
	.byte	0x1
	.byte	0xc7
	.byte	0x43
	.long	0x5f71
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.secrel32	.LASF1
	.byte	0x1
	.byte	0xdd
	.byte	0x15
	.long	0x4ccf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.ascii "new_abs\0"
	.byte	0x1
	.byte	0xde
	.byte	0x15
	.long	0x4d71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.ascii "o\0"
	.byte	0x1
	.byte	0xe1
	.byte	0x14
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.ascii "CheckNumber\0"
	.byte	0x1
	.byte	0xc0
	.byte	0x11
	.long	0x4ccf
	.quad	.LFB4372
	.quad	.LFE4372-.LFB4372
	.uleb128 0x1
	.byte	0x9c
	.long	0x6028
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0xc0
	.byte	0x2c
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.ascii "DeallocateNumber\0"
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.quad	.LFB4371
	.quad	.LFE4371-.LFB4371
	.uleb128 0x1
	.byte	0x9c
	.long	0x606e
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0xb7
	.byte	0x26
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.quad	.LVL3
	.long	0x6332
	.byte	0
	.uleb128 0x30
	.ascii "DetatchNumber\0"
	.byte	0x1
	.byte	0xb0
	.byte	0x6
	.quad	.LFB4370
	.quad	.LFE4370-.LFB4370
	.uleb128 0x1
	.byte	0x9c
	.long	0x60a4
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0xb0
	.byte	0x23
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.ascii "AllocateNumber\0"
	.byte	0x1
	.byte	0xa3
	.byte	0x11
	.long	0x4ccf
	.quad	.LFB4369
	.quad	.LFE4369-.LFB4369
	.uleb128 0x1
	.byte	0x9c
	.long	0x6128
	.uleb128 0x2c
	.ascii "pp\0"
	.byte	0x1
	.byte	0xa3
	.byte	0x30
	.long	0x5f71
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "sign\0"
	.byte	0x1
	.byte	0xa3
	.byte	0x39
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.ascii "abs\0"
	.byte	0x1
	.byte	0xa3
	.byte	0x4f
	.long	0x4d71
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.ascii "p\0"
	.byte	0x1
	.byte	0xa5
	.byte	0x14
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.secrel32	.LASF1
	.byte	0x1
	.byte	0xa8
	.byte	0x15
	.long	0x4ccf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.quad	.LVL2
	.long	0x633e
	.byte	0
	.uleb128 0x2b
	.ascii "AttatchNumber\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x11
	.long	0x4ccf
	.quad	.LFB4368
	.quad	.LFE4368-.LFB4368
	.uleb128 0x1
	.byte	0x9c
	.long	0x6190
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x2e
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "sign\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x36
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.ascii "abs\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x4c
	.long	0x4d71
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.long	0x4ccf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.ascii "CleanUpNumber\0"
	.byte	0x1
	.byte	0x95
	.byte	0xd
	.quad	.LFB4367
	.quad	.LFE4367-.LFB4367
	.uleb128 0x1
	.byte	0x9c
	.long	0x61c6
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0x95
	.byte	0x2a
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.ascii "InitializeNumber\0"
	.byte	0x1
	.byte	0x7a
	.byte	0x18
	.long	0x4ccf
	.quad	.LFB4366
	.quad	.LFE4366-.LFB4366
	.uleb128 0x1
	.byte	0x9c
	.long	0x6241
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0x7a
	.byte	0x38
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.ascii "sign\0"
	.byte	0x1
	.byte	0x7a
	.byte	0x40
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.ascii "abs\0"
	.byte	0x1
	.byte	0x7a
	.byte	0x56
	.long	0x4d71
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x7c
	.byte	0x15
	.long	0x4ccf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.ascii "type\0"
	.byte	0x1
	.byte	0x83
	.byte	0x1a
	.long	0x4ce7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.ascii "FillNumberHeader\0"
	.byte	0x1
	.byte	0x56
	.byte	0x16
	.quad	.LFB4365
	.quad	.LFE4365-.LFB4365
	.uleb128 0x1
	.byte	0x9c
	.long	0x62ad
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0x56
	.byte	0x36
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x629e
	.uleb128 0x2e
	.ascii "__p\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.long	0x57ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.uleb128 0x36
	.ascii "__p\0"
	.byte	0x1
	.byte	0x65
	.byte	0x18
	.long	0x57df
	.byte	0
	.byte	0
	.uleb128 0x33
	.ascii "ClearNumberHeader\0"
	.byte	0x1
	.byte	0x32
	.byte	0x16
	.quad	.LFB4364
	.quad	.LFE4364-.LFB4364
	.uleb128 0x1
	.byte	0x9c
	.long	0x631a
	.uleb128 0x2c
	.ascii "p\0"
	.byte	0x1
	.byte	0x32
	.byte	0x37
	.long	0x5ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x630b
	.uleb128 0x2e
	.ascii "__p\0"
	.byte	0x1
	.byte	0x37
	.byte	0x14
	.long	0x57ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.uleb128 0x36
	.ascii "__p\0"
	.byte	0x1
	.byte	0x41
	.byte	0x18
	.long	0x57df
	.byte	0
	.byte	0
	.uleb128 0x37
	.secrel32	.LASF2
	.secrel32	.LASF2
	.byte	0x20
	.byte	0x1d
	.byte	0x26
	.uleb128 0x37
	.secrel32	.LASF3
	.secrel32	.LASF3
	.byte	0x20
	.byte	0x1c
	.byte	0x25
	.uleb128 0x37
	.secrel32	.LASF4
	.secrel32	.LASF4
	.byte	0x20
	.byte	0x2c
	.byte	0x26
	.uleb128 0x37
	.secrel32	.LASF5
	.secrel32	.LASF5
	.byte	0x20
	.byte	0x2a
	.byte	0x25
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
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
	.uleb128 0x7
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x7
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
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
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF0:
	.ascii "refcount\0"
.LASF3:
	.ascii "HeapCreate\0"
.LASF5:
	.ascii "HeapAlloc\0"
.LASF4:
	.ascii "HeapFree\0"
.LASF1:
	.ascii "result\0"
.LASF2:
	.ascii "HeapDestroy\0"
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.section	.rdata$.refptr.ep_uint, "dr"
	.globl	.refptr.ep_uint
	.linkonce	discard
.refptr.ep_uint:
	.quad	ep_uint
