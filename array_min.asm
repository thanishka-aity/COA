include 'emu8086.inc'
  
mov si,0
mov bl,a[0]
mov min,bl

label:
     mov ah,0
     mov al,a[si]
     cmp al,min
     jl label2
     inc si 
     cmp si,5
     jne label
     jmp label3
     
label2:
      mov al,a[si]
      mov min,al
      inc si
      cmp si,5
      jne label 
      

label3:
     mov al,0
     mov al,min
     printn
     call print_num
     ret
      
min db 0
a db 6,4,8,2,7
define_print_num
define_print_num_uns
define_scan_num