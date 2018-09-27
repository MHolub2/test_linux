	.file	"adler.c"
# GNU C17 (GCC) version 8.2.1 20180831 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 8.2.1 20180831, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.19-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed adler.i -mtune=generic -march=x86-64
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
	.globl	timespec_diff
	.type	timespec_diff, @function
timespec_diff:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stop, stop
	movq	%rsi, -32(%rbp)	# start, start
# adler.c:5: 	double diff = difftime(stop->tv_sec, start->tv_sec);
	movq	-32(%rbp), %rax	# start, tmp96
	movq	(%rax), %rdx	# start_9(D)->tv_sec, _1
	movq	-24(%rbp), %rax	# stop, tmp97
	movq	(%rax), %rax	# stop_10(D)->tv_sec, _2
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# _2,
	call	difftime@PLT	#
	movq	%xmm0, %rax	#, tmp98
	movq	%rax, -8(%rbp)	# tmp98, diff
# adler.c:6: 	diff *= 1000;
	movsd	-8(%rbp), %xmm1	# diff, tmp100
	movsd	.LC0(%rip), %xmm0	#, tmp101
	mulsd	%xmm1, %xmm0	# tmp100, tmp99
	movsd	%xmm0, -8(%rbp)	# tmp99, diff
# adler.c:7: 	diff += (stop->tv_nsec - start->tv_nsec) / 1e6;
	movq	-24(%rbp), %rax	# stop, tmp102
	movq	8(%rax), %rdx	# stop_10(D)->tv_nsec, _3
# adler.c:7: 	diff += (stop->tv_nsec - start->tv_nsec) / 1e6;
	movq	-32(%rbp), %rax	# start, tmp103
	movq	8(%rax), %rax	# start_9(D)->tv_nsec, _4
# adler.c:7: 	diff += (stop->tv_nsec - start->tv_nsec) / 1e6;
	subq	%rax, %rdx	# _4, _3
	movq	%rdx, %rax	# _3, _5
# adler.c:7: 	diff += (stop->tv_nsec - start->tv_nsec) / 1e6;
	cvtsi2sdq	%rax, %xmm0	# _5, _6
	movsd	.LC1(%rip), %xmm1	#, tmp104
	divsd	%xmm1, %xmm0	# tmp104, _7
# adler.c:7: 	diff += (stop->tv_nsec - start->tv_nsec) / 1e6;
	movsd	-8(%rbp), %xmm1	# diff, tmp106
	addsd	%xmm1, %xmm0	# tmp106, tmp105
	movsd	%xmm0, -8(%rbp)	# tmp105, diff
# adler.c:8: 	return diff;
	movsd	-8(%rbp), %xmm0	# diff, _14
# adler.c:9: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	timespec_diff, .-timespec_diff
	.globl	update_adler32
	.type	update_adler32, @function
update_adler32:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# adler, adler
	movq	%rsi, -48(%rbp)	# buf, buf
	movl	%edx, -52(%rbp)	# len, len
# adler.c:13:     unsigned long s1 = adler & 0xffff;
	movq	-40(%rbp), %rax	# adler, tmp100
	movzwl	%ax, %eax	# tmp100, tmp99
	movq	%rax, -16(%rbp)	# tmp99, s1
# adler.c:14:     unsigned long s2 = (adler >> 16) & 0xffff;
	movq	-40(%rbp), %rax	# adler, tmp101
	shrq	$16, %rax	#, _1
# adler.c:14:     unsigned long s2 = (adler >> 16) & 0xffff;
	andl	$65535, %eax	#, tmp102
	movq	%rax, -8(%rbp)	# tmp102, s2
# adler.c:17:     for (n = 0; n < len; n++) {
	movl	$0, -20(%rbp)	#, n
# adler.c:17:     for (n = 0; n < len; n++) {
	jmp	.L4	#
.L5:
# adler.c:18:         s1 = (s1 + buf[n]) % BASE;
	movl	-20(%rbp), %eax	# n, tmp103
	movslq	%eax, %rdx	# tmp103, _2
	movq	-48(%rbp), %rax	# buf, tmp104
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
	movzbl	%al, %edx	# _4, _5
# adler.c:18:         s1 = (s1 + buf[n]) % BASE;
	movq	-16(%rbp), %rax	# s1, tmp105
	leaq	(%rdx,%rax), %rcx	#, _6
# adler.c:18:         s1 = (s1 + buf[n]) % BASE;
	movabsq	$4223091239536077, %rdx	#, tmp107
	movq	%rcx, %rax	# _6, tmp130
	mulq	%rdx	# tmp107
	movq	%rcx, %rax	# _6, tmp108
	subq	%rdx, %rax	# tmp106, tmp108
	shrq	%rax	# tmp109
	addq	%rdx, %rax	# tmp106, tmp110
	shrq	$15, %rax	#, tmp111
	movq	%rax, -16(%rbp)	# tmp111, s1
	movq	-16(%rbp), %rax	# s1, tmp113
	imulq	$65521, %rax, %rax	#, tmp113, tmp112
	subq	%rax, %rcx	# tmp112, _6
	movq	%rcx, %rax	# _6, tmp114
	movq	%rax, -16(%rbp)	# tmp114, s1
# adler.c:19:         s2 = (s2 + s1)     % BASE;
	movq	-8(%rbp), %rdx	# s2, tmp115
	movq	-16(%rbp), %rax	# s1, tmp116
	leaq	(%rdx,%rax), %rcx	#, _7
# adler.c:19:         s2 = (s2 + s1)     % BASE;
	movabsq	$4223091239536077, %rdx	#, tmp118
	movq	%rcx, %rax	# _7, tmp131
	mulq	%rdx	# tmp118
	movq	%rcx, %rax	# _7, tmp119
	subq	%rdx, %rax	# tmp117, tmp119
	shrq	%rax	# tmp120
	addq	%rdx, %rax	# tmp117, tmp121
	shrq	$15, %rax	#, tmp122
	movq	%rax, -8(%rbp)	# tmp122, s2
	movq	-8(%rbp), %rax	# s2, tmp124
	imulq	$65521, %rax, %rax	#, tmp124, tmp123
	subq	%rax, %rcx	# tmp123, _7
	movq	%rcx, %rax	# _7, tmp125
	movq	%rax, -8(%rbp)	# tmp125, s2
# adler.c:17:     for (n = 0; n < len; n++) {
	addl	$1, -20(%rbp)	#, n
.L4:
# adler.c:17:     for (n = 0; n < len; n++) {
	movl	-20(%rbp), %eax	# n, tmp126
	cmpl	-52(%rbp), %eax	# len, tmp126
	jl	.L5	#,
# adler.c:21:     return (s2 << 16) + s1;
	movq	-8(%rbp), %rax	# s2, tmp127
	salq	$16, %rax	#, tmp127
	movq	%rax, %rdx	# tmp127, _8
# adler.c:21:     return (s2 << 16) + s1;
	movq	-16(%rbp), %rax	# s1, tmp128
	addq	%rdx, %rax	# _8, _22
# adler.c:22: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	update_adler32, .-update_adler32
	.section	.rodata
.LC2:
	.string	"file1"
.LC3:
	.string	"File_10000"
.LC4:
	.string	"File_20000"
.LC5:
	.string	"File_30000"
.LC6:
	.string	"File_40000"
.LC7:
	.string	"File_50000"
.LC8:
	.string	"File_60000"
.LC9:
	.string	"File_70000"
.LC10:
	.string	"File_80000"
.LC11:
	.string	"File_90000"
.LC12:
	.string	"File_100000"
.LC13:
	.string	"File_110000"
.LC14:
	.string	"File_120000"
.LC15:
	.string	"File_130000"
.LC16:
	.string	"File_140000"
.LC17:
	.string	"File_150000"
.LC18:
	.string	"File_160000"
.LC19:
	.string	"File_170000"
.LC20:
	.string	"File_180000"
.LC21:
	.string	"File_190000"
.LC22:
	.string	"File_200000"
.LC23:
	.string	"File_210000"
.LC24:
	.string	"File_220000"
.LC25:
	.string	"File_230000"
.LC26:
	.string	"File_240000"
.LC27:
	.string	"File_250000"
.LC28:
	.string	"File_260000"
.LC29:
	.string	"File_270000"
.LC30:
	.string	"File_280000"
.LC31:
	.string	"File_290000"
.LC32:
	.string	"File_300000"
	.text
	.globl	get_dscr
	.type	get_dscr, @function
get_dscr:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)	# fd, fd
# adler.c:25: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp517
	movq	%rax, -24(%rbp)	# tmp517, D.3769
	xorl	%eax, %eax	# tmp517
# adler.c:27:  fd[0] = open ("file1", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC2(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, %edx	#, _1
# adler.c:27:  fd[0] = open ("file1", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp362
	movl	%edx, (%rax)	# _1, *fd_280(D)
# adler.c:28:  fstat(fd[0], &stat_buf);
	movq	-200(%rbp), %rax	# fd, tmp363
	movl	(%rax), %eax	# *fd_280(D), _2
	leaq	-176(%rbp), %rdx	#, tmp364
	movq	%rdx, %rsi	# tmp364,
	movl	%eax, %edi	# _2,
	call	fstat@PLT	#
# adler.c:29:  fd[1]=open("File_10000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _3
# adler.c:29:  fd[1]=open("File_10000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp365
	leaq	4(%rdx), %rbx	#, _4
# adler.c:29:  fd[1]=open("File_10000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _3,
	movl	$65, %esi	#,
	leaq	.LC3(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:29:  fd[1]=open("File_10000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _5, *_4
# adler.c:30:  sendfile (fd[1], fd[0], 0, 10000);
	movq	-200(%rbp), %rax	# fd, tmp366
	movl	(%rax), %esi	# *fd_280(D), _6
# adler.c:30:  sendfile (fd[1], fd[0], 0, 10000);
	movq	-200(%rbp), %rax	# fd, tmp367
	addq	$4, %rax	#, _7
# adler.c:30:  sendfile (fd[1], fd[0], 0, 10000);
	movl	(%rax), %eax	# *_7, _8
	movl	$10000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _8,
	call	sendfile@PLT	#
# adler.c:31:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp368
	movl	(%rax), %eax	# *fd_280(D), _9
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _9,
	call	lseek@PLT	#
# adler.c:33: fd[2]=open("File_20000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _10
# adler.c:33: fd[2]=open("File_20000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp369
	leaq	8(%rdx), %rbx	#, _11
# adler.c:33: fd[2]=open("File_20000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _10,
	movl	$65, %esi	#,
	leaq	.LC4(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:33: fd[2]=open("File_20000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _12, *_11
# adler.c:34:  sendfile (fd[2], fd[0], 0, 20000);
	movq	-200(%rbp), %rax	# fd, tmp370
	movl	(%rax), %esi	# *fd_280(D), _13
# adler.c:34:  sendfile (fd[2], fd[0], 0, 20000);
	movq	-200(%rbp), %rax	# fd, tmp371
	addq	$8, %rax	#, _14
# adler.c:34:  sendfile (fd[2], fd[0], 0, 20000);
	movl	(%rax), %eax	# *_14, _15
	movl	$20000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _15,
	call	sendfile@PLT	#
# adler.c:35:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp372
	movl	(%rax), %eax	# *fd_280(D), _16
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _16,
	call	lseek@PLT	#
# adler.c:37: fd[3]=open("File_30000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _17
# adler.c:37: fd[3]=open("File_30000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp373
	leaq	12(%rdx), %rbx	#, _18
# adler.c:37: fd[3]=open("File_30000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _17,
	movl	$65, %esi	#,
	leaq	.LC5(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:37: fd[3]=open("File_30000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _19, *_18
# adler.c:38:  sendfile (fd[3], fd[0], 0, 30000);
	movq	-200(%rbp), %rax	# fd, tmp374
	movl	(%rax), %esi	# *fd_280(D), _20
# adler.c:38:  sendfile (fd[3], fd[0], 0, 30000);
	movq	-200(%rbp), %rax	# fd, tmp375
	addq	$12, %rax	#, _21
# adler.c:38:  sendfile (fd[3], fd[0], 0, 30000);
	movl	(%rax), %eax	# *_21, _22
	movl	$30000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _22,
	call	sendfile@PLT	#
# adler.c:39:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp376
	movl	(%rax), %eax	# *fd_280(D), _23
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _23,
	call	lseek@PLT	#
# adler.c:41: fd[4]=open("File_40000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _24
# adler.c:41: fd[4]=open("File_40000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp377
	leaq	16(%rdx), %rbx	#, _25
# adler.c:41: fd[4]=open("File_40000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _24,
	movl	$65, %esi	#,
	leaq	.LC6(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:41: fd[4]=open("File_40000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _26, *_25
# adler.c:42:  sendfile (fd[4], fd[0], 0, 40000);
	movq	-200(%rbp), %rax	# fd, tmp378
	movl	(%rax), %esi	# *fd_280(D), _27
# adler.c:42:  sendfile (fd[4], fd[0], 0, 40000);
	movq	-200(%rbp), %rax	# fd, tmp379
	addq	$16, %rax	#, _28
# adler.c:42:  sendfile (fd[4], fd[0], 0, 40000);
	movl	(%rax), %eax	# *_28, _29
	movl	$40000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _29,
	call	sendfile@PLT	#
# adler.c:43:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp380
	movl	(%rax), %eax	# *fd_280(D), _30
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _30,
	call	lseek@PLT	#
# adler.c:45: fd[5]=open("File_50000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _31
# adler.c:45: fd[5]=open("File_50000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp381
	leaq	20(%rdx), %rbx	#, _32
# adler.c:45: fd[5]=open("File_50000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _31,
	movl	$65, %esi	#,
	leaq	.LC7(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:45: fd[5]=open("File_50000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _33, *_32
# adler.c:46:  sendfile (fd[5], fd[0], 0, 50000);
	movq	-200(%rbp), %rax	# fd, tmp382
	movl	(%rax), %esi	# *fd_280(D), _34
# adler.c:46:  sendfile (fd[5], fd[0], 0, 50000);
	movq	-200(%rbp), %rax	# fd, tmp383
	addq	$20, %rax	#, _35
# adler.c:46:  sendfile (fd[5], fd[0], 0, 50000);
	movl	(%rax), %eax	# *_35, _36
	movl	$50000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _36,
	call	sendfile@PLT	#
# adler.c:47:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp384
	movl	(%rax), %eax	# *fd_280(D), _37
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _37,
	call	lseek@PLT	#
# adler.c:49: fd[6]=open("File_60000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _38
# adler.c:49: fd[6]=open("File_60000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp385
	leaq	24(%rdx), %rbx	#, _39
# adler.c:49: fd[6]=open("File_60000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _38,
	movl	$65, %esi	#,
	leaq	.LC8(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:49: fd[6]=open("File_60000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _40, *_39
# adler.c:50:  sendfile (fd[6], fd[0], 0, 60000);
	movq	-200(%rbp), %rax	# fd, tmp386
	movl	(%rax), %esi	# *fd_280(D), _41
# adler.c:50:  sendfile (fd[6], fd[0], 0, 60000);
	movq	-200(%rbp), %rax	# fd, tmp387
	addq	$24, %rax	#, _42
# adler.c:50:  sendfile (fd[6], fd[0], 0, 60000);
	movl	(%rax), %eax	# *_42, _43
	movl	$60000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _43,
	call	sendfile@PLT	#
# adler.c:51:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp388
	movl	(%rax), %eax	# *fd_280(D), _44
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _44,
	call	lseek@PLT	#
# adler.c:53: fd[7]=open("File_70000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _45
# adler.c:53: fd[7]=open("File_70000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp389
	leaq	28(%rdx), %rbx	#, _46
# adler.c:53: fd[7]=open("File_70000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _45,
	movl	$65, %esi	#,
	leaq	.LC9(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:53: fd[7]=open("File_70000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _47, *_46
# adler.c:54:  sendfile (fd[7], fd[0], 0, 70000);
	movq	-200(%rbp), %rax	# fd, tmp390
	movl	(%rax), %esi	# *fd_280(D), _48
# adler.c:54:  sendfile (fd[7], fd[0], 0, 70000);
	movq	-200(%rbp), %rax	# fd, tmp391
	addq	$28, %rax	#, _49
# adler.c:54:  sendfile (fd[7], fd[0], 0, 70000);
	movl	(%rax), %eax	# *_49, _50
	movl	$70000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _50,
	call	sendfile@PLT	#
# adler.c:55:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp392
	movl	(%rax), %eax	# *fd_280(D), _51
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _51,
	call	lseek@PLT	#
# adler.c:57: fd[8]=open("File_80000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _52
# adler.c:57: fd[8]=open("File_80000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp393
	leaq	32(%rdx), %rbx	#, _53
# adler.c:57: fd[8]=open("File_80000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _52,
	movl	$65, %esi	#,
	leaq	.LC10(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:57: fd[8]=open("File_80000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _54, *_53
# adler.c:58:  sendfile (fd[8], fd[0], 0, 80000);
	movq	-200(%rbp), %rax	# fd, tmp394
	movl	(%rax), %esi	# *fd_280(D), _55
# adler.c:58:  sendfile (fd[8], fd[0], 0, 80000);
	movq	-200(%rbp), %rax	# fd, tmp395
	addq	$32, %rax	#, _56
# adler.c:58:  sendfile (fd[8], fd[0], 0, 80000);
	movl	(%rax), %eax	# *_56, _57
	movl	$80000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _57,
	call	sendfile@PLT	#
# adler.c:59:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp396
	movl	(%rax), %eax	# *fd_280(D), _58
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _58,
	call	lseek@PLT	#
# adler.c:61: fd[9]=open("File_90000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _59
# adler.c:61: fd[9]=open("File_90000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp397
	leaq	36(%rdx), %rbx	#, _60
# adler.c:61: fd[9]=open("File_90000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _59,
	movl	$65, %esi	#,
	leaq	.LC11(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:61: fd[9]=open("File_90000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _61, *_60
# adler.c:62:  sendfile (fd[9], fd[0], 0, 90000);
	movq	-200(%rbp), %rax	# fd, tmp398
	movl	(%rax), %esi	# *fd_280(D), _62
# adler.c:62:  sendfile (fd[9], fd[0], 0, 90000);
	movq	-200(%rbp), %rax	# fd, tmp399
	addq	$36, %rax	#, _63
# adler.c:62:  sendfile (fd[9], fd[0], 0, 90000);
	movl	(%rax), %eax	# *_63, _64
	movl	$90000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _64,
	call	sendfile@PLT	#
# adler.c:63:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp400
	movl	(%rax), %eax	# *fd_280(D), _65
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _65,
	call	lseek@PLT	#
# adler.c:65: fd[10]=open("File_100000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _66
# adler.c:65: fd[10]=open("File_100000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp401
	leaq	40(%rdx), %rbx	#, _67
# adler.c:65: fd[10]=open("File_100000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _66,
	movl	$65, %esi	#,
	leaq	.LC12(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:65: fd[10]=open("File_100000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _68, *_67
# adler.c:66:  sendfile (fd[10], fd[0], 0, 100000);
	movq	-200(%rbp), %rax	# fd, tmp402
	movl	(%rax), %esi	# *fd_280(D), _69
# adler.c:66:  sendfile (fd[10], fd[0], 0, 100000);
	movq	-200(%rbp), %rax	# fd, tmp403
	addq	$40, %rax	#, _70
# adler.c:66:  sendfile (fd[10], fd[0], 0, 100000);
	movl	(%rax), %eax	# *_70, _71
	movl	$100000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _71,
	call	sendfile@PLT	#
# adler.c:67:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp404
	movl	(%rax), %eax	# *fd_280(D), _72
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _72,
	call	lseek@PLT	#
# adler.c:69: fd[11]=open("File_110000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _73
# adler.c:69: fd[11]=open("File_110000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp405
	leaq	44(%rdx), %rbx	#, _74
# adler.c:69: fd[11]=open("File_110000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _73,
	movl	$65, %esi	#,
	leaq	.LC13(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:69: fd[11]=open("File_110000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _75, *_74
# adler.c:70:  sendfile (fd[11], fd[0], 0, 110000);
	movq	-200(%rbp), %rax	# fd, tmp406
	movl	(%rax), %esi	# *fd_280(D), _76
# adler.c:70:  sendfile (fd[11], fd[0], 0, 110000);
	movq	-200(%rbp), %rax	# fd, tmp407
	addq	$44, %rax	#, _77
# adler.c:70:  sendfile (fd[11], fd[0], 0, 110000);
	movl	(%rax), %eax	# *_77, _78
	movl	$110000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _78,
	call	sendfile@PLT	#
# adler.c:71:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp408
	movl	(%rax), %eax	# *fd_280(D), _79
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _79,
	call	lseek@PLT	#
# adler.c:73: fd[12]=open("File_120000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _80
# adler.c:73: fd[12]=open("File_120000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp409
	leaq	48(%rdx), %rbx	#, _81
# adler.c:73: fd[12]=open("File_120000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _80,
	movl	$65, %esi	#,
	leaq	.LC14(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:73: fd[12]=open("File_120000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _82, *_81
# adler.c:74:  sendfile (fd[12], fd[0], 0, 120000);
	movq	-200(%rbp), %rax	# fd, tmp410
	movl	(%rax), %esi	# *fd_280(D), _83
# adler.c:74:  sendfile (fd[12], fd[0], 0, 120000);
	movq	-200(%rbp), %rax	# fd, tmp411
	addq	$48, %rax	#, _84
# adler.c:74:  sendfile (fd[12], fd[0], 0, 120000);
	movl	(%rax), %eax	# *_84, _85
	movl	$120000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _85,
	call	sendfile@PLT	#
# adler.c:75:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp412
	movl	(%rax), %eax	# *fd_280(D), _86
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _86,
	call	lseek@PLT	#
# adler.c:77: fd[13]=open("File_130000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _87
# adler.c:77: fd[13]=open("File_130000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp413
	leaq	52(%rdx), %rbx	#, _88
# adler.c:77: fd[13]=open("File_130000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _87,
	movl	$65, %esi	#,
	leaq	.LC15(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:77: fd[13]=open("File_130000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _89, *_88
# adler.c:78:  sendfile (fd[13], fd[0], 0, 130000);
	movq	-200(%rbp), %rax	# fd, tmp414
	movl	(%rax), %esi	# *fd_280(D), _90
# adler.c:78:  sendfile (fd[13], fd[0], 0, 130000);
	movq	-200(%rbp), %rax	# fd, tmp415
	addq	$52, %rax	#, _91
# adler.c:78:  sendfile (fd[13], fd[0], 0, 130000);
	movl	(%rax), %eax	# *_91, _92
	movl	$130000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _92,
	call	sendfile@PLT	#
# adler.c:79:  lseek (fd[0], 0, SEEK_SET); 
	movq	-200(%rbp), %rax	# fd, tmp416
	movl	(%rax), %eax	# *fd_280(D), _93
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _93,
	call	lseek@PLT	#
# adler.c:81: fd[14]=open("File_140000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _94
# adler.c:81: fd[14]=open("File_140000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp417
	leaq	56(%rdx), %rbx	#, _95
# adler.c:81: fd[14]=open("File_140000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _94,
	movl	$65, %esi	#,
	leaq	.LC16(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:81: fd[14]=open("File_140000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _96, *_95
# adler.c:82:  sendfile (fd[14], fd[0], 0, 140000);
	movq	-200(%rbp), %rax	# fd, tmp418
	movl	(%rax), %esi	# *fd_280(D), _97
# adler.c:82:  sendfile (fd[14], fd[0], 0, 140000);
	movq	-200(%rbp), %rax	# fd, tmp419
	addq	$56, %rax	#, _98
# adler.c:82:  sendfile (fd[14], fd[0], 0, 140000);
	movl	(%rax), %eax	# *_98, _99
	movl	$140000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _99,
	call	sendfile@PLT	#
# adler.c:83:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp420
	movl	(%rax), %eax	# *fd_280(D), _100
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _100,
	call	lseek@PLT	#
# adler.c:85: fd[15]=open("File_150000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _101
# adler.c:85: fd[15]=open("File_150000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp421
	leaq	60(%rdx), %rbx	#, _102
# adler.c:85: fd[15]=open("File_150000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _101,
	movl	$65, %esi	#,
	leaq	.LC17(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:85: fd[15]=open("File_150000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _103, *_102
# adler.c:86:  sendfile (fd[15], fd[0], 0, 150000);
	movq	-200(%rbp), %rax	# fd, tmp422
	movl	(%rax), %esi	# *fd_280(D), _104
# adler.c:86:  sendfile (fd[15], fd[0], 0, 150000);
	movq	-200(%rbp), %rax	# fd, tmp423
	addq	$60, %rax	#, _105
# adler.c:86:  sendfile (fd[15], fd[0], 0, 150000);
	movl	(%rax), %eax	# *_105, _106
	movl	$150000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _106,
	call	sendfile@PLT	#
# adler.c:87:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp424
	movl	(%rax), %eax	# *fd_280(D), _107
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _107,
	call	lseek@PLT	#
# adler.c:89: fd[16]=open("File_160000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _108
# adler.c:89: fd[16]=open("File_160000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp425
	leaq	64(%rdx), %rbx	#, _109
# adler.c:89: fd[16]=open("File_160000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _108,
	movl	$65, %esi	#,
	leaq	.LC18(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:89: fd[16]=open("File_160000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _110, *_109
# adler.c:90:  sendfile (fd[16], fd[0], 0, 160000);
	movq	-200(%rbp), %rax	# fd, tmp426
	movl	(%rax), %esi	# *fd_280(D), _111
# adler.c:90:  sendfile (fd[16], fd[0], 0, 160000);
	movq	-200(%rbp), %rax	# fd, tmp427
	addq	$64, %rax	#, _112
# adler.c:90:  sendfile (fd[16], fd[0], 0, 160000);
	movl	(%rax), %eax	# *_112, _113
	movl	$160000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _113,
	call	sendfile@PLT	#
# adler.c:91:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp428
	movl	(%rax), %eax	# *fd_280(D), _114
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _114,
	call	lseek@PLT	#
# adler.c:93: fd[17]=open("File_170000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _115
# adler.c:93: fd[17]=open("File_170000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp429
	leaq	68(%rdx), %rbx	#, _116
# adler.c:93: fd[17]=open("File_170000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _115,
	movl	$65, %esi	#,
	leaq	.LC19(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:93: fd[17]=open("File_170000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _117, *_116
# adler.c:94:  sendfile (fd[17], fd[0], 0, 170000);
	movq	-200(%rbp), %rax	# fd, tmp430
	movl	(%rax), %esi	# *fd_280(D), _118
# adler.c:94:  sendfile (fd[17], fd[0], 0, 170000);
	movq	-200(%rbp), %rax	# fd, tmp431
	addq	$68, %rax	#, _119
# adler.c:94:  sendfile (fd[17], fd[0], 0, 170000);
	movl	(%rax), %eax	# *_119, _120
	movl	$170000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _120,
	call	sendfile@PLT	#
# adler.c:95:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp432
	movl	(%rax), %eax	# *fd_280(D), _121
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _121,
	call	lseek@PLT	#
# adler.c:97: fd[18]=open("File_180000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _122
# adler.c:97: fd[18]=open("File_180000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp433
	leaq	72(%rdx), %rbx	#, _123
# adler.c:97: fd[18]=open("File_180000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _122,
	movl	$65, %esi	#,
	leaq	.LC20(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:97: fd[18]=open("File_180000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _124, *_123
# adler.c:98:  sendfile (fd[18], fd[0], 0, 180000);
	movq	-200(%rbp), %rax	# fd, tmp434
	movl	(%rax), %esi	# *fd_280(D), _125
# adler.c:98:  sendfile (fd[18], fd[0], 0, 180000);
	movq	-200(%rbp), %rax	# fd, tmp435
	addq	$72, %rax	#, _126
# adler.c:98:  sendfile (fd[18], fd[0], 0, 180000);
	movl	(%rax), %eax	# *_126, _127
	movl	$180000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _127,
	call	sendfile@PLT	#
# adler.c:99:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp436
	movl	(%rax), %eax	# *fd_280(D), _128
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _128,
	call	lseek@PLT	#
# adler.c:101: fd[19]=open("File_190000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _129
# adler.c:101: fd[19]=open("File_190000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp437
	leaq	76(%rdx), %rbx	#, _130
# adler.c:101: fd[19]=open("File_190000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _129,
	movl	$65, %esi	#,
	leaq	.LC21(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:101: fd[19]=open("File_190000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _131, *_130
# adler.c:102:  sendfile (fd[19], fd[0], 0, 190000);
	movq	-200(%rbp), %rax	# fd, tmp438
	movl	(%rax), %esi	# *fd_280(D), _132
# adler.c:102:  sendfile (fd[19], fd[0], 0, 190000);
	movq	-200(%rbp), %rax	# fd, tmp439
	addq	$76, %rax	#, _133
# adler.c:102:  sendfile (fd[19], fd[0], 0, 190000);
	movl	(%rax), %eax	# *_133, _134
	movl	$190000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _134,
	call	sendfile@PLT	#
# adler.c:103:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp440
	movl	(%rax), %eax	# *fd_280(D), _135
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _135,
	call	lseek@PLT	#
# adler.c:105: fd[20]=open("File_200000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _136
# adler.c:105: fd[20]=open("File_200000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp441
	leaq	80(%rdx), %rbx	#, _137
# adler.c:105: fd[20]=open("File_200000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _136,
	movl	$65, %esi	#,
	leaq	.LC22(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:105: fd[20]=open("File_200000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _138, *_137
# adler.c:106:  sendfile (fd[20], fd[0], 0, 200000);
	movq	-200(%rbp), %rax	# fd, tmp442
	movl	(%rax), %esi	# *fd_280(D), _139
# adler.c:106:  sendfile (fd[20], fd[0], 0, 200000);
	movq	-200(%rbp), %rax	# fd, tmp443
	addq	$80, %rax	#, _140
# adler.c:106:  sendfile (fd[20], fd[0], 0, 200000);
	movl	(%rax), %eax	# *_140, _141
	movl	$200000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _141,
	call	sendfile@PLT	#
# adler.c:107:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp444
	movl	(%rax), %eax	# *fd_280(D), _142
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _142,
	call	lseek@PLT	#
# adler.c:109: fd[21]=open("File_210000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _143
# adler.c:109: fd[21]=open("File_210000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp445
	leaq	84(%rdx), %rbx	#, _144
# adler.c:109: fd[21]=open("File_210000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _143,
	movl	$65, %esi	#,
	leaq	.LC23(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:109: fd[21]=open("File_210000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _145, *_144
# adler.c:110:  sendfile (fd[21], fd[0], 0, 210000);
	movq	-200(%rbp), %rax	# fd, tmp446
	movl	(%rax), %esi	# *fd_280(D), _146
# adler.c:110:  sendfile (fd[21], fd[0], 0, 210000);
	movq	-200(%rbp), %rax	# fd, tmp447
	addq	$84, %rax	#, _147
# adler.c:110:  sendfile (fd[21], fd[0], 0, 210000);
	movl	(%rax), %eax	# *_147, _148
	movl	$210000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _148,
	call	sendfile@PLT	#
# adler.c:111:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp448
	movl	(%rax), %eax	# *fd_280(D), _149
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _149,
	call	lseek@PLT	#
# adler.c:113: fd[22]=open("File_220000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _150
# adler.c:113: fd[22]=open("File_220000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp449
	leaq	88(%rdx), %rbx	#, _151
# adler.c:113: fd[22]=open("File_220000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _150,
	movl	$65, %esi	#,
	leaq	.LC24(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:113: fd[22]=open("File_220000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _152, *_151
# adler.c:114:  sendfile (fd[22], fd[0], 0, 220000);
	movq	-200(%rbp), %rax	# fd, tmp450
	movl	(%rax), %esi	# *fd_280(D), _153
# adler.c:114:  sendfile (fd[22], fd[0], 0, 220000);
	movq	-200(%rbp), %rax	# fd, tmp451
	addq	$88, %rax	#, _154
# adler.c:114:  sendfile (fd[22], fd[0], 0, 220000);
	movl	(%rax), %eax	# *_154, _155
	movl	$220000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _155,
	call	sendfile@PLT	#
# adler.c:115:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp452
	movl	(%rax), %eax	# *fd_280(D), _156
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _156,
	call	lseek@PLT	#
# adler.c:117: fd[23]=open("File_230000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _157
# adler.c:117: fd[23]=open("File_230000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp453
	leaq	92(%rdx), %rbx	#, _158
# adler.c:117: fd[23]=open("File_230000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _157,
	movl	$65, %esi	#,
	leaq	.LC25(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:117: fd[23]=open("File_230000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _159, *_158
# adler.c:118:  sendfile (fd[23], fd[0], 0, 230000);
	movq	-200(%rbp), %rax	# fd, tmp454
	movl	(%rax), %esi	# *fd_280(D), _160
# adler.c:118:  sendfile (fd[23], fd[0], 0, 230000);
	movq	-200(%rbp), %rax	# fd, tmp455
	addq	$92, %rax	#, _161
# adler.c:118:  sendfile (fd[23], fd[0], 0, 230000);
	movl	(%rax), %eax	# *_161, _162
	movl	$230000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _162,
	call	sendfile@PLT	#
# adler.c:119:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp456
	movl	(%rax), %eax	# *fd_280(D), _163
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _163,
	call	lseek@PLT	#
# adler.c:121: fd[24]=open("File_240000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _164
# adler.c:121: fd[24]=open("File_240000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp457
	leaq	96(%rdx), %rbx	#, _165
# adler.c:121: fd[24]=open("File_240000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _164,
	movl	$65, %esi	#,
	leaq	.LC26(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:121: fd[24]=open("File_240000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _166, *_165
# adler.c:122:  sendfile (fd[24], fd[0], 0, 240000);
	movq	-200(%rbp), %rax	# fd, tmp458
	movl	(%rax), %esi	# *fd_280(D), _167
# adler.c:122:  sendfile (fd[24], fd[0], 0, 240000);
	movq	-200(%rbp), %rax	# fd, tmp459
	addq	$96, %rax	#, _168
# adler.c:122:  sendfile (fd[24], fd[0], 0, 240000);
	movl	(%rax), %eax	# *_168, _169
	movl	$240000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _169,
	call	sendfile@PLT	#
# adler.c:123:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp460
	movl	(%rax), %eax	# *fd_280(D), _170
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _170,
	call	lseek@PLT	#
# adler.c:125: fd[25]=open("File_250000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _171
# adler.c:125: fd[25]=open("File_250000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp461
	leaq	100(%rdx), %rbx	#, _172
# adler.c:125: fd[25]=open("File_250000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _171,
	movl	$65, %esi	#,
	leaq	.LC27(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:125: fd[25]=open("File_250000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _173, *_172
# adler.c:126:  sendfile (fd[25], fd[0], 0, 250000);
	movq	-200(%rbp), %rax	# fd, tmp462
	movl	(%rax), %esi	# *fd_280(D), _174
# adler.c:126:  sendfile (fd[25], fd[0], 0, 250000);
	movq	-200(%rbp), %rax	# fd, tmp463
	addq	$100, %rax	#, _175
# adler.c:126:  sendfile (fd[25], fd[0], 0, 250000);
	movl	(%rax), %eax	# *_175, _176
	movl	$250000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _176,
	call	sendfile@PLT	#
# adler.c:127:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp464
	movl	(%rax), %eax	# *fd_280(D), _177
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _177,
	call	lseek@PLT	#
# adler.c:129: fd[26]=open("File_260000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _178
# adler.c:129: fd[26]=open("File_260000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp465
	leaq	104(%rdx), %rbx	#, _179
# adler.c:129: fd[26]=open("File_260000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _178,
	movl	$65, %esi	#,
	leaq	.LC28(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:129: fd[26]=open("File_260000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _180, *_179
# adler.c:130:  sendfile (fd[26], fd[0], 0, 260000);
	movq	-200(%rbp), %rax	# fd, tmp466
	movl	(%rax), %esi	# *fd_280(D), _181
# adler.c:130:  sendfile (fd[26], fd[0], 0, 260000);
	movq	-200(%rbp), %rax	# fd, tmp467
	addq	$104, %rax	#, _182
# adler.c:130:  sendfile (fd[26], fd[0], 0, 260000);
	movl	(%rax), %eax	# *_182, _183
	movl	$260000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _183,
	call	sendfile@PLT	#
# adler.c:131:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp468
	movl	(%rax), %eax	# *fd_280(D), _184
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _184,
	call	lseek@PLT	#
# adler.c:133: fd[27]=open("File_270000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _185
# adler.c:133: fd[27]=open("File_270000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp469
	leaq	108(%rdx), %rbx	#, _186
# adler.c:133: fd[27]=open("File_270000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _185,
	movl	$65, %esi	#,
	leaq	.LC29(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:133: fd[27]=open("File_270000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _187, *_186
# adler.c:134:  sendfile (fd[27], fd[0], 0, 270000);
	movq	-200(%rbp), %rax	# fd, tmp470
	movl	(%rax), %esi	# *fd_280(D), _188
# adler.c:134:  sendfile (fd[27], fd[0], 0, 270000);
	movq	-200(%rbp), %rax	# fd, tmp471
	addq	$108, %rax	#, _189
# adler.c:134:  sendfile (fd[27], fd[0], 0, 270000);
	movl	(%rax), %eax	# *_189, _190
	movl	$270000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _190,
	call	sendfile@PLT	#
# adler.c:135:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp472
	movl	(%rax), %eax	# *fd_280(D), _191
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _191,
	call	lseek@PLT	#
# adler.c:137: fd[28]=open("File_280000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _192
# adler.c:137: fd[28]=open("File_280000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp473
	leaq	112(%rdx), %rbx	#, _193
# adler.c:137: fd[28]=open("File_280000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _192,
	movl	$65, %esi	#,
	leaq	.LC30(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:137: fd[28]=open("File_280000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _194, *_193
# adler.c:138:  sendfile (fd[28], fd[0], 0, 280000);
	movq	-200(%rbp), %rax	# fd, tmp474
	movl	(%rax), %esi	# *fd_280(D), _195
# adler.c:138:  sendfile (fd[28], fd[0], 0, 280000);
	movq	-200(%rbp), %rax	# fd, tmp475
	addq	$112, %rax	#, _196
# adler.c:138:  sendfile (fd[28], fd[0], 0, 280000);
	movl	(%rax), %eax	# *_196, _197
	movl	$280000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _197,
	call	sendfile@PLT	#
# adler.c:139:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp476
	movl	(%rax), %eax	# *fd_280(D), _198
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _198,
	call	lseek@PLT	#
# adler.c:141: fd[29]=open("File_290000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _199
# adler.c:141: fd[29]=open("File_290000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp477
	leaq	116(%rdx), %rbx	#, _200
# adler.c:141: fd[29]=open("File_290000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _199,
	movl	$65, %esi	#,
	leaq	.LC31(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:141: fd[29]=open("File_290000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _201, *_200
# adler.c:142:  sendfile (fd[29], fd[0], 0, 290000);
	movq	-200(%rbp), %rax	# fd, tmp478
	movl	(%rax), %esi	# *fd_280(D), _202
# adler.c:142:  sendfile (fd[29], fd[0], 0, 290000);
	movq	-200(%rbp), %rax	# fd, tmp479
	addq	$116, %rax	#, _203
# adler.c:142:  sendfile (fd[29], fd[0], 0, 290000);
	movl	(%rax), %eax	# *_203, _204
	movl	$290000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _204,
	call	sendfile@PLT	#
# adler.c:143:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp480
	movl	(%rax), %eax	# *fd_280(D), _205
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _205,
	call	lseek@PLT	#
# adler.c:145: fd[30]=open("File_300000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	-152(%rbp), %eax	# stat_buf.st_mode, _206
# adler.c:145: fd[30]=open("File_300000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movq	-200(%rbp), %rdx	# fd, tmp481
	leaq	120(%rdx), %rbx	#, _207
# adler.c:145: fd[30]=open("File_300000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, %edx	# _206,
	movl	$65, %esi	#,
	leaq	.LC32(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:145: fd[30]=open("File_300000", O_WRONLY|O_CREAT, stat_buf.st_mode);
	movl	%eax, (%rbx)	# _208, *_207
# adler.c:146:  sendfile (fd[30], fd[0], 0, 300000);
	movq	-200(%rbp), %rax	# fd, tmp482
	movl	(%rax), %esi	# *fd_280(D), _209
# adler.c:146:  sendfile (fd[30], fd[0], 0, 300000);
	movq	-200(%rbp), %rax	# fd, tmp483
	addq	$120, %rax	#, _210
# adler.c:146:  sendfile (fd[30], fd[0], 0, 300000);
	movl	(%rax), %eax	# *_210, _211
	movl	$300000, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# _211,
	call	sendfile@PLT	#
# adler.c:147:  lseek (fd[0], 0, SEEK_SET);
	movq	-200(%rbp), %rax	# fd, tmp484
	movl	(%rax), %eax	# *fd_280(D), _212
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _212,
	call	lseek@PLT	#
# adler.c:149: for (int i=0; i<31; i++)
	movl	$0, -180(%rbp)	#, i
# adler.c:149: for (int i=0; i<31; i++)
	jmp	.L8	#
.L9:
# adler.c:151:   close(fd[i]);
	movl	-180(%rbp), %eax	# i, tmp485
	cltq
	leaq	0(,%rax,4), %rdx	#, _214
	movq	-200(%rbp), %rax	# fd, tmp486
	addq	%rdx, %rax	# _214, _215
# adler.c:151:   close(fd[i]);
	movl	(%rax), %eax	# *_215, _216
	movl	%eax, %edi	# _216,
	call	close@PLT	#
# adler.c:149: for (int i=0; i<31; i++)
	addl	$1, -180(%rbp)	#, i
.L8:
# adler.c:149: for (int i=0; i<31; i++)
	cmpl	$30, -180(%rbp)	#, i
	jle	.L9	#,
# adler.c:153:  fd[0] = open ("File_10000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC3(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, %edx	#, _217
# adler.c:153:  fd[0] = open ("File_10000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp487
	movl	%edx, (%rax)	# _217, *fd_280(D)
# adler.c:154:  fd[1] = open ("File_20000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp488
	leaq	4(%rax), %rbx	#, _218
# adler.c:154:  fd[1] = open ("File_20000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC4(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:154:  fd[1] = open ("File_20000", O_RDWR);
	movl	%eax, (%rbx)	# _219, *_218
# adler.c:155:  fd[2] = open ("File_30000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp489
	leaq	8(%rax), %rbx	#, _220
# adler.c:155:  fd[2] = open ("File_30000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC5(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:155:  fd[2] = open ("File_30000", O_RDWR);
	movl	%eax, (%rbx)	# _221, *_220
# adler.c:156:  fd[3] = open ("File_40000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp490
	leaq	12(%rax), %rbx	#, _222
# adler.c:156:  fd[3] = open ("File_40000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC6(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:156:  fd[3] = open ("File_40000", O_RDWR);
	movl	%eax, (%rbx)	# _223, *_222
# adler.c:157:  fd[4] = open ("File_50000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp491
	leaq	16(%rax), %rbx	#, _224
# adler.c:157:  fd[4] = open ("File_50000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC7(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:157:  fd[4] = open ("File_50000", O_RDWR);
	movl	%eax, (%rbx)	# _225, *_224
# adler.c:158:  fd[5] = open ("File_60000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp492
	leaq	20(%rax), %rbx	#, _226
# adler.c:158:  fd[5] = open ("File_60000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC8(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:158:  fd[5] = open ("File_60000", O_RDWR);
	movl	%eax, (%rbx)	# _227, *_226
# adler.c:159:  fd[6] = open ("File_70000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp493
	leaq	24(%rax), %rbx	#, _228
# adler.c:159:  fd[6] = open ("File_70000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC9(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:159:  fd[6] = open ("File_70000", O_RDWR);
	movl	%eax, (%rbx)	# _229, *_228
# adler.c:160:  fd[7] = open ("File_80000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp494
	leaq	28(%rax), %rbx	#, _230
# adler.c:160:  fd[7] = open ("File_80000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC10(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:160:  fd[7] = open ("File_80000", O_RDWR);
	movl	%eax, (%rbx)	# _231, *_230
# adler.c:161:  fd[8] = open ("File_90000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp495
	leaq	32(%rax), %rbx	#, _232
# adler.c:161:  fd[8] = open ("File_90000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC11(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:161:  fd[8] = open ("File_90000", O_RDWR);
	movl	%eax, (%rbx)	# _233, *_232
# adler.c:162:  fd[9] = open ("File_100000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp496
	leaq	36(%rax), %rbx	#, _234
# adler.c:162:  fd[9] = open ("File_100000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC12(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:162:  fd[9] = open ("File_100000", O_RDWR);
	movl	%eax, (%rbx)	# _235, *_234
# adler.c:163:  fd[10] = open ("File_110000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp497
	leaq	40(%rax), %rbx	#, _236
# adler.c:163:  fd[10] = open ("File_110000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC13(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:163:  fd[10] = open ("File_110000", O_RDWR);
	movl	%eax, (%rbx)	# _237, *_236
# adler.c:164:  fd[11] = open ("File_120000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp498
	leaq	44(%rax), %rbx	#, _238
# adler.c:164:  fd[11] = open ("File_120000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC14(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:164:  fd[11] = open ("File_120000", O_RDWR);
	movl	%eax, (%rbx)	# _239, *_238
# adler.c:165:  fd[12] = open ("File_130000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp499
	leaq	48(%rax), %rbx	#, _240
# adler.c:165:  fd[12] = open ("File_130000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC15(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:165:  fd[12] = open ("File_130000", O_RDWR);
	movl	%eax, (%rbx)	# _241, *_240
# adler.c:166:  fd[13] = open ("File_140000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp500
	leaq	52(%rax), %rbx	#, _242
# adler.c:166:  fd[13] = open ("File_140000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC16(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:166:  fd[13] = open ("File_140000", O_RDWR);
	movl	%eax, (%rbx)	# _243, *_242
# adler.c:167:  fd[14] = open ("File_150000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp501
	leaq	56(%rax), %rbx	#, _244
# adler.c:167:  fd[14] = open ("File_150000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC17(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:167:  fd[14] = open ("File_150000", O_RDWR);
	movl	%eax, (%rbx)	# _245, *_244
# adler.c:168:  fd[15] = open ("File_160000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp502
	leaq	60(%rax), %rbx	#, _246
# adler.c:168:  fd[15] = open ("File_160000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC18(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:168:  fd[15] = open ("File_160000", O_RDWR);
	movl	%eax, (%rbx)	# _247, *_246
# adler.c:169:  fd[16] = open ("File_170000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp503
	leaq	64(%rax), %rbx	#, _248
# adler.c:169:  fd[16] = open ("File_170000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC19(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:169:  fd[16] = open ("File_170000", O_RDWR);
	movl	%eax, (%rbx)	# _249, *_248
# adler.c:170:  fd[17] = open ("File_180000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp504
	leaq	68(%rax), %rbx	#, _250
# adler.c:170:  fd[17] = open ("File_180000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC20(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:170:  fd[17] = open ("File_180000", O_RDWR);
	movl	%eax, (%rbx)	# _251, *_250
# adler.c:171:  fd[18] = open ("File_190000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp505
	leaq	72(%rax), %rbx	#, _252
# adler.c:171:  fd[18] = open ("File_190000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC21(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:171:  fd[18] = open ("File_190000", O_RDWR);
	movl	%eax, (%rbx)	# _253, *_252
# adler.c:172:  fd[19] = open ("File_200000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp506
	leaq	76(%rax), %rbx	#, _254
# adler.c:172:  fd[19] = open ("File_200000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC22(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:172:  fd[19] = open ("File_200000", O_RDWR);
	movl	%eax, (%rbx)	# _255, *_254
# adler.c:173:  fd[20] = open ("File_210000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp507
	leaq	80(%rax), %rbx	#, _256
# adler.c:173:  fd[20] = open ("File_210000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC23(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:173:  fd[20] = open ("File_210000", O_RDWR);
	movl	%eax, (%rbx)	# _257, *_256
# adler.c:174:  fd[21] = open ("File_220000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp508
	leaq	84(%rax), %rbx	#, _258
# adler.c:174:  fd[21] = open ("File_220000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC24(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:174:  fd[21] = open ("File_220000", O_RDWR);
	movl	%eax, (%rbx)	# _259, *_258
# adler.c:175:  fd[22] = open ("File_230000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp509
	leaq	88(%rax), %rbx	#, _260
# adler.c:175:  fd[22] = open ("File_230000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC25(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:175:  fd[22] = open ("File_230000", O_RDWR);
	movl	%eax, (%rbx)	# _261, *_260
# adler.c:176:  fd[23] = open ("File_240000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp510
	leaq	92(%rax), %rbx	#, _262
# adler.c:176:  fd[23] = open ("File_240000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC26(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:176:  fd[23] = open ("File_240000", O_RDWR);
	movl	%eax, (%rbx)	# _263, *_262
# adler.c:177:  fd[24] = open ("File_250000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp511
	leaq	96(%rax), %rbx	#, _264
# adler.c:177:  fd[24] = open ("File_250000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC27(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:177:  fd[24] = open ("File_250000", O_RDWR);
	movl	%eax, (%rbx)	# _265, *_264
# adler.c:178:  fd[25] = open ("File_260000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp512
	leaq	100(%rax), %rbx	#, _266
# adler.c:178:  fd[25] = open ("File_260000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC28(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:178:  fd[25] = open ("File_260000", O_RDWR);
	movl	%eax, (%rbx)	# _267, *_266
# adler.c:179:  fd[26] = open ("File_270000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp513
	leaq	104(%rax), %rbx	#, _268
# adler.c:179:  fd[26] = open ("File_270000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC29(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:179:  fd[26] = open ("File_270000", O_RDWR);
	movl	%eax, (%rbx)	# _269, *_268
# adler.c:180:  fd[27] = open ("File_280000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp514
	leaq	108(%rax), %rbx	#, _270
# adler.c:180:  fd[27] = open ("File_280000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC30(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:180:  fd[27] = open ("File_280000", O_RDWR);
	movl	%eax, (%rbx)	# _271, *_270
# adler.c:181:  fd[28] = open ("File_290000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp515
	leaq	112(%rax), %rbx	#, _272
# adler.c:181:  fd[28] = open ("File_290000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC31(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:181:  fd[28] = open ("File_290000", O_RDWR);
	movl	%eax, (%rbx)	# _273, *_272
# adler.c:182:  fd[29] = open ("File_300000", O_RDWR);
	movq	-200(%rbp), %rax	# fd, tmp516
	leaq	116(%rax), %rbx	#, _274
# adler.c:182:  fd[29] = open ("File_300000", O_RDWR);
	movl	$2, %esi	#,
	leaq	.LC32(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	open@PLT	#
# adler.c:182:  fd[29] = open ("File_300000", O_RDWR);
	movl	%eax, (%rbx)	# _275, *_274
# adler.c:183: }
	nop	
	movq	-24(%rbp), %rax	# D.3769, tmp518
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp518
	je	.L10	#,
	call	__stack_chk_fail@PLT	#
.L10:
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	get_dscr, .-get_dscr
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (GNU) 8.2.1 20180831"
	.section	.note.GNU-stack,"",@progbits
