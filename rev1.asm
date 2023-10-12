include 'emu8086.inc'

mov ax,340
mov bx,10

label:
div bx
mov q,ax
mov r,dx
mov ax,sum
mul bx
add ax,r
mov sum,ax
mov ax,q
cmp ax,0
je label2
loop label

label2:
mov ax,sum
call print_num



sum dw 0
q dw 0
r dw 0
define_scan_num
define_print_num
define_print_num_uns