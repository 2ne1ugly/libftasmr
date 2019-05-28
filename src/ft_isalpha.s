global _ft_isalpha

; The .data section is for storing and naming constants.
section .data
 
section .text

;int	ft_isalpha(int c)
_ft_isalpha:
	;compare with 'a'
	cmp		rdi, 97
	jl		.not_smallcase ; jump if lower than 'a'
	;compare with 'z'
	cmp		rdi, 122
	jg		.not_smallcase ; jump if greater than 'z'
	jmp		.is_alpha

.not_smallcase:
	;compare with 'A'
	cmp		rdi, 65
	jl		.not_alpha ; jump if lower than 'A'
	;compare with 'Z'
	cmp		rdi, 90
	jg		.not_alpha ; jump if greater than 'Z'

.is_alpha:
	mov 	rax, 1
	ret

.not_alpha:
	mov 	rax, 0
	ret
