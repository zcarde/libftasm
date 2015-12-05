section .text
	global _ft_strcat

_ft_strcat:
	push			rdi
	push			rsi
	loop1:
		cmp	byte	[rdi],	0x0
		je			loop2
		inc			rdi
		jmp			loop1
	loop2:
		cmp	byte	[rsi],	0x0
		je			end
		mov			r8,		[rsi]
		mov			[rdi],	r8
		inc			rdi
		inc			rsi
		jmp			loop2
	end:
	pop				rsi
	pop				rdi
	mov				rax,	rdi
	ret