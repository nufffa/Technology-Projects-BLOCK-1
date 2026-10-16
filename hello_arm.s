.global _start
.section .data
msg:
.ascii "Hello ARM Pi!\n"
len = . - msg

.section .text
_start:
mov x0, #1     //stdout
ldr x1, =msg     //message
//address
mov x2, #len     //message length
mov x8, #64     //syscall: write
svc #0
mov x0, #0     //exit status
mov x8, #93     //syscall: exit
svc #0
