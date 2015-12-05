%define SYSCALL(n) 0x2000000 | n

section .data
	newLine db  10
	nul		db	`(null)\n`

segment .text
	global _ft_puts

_ft_puts:
	push			rbp
	mov				rbp,	rsp
	cmp				rdi,	0x00
	je				null
	push			rdx
	push			rbx
	push			rsi
	mov				rbx,	rdi
	
	loop:
		cmp	byte	[rbx],	0x0
		je			end
		mov			rdi,	1
		mov			rsi,	rbx
		mov			rdx,	1
		mov			rax,	SYSCALL(4)
		syscall
		cmp			rax,	0
		jl			error
		inc			rbx
		jmp			loop

	end:
		mov			rdi,	1
		mov			rsi,	newLine
		mov			rdx,	1
		mov			rax,	SYSCALL(4)
		syscall
		cmp			rax,	0
		jl			error
		mov			rax,	1
		pop			rdx
		pop			rbx
		pop			rsi
		leave
		ret

	error:
		mov			rax,	-1
		pop			rdx
		pop			rbx
		pop			rsi
		leave
		ret
	null:
		mov			rdi,	1
		mov			rsi,	nul
		mov			rdx,	7
		mov			rax,	SYSCALL(4)
		syscall
		cmp			rax,	0
		jl			error
		mov			rax,	1
		mov			rsp,	rbp
		pop			rbp
		ret