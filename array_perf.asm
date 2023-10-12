
include 'emu8086.inc'

mov si,0

label:
     mov ax,a[si];
     mov actual,ax
     dec ax
     mov bx,ax
     mov ax,actual
     cmp ax,1
     je label4
     labell:
     div bx
     cmp dx,0
     je label3
     dec bx
     mov ax,actual
     mov dx,0
     jmp labell

label3:
      add sum,bx
      dec bx
      cmp bx,0
      jne labell
      mov ax,actual
      cmp ax,sum
      jne label4
      call print_num
      printn


label4:
      inc si
      inc si
      mov sum,0
      mov bx,0
      cmp si,10
      jne label
      hlt



a dw 7,5,6,28,3 
actual dw 0 
sum dw 0

define_scan_num
define_print_num
define_print_num_uns