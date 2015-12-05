segment .text
	global _ft_isalpha

_ft_isalpha:
	push				rdi
	cmp					rdi,	'A'
	jl					noalpha
	cmp					rdi,	'z'
	jg					noalpha
	cmp					rdi,	'Z'
	jle					alpha
	cmp					rdi,	'a'
	jl					noalpha
	jmp					alpha
	alpha:
		pop				rdi
		mov				rax,	1
		ret
	noalpha:
		pop				rdi
		mov				rax,	0
		ret