	.file	"8-print_diagsums.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d, %d\n"
	.text
	.globl	print_diagsums
	.type	print_diagsums, @function
print_diagsums:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L5:
	movl	-28(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
.L3:
	movl	-28(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L4
	cmpl	$0, -12(%rbp)
	je	.L4
	movl	-28(%rbp), %eax
	imull	%eax, %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jge	.L4
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -4(%rbp)
.L4:
	addl	$1, -12(%rbp)
.L2:
	movl	-28(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L5
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_diagsums, .-print_diagsums
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
