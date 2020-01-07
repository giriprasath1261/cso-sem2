.data

N:
    .byte 10
fib:
    .long


.text
.global main
main:
  mov N@GOTPCREL(%rip), %rdx
  movzbl (%rdx), %edx
fibo:
  movl %edi, %eax
  movl $0, %ecx
  movl $0, %edx
  movl $1, %ebx
.loop:
  cmpl %edi, %ecx
  jge .endloop
  movl %ebx, %esi
  leal (%ebx,%edx,1), %ebx
  movl %esi, %edx
  incl %ecx
  jmp .loop
.endloop:
  movl %ebx, %eax
  mov fib@GOTPCREL(%rip), %rdx
  mov %eax, (%rdx)
  ret
