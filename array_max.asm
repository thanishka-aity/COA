include 'emu8086.inc'

mov si,0

label:
     mov ax,0
     mov ax,a[si]
     cmp ax,max
     jge label2
     inc si
     inc si 
     cmp si,10
     jle label
     jmp label3
      
     
label2:
      mov max,ax
      inc si
      inc si
      cmp si,10
      jle label
      jmp label3 
      
label3:
     mov ax,0
     mov ax,max
     printn
     call print_num
     ret
      

max dw 0
a dw 6,4,8,2,7,9
define_print_num
define_print_num_uns
define_scan_num