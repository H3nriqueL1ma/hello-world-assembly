%include 'lib.inc'

section .data
    msg         DB "Hello World!", LF, NULL     ; Define a string "Hello World!" com quebra de linha (LF) e final da string (NULL)
    size        EQU $- msg                      ; Calcula o tamanho da string e o armazena na variável 'size'

section .text

global _start

_start:
    MOV         EAX, SYS_WRITE                  ; Coloca o código da chamada de sistema 'SYS_WRITE' no registrador EAX (para exibição de mensagem)
    MOV         EBX, STD_OUT                    ; Coloca o código da saída padrão (STDOUT) no registrador EBX
    MOV         ECX, msg                        ; Coloca o endereço da mensagem no registrador ECX (para exibição)
    MOV         EDX, size                       ; Coloca o tamanho da mensagem no registrador EDX (para exibição)
    INT         SYS_CALL                        ; Chama o sistema operacional para realizar a operação de escrita (exibir mensagem)

_exit:
    MOV         EAX, SYS_EXIT                   ; Coloca o código da chamada de sistema 'SYS_EXIT' no registrador EAX (para finalização do programa)
    MOV         EBX, RET_EXIT                   ; Coloca o código de retorno 'RET_EXIT' no registrador EBX (para indicar término normal do programa)
    INT         SYS_CALL                        ; Chama o sistema operacional para realizar a operação de saída (finalizar o programa)
