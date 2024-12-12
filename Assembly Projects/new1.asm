;

TITLE Skeleton
includelib C:\Users\Kenny\Desktop\masm615\Lib\irvine32.lib
includelib C:\Users\Kenny\Desktop\masm615\Lib\KERNEL32.LIB
includelib C:\Users\Kenny\Desktop\masm615\Lib\user32.lib
INCLUDE C:\Users\Kenny\Desktop\masm615\include\Irvine32.inc

.data 
bvar BYTE 10 
wvar WORD 060Ah, 7
dvar DWORD 123 DUP(2)
strr BYTE "Hi", " Hello", "'", '"', 0AH, 0DH, 0
message BYTE "Hello World!", 0DH, 0AH, 0
arrsize DWORD 5
string1 BYTE "Testing",0
string2 DWORD ?

.code 
main PROC
	mov eax, 0
	mov ecx, 5
	mov ebx, arrsize

	mov edx, OFFSET string1 ;OFFSET is always 32 bits 
	
L1: 
	mov ebx, arrsize
	sub ebx, ecx
	add eax, dvar[ebx*TYPE dvar]
	call writeDec 
	call Crlf
	loop L1

movzx eax, bvar
mov ebx, 5
cmp eax, ebx
JG Lable3

Lable2:
	mov eax, 10
	call writeDec

Lable3:
	mov edx, "SKIP"
	call writestring


	mov edx, offset strr
	mov ebx, 6
	call writestring
	call writeInt
	call crlf
	call writedec
	call crlf
	call writeHex
	call crlf
	call writeBin
	call crlf
	call dumpRegs
	exit
main ENDP
END main