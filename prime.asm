include 'emu8086.inc'

mov ax,6
mov actual,ax
mov bx,2
div bx
mov cx,ax
mov ax,actual 

cmp ax,0
je label3

cmp ax,1
je label3

label:
mov ax,actual
mov dx,0
div bx
cmp dx,0
je label3
inc bx
loop label

label2:
print "prime"
hlt

label3:
cmp bx,actual
je label2
print "not prime"
hlt  

actual dw 0
define_print_num
define_print_num_uns