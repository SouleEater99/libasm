section .text
    global ft_strlen

ft_strlen:
    push    rbp
    mov     rbp,    rsp
    mov     rax,    0

.loop:
    cmp   Byte  [rdi + rax], 0
    je      .end
    add     rax,    1
    jmp     .loop

.end:
    mov     rsp,    rbp
    pop     rbp
    ret
