	.file	"1-string_nconcat.c"
	.text
	.section	.rodata
.LC0:
	.string	""
	.text
	.globl	string_nconcat
	.type	string_nconcat, @function
string_nconcat:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
.L2:
	cmpq	$0, -48(%rbp)
	jne	.L3
	leaq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
.L3:
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L4
.L5:
	addl	$1, -24(%rbp)
.L4:
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	jmp	.L6
.L7:
	addl	$1, -20(%rbp)
.L6:
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L8
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
.L8:
	movl	-24(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$0, -16(%rbp)
	jmp	.L11
.L12:
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -16(%rbp)
.L11:
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movl	$0, -12(%rbp)
	jmp	.L13
.L15:
	movl	-12(%rbp), %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -16(%rbp)
	addl	$1, -12(%rbp)
.L13:
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jnb	.L14
	movl	-12(%rbp), %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L15
.L14:
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	string_nconcat, .-string_nconcat
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
