	.file	"101-strtow.c"
	.text
	.globl	count_word
	.type	count_word, @function
count_word:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L3
	movl	$0, -12(%rbp)
	jmp	.L4
.L3:
	cmpl	$0, -12(%rbp)
	jne	.L4
	movl	$1, -12(%rbp)
	addl	$1, -4(%rbp)
.L4:
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	count_word, .-count_word
	.globl	strtow
	.type	strtow, @function
strtow:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L8
.L9:
	addl	$1, -36(%rbp)
.L8:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	count_word
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$0, -44(%rbp)
	jmp	.L12
.L20:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L13
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
.L13:
	cmpl	$0, -32(%rbp)
	je	.L19
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L11
.L18:
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
.L17:
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L18
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movl	-32(%rbp), %eax
	cltq
	negq	%rax
	movq	%rax, %rcx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -40(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L19
.L14:
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -32(%rbp)
	testl	%eax, %eax
	jne	.L19
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.L19:
	addl	$1, -44(%rbp)
.L12:
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L20
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	strtow, .-strtow
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
