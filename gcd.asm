include 'emu8086.inc'

mov ax,8
mov a,ax
mov bx,7
mov b,bx

cmp ax,b
jge label
mov ax,b
mov bx,a

label:
mov dx,0
div bx
cmp dx,0
je label1
mov ax,bx
mov bx,dx
loop label

label1:
mov ax,bx
call print_num
hlt
      
a dw 0
b dw 0
define_print_num
define_print_num_uns