include 'emu8086.inc'
mov si,0
mov bx,10
     
label: 
     mov sum,0
     mov ax,a[si] 
     mov actual,ax
     labell:
     mov dx,0
     div bx
     mov q,ax
     mov r,dx
     mov ax,sum
     mul bx
     add ax,r
     mov sum,ax
     mov ax,q
     cmp ax,0
     jne labell
     jmp label2

label2:
      mov ax,actual
      cmp ax,sum
      je result
      inc si
      inc si
      cmp si,8
      jle label
      hlt
          
          
result:
      call print_num
      print " "
      inc si
      inc si
      cmp si,8
      jle label
      hlt
      
q dw 0
r dw 0
sum dw 0
actual dw 0
a dw 121,1,2,131,132
define_print_num
define_print_num_uns
define_scan_num