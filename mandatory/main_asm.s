section .data
    msg db "hello", 0

section .bss
    result  resb    1

section .text
    global  main
    extern  ft_strlen

main:
    mov     rdi, msg    ;   Set msg to rdi, which mean set first argument to ft_strlen().
    call    ft_strlen
    add     rax, '0'    ;   converting return value to ascci code (this work just in number from 0 -> 9).
    mov     [result], al   ;   save rax(al) value in result cause we will need rax from write syscall.

    ; Call write syscall to print the ascii character.
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, result
    mov     rdx, 1
    syscall

    ; Call exite  Syscall
    mov     rax, 60
    mov     rdi, 0    ;   exit(0)
    syscall
