include 'emu8086.inc'

mov si,0

label:
     mov ax,a[si]
     mov actual,ax
     dec actual
     cmp ax,0
     je label1
     cmp ax,1
     je label1
     
label3:
     mul actual
     cmp actual,1
     je label2
     dec actual
     jmp label3
     
          
label1:
      mov ax,1
      label2:
      print " "
      call print_num
      inc si
      inc si
      cmp si,10
      je label4
      mov ax,0
      jmp label
      
label4:
      ret

actual dw 0
a dw 2,3,4,6,7,8
define_print_num
define_print_num_uns
define_scan_num