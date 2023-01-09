	.file	"7-leet.c"
	.text
	.globl	leet
	.type	leet, @function
leet:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -100(%rbp)
	movl	$97, -96(%rbp)
	movl	$101, -92(%rbp)
	movl	$111, -88(%rbp)
	movl	$116, -84(%rbp)
	movl	$108, -80(%rbp)
	movl	$65, -64(%rbp)
	movl	$69, -60(%rbp)
	movl	$79, -56(%rbp)
	movl	$84, -52(%rbp)
	movl	$76, -48(%rbp)
	movl	$52, -32(%rbp)
	movl	$51, -28(%rbp)
	movl	$48, -24(%rbp)
	movl	$55, -20(%rbp)
	movl	$49, -16(%rbp)
	jmp	.L2
.L8:
	movl	$0, -104(%rbp)
	jmp	.L3
.L7:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-104(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L4
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-104(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jne	.L5
.L4:
	movl	-104(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %ecx
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L6
.L5:
	addl	$1, -104(%rbp)
.L3:
	cmpl	$4, -104(%rbp)
	jle	.L7
.L6:
	addl	$1, -100(%rbp)
.L2:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8
	movq	-120(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	leet, .-leet
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
