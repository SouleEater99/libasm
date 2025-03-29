section .text
    global  ft_strcpy

ft_strcpy:
    push    rbp
    mov     rbp,    rsp            ; create stack frame

    push    rbx                 ; callee-saved registers
    xor     rbx,    rbx            ; rbx = 0

.check:
    test    rdi,    rdi         ; check null in arguments
    jz      .error
    test    rsi,    rsi         ; check null in arguments
    jz      .error

.loop:
    mov     cl,     [rsi + rbx]
    mov     [rdi + rbx],    cl
    test    cl,     cl          ; Check for null terminator
    jz      .end
    inc     rbx                 ; Faster than add
    jmp     .loop



.end:
    mov     rax,    rdi            ; intialize return value  which is rax

.cleanup:
    pop     rbx                 ; return calle-saved register to rbx
    mov     rsp,    rbp            ; return rsp stack pointer to the base point place
    pop     rbp                 ; return old rbp
    ret

.error:
    xor     rax,    rax         ; Return NULL if invalid input
    jmp     .cleanup