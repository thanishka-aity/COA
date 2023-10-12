include 'emu8086.inc'

mov si,0
label1:
mov ax,a[si]
mov actual,ax
mov bx,2
cmp ax,2
je label2
cmp ax,1
je label2_1 

label:
mov dx,0
div bx
cmp dx,0
je label3
mov ax,actual
inc bx
jmp label 

label2:
mov ax,actual
printn
call print_num
label2_1:
inc si
inc si
cmp si,10
jl label1
ret

label3:
cmp bx,a[si]
je label2
inc si
inc si
cmp si,10
jl label1
ret

a dw 1,4,5,3,7,11
actual dw 0
define_scan_num
define_print_num
define_print_num_uns 