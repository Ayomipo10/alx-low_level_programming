	.file	"100-argstostr.c"
	.text
	.globl	argstostr
	.type	argstostr, @function
argstostr:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L2
	cmpq	$0, -48(%rbp)
	jne	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	$0, -12(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L5
.L8:
	movl	$0, -20(%rbp)
	jmp	.L6
.L7:
	addl	$1, -12(%rbp)
	addl	$1, -20(%rbp)
.L6:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	addl	$1, -12(%rbp)
	addl	$1, -24(%rbp)
.L5:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L8
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L4
.L9:
	movl	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L10
.L13:
	movl	$0, -20(%rbp)
	jmp	.L11
.L12:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -16(%rbp)
	addl	$1, -20(%rbp)
.L11:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$10, (%rax)
	addl	$1, -16(%rbp)
	addl	$1, -24(%rbp)
.L10:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L13
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	argstostr, .-argstostr
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
