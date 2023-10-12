include 'emu8086.inc'

mov dx,offset a
mov ah,0ah
int 21h
 
mov si,0 
mov di,0

l:
 cmp a[si],'$'
 je l1
 inc si  
 jmp l
 
l1:           
  dec si
  cmp si,1
  je l2
  mov al,a[si]
  mov b[di],al
  mov ah,0
  inc di 
  jmp l1
  
l2:
  mov al,'$'
  mov b[di],al
  mov si,2
  mov di,0
  
l3:
  mov ah,0
  mov ah,a[si]
  cmp ah,b[di]
  jne l4
  inc di
  inc si
  cmp a[si],'$'
  jne l3
  printn
  print "yes the given string is palindrome"
  jmp l5
  
l4:
  printn
  print "no the given string is not palindrome"
  
l5:
  printn
  mov dx,offset b
  mov ah,9
  int 21h
  ret
  
  
b db 15,?,15 dup(' ')
a db 15,?,15 dup(' ')
