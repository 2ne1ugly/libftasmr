global _ft_isdigit

; The .data section is for storing and naming constants.
section .data
 
section .text

;int	ft_isdigit(int c)
_ft_isdigit:
	;compare with '0'
	cmp		rdi, 48
	jl		.not_digit ; jump if lower than '0'
	;compare with '9'
	cmp		rdi, 57
	jg		.not_digit ; jump if greater than '9'
	;indeed digit
	mov 	eax, 1
	ret

;false return
.not_digit:
	mov 	eax, 0
	ret
