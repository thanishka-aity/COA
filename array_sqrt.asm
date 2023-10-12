include 'emu8086.inc'

mov si,0

sqrt:
    mov ax,a[si]
    mov actual,ax
    mov ax,1
    mov bx,1
    sqrtt:
         mul bx
         cmp ax,actual
         je perfect
         jg result
         mov ax,bx
         inc ax
         inc bx
         jmp sqrtt


result:
      dec bx    
perfect:
     mov ax,bx
     call print_num
     printn
     inc si
     inc si
     cmp si,10
     jne sqrt
     hlt


a dw 1,4,9,5,36,49
actual dw 0
define_print_num
define_print_num_uns
define_scan_num