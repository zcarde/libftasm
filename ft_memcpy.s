section .text
	global	_ft_memcpy

_ft_memcpy:
	push		rbp
	mov			rbp,		rsp
	mov			rcx,		0
	mov			rbx,		rdi

loop:
	cmp			rcx,		rdx
	je			end
	mov			al, byte	[rsi]
	mov	byte	[rbx],		al
	inc			rbx
	inc			rcx
	inc			rsi
	jmp			loop

end:
	mov			rax,		rdi
	leave
	ret