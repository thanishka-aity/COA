include 'emu8086.inc'

print "enter the number:"
call scan_num 
mov ax,cx
mov num,ax
mov cx,0
printn
print "enter the power of number:"
call scan_num
dec cx

label:
     dec cx
     mul num
     cmp cx,0
     je label2
     jmp label

label2:
      printn
      call print_num
      ret


num dw 0
define_print_num
define_print_num_uns
define_scan_num