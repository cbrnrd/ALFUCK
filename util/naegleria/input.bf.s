
Warning: file_get_contents(../../input.bf): failed to open stream: No such file or directory in /Users/Carter/Desktop/ALFUCK/util/naegleria/bin/compile on line 14
    .comm   tape,4000,32
    .globl  i
    .data
    .align 8
    .type   i, @object
    .size   i, 8
i:
    .quad   tape
    .section    .rodata

.stty:
    .string "stty -icanon"
    .text

    .globl  main
    .type   main, @function
main:
    .cfi_startproc
    pushq   %rbp
    .cfi_def_cfa_offset 16
    .cfi_offset 6, -16
    movq    %rsp, %rbp
    .cfi_def_cfa_register 6

    movl    $.stty, %edi
    call    system


    movl    $0, %eax
    popq    %rbp
    .cfi_def_cfa 7, 8
    ret
    .cfi_endproc
