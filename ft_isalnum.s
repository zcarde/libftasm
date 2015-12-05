segment .text
	global _ft_isalnum

_ft_isalnum:
	push				rdi
	cmp					rdi,	'0'
	jl					noalnum
	cmp					rdi,	'9'
	jle					alnum
	cmp					rdi,	'A'
	jl					noalnum
	cmp					rdi,	'Z'
	jle					alnum
	cmp					rdi,	'a'
	jl					noalnum
	cmp					rdi,	'z'
	jle					alnum
	jmp					noalnum
	alnum:
		pop				rdi
		mov				rax,	1
		ret
	noalnum:
		pop				rdi
		mov				rax,	0
		ret