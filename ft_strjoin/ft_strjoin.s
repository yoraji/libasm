section .text
	global strjoin
	extern malloc, strlen, strcpy, strcat

strjoin:
	push rbp
	mov rbp, rsp

	; Align stack (System V ABI requires 16-byte alignment)
	sub rsp, 8

	mov r8, rdi
	mov r9, rsi
	push r8
	push r9

	mov rdi, r8
	call strlen
	mov rdx, rax

	mov rdi, r9
	call strlen
	add rdx, rax

	; Allocate memory (s1_len + s2_len + 1)
	inc rdx
	mov rdi, rdx
	mov rax, 0	; Clear upper bits
	call malloc
	test rax, rax
	jz .error
	pop r9
	pop r8

	mov rdi, rax
	mov rsi, r8
	call strcpy

	mov rdi, rax
	mov rsi, r9
	call strcat

	add rsp, 8
	pop rbp
	ret

.error:
	xor rax, rax
	add rsp, 8
	pop rbp
	ret
