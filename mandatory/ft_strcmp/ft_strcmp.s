section .text
    global  ft_strcmp

ft_strcmp:                              ; Creater stack frame and saved callee register too
    push    rbp
    mov     rbp,    rsp

    push    rbx

    ; i will handel if the argument is NULL, even if it's not handled in standard strcmp().
    mov     rax,    0
    test    rdi,    rdi                 ; Check the first argument if it's NULL
    jz      .s1_null

    test    rsi,    rsi                 ; Check the Second argument if it's NULL
    jz      .s2_null

    xor     rbx,    rbx

.loop:
    mov     al,    byte [rdi + rbx]
    cmp     al,    byte [rsi + rbx]
    jne     .end
    test    al, al
    jz      .cleanup
    inc     rbx
    jmp      .loop

.end:                                   ; Set the final flag to return
    sub     al,     byte [rsi + rbx]
    movsx   rax,    al

.cleanup:                               ; return saved register on the stack
    pop     rbx
    mov     rsp, rbp
    pop     rbp
    ret

.s1_null:
    test    rsi,    rsi
    jz      .cleanup
    mov     rax,    -1
    jmp     .cleanup
 
.s2_null:
    mov     rax,    1
    jmp     .cleanup