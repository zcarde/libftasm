section	.text
	global	_ft_memset

_ft_memset:
	push		rbp
	mov			rbp, rsp

	mov			rbx, rdi
	mov			rax, rsi
	mov			rcx, rdx
	rep	stosb

	mov			rax, rbx
	mov			rsp, rbp
	pop			rbp
	ret