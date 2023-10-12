include 'emu8086.inc'
               
mov si,0
mov bx,0

l:
 mov al,a[si]
 cmp al,'$'
 je l1
 inc count
 inc si
 loop l
       
l1:
  mov al,count
  print "count="
  call print_num 
  ret
               
count db 0
a db 'thanishka$'
define_print_num
define_print_num_uns
define_scan_num