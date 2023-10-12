include 'emu8086.inc'
                      
mov si,0

l:
  mov al,a[si]        
  add sum,al
  inc si
  inc si
  cmp si,9
  jle l
  
l1:
  mov al,sum
  call print_num
  ret
  
               
               
sum db 0              
a db 1,2,3,4,5,6,7,8,9
define_print_num
define_print_num_uns
define_scan_num