extern _ft_isalpha
extern _ft_isdigit
global _ft_isalnum

; The .data section is for storing and naming constants.
section .data
 
section .text

;int	ft_isalnum(int c)
_ft_isalnum:
	;call ft_isalpha
	push	rdi
	call	_ft_isalpha
	pop		rdi
	;if true, then it's alnum.
	cmp		rax, 0
	jne		.is_alnum
	;call ft_isdigit and return that number
	call	_ft_isdigit
	ret

.is_alnum:
	mov 	rax, 1
	ret
