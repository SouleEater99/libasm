Libasm Project: Your First Step into Assembly
Goal: Rewrite basic C functions in x86-64 assembly to understand how computers really work at the lowest level.

🔹 What You’ll Do
Write assembly versions of:

strlen, strcpy, strcmp (string operations)

write, read (system calls)

strdup (memory allocation)

Build a library (libasm.a) and test it against real C functions.

(Bonus) Implement linked list functions if your core work is perfect.

🔹 Why It Matters
🖥️ See behind the scenes: Learn how C functions actually run on the CPU.

⚡ Performance tricks: Discover why xor rax, rax is faster than mov rax, 0.

🐞 Debug like a pro: Use gdb to inspect registers and memory.

🔹 Key Requirements
✅ Pure NASM assembly (no C, no shortcuts)
✅ Handle errors (check syscall failures, set errno)
✅ Optimize for speed (fewer instructions = faster code)
✅ Clean Makefile (all, clean, fclean, re)

🔹 Sample Code
asm
Copy
; ft_strlen.s - Count chars until NULL  
section .text  
global ft_strlen  

ft_strlen:  
    xor  rax, rax       ; rax = 0 (counter)  
.loop:  
    cmp  byte [rdi + rax], 0  
    je   .end  
    inc  rax  
    jmp  .loop  
.end:  
    ret  
🔹 How to Shine on GitHub
Clear README with:

Project purpose

How to build/test

Example outputs

Clean code: Consistent style, comments for tricky parts.

Bonus: Add a demo GIF showing your tests in action!

🚀 Takeaway
You’ll master low-level programming while creating a library you can showcase. Perfect for anyone interested in reverse engineering, game hacking, or OS development!

Ready to dive in? Start with ft_strlen and build up! 😊
