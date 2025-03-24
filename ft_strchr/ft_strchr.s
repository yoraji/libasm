section .text
	global ft_strchr
	extern strcmp

ft_strchr:
	push rbp
	mov rbp, rsp

	test rdi, rdi
	jz .error

	movzx rsi, si

.loop:
	mov al, byte [rdi]
	test al, al
	jz .not_found
	cmp al, sil
	je .found

	inc rdi
	jmp .loop

.found:
	mov rax, rdi
	pop rbp
	ret

.not_found:
	xor rax, rax
	pop rbp
	ret

.error:
	xor rax, rax
	pop rbp
	ret
