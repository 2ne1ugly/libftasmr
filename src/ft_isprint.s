global _ft_isprint

; The .data section is for storing and naming constants.
section .data
 
section .text

;int	ft_isprint(int c)
_ft_isprint:
	;compare with ' '
	cmp		rdi, 32
	jl		.not_print ; jump if lower than ' '
	;compare with '~'
	cmp		rdi, 126
	jg		.not_print ; jump if greater than '~'
	;indeed ascii
	mov 	eax, 1
	ret

;false return
.not_print:
	mov 	eax, 0
	ret
