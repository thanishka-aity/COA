include 'emu8086.inc'

label:
printn
call scan_num
mov ax,cx
cmp n,0
jne store_r 
mov n,ax
dec cx
cmp cx,0
jle cx0
mov bx,1
jmp label1

store_r:
mov r,ax
dec cx
cmp cx,0
jle label6
mov bx,1


label1:
mul bx
inc bx
loop label1

cmp nfact,0
jne label2

cx0:
call print_num
mov nfact,ax
mov ax,0
mov bx,0
mov cx,0
jmp label

label2:
cmp rfact,0
jne label4
printn
call print_num
mov rfact,ax


label3:
mov ax,n
mov bx,r
sub ax,bx
mov bx,1
mov cx,ax
dec cx
cmp cx,0
jle label5
jmp label1

label4:
mov nrfact,ax
printn
call print_num
mul rfact
mov rnrfact,ax
mov ax,nfact
div rnrfact
printn
print "ncr:"
call print_num
ret

label5:
mov ax,1
jmp label4

label6:
mov ax,1
mov rfact,1
jmp label4

nfact dw 0
rfact dw 0
n dw 0
r dw 0
nrfact dw 0
rnrfact dw 0
define_print_num
define_print_num_uns
define_scan_num