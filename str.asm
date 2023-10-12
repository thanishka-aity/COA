include 'emu8086.inc'

mov dx,offset buffer
mov ah,0ah      ;se
int 21h        ;user input
;mov dx,offset buffer  ;pass address  
printn
mov ah,9  ;print
int 21h   ;   
ret

buffer db 20,?, 20 dup(' ')
