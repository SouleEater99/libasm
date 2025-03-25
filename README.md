# Libasm 🔍✨  
**A Journey into Low-Level Programming with x86-64 Assembly**  

---

## 🚀 Overview  
**Libasm** is a project where you reimplement basic C standard library functions in **x86-64 assembly**, gaining deep insight into how computers execute code at the lowest level. Perfect for aspiring reverse engineers, exploit developers, or anyone curious about what happens "under the hood"!  

---

## 🔑 Key Features  
✅ **Core Functions**:  
- `ft_strlen` | `ft_strcpy` | `ft_strcmp`  
- `ft_write` | `ft_read` | `ft_strdup`  

🌟 **Bonus (Linked List)**:  
- `ft_atoi_base` | `ft_list_push_front` | `ft_list_size` | *(+more)*  

---

## 🛠️ Technical Highlights  
| Aspect               | Details                                                                 |
|----------------------|-------------------------------------------------------------------------|
| **Assembly Syntax**  | NASM (Intel-style)                                                     |
| **Calling Convention** | System V AMD64 ABI                                                    |
| **Error Handling**   | Properly set `errno` for syscalls                                      |
| **Optimization**     | Zero-cost loops, register efficiency                                   |

---

## 🔍 Security Insight 🛡️  
Understanding assembly is crucial for:  
- **Reverse Engineering**: Analyze malware or proprietary software.  
- **Exploit Development**: Find buffer overflows, write shellcode.  
- **Secure Coding**: Learn why functions like `strcpy` are dangerous.  

---

## 📂 Project Structure  
```bash
libasm/  
├── ft_strlen.s    # Assembly source
├── ft_strcpy.s  
├── Makefile       # Builds libasm.a
└── test/          # Test cases vs. real C functions
```

## 🌟 Why This Project?
Master registers, syscalls, and memory management.

Write code that’s 10x faster than C (with clever optimizations).

Lay the groundwork for security research (malware analysis, binary exploitation).

Made with ❤️ and nasm.
For hackers, by a future hacker. 🐱💻


---

### 🎨 Tips for GitHub Polish  
1. **Add a Demo GIF**: Show your tests in action!  
   ```markdown
   ![Demo](https://media.giphy.com/media/your-demo-link.gif)

![Assembly](https://img.shields.io/badge/ASM-x86--64-red)
![License](https://img.shields.io/badge/License-MIT-blue)
