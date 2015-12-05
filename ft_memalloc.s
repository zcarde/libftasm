section .text
	global _ft_memalloc
	extern _ft_bzero
	extern _malloc

_ft_memalloc:
	push		rbp
	mov			rbp,	rsp

	mov			rcx,	rdi
	cmp			rdi,	0
	je			end
	call	_malloc
	cmp			rax,	0
	je			end
	mov			rdi,	rax
	mov			rsi,	rcx
	call	_ft_bzero

	end:
		leave
		ret