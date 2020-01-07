.data

N:
    .byte 10
fib:
    .long


.text
.global sum
.type sum,@function
sum:
  #rdi=pointer
  #rsi=n
  #rdx=m
  imulq %rdx, %rsi #esi=m*n
  movq $0, %rbx  #index
  movq $0, %rax  #sum
  movq $4, %rcx  #add
  addq %rcx, %rdi #skip 1
  movq $8, %rcx  #choose alternate
  .loop:
    cmpq %rbx, %rsi  #exit condition
    jl .exit
    addq (%rdi), %rax #
    addq %rcx, %rdi
    addq $2, %rbx
    jmp .loop

.exit:
  ret
