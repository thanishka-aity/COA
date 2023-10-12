
include 'emu8086.inc'   

mov si,0
label:
     mov al,0
     printn
     print "enter ele in array:"
     call scan_num
     mov a[si],cl
     mov al,a[si]
     add sum,al
     inc si
     cmp si,5
     je label2
     jmp label
     
label2:
      mov al,sum
      printn
      print "sum:"
      call print_num
      ret
    


sum db 0
a db 5 dup(?)
define_print_num
define_print_num_uns
define_scan_num