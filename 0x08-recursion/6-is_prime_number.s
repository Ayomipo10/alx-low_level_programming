	.file	"6-is_prime_number.c"
	.text
	.globl	is_prime
	.type	is_prime, @function
is_prime:
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
	movl	$0, %edx
	divl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L2
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L3
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	$0, %eax
	jmp	.L4
.L2:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	is_prime
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	is_prime, .-is_prime
	.globl	is_prime_number
	.type	is_prime_number, @function
is_prime_number:
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
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	cmpl	$0, -4(%rbp)
	jns	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	cmpl	$1, -4(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L7
.L9:
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	is_prime
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	is_prime_number, .-is_prime_number
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
