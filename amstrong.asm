
include 'emu8086.inc'

;mov ax,1634
mov ax,1634
mov actual,ax
mov bx,10

count1:
mov dx,0
div bx
inc cx
cmp ax,0
jne count1

dec cx 
mov count,cx
mov ax,1634
mov dx,0

label:
mov dx,0
div bx
mov r,dx
mov q,ax
mov ax,r
jmp multi
add:
add sum,ax
mov ax,q
cmp ax,0
je label1
mov cx,count
jmp label


label1:
mov ax,sum
call print_num
cmp ax,actual
je label2
printn
print "not an amstrong"
hlt

label2:
printn
print "it is an amstrong"
hlt         
  
multi:
mul r
loop multi
jmp add

r dw 0
sum dw 0
q dw 0
actual dw 0
count dw 0 

define_scan_num
define_print_num
define_print_num_uns