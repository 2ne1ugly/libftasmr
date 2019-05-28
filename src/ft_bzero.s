extern _ft_memset
global _ft_bzero

; The .data section is for storing and naming constants.
section .data
 
section .text

;void	*ft_bzero(void *ptr, size_t num)
_ft_bzero:
	mov		rdx, rsi
	mov		rsi, 0
	call	_ft_memset
	ret
