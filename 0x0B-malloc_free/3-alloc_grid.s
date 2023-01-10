	.file	"3-alloc_grid.c"
	.text
	.globl	alloc_grid
	.type	alloc_grid, @function
alloc_grid:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jle	.L2
	cmpl	$0, -36(%rbp)
	jg	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L5
	movl	$0, %eax
	jmp	.L4
.L5:
	movl	$0, -32(%rbp)
	jmp	.L6
.L10:
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, -28(%rbp)
	jmp	.L8
.L9:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -28(%rbp)
.L8:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L9
	movl	$0, %eax
	jmp	.L4
.L7:
	addl	$1, -32(%rbp)
.L6:
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L10
	movl	$0, -32(%rbp)
	jmp	.L11
.L14:
	movl	$0, -28(%rbp)
	jmp	.L12
.L13:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -28(%rbp)
.L12:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L13
	addl	$1, -32(%rbp)
.L11:
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L14
	movq	-24(%rbp), %rax
.L4:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	alloc_grid, .-alloc_grid
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
