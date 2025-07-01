	.file	"switch_eg.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"nothing special..."
	.text
	.globl	switch_rg
	.type	switch_rg, @function
switch_rg:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	cmpq	$3, %rdi
	jg	.L2
	cmpq	$2, %rdi
	jge	.L5
	cmpq	$1, %rdi
	jne	.L9
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movq	%rbx, %rax
	jmp	.L1
.L9:
	movl	$2, %eax
	jmp	.L1
.L2:
	cmpq	$5, %rdi
	je	.L6
	cmpq	$10, %rdi
	jne	.L7
	movl	$1, %eax
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	movl	$1, %eax
	jmp	.L1
.L6:
	movl	$1, %eax
	jmp	.L1
.L7:
	movl	$2, %eax
	jmp	.L1
	.cfi_endproc
.LFE23:
	.size	switch_rg, .-switch_rg
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
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
