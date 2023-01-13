	.file	"10-print_triangle.c"
	.text
	.globl	print_triangle
	.type	print_triangle, @function
print_triangle:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L2
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L10
.L2:
	movl	$1, -8(%rbp)
	jmp	.L4
.L9:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L6:
	movl	$32, %edi
	call	_putchar@PLT
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L6
	movl	$1, -4(%rbp)
	jmp	.L7
.L8:
	movl	$35, %edi
	call	_putchar@PLT
	addl	$1, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L8
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L9
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_triangle, .-print_triangle
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
