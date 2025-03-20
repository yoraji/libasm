section .text
	global ft_strdup
	extern malloc, strlen

ft_strdup :
	;save the resigters
	push rdi
	push rsi
	push rdx
	;get string length
	mov rdi, rdi
	call strlen
	add rax, 1

	mov rdi, rax ; just the size number to malloc
	call malloc
	test rax, rax
	jz .error ;if NULL, return NULL

	;copy
	mov rsi rdi ;load source string
	mov rdi, rax ;load the dest buffer
	mov rcx, rdx ; load the length
	rep movsb ;copy bytes
	;restore you register and return 
	pop rdx
	pop rsi
	pop rdi
	ret
.error
	xor rax, rax ;Return NULL
	pop rdx
	pop rsi
	pop rdi
	ret
