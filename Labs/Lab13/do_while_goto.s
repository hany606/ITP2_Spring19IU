	.file	"do_while_goto.c"
	.text
	.globl	fib
	.type	fib, @function
fib:
.LFB24:
	.cfi_startproc
	movl	$1, %esi
	movl	$0, %edx
	movl	$0, %ecx
.L3:
	leal	(%rcx,%rsi), %eax
	addl	$1, %edx
	cmpl	%edi, %edx
	jge	.L2
	movl	%ecx, %esi
	movl	%eax, %ecx
	jmp	.L3
.L2:
	rep ret
	.cfi_endproc
.LFE24:
	.size	fib, .-fib
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$6, %edi
	call	fib
	movl	%eax, %edx
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.5-4ubuntu8) 4.8.5"
	.section	.note.GNU-stack,"",@progbits
