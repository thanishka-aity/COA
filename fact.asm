
include 'emu8086.inc'

call scan_num
mov ax,cx
cmp ax,1
je label2
cmp ax,0
je label2
cmp ax,-1
jle label3
dec cx
mov bx,1

label:

mul bx
inc bx
loop label  


printn
print "factorial val:"
call print_num
ret
 
label2:  
printn
mov ax,1
print "factorial val:"
call print_num
ret 

label3:
printn
print "invalid"
ret

define_scan_num
define_print_num
define_print_num_uns