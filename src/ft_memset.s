global _ft_memset

; The .data section is for storing and naming constants.
section .data
 
section .text

;void	*ft_memset(void *ptr, size_t num)
_ft_memset:
	dec		rdx
	mov		byte [rdi + rdx], sil
	cmp		rdx, 0
	jne		_ft_memset
	mov		rax, rdi
	ret
