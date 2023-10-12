include 'emu8086.inc'

mov si,2
mov di,2

print "main string:"
mov dx,offset str1
mov ah,0ah
int 21h

printn
print "enter substring:"
mov dx,offset str2
mov ah,0ah
int 21h      

l1:
  cmp str1[si],'$'
  je last
  mov al,str1[si]
  cmp al,str2[di]
  jne l2
  inc di
  inc si
  cmp str2[di],'$'
  je l3
  jmp l1

l2:
  inc si
  cmp str1[si],'$'
  jne l1
  jmp last
  
l3:
  printn
  print "yes the substring present!"
  ret
  
last:   
   printn
   print "no the substring not present!" 
   ret


str1 db 15,?,15 dup(' ')
str2 db 15,?,15 dup(' ')