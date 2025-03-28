section .text
    global  ft_strcpy

ft_strcpy:
    push    rbp
    mov     rbp, rsp

    mov     rbx, 0

.loop:
    cmp     byte [rsi + rbx], 0
    je     .end
    mov     cl, [rsi + rbx]
    mov     [rdi + rbx], cl
    add     rbx, 1
    jmp     .loop

.end:
    mov     byte [rdi + rbx], 0
    mov     rax, rdi
    mov     rsp, rbp
    pop     rbp
    ret     