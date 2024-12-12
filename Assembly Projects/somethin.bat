set projectName=new1
ml /c /coff %projectName%.asm
link32 /SUBSYSTEM:CONSOLE %projectName%.obj
new1.exe