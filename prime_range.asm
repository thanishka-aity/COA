include 'emu8086.inc'

print "enter starting range:" 
call scan_num
printn
mov ax,cx
mov bx,2 
print "enter ending range:" 
call scan_num
printn
mov end,cx
mov actual,ax


label:
mov dx,0
div bx
cmp dx,0
je label2 
mov ax,actual     
inc bx
jmp label

label2:
mov ax,actual
cmp bx,ax
je label3
inc ax
mov actual,ax
mov bx,2
jmp label 

label3:
cmp ax,end
jg label4
call print_num
print " "
inc ax
mov bx,2
mov actual,ax
jmp label

label4:
ret

end dw 0
actual dw 0             
define_scan_num
define_print_num
define_print_num_uns 