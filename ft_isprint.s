segment .text
	global _ft_isprint

_ft_isprint:
	push				rdi
	cmp					rdi,	0x20
	jl					noprint
	cmp					rdi,	0x7e
	jg					noprint
	jmp					print
	print:
		pop				rdi
		mov				rax,	1
		ret
	noprint:
		pop				rdi
		mov				rax,	0
		ret