.data

N:
    .byte 10
fib:
    .long


.text
.global sum
.type sum,@function
sum:
  #rdi pointer
  movl (%rdi), %eax
  ret
