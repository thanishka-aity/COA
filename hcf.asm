include 'emu8086.inc'
mov ax,6
mov var,ax
mov bx,3
cmp ax,bx
jg label
mov cx,ax
jmp label2

label:
    mov cx,bx
    jmp label2

label2:
     div count
     cmp dx,0
     je labell2
     inc count 
     
labell2:
      mov ax,bx
      div count
      cmp dx,0
      jne label3
      inc count
      mov ax,var
      loop label2 
label3:
     inc count
     dec count
     dec count
     mov ax,count
     call print_num
     hlt

var dw 0
count dw 1 
gcd dw 0
define_scan_num
define_print_num
define_print_num_uns
