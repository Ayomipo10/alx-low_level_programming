	.file	"100-times_table.c"
	.text
	.globl	print_times_table
	.type	print_times_table, @function
print_times_table:
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
	js	.L11
	cmpl	$15, -20(%rbp)
	jg	.L11
	movl	$0, -12(%rbp)
	jmp	.L3
.L10:
	movl	$0, -8(%rbp)
	jmp	.L4
.L9:
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L5
	movl	-4(%rbp), %eax
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
	jmp	.L6
.L5:
	cmpl	$9, -4(%rbp)
	jg	.L7
	cmpl	$0, -8(%rbp)
	je	.L7
	movl	$44, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
	movl	-4(%rbp), %eax
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
	jmp	.L6
.L7:
	cmpl	$9, -4(%rbp)
	jle	.L8
	cmpl	$99, -4(%rbp)
	jg	.L8
	movl	$44, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
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
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
	jmp	.L6
.L8:
	cmpl	$99, -4(%rbp)
	jle	.L6
	movl	$44, %edi
	call	_putchar@PLT
	movl	$32, %edi
	call	_putchar@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
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
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
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
	addl	$48, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_putchar@PLT
.L6:
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L9
	movl	$10, %edi
	call	_putchar@PLT
	addl	$1, -12(%rbp)
.L3:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L10
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_times_table, .-print_times_table
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
