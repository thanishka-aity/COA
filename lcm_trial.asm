include 'emu8086.inc'

mov ax,2
mov bx,7
mov var,ax

label:
mov dx,0
div bx
cmp dx,0
je label3
mov ax,var


label1:
mov dx,0
inc ax
mov actual,ax
div bx
cmp dx,0
je label2
mov ax,actual
jmp label1

         
label2:
mov ax,actual
div var
cmp dx,0
mov ax,actual
jne label1
call print_num
hlt
         
label3:
mov ax,var
call print_num
hlt




i dw 1  
var dw 0
actual dw 0
define_scan_num
define_print_num
define_print_num_uns