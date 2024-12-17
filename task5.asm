INCLUDE Irvine32.inc
.data
    Uarray WORD 1000h, 2000h, 3000h, 4000h   
.code
main PROC
    ; Move Uarray[0] into EAX
    mov ax, Uarray[0]
    movzx eax, ax       

    ; Move Uarray[1] into EBX
    mov ax, Uarray[2]   
    movzx ebx, ax       

    ; Move Uarray[2] into ECX
    mov ax, Uarray[4]   
    movzx ecx, ax      

    ; Move Uarray[3] into EDX
    mov ax, Uarray[6]   
    movzx edx, ax       

    ; Display the contents of the registers
    call DumpRegs
    exit
main ENDP
END main
