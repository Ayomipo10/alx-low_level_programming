	.file	"100-prime_factor.c"
	.text
	.section	.rodata
.LC0:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movabsq	$612852475143, %rax
	movq	%rax, -24(%rbp)
	movq	$-1, -16(%rbp)
	jmp	.L2
.L3:
	movq	$2, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L3
	movq	$3, -8(%rbp)
	jmp	.L4
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rax, -24(%rbp)
.L5:
	movq	-24(%rbp), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L6
	addq	$2, -8(%rbp)
.L4:
	cvtsi2sdq	-8(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	cvtsi2sdq	-24(%rbp), %xmm0
	call	sqrt@PLT
	comisd	-40(%rbp), %xmm0
	jnb	.L5
	cmpq	$2, -24(%rbp)
	jle	.L8
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
