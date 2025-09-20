; Reproduce strcpy.

section .text
    global my_strcpy
my_strcpy:
	mov rax, rdi
.copy:
	mov al, [rsi]
	mov [rdi], al
	inc rsi
	inc rdi
	test al, al
	jne .copy
	ret