segment .text
	global _ft_tolower

_ft_tolower:
	push				rdi
	cmp					rdi,	'A'
	jl					nolower
	cmp					rdi,	'Z'
	jg					nolower
	jmp					lower
	nolower:
		pop				rdi
		mov				rax,	rdi
		ret
	lower:
		mov				rax, rdi
		add				rax, 32
		pop				rdi
		ret
	