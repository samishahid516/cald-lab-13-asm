INCLUDE Irvine32.inc

.data
    msg BYTE "Random Numbers between 0 and 20:", 0
    range DWORD 21          ; Range is 0 to 20 (21 values)

.code
main PROC
    ; Seed the random number generator
    call Randomize          ; Initialize random seed using system clock

    ; Display message
    mov edx, OFFSET msg
    call WriteString
    call Crlf

    
    mov ecx, 10             ; Loop counter for 10 numbers
gen_loop:
    ; Generate a random number
    mov eax, range         
    call RandomRange        
    call WriteDec           
    call Crlf              

    loop gen_loop         
    exit
main ENDP
END main
