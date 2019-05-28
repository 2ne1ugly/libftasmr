global _ft_tolower

; The .data section is for storing and naming constants.
section .data
 
section .text

;int	ft_tolower(int c)
_ft_tolower:
	;compare with 'A'
	cmp		rdi, 65
	jl		.not_lower ; jump if lower than 'A'
	;compare with 'Z'
	cmp		rdi, 90
	jg		.not_lower ; jump if greater than 'Z'
	;add 32 on rdi and return
	mov		rax, 32
	add		rax, rdi
	ret

.not_lower:
	mov		rax, rdi
	ret
