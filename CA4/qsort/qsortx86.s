	.text
	.file	"qsort.bc"
	.globl	compare
	.align	16, 0x90
	.type	compare,@function
compare:                                # @compare
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp0:
	.cfi_def_cfa_offset 8
.Ltmp1:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp2:
	.cfi_def_cfa_register %ebp
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -8(%ebp)
	movl	%eax, -16(%ebp)
	movl	-8(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	strcmp
	movl	%eax, %ecx
	movl	%ecx, -20(%ebp)
	movl	$1, %eax
	testl	%ecx, %ecx
	js	.LBB0_3
# BB#1:
	xorl	%eax, %eax
	cmpl	$0, -20(%ebp)
	je	.LBB0_3
# BB#2:                                 # %select.false
	movl	$-1, %eax
.LBB0_3:
	addl	$40, %esp
	popl	%ebp
	retl
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	subl	$7680072, %esp          # imm = 0x753048
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$0, -4(%ebp)
	movl	%ecx, -8(%ebp)
	movl	%eax, -16(%ebp)
	movl	$0, -7680040(%ebp)
	cmpl	$1, -8(%ebp)
	jle	.LBB1_11
# BB#1:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	$.L.str.1, 4(%esp)
	calll	fopen
	movl	%eax, -7680032(%ebp)
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	incl	-7680040(%ebp)
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	-7680032(%ebp), %eax
	movl	-7680040(%ebp), %ecx
	shll	$7, %ecx
	leal	-7680024(%ebp,%ecx), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	$.L.str.2, 4(%esp)
	calll	__isoc99_fscanf
	cmpl	$1, %eax
	jne	.LBB1_3
# BB#4:                                 #   in Loop: Header=BB1_2 Depth=1
	cmpl	$60000, -7680040(%ebp)  # imm = 0xEA60
	setl	%al
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	testb	%al, %al
	jne	.LBB1_6
# BB#7:
	movl	-7680040(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.L.str.3, (%esp)
	calll	printf
	movl	-7680040(%ebp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-7680024(%ebp), %eax
	movl	%eax, (%esp)
	movl	$compare, 20(%esp)
	movl	$0, 16(%esp)
	movl	$128, 12(%esp)
	calll	qsort
	movl	$0, -7680036(%ebp)
	jmp	.LBB1_8
	.align	16, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_8 Depth=1
	movl	-7680036(%ebp), %eax
	shll	$7, %eax
	leal	-7680024(%ebp,%eax), %eax
	movl	%eax, 4(%esp)
	movl	$.L.str.4, (%esp)
	calll	printf
	incl	-7680036(%ebp)
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movl	-7680036(%ebp), %eax
	cmpl	-7680040(%ebp), %eax
	jl	.LBB1_9
# BB#10:
	xorl	%eax, %eax
	addl	$7680072, %esp          # imm = 0x753048
	popl	%ebp
	retl
.LBB1_11:
	movl	stderr, %eax
	movl	%eax, (%esp)
	movl	$.L.str, 4(%esp)
	calll	fprintf
	movl	$-1, (%esp)
	calll	exit
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: qsort_small <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\nSorting %d elements.\n\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s\n"
	.size	.L.str.4, 4


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
