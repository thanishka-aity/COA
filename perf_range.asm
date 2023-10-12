include 'emu8086.inc'

mov ax,6
mov end,28

label:
     mov actual,ax
     dec ax
     mov bx,ax
     mov ax,actual
     labell:
     mov ax,actual
     div bx
     cmp dx,0
     je label2
     dec bx
     mov dx,0
     cmp bx,0
     jne labell
     
     
label2:
      add sum,bx
      dec bx
      cmp bx,0
      jne labell
      mov ax,actual
      cmp ax,sum
      jne label3
      mov ax,actual
      call print_num
      
      label3:
            inc ax
            mov sum,0
            mov dx,0
            cmp ax,end
            jng label
            hlt
      
end dw 0
sum dw 0
actual dw 0
define_print_num
define_print_num_uns
define_scan_num      
      
     