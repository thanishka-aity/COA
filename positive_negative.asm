include 'emu8086.inc'

call scan_num
mov ax,cx

cmp ax,0
jg label
print "negative"
ret
label:
print "positive"
ret

define_scan_num
define_print_num
define_print_num_uns