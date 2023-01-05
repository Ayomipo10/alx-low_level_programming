	.file	"5-sqrt_recursion.c"
	.text
	.globl	power_operation
	.type	power_operation, @function
power_operation:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L2
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	imull	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L3
	movl	-8(%rbp), %eax
	jmp	.L4
.L3:
	movl	$-1, %eax
	jmp	.L4
.L2:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	power_operation
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	power_operation, .-power_operation
	.globl	_sqrt_recursion
	.type	_sqrt_recursion, @function
_sqrt_recursion:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L6
	movl	$-1, %eax
	jmp	.L7
.L6:
	cmpl	$0, -4(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	cmpl	$1, -4(%rbp)
	jne	.L9
	movl	$1, %eax
	jmp	.L7
.L9:
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	power_operation
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_sqrt_recursion, .-_sqrt_recursion
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
