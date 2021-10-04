	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"qsort.bc"
	.globl	compare
	.align	2
	.type	compare,%function
compare:                                @ @compare
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	bic	sp, sp, #7
	str	r0, [sp, #16]
	str	r1, [sp, #8]
	ldr	r0, [sp, #16]
	bl	strcmp
	mov	r1, r0
	mov	r0, #1
	str	r1, [sp, #4]
	cmp	r1, #0
	blt	.LBB0_2
@ BB#1:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	mvnne	r0, #0
.LBB0_2:
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare
	.fnend

	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #56
	sub	sp, sp, #339968
	sub	sp, sp, #7340032
	bic	sp, sp, #15
	add	lr, sp, #339968
	mov	r3, #0
	add	lr, lr, #7340032
	str	r3, [sp, #16]
	add	r2, lr, #32
	str	r0, [r2, #8]
	str	r3, [r2, #12]
	str	r1, [r2]
	ldr	r0, [r2, #8]
	cmp	r0, #1
	ble	.LBB1_10
@ BB#1:
	ldr	r0, [r2]
	ldr	r1, .LCPI1_0
	ldr	r0, [r0, #4]
	bl	fopen
	ldr	r5, .LCPI1_1
	mov	r6, #2656
	add	r4, sp, #32
	str	r0, [sp, #24]
	orr	r6, r6, #57344
	b	.LBB1_3
.LBB1_2:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #16]
	add	r0, r0, #1
	str	r0, [sp, #16]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	mov	r1, r5
	add	r2, r4, r0, lsl #7
	ldr	r0, [sp, #24]
	bl	__isoc99_fscanf
	mov	r1, #0
	cmp	r0, #1
	bne	.LBB1_5
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #16]
	mov	r1, #0
	cmp	r0, r6
	movlt	r1, #1
.LBB1_5:                                @   in Loop: Header=BB1_3 Depth=1
	cmp	r1, #1
	beq	.LBB1_2
@ BB#6:
	ldr	r1, [sp, #16]
	ldr	r0, .LCPI1_2
	bl	printf
	ldr	r1, [sp, #16]
	ldr	r0, .LCPI1_3
	mov	r5, #0
	mov	r3, #128
	str	r5, [sp]
	str	r0, [sp, #4]
	asr	r2, r1, #31
	mov	r0, r4
	bl	qsort
	str	r5, [sp, #20]
	ldr	r5, .LCPI1_4
	b	.LBB1_8
.LBB1_7:                                @   in Loop: Header=BB1_8 Depth=1
	ldr	r0, [sp, #20]
	add	r1, r4, r0, lsl #7
	mov	r0, r5
	bl	printf
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
.LBB1_8:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	cmp	r1, r0
	blt	.LBB1_7
@ BB#9:
	mov	r0, #0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	mov	pc, lr
.LBB1_10:
	ldr	r0, .LCPI1_5
	ldr	r1, .LCPI1_6
	ldr	r0, [r0]
	bl	fprintf
	mvn	r0, #0
	bl	exit
	.align	2
@ BB#11:
.LCPI1_0:
	.long	.L.str.1
.LCPI1_1:
	.long	.L.str.2
.LCPI1_2:
	.long	.L.str.3
.LCPI1_3:
	.long	compare
.LCPI1_4:
	.long	.L.str.4
.LCPI1_5:
	.long	stderr
.LCPI1_6:
	.long	.L.str
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Usage: qsort_small <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"\nSorting %d elements.\n\n"
	.size	.L.str.3, 24

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"%s\n"
	.size	.L.str.4, 4


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",%progbits
