section .text
	global ft_strlen

ft_strlen:
	xor rax, rax
.ft_strlen_loop:
	cmp byte [rdi + rax], 0
	je .ft_strlen_done
	inc rax
	jmp .ft_strlen_loop
.ft_strlen_done:
	ret
