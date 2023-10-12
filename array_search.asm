include 'emu8086.inc'

mov si,0

label:
     mov al,a[si]
     cmp al,search
     je label2
     inc si
     cmp si,5
     jle label
     ret
     
label2:
     mov ax,si
     print "found at index:"
     call print_num
     ret
     
     

search db 7
a db 2,3,5,7,9,4
define_print_num
define_print_num_uns