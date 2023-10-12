include 'emu8086.inc'

mov ax,123
mov bx,10

label:
mov dx,0              
div bx
mov q,ax
mov r,dx
mov ax,s
mul bx
add ax,r
mov s,ax
mov ax,q
cmp ax,0
je label1
loop label

          
label1:
mov ax,s
mov s,0
label2:
div bx
mov dx,0
div bx
add s,dx
mov dx,0
cmp ax,0
je label3
loop label2

label3:
mov ax,s
call print_num
hlt


q dw 0
r dw 0
s dw 0
define_print_num
define_print_num_uns