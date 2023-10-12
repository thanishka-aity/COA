include 'emu8086.inc'

mov ax,121
mov actual,ax
mov bx,10

label:
div bx
mov q,ax
mov r,dx
mov ax,result
mul bx
add ax,r
mov result,ax
mov ax,q
cmp ax,0
je label2
loop label

label2:
mov ax,result
cmp ax,actual
jne label3
print "palindrome"
hlt

label3:
print "not palindrome"
hlt
  
  
actual dw 0
r dw 0
q dw 0
result dw 0

define_scan_num
define_print_num
define_print_num_uns