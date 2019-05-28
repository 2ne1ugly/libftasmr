global _ft_toupper

; The .data section is for storing and naming constants.
section .data
 
section .text

;int	ft_toupper(int c)
_ft_toupper:
	;compare with 'a'
	cmp		rdi, 97
	jl		.not_lower ; jump if lower than 'a'
	;compare with 'z'
	cmp		rdi, 122
	jg		.not_lower ; jump if greater than 'z'
	;add 32 on rdi and return
	mov		rax, -32
	add		rax, rdi
	ret

.not_lower:
	mov		rax, rdi
	ret
