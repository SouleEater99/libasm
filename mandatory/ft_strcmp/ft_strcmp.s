section .text
    global  ft_strcmp

ft_strcmp:
    push    rbp
    mov     rbp,    rsp

    push    rbx
    xor     rbx,    rbx

; i will handel if the argument is NULL, even if it's not handled in standard strcmp().
.check_args:
    test    rdi,    rdi
    jz      .error
    test    rsi,    rsi
    jz      .error

.loop:
    mov     rax,    byte [rdi + rbx]
    test    rax,    rax
    jz      .
    cmp     rax,    byte [rsi + rbx]
    sub     rax,    byte [rsi + rbx]  
    je      .loop

.cleanup:
    pop     rbx
    mov     rsp, rbp
    pop     rbp
    ret

.error:
    mov     rax,    0
    jmp     .cleanup
