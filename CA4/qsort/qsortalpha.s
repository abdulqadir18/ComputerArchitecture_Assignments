	.text
	.file	"qsort.bc"
	.globl	compare
	.align	4
	.type	compare,@function
compare:                                ! @compare
	.cfi_startproc
! BB#0:
	save %sp, -112, %sp
.Ltmp0:
	.cfi_def_cfa_register %fp
.Ltmp1:
	.cfi_window_save
.Ltmp2:
	.cfi_register 15, 31
	st %i0, [%fp+-8]
	ld [%fp+-8], %o0
	st %i1, [%fp+-16]
	call strcmp
	mov	 %i1, %o1
	cmp %o0, 0
	bl	 .LBB0_1
	st %o0, [%fp+-20]
! BB#2:
	ld [%fp+-20], %i0
	cmp %i0, 0
	be .LBB0_3
	nop
! BB#4:
	ret
	restore %g0, -1, %o0
.LBB0_1:
	ret
	restore %g0, 1, %o0
.LBB0_3:
	ret
	restore %g0, 0, %o0
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare
	.cfi_endproc

	.globl	main
	.align	4
	.type	main,@function
main:                                   ! @main
	.cfi_startproc
! BB#0:
	sethi 7500, %g1
	xor %g1, -128, %g1
	save %sp, %g1, %sp
.Ltmp3:
	.cfi_def_cfa_register %fp
.Ltmp4:
	.cfi_window_save
.Ltmp5:
	.cfi_register 15, 31
	andn %sp, 15, %sp
	sethi 7500, %g1
	add %g1, %sp, %g1
	st %i0, [%g1+120]
	sethi 7500, %g1
	add %g1, %sp, %g1
	ld [%g1+120], %i0
	sethi 7500, %g1
	add %g1, %sp, %g1
	st %g0, [%g1+124]
	sethi 7500, %g1
	add %g1, %sp, %g1
	st %i1, [%g1+112]
	cmp %i0, 1
	ble	 .LBB1_11
	st %g0, [%sp+96]
! BB#1:
	sethi 7500, %g1
	add %g1, %sp, %g1
	ld [%g1+112], %i0
	ld [%i0+4], %o0
	sethi %hi(.L.str.1), %i0
	call fopen
	add %i0, %lo(.L.str.1), %o1
	st %o0, [%sp+104]
	add %sp, 112, %i0
	sethi %hi(.L.str.2), %i1
	add %i1, %lo(.L.str.2), %i1
	sethi 0, %i2
	sethi 58, %i3
	or %i3, 608, %i3
	ba .LBB1_2
	mov	 1, %i4
.LBB1_6:                                !   in Loop: Header=BB1_2 Depth=1
	ld [%sp+96], %i5
	add %i5, 1, %i5
	st %i5, [%sp+96]
.LBB1_2:                                ! =>This Inner Loop Header: Depth=1
	ld [%sp+96], %i5
	ld [%sp+104], %o0
	sll %i5, 7, %i5
	add %i0, %i5, %o2
	call __isoc99_fscanf
	mov	 %i1, %o1
	cmp %o0, 1
	bne .LBB1_5
	mov	 %i2, %i5
! BB#3:                                 !   in Loop: Header=BB1_2 Depth=1
	ld [%sp+96], %i5
	cmp %i5, %i3
	bl	 .LBB1_5
	mov	 %i4, %i5
! BB#4:                                 !   in Loop: Header=BB1_2 Depth=1
	mov	 %i2, %i5
.LBB1_5:                                !   in Loop: Header=BB1_2 Depth=1
	cmp %i5, 0
	bne .LBB1_6
	nop
! BB#7:
	ld [%sp+96], %o1
	sethi %hi(.L.str.3), %i1
	call printf
	add %i1, %lo(.L.str.3), %o0
	ld [%sp+96], %o2
	sra %o2, 31, %o1
	sethi %hi(compare), %i1
	add %i1, %lo(compare), %o5
	sethi 0, %o3
	mov	 128, %o4
	call qsort
	mov	 %i0, %o0
	st %g0, [%sp+100]
	sethi %hi(.L.str.4), %i1
	ba .LBB1_8
	add %i1, %lo(.L.str.4), %i1
.LBB1_9:                                !   in Loop: Header=BB1_8 Depth=1
	ld [%sp+100], %i2
	sll %i2, 7, %i2
	add %i0, %i2, %o1
	call printf
	mov	 %i1, %o0
	ld [%sp+100], %i2
	add %i2, 1, %i2
	st %i2, [%sp+100]
.LBB1_8:                                ! =>This Inner Loop Header: Depth=1
	ld [%sp+100], %i2
	ld [%sp+96], %i3
	cmp %i2, %i3
	bl	 .LBB1_9
	nop
! BB#10:
	ret
	restore %g0, 0, %o0
.LBB1_11:
	sethi %hi(stderr), %i0
	ld [%i0+%lo(stderr)], %o0
	sethi %hi(.L.str), %i0
	call fprintf
	add %i0, %lo(.L.str), %o1
	call exit
	mov	 -1, %o0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	.L.str,@object          ! @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: qsort_small <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,@object        ! @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        ! @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        ! @.str.3
.L.str.3:
	.asciz	"\nSorting %d elements.\n\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        ! @.str.4
.L.str.4:
	.asciz	"%s\n"
	.size	.L.str.4, 4


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack"
