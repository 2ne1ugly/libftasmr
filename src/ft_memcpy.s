global _ft_memcpy

; The .data section is for storing and naming constants.
section .data
 
section .text

;void* ft_memcpy(void* dest, const void* source, size_t num);
_ft_memcpy:
	cmp		rdx, 1
	jb		.done
	mov		cl, byte [rsi + rdx - 1]
	mov		byte [rdi + rdx - 1], cl
	dec		rdx
	jmp		_ft_memcpy

.done:
	mov		rax, rdi
	ret