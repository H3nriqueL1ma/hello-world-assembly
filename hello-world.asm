%include 'lib.inc'
section .data
    msg         db "Hello World!", LF, NULL
    size        equ $- msg

section .text

global _start

_start:
    mov         EAX, SYS_WRITE
    mov         EBX, STD_OUT
    mov         ECX, msg
    mov         EDX, size
    int         SYS_CALL

_exit:
    mov         EAX, SYS_EXIT
    mov         EBX, RET_EXIT
    int         SYS_CALL