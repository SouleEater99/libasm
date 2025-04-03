section .text
    global  ft_strcmp

ft_strcmp:                              ; Creater stack frame and saved callee register too
    push    rbp
    mov     rbp,    rsp

    push    rbx
    xor     rbx,    rbx

; i will handel if the argument is NULL, even if it's not handled in standard strcmp().
.check_NULL:
    mov     rax,    0
    test    rdi,    rdi                 ; Check the first argument if it's NULL
    jz      .s1_null

    test    rsi,    rsi                 ; Check the Second argument if it's NULL
    jz      .s2_null

.check_null_terminator:                 ; Check everytime null terminator in both strings
    mov     al,    byte [rdi + rbx]
    test    al,    al
    jz      .end

    mov     al,    byte [rsi + rbx]
    test    al,    al
    jz      .end

.loop:
    mov     al,    byte [rdi + rbx]
    cmp     al,    byte [rsi + rbx]
    jne      .end
    inc     rbx
    je      .check_null_terminator

.end:                                   ; Set the final flag to return
    xor     rax,    rax
    mov     al,     byte [rdi + rbx]
    sub     al,     byte [rsi + rbx]
    movsx     rax,    al

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