include 'emu8086.inc'

mov si,0

label:
     cmp a[si],'$'
     je label2
     mov al,a[si]
     inc c
     inc si
     jmp label
    
           
label2:
     mov al,c
     call print_num
     hlt

a db 'hello$'
c db 0
define_print_num
define_print_num_uns
define_scan_num