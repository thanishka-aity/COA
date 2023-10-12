
include 'emu8086.inc'

           
label:
printn
mov cx,0
call scan_num
mov ax,cx
mov bx,1
dec cx
cmp nfact,0
je nfactt
cmp rfact,0
je rfactt



nfactt:
     mov n,ax
     cmp ax,1
     je one_fact
     nf:
     mov dx,0
     mul bx
     inc bx
     loop nf
     mov nfact,ax
     printn
     print "nfact:"
     call print_num
     jmp label
     
rfactt:
     mov r,ax
     cmp ax,1
     je one_fact
     rf:
     mov dx,0
     mul bx
     inc bx
     loop rf
     mov rfact,ax
     printn
     print "rfact:"
     call print_num
  
nrfactt:
     mov ax,n
     sub ax,r
     cmp ax,1
     jle one_fact
     dec ax
     mov cx,ax
     inc ax
     mov bx,1
     nrf:    
        mov dx,0
        mul bx
        inc bx
        loop nrf
    mov nrfact,ax
    printn
     print "nrfact:"
     call print_num
    
ncr:
   mov ax,nrfact
   mul rfact
   mov rnr,ax
   mov ax,nfact
   div rnr
   printn
   print "ncr:"
   call print_num
   hlt

one_fact:
       cmp n,1
       je nof
       cmp r,1
       je rof
       mov nrfact,1
       jmp ncr
       nof:
       mov nfact,1
       jmp label
       rof:
       mov rfact,1
       jmp nrfactt

nfact dw 0
rfact dw 0
nrfact dw 0
rnr dw 0 
n dw 0
r dw 0

define_print_num
define_print_num_uns
define_scan_num