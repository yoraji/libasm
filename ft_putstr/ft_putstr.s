global ft_putstr

section .text

ft_putstr:
	mov rdx, 0 ; init
conut_length:
	cmp bytes [rdi + rdx], 0 ; just compare with the end of the string '0'
	je write_string
	inc rdx
	jmp count_length

write_string:
	mov rax, 1
	mov rsi, rdi 
	mov rdi, 1 ; file descriptor (1 == sdout)
	syscall
	ret
