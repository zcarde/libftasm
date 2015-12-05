section .text
	global _ft_bzero

_ft_bzero:
	push			rdi
	push			rsi
	bz:
		cmp			rdi,	0x0
		je			end
		cmp			rsi, 0
		je			end
		dec			rsi
		mov byte	[rdi],	0x0
		inc			rdi
		jmp 		bz
	end:
	pop rdi
	pop	rsi
	ret