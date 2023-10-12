include 'emu8086.inc'

call scan_num
mov ax,cx
mov actual,ax
mov cx,0
mov bx,2
cmp ax,2
je label2 

label:
mov dx,0
div bx
cmp dx,0
je label3
mov ax,actual
inc bx
cmp bx,actual
je label2
jmp label

label2:
print "given number is prime"
ret

label3:
print "given number is not prime" 
ret

actual dw 0
define_scan_num
define_print_num
define_print_num_uns 