	.file	"3-strcmp.c"
	.text
	.globl	_strcmp
	.type	_strcmp, @function
_strcmp:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L2
.L6:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L4
.L3:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L5
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
.L5:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_strcmp, .-_strcmp
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
