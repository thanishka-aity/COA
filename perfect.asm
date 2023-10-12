include 'emu8086.inc'

call scan_num
mov ax,cx
dec cx
mov var1,ax
mov bx,0

label:
mov dx,0
div cx
mov ax,var1
cmp dx,0
je label1
loop label

label1:
add bx,cx
loop label

cmp bx,var1
je label2
print "not perfect number"
ret

label2:
print "perfect number"
ret


var1 dw 0
define_scan_num
define_print_num
define_print_num_uns