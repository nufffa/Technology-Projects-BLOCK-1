.global _start
_start:
mov x1, #5
mov x2, #3
add x0, x1, x2

mov x8, #93
//mov x0, #0
svc #0
