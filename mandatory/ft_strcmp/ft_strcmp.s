section .text
    global  ft_strcmp

ft_strcmp:                              ; Creater stack frame and saved callee register too
    push    rbp
    mov     rbp,    rsp

    push    rbx
    xor     rbx,    rbx

; i will handel if the argument is NULL, even if it's not handled in standard strcmp().
.check_NULL:
    cmp     rdi,    rsi                 ; Check if the two arguments is NULL.
    mov     rax,    0
    je      .cleanup

    cm    rdi,    rdi                 ; Check the first argument if it's NULL
    mov     rax,    -1
    jz      .cleanup

    test    rsi,    rsi                 ; Check the Second argument if it's NULL
    mov     rax,    1
    jz      .cleanup

.check_null_terminator:                 ; Check everytime null terminator in both strings
    mov     rax,    [rdi + rbx]
    test    rax,    rax
    jz      .end

    mov     rax,    [rsi + rbx]
    test    rax,    rax
    jz      .end

.loop:
    mov     rax,    [rdi + rbx]
    cmp     rax,    [rsi + rbx]
    jne      .end
    inc     rbx
    je      .check_null_terminator

.end:                                   ; Set the final flag to return
    mov     rax,    [rdi + rbx]
    cmp     rax,    [rsi + rbx]
    jg      .greater
    jl      .less
    je      .equal


.cleanup:                               ; return saved register on the stack
    pop     rbx
    mov     rsp, rbp
    pop     rbp
    ret

.equal:
    mov     rax,    0
    jmp     .cleanup

.less:
    mov     rax,    -1
    jmp     .cleanup

.greater:
    mov     rax,    1
    jmp     .cleanup