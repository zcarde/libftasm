segment .text
	global _ft_isdigit

_ft_isdigit:
	push				rdi
	cmp					rdi,	'0'
	jl					nodigit
	cmp					rdi,	'9'
	jg					nodigit
	jmp					digit
	digit:
		pop				rdi
		mov				rax,	1
		ret
	nodigit:
		pop				rdi
		mov				rax,	0
		ret