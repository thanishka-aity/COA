include 'emu8086.inc'

mov si,0
mov di,0
mov bp,0
mov bx,a[si]
mov b[di],bx
inc si
inc si
inc di
inc di
label: 
     mov ax,a[si]
     cmp ax,bx
     jg label2
     jl label3
     inc si
     inc si
     cmp si,8
     jle label
              
label2:
      mov b[di],ax
      mov bx,ax
      inc di
      inc di
      cmp di,8
      jle label 
        
label3:
      mov [bp],ax
      mov bx,ax
      inc bp
      inc bp
      cmp bp,8
      jle label      
        
              
;var dw 0
c dw ?,?,?,?,?
b dw ?,?,?,?,?
a dw 5,7,2,3,9
define_print_num
define_print_num_uns
define_scan_num