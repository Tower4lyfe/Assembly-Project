TITLE Skeleton

includelib C:\Users\Kenny\Desktop\masm615\Lib\irvine32.lib
includelib C:\Users\Kenny\Desktop\masm615\Lib\KERNEL32.LIB
includelib C:\Users\Kenny\Desktop\masm615\Lib\user32.lib
INCLUDE C:\Users\Kenny\Desktop\masm615\include\Irvine32.inc

.data
a1 DWORD ?


.code
main PROC
mov a1, 6
mov eax, 5
cmp a1, eax
jg Lable

add a1, 1
call dumpRegs

Lable:
call writeDec

exit
main ENDP
END main
