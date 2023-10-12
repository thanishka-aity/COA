include 'emu8086.inc'

call scan_num
mov ax,cx
mov actual,ax
call scan_num
mov bx,cx
add ax,bx
print "sum="
call print_num
mov ax,actual                     
sub ax,bx
printn
print "difference="
call print_num
mov ax,actual
mul bx
printn
print "product="
call print_num
mov ax,actual
div bx
printn
print "division="
call print_num

actual dw 0
define_print_num
define_scan_num
define_print_num_uns
