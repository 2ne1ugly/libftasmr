global _ft_isascii

; The .data section is for storing and naming constants.
section .data
 
section .text

;int	ft_isascii(int c)
_ft_isascii:
	;compare with 'DEL'
	cmp		rdi, 127
	ja		.not_ascii ; jump if above than 'DEL'
	;indeed ascii
	mov 	eax, 1
	ret

;false return
.not_ascii:
	mov 	eax, 0
	ret
