global _ft_strlen

; The .data section is for storing and naming constants.
section .data
 
section .text

;size_t	ft_strlen(const char *str)
_ft_strlen:
	;init to -1 since it's not do while.
	mov		rax, -1

;iterates c str
.cstr_iter:
	inc		rax
	cmp		byte [rdi + rax], 0
	jne		.cstr_iter
	ret
