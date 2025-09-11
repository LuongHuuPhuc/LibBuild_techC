	.file	"sales.c"
	.text
	.globl	calc_total
	.def	calc_total;	.scl	2;	.type	32;	.endef
	.seh_proc	calc_total
calc_total:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movss	104(%rax), %xmm1
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	100(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L3
	movss	-4(%rbp), %xmm0
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "===== BILL ===== \15\0"
.LC2:
	.ascii "%s x %d = %.3f\15\12\0"
.LC3:
	.ascii "TOTAL: %.2f\15\12\0"
	.text
	.globl	print_bill
	.def	print_bill;	.scl	2;	.type	32;	.endef
	.seh_proc	print_bill
print_bill:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movss	104(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	100(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rdx
	movapd	%xmm0, %xmm3
	movq	%rdx, %r9
	movl	%ecx, %r8d
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	__mingw_printf
	addl	$1, -4(%rbp)
.L6:
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L7
	movl	24(%rbp), %edx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	calc_total
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	__mingw_printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.2.0"
	.def	puts;	.scl	2;	.type	32;	.endef
