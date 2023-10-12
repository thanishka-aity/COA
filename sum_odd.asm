include 'emu8086.inc'

mov ax,5296
mov bx,10
mov sum,0

label:
div bx
mov q,ax
mov r,dx
mov ax,sum
mul bx
add ax,r
mov sum,ax
mov ax,q
mov dx,0
cmp ax,0
je label1
loop label

label1:
mov ax,sum
mov sum,0
label3:
div bx
add sum,dx
mov dx,0
div bx
mov dx,0
cmp ax,0
je label2
loop label3

label2:
mov ax,sum
call print_num
hlt




r dw 0
q dw 0
sum dw 0
define_print_num
define_print_num_uns