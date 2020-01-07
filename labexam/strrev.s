.text
.global rev
.type rev,@function
rev:
  #rdi pointer
  #rbx index
  movl $0, %ebx
  movb $0, %ch
  #cl charecter
  .forloop:
    movb (%rdi), %cl
    cmpb %cl,%ch
    je .exitfor
    incq %rdi
    
