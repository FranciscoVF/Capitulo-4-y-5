.data
cadena : .asciz " Hola Mundo !\ n "
cadenafin :
.text
.global main
main : push { r7, lr }
mov r0, # 1
ldr r1, = cadena
mov r2, # cadenafin - cadena
mov r7, # 4
swi #0
mov r0, # 0
pop { r7, lr }
bx lr
