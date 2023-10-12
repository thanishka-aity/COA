include 'emu8086.inc'

call scan_num
mov ax,0
mov b,1 
mov bx,1
cmp ax,1
je ax_1
dec cx
dec cx    
   
 call print_num
     print " "
     mov ax,bx
     call print_num
label:
     add ax,bx
     print " "
     call print_num
     mov a,ax
     mov ax,bx
     mov bx,a
     loop label
     hlt
             
ax_1:
   mov ax,0
   call print_num
   hlt    
                a dw 0
                b dw 0
 define_print_num
 define_print_num_uns
 define_scan_num