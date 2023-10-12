include 'emu8086.inc'

mov ax,2
mov bx,5
mov var1,ax
mov var11,ax 
mov var2,bx
mov spl,0
cmp ax,bx
jng label2

 
label:
mov dx,0
mov spl,ax
div var1
cmp dx,0
je labell1
add var11,1
mov ax,var11
inc ax
loop label
labell1:
mov dx,0
mov ax,spl
div bx
cmp dx,0
je labelll1
mov ax,spl
inc ax
loop label
labelll1:
mov ax,spl
call print_num
hlt

label2:
mov ax,var2
mov bx,var1
mov dx,0
mov spl,ax
div var1
cmp dx,0
je labell2
add var11,1
mov ax,var11
inc ax
loop label2
labell2:
mov dx,0
mov ax,spl
div bx
cmp dx,0
je labelll2
mov ax,spl
inc ax
loop label
labelll2:
mov ax,spl
call print_num
hlt

var1 dw 0
var2 dw 0
var11 dw 0 
spl dw 0
define_scan_num
define_print_num                      

define_print_num_uns