extern _ft_strlen
extern _ft_memcpy
global _ft_strdup

; The .data section is for storing and naming constants.
section .data
 
section .text

_ft_strdup:
	;align stack since we use _malloc
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16
	;measure length of str1
	push	rdi
	call	_ft_strlen
	inc		rax
	;call malloc with it. I also save the length
	mov		rdi, rax
	push	rdi
	extern _malloc
	call	_malloc
	cmp		rax, 0
	je		.error
	;call ft_memcpy.
	mov		rdi, rax
	pop		rdx
	pop		rsi
	;also increase 1 in length so that i also place the null byte
	call	_ft_memcpy

.error:
	leave
	ret

