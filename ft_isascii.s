segment .text
	global _ft_isascii

_ft_isascii:
	push				rdi
	cmp					rdi,	0x00
	jl					noascii
	cmp					rdi,	0x7f
	jg					noascii
	jmp					ascii
	ascii:
		pop				rdi
		mov				rax,	1
		ret
	noascii:
		pop				rdi
		mov				rax,	0
		ret