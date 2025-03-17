

global ft_write
section .text
ft_write:
	mov rax, 1
	mov rdi ,rdi  ;filr descriptor fot sys_write
	mov rsi ,rsi ;buffer (already in rdi)
	mov rdx ,rdx ;count
	syscall
	ret
 
