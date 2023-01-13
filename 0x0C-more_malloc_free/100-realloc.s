	.file	"100-realloc.c"
	.text
	.globl	_realloc
	.type	_realloc, @function
_realloc:
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
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L2
	movq	-40(%rbp), %rax
	jmp	.L3
.L2:
	cmpq	$0, -40(%rbp)
	jne	.L4
	movl	-48(%rbp), %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L5
	movl	$0, %eax
	jmp	.L3
.L5:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	jmp	.L3
.L4:
	cmpl	$0, -48(%rbp)
	jne	.L6
	cmpq	$0, -40(%rbp)
	je	.L6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L3
.L6:
	movl	-48(%rbp), %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L3
.L7:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L8
.L9:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -20(%rbp)
.L8:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_realloc, .-_realloc
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
