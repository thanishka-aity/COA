include 'emu8086.inc'

mov ax,12
mov rn,ax
mov bx,10
mov dx,0
label:   
div bx
mov rem,dx
add var1,dx
mov ax,0
label3:
mul bx
add ax,rem 
mov var2,ax
mov ax,rn
div bx
cmp ax,0
je label4
mov ax,var2
loop label3
label4: 
mov var2,ax
call print_num
ret




var1 dw 0
var2 dw 0  
rn dw 0 
rem dw 0
define_print_num
define_print_num_uns
define_scan_num
