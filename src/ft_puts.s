extern _ft_strlen
extern _write
global _ft_puts

; The .data section is for storing and naming constants.
section .data
	.newl db 10

section .text

;int	ft_puts(const char *str)
_ft_puts:
	;call ft_strlen
	push	rdi
	call	_ft_strlen
	pop		rsi			;str
	;check if len is 0 if so, not good.
	cmp		rax, 0
	je		.new_line
	;setup arguments
	mov		rdi, 1		;file desc
	mov		rdx, rax	;length
	;call str write
	mov 	rax, 0x2000004
	syscall
	;check if valid
	test	rax, -1
	je		.not_good

.new_line:
	;setup arguments for newline
	mov		rdi, 1			;file desc
	mov		rsi, .newl		;str
	mov		rdx, 1			;length
	;call newline write
	mov 	rax, 0x2000004
	syscall
	
.not_good:
	ret