include 'emu8086.inc'

mov si,0
label:           
     mov al,a[si]                  
     call print_num
     printn
     inc si 
     cmp si,4
     mov al,0
     je label2
     jmp label

label2:
     ret
                   
a db 2,6,3,4
define_scan_num
define_print_num
define_print_num_uns