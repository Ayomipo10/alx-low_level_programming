	.file	"104-print_buffer.c"
	.text
	.globl	isPrintableASCII
	.type	isPrintableASCII, @function
isPrintableASCII:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$31, -4(%rbp)
	jle	.L2
	cmpl	$126, -4(%rbp)
	jg	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	isPrintableASCII, .-isPrintableASCII
	.section	.rodata
.LC0:
	.string	"%02x"
.LC1:
	.string	"  "
	.text
	.globl	printHexes
	.type	printHexes, @function
printHexes:
.LFB1:
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
	movl	%edx, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L10:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L7
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L7:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L9
	movl	$32, %edi
	call	putchar@PLT
.L9:
	addl	$1, -4(%rbp)
.L6:
	cmpl	$9, -4(%rbp)
	jle	.L10
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	printHexes, .-printHexes
	.globl	printASCII
	.type	printASCII, @function
printASCII:
.LFB2:
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
	movl	%edx, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L12
.L14:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	isPrintableASCII
	testl	%eax, %eax
	jne	.L13
	movl	$46, -8(%rbp)
.L13:
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L14
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	printASCII, .-printASCII
	.section	.rodata
.LC2:
	.string	"%08x: "
	.text
	.globl	print_buffer
	.type	print_buffer, @function
print_buffer:
.LFB3:
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
	cmpl	$0, -28(%rbp)
	jle	.L16
	movl	$0, -8(%rbp)
	jmp	.L17
.L18:
	movl	-28(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	$10, %edx
	cmpl	$10, %eax
	cmovg	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	printHexes
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	printASCII
	movl	$10, %edi
	call	putchar@PLT
	addl	$10, -8(%rbp)
.L17:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L18
	jmp	.L20
.L16:
	movl	$10, %edi
	call	putchar@PLT
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	print_buffer, .-print_buffer
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
