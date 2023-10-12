include 'emu8086.inc'

print "input:"
call scan_num
mov ax,cx
mov bx,10

label:
div bx
mov q,ax
add sum,dx
mov dx,0
mov ax,q
cmp ax,0
je label1
loop label

label1:
mov ax,sum
printn
print " the sum is:"
call print_num
hlt


q dw 0
sum dw 0
define_scan_num
define_print_num
define_print_num_uns