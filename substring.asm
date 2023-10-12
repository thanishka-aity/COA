include 'emu8086.inc'

mov si,0
mov di,0        

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
  print "yes the substring present!"
  ret
  
last:
   print "no the substring not present!" 
   ret


str1 db "thanishka$"
str2 db "ish$"