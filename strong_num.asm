include 'emu8086.inc'

mov ax,145
mov var,ax
mov bx,10


label:
cmp ax,0
je label2
mov apple,1
mov dx,0
div bx
mov actual,ax
mov cx,dx
cmp cx,0
je cx0
dec cx 
mov ax,dx
jmp fact

fact:
cmp ax,1
je add
mul apple
inc apple
loop fact
add:
add sum,ax
mov ax,actual
loop label

label2:
mov ax,sum
printn
call print_num
cmp ax,var
je label3
ret

cx0:
mov ax,0
mov actual,4
jmp add

label3: 
printn
print "given num is strong"
ret

sum dw 0
apple dw 0
actual dw 0
var dw 0
define_print_num
define_print_num_uns
define_scan_num