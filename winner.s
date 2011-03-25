	.text
.globl _function
_function:
LFB3:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	subq	$80, %rsp
LCFI2:
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	leaq	-48(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rdx
	xorq	(%rax), %rdx
	je	L3
	call	___stack_chk_fail
L3:
	leave
	ret
LFE3:
	.cstring
LC0:
	.ascii "%d\0"
	.text
.globl _main
_main:
LFB4:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	subq	$16, %rsp
LCFI5:
	movl	$0, -4(%rbp)
	movl	$2, %esi
	movl	$1, %edi
	call	_function
	movl	$1, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	LC0(%rip), %rdi
	movl	$0, %eax
	call	_printf
	leave
	ret
LFE4:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
.globl _function.eh
_function.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB3-.
	.set L$set$2,LFE3-LFB3
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB3
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE1:
.globl _main.eh
_main.eh:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB4-.
	.set L$set$6,LFE4-LFB4
	.quad L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI3-LFB4
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI4-LCFI3
	.long L$set$8
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE3:
	.subsections_via_symbols
