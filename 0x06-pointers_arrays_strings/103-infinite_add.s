	.file	"103-infinite_add.c"
	.text
	.globl	infinite_add
	.type	infinite_add, @function
infinite_add:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	jmp	.L4
.L5:
	addl	$1, -24(%rbp)
.L4:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L6
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L7
.L6:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L7:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -60(%rbp)
	jg	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	-20(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	subl	$1, -28(%rbp)
	subl	$1, -24(%rbp)
	subl	$1, -60(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -12(%rbp)
	jmp	.L10
.L19:
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	cmpl	$9, -4(%rbp)
	jle	.L11
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	jmp	.L12
.L11:
	movl	$0, -8(%rbp)
.L12:
	cmpl	$0, -4(%rbp)
	jle	.L13
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	leal	48(%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L14
.L13:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$48, (%rax)
.L14:
	cmpl	$0, -28(%rbp)
	jle	.L15
	subl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -16(%rbp)
	jmp	.L16
.L15:
	movl	$0, -16(%rbp)
.L16:
	cmpl	$0, -24(%rbp)
	jle	.L17
	subl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -12(%rbp)
	jmp	.L18
.L17:
	movl	$0, -12(%rbp)
.L18:
	subl	$1, -20(%rbp)
	subl	$1, -60(%rbp)
.L10:
	cmpl	$0, -20(%rbp)
	jns	.L19
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L20
	movq	-56(%rbp), %rax
	addq	$1, %rax
	jmp	.L9
.L20:
	movq	-56(%rbp), %rax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	infinite_add, .-infinite_add
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
