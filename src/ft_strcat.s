extern _ft_strlen
extern _ft_memcpy
global _ft_strcat

; The .data section is for storing and naming constants.
section .data
 
section .text

;char* ft_strcat(char* destination, const char* source);
_ft_strcat:
	;call ft_strlen on both, rax = desclen, r8 = dest end, r9 = src, r10 = dest
	push	rdi			;output
	push	rdi			;dest
	push	rsi			;src
	call	_ft_strlen	;measure desclen
	pop		rdi			;prepare argument
	push	rax			;desclen
	push	rdi			;src
	call	_ft_strlen	;measure srclen
	pop		rsi			;src
	pop		rdi			;desclen
	pop		rcx			;dec
	add		rdi, rcx	;dest for memcpy
	mov		rdx, rax
	inc		rdx			;null term.
	call	_ft_memcpy
	pop		rax
	ret