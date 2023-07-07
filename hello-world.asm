%include 'lib.inc'

section .data
    msg         db "Hello World!", LF, NULL
    size        equ $- msg

section .text

global _start

_start:
    MOV         EAX, SYS_WRITE
    MOV         EBX, STD_OUT
    MOV         ECX, msg
    MOV         EDX, size
    INT         SYS_CALL

_exit:
    MOV         EAX, SYS_EXIT
    MOV         EBX, RET_EXIT
    INT         SYS_CALL
