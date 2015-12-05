%define SYSCALL(n) 0x2000000 | n
%define	BUFF_SIZE	10

section			.bss
	buffer		resb		BUFF_SIZE

section	.text
	global	_ft_cat

_ft_cat:
	push		rbp
	mov			rbp,	rsp

	cmp			rdi,	0
	jl			end

	loop:
		push	rdi
		mov		rsi,	buffer
		mov		rdx,	BUFF_SIZE
		mov		rax,	SYSCALL(3)
		syscall
		jc		end
		cmp		rax,	0
		jle		end
		jmp		write

	write:
		mov		rdi,	1
		mov		rsi,	buffer
		mov		rdx,	rax
		mov		rax,	SYSCALL(4)
		syscall
		cmp		rax,	0
		jle		end
		pop		rdi
		jmp		loop
	end:
		mov		rsp,	rbp
		pop		rbp
		ret