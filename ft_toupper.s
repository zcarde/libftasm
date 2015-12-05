segment .text
	global _ft_toupper

_ft_toupper:
	push				rdi
	cmp					rdi,	'a'
	jl					noupper
	cmp					rdi,	'z'
	jg					noupper
	jmp					upper
	noupper:
		pop				rdi
		mov				rax,	rdi
		ret
	upper:
		mov				rax, rdi
		sub				rax, 32
		pop				rdi
		ret
	