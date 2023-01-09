	.file	"100-change.c"
	.text
	.section	.rodata
.LC0:
	.string	"Error"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L2
	cmpl	$2, -20(%rbp)
	jle	.L3
.L2:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L4
.L3:
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -8(%rbp)
	jmp	.L5
.L11:
	cmpl	$24, -8(%rbp)
	jle	.L6
	subl	$25, -8(%rbp)
	jmp	.L7
.L6:
	cmpl	$9, -8(%rbp)
	jle	.L8
	subl	$10, -8(%rbp)
	jmp	.L7
.L8:
	cmpl	$4, -8(%rbp)
	jle	.L9
	subl	$5, -8(%rbp)
	jmp	.L7
.L9:
	cmpl	$1, -8(%rbp)
	jle	.L10
	subl	$2, -8(%rbp)
	jmp	.L7
.L10:
	cmpl	$0, -8(%rbp)
	jle	.L7
	subl	$1, -8(%rbp)
.L7:
	addl	$1, -4(%rbp)
.L5:
	cmpl	$0, -8(%rbp)
	jg	.L11
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
