include 'emu8086.inc'

call scan_num
mov ax,cx
mov bx,2
div bx
cmp dx,00
je label
print "odd"
ret
label:
print "even"
ret



define_scan_num
define_print_num
define_print_num_uns