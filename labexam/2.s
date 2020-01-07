.data

N:
    .byte 10
fib:
    .long


.text
.global minmax
.type minmax,@function
minmax:
  #rdi pointer
  #rsi n
  #rdx m
  imulq %rdx, %rsi  #rsi=m*n
  movq $0, %rbx  #index
  movq $4, %rcx  #add
  movq (%rdi), %r8  #min
  .loop:
    cmpq %rbx, %rsi  #exit condition
    jl .exit
    movq (%rdi), %r9
    cmpq %r9, %r8
    jl .minimize
    .back:
    addq %rcx, %rdi
    incq %rbx
    jmp .loop

.minimize:
  movq %r9, %r8
  jmp .back

.exit:
  movq %r8, %rax
  ret
