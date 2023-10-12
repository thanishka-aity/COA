include 'emu8086.inc'
mov si,0
mov bx,2

label:
     mov dx,0
     mov ax,a[si]
     div bx
     cmp dx,0
     je count_even
     jmp count_odd

count_even:
     mov ax,even_count
     inc ax
     mov even_count,ax
     inc si
     inc si
     cmp si,16
     jle label
     jmp result   
     
count_odd:
     mov ax,odd_count
     inc ax
     mov odd_count,ax
     inc si
     inc si
     cmp si,16
     jle label 
     jmp result
     
result:
      mov ax,even_count
      print "even-count="
      call print_num
      printn
      mov ax,odd_count
      print "odd-count="
      call print_num
      hlt
        
even_count dw 0
odd_count dw 0
a dw 0,1,2,3,5,6,7,8,9
define_print_num
define_print_num_uns
define_scan_num