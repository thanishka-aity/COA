include 'emu8086.inc'
             
mov si,0      
mov di,2
mov cx,5
label1:
      mov ax,a[si]
      cmp ax,b[di]
      jl swap
      inc di
      inc di
      inc si
      inc si
      cmp di,12
      jl label1
      jmp forloopi      
    
swap:
      mov bx,a[si]
      mov dx,a[di]
      mov a[si],dx
      mov a[di],bx
      inc si
      inc si
      inc di
      inc di
      cmp di,12
      jl  label1
      jmp forloopi
              
forloopi: 
   dec cx
   cmp cx,0 
   mov si,0
   je display
   jmp u
   h:
   mov si,0
   mov di,2
   jmp label1
   
display:
     mov ax,a[si]
     call print_num
     print " " 
     inc si
     inc si
     cmp si,12
     jl display
     ret   
   
u:  
  mov ax,a[si]
  mov b[si],ax
  inc si
  inc si
  cmp si,12
  jl u
  jmp h
              
a dw 7,8,1,5,23,2
b dw 7,8,1,5,23,2
define_print_num
define_print_num_uns
define_scan_num