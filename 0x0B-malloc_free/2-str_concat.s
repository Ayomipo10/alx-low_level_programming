	.file	"2-str_concat.c"
	.text
	.globl	str_concat
	.type	str_concat, @function
str_concat:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L4:
	addl	$1, -20(%rbp)
.L2:
	cmpq	$0, -40(%rbp)
	je	.L5
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	jmp	.L5
.L7:
	addl	$1, -16(%rbp)
.L5:
	cmpq	$0, -48(%rbp)
	je	.L6
	movl	-16(%rbp), %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
.L6:
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L10
	jmp	.L11
.L12:
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -24(%rbp)
.L11:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L12
.L10:
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	str_concat, .-str_concat
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
