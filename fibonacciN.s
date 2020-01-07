.data

N:
    .byte 10
sum:
    .long


.text
.global main
main:
  movl $5, %edi
fibo:
  movl (%edi), %eax
  movl $1, %ecx
  movl $0, %edx
  movl $1, %ebx
.loop:
  cmpl %edi, %ecx
  jge endloop
  movl %ebx, %esi
  leal (%ebx,%edx,1), %ebx
  movl %esi, %edx
  incl %ecx
  jmp loop
.endloop:
  movl %ebx, %eax
  ret
