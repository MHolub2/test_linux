	.file	"fletcher.c"
# GNU C17 (GCC) version 8.2.1 20180831 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 8.2.1 20180831, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.19-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed fletcher.i -mtune=generic -march=x86-64
# -fverbose-asm
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstack-protector-strong
# -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
.LC0:
	.string	" %d files \n"
.LC1:
	.string	" Hash %zu \n"
.LC2:
	.string	" Hash took %g ms\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
	movl	%edi, -244(%rbp)	# argc, argc
	movq	%rsi, -256(%rbp)	# argv, argv
# fletcher.c:4: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.3763
	xorl	%eax, %eax	# tmp112
# fletcher.c:9:  	unsigned long adler = 1L;
	movq	$1, -224(%rbp)	#, adler
# fletcher.c:12:  	get_dscr(fd);
	leaq	-176(%rbp), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	get_dscr@PLT	#
# fletcher.c:15: 	for (j=0; j<30; j++){ 
	movl	$0, -236(%rbp)	#, j
# fletcher.c:15: 	for (j=0; j<30; j++){ 
	jmp	.L2	#
.L5:
# fletcher.c:16:  		int a = j;
	movl	-236(%rbp), %eax	# j, tmp94
	movl	%eax, -228(%rbp)	# tmp94, a
# fletcher.c:17:  		clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time_now);
	leaq	-208(%rbp), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	movl	$2, %edi	#,
	call	clock_gettime@PLT	#
# fletcher.c:18:   		while ((read_b = read (fd[a], buffer, BUFFER_SIZE)) > 0){  
	jmp	.L3	#
.L4:
# fletcher.c:19:      			adler = update_adler32(adler, buffer, read_b);  
	movq	-216(%rbp), %rax	# read_b, tmp96
	movl	%eax, %edx	# tmp96, _1
	leaq	-48(%rbp), %rcx	#, tmp97
	movq	-224(%rbp), %rax	# adler, tmp98
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	update_adler32@PLT	#
	movq	%rax, -224(%rbp)	# tmp99, adler
.L3:
# fletcher.c:18:   		while ((read_b = read (fd[a], buffer, BUFFER_SIZE)) > 0){  
	movl	-228(%rbp), %eax	# a, tmp101
	cltq
	movl	-176(%rbp,%rax,4), %eax	# fd, _2
	leaq	-48(%rbp), %rcx	#, tmp102
	movl	$32, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movl	%eax, %edi	# _2,
	call	read@PLT	#
	movq	%rax, -216(%rbp)	# tmp103, read_b
# fletcher.c:18:   		while ((read_b = read (fd[a], buffer, BUFFER_SIZE)) > 0){  
	cmpq	$0, -216(%rbp)	#, read_b
	jg	.L4	#,
# fletcher.c:21:  		clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time_after);
	leaq	-192(%rbp), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$2, %edi	#,
	call	clock_gettime@PLT	#
# fletcher.c:22:  		printf(" %d files \n", j);
	movl	-236(%rbp), %eax	# j, tmp105
	movl	%eax, %esi	# tmp105,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# fletcher.c:23:  		printf(" Hash %zu \n", adler);
	movq	-224(%rbp), %rax	# adler, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC1(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# fletcher.c:24:  		printf(" Hash took %g ms\n", timespec_diff(&time_after, &time_now));
	leaq	-208(%rbp), %rdx	#, tmp107
	leaq	-192(%rbp), %rax	#, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	timespec_diff@PLT	#
	leaq	.LC2(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# fletcher.c:15: 	for (j=0; j<30; j++){ 
	addl	$1, -236(%rbp)	#, j
.L2:
# fletcher.c:15: 	for (j=0; j<30; j++){ 
	cmpl	$29, -236(%rbp)	#, j
	jle	.L5	#,
# fletcher.c:29: 	for (i=0; i<30; i++){
	movl	$0, -232(%rbp)	#, i
# fletcher.c:29: 	for (i=0; i<30; i++){
	jmp	.L6	#
.L7:
# fletcher.c:30:   		close(fd[i]);
	movl	-232(%rbp), %eax	# i, tmp110
	cltq
	movl	-176(%rbp,%rax,4), %eax	# fd, _4
	movl	%eax, %edi	# _4,
	call	close@PLT	#
# fletcher.c:29: 	for (i=0; i<30; i++){
	addl	$1, -232(%rbp)	#, i
.L6:
# fletcher.c:29: 	for (i=0; i<30; i++){
	cmpl	$29, -232(%rbp)	#, i
	jle	.L7	#,
	movl	$0, %eax	#, _35
# fletcher.c:33: }
	movq	-8(%rbp), %rcx	# D.3763, tmp113
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp113
	je	.L9	#,
	call	__stack_chk_fail@PLT	#
.L9:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20180831"
	.section	.note.GNU-stack,"",@progbits
