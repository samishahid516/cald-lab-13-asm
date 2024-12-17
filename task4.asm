INCLUDE Irvine32.inc

.data
    num1 WORD 1234h          
    num2 WORD 5678h          
    msg1 BYTE "Before Swap:", 0
    msg2 BYTE "After Swap:", 0
    num1Msg BYTE "Number 1 = ", 0
    num2Msg BYTE "Number 2 = ", 0

.code
main PROC
    ; Display numbers before swapping
    mov edx, OFFSET msg1
    call WriteString
    call Crlf
    call DisplayNumbers

    ; Swap the two numbers
    mov ax, num1            
    mov bx, num2            
    mov num1, bx             
    mov num2, ax             

    ; Display numbers after swapping
    mov edx, OFFSET msg2
    call WriteString
    call Crlf
    call DisplayNumbers

    exit

; Subroutine to display the numbers
DisplayNumbers PROC
    ; Display Number 1
    mov edx, OFFSET num1Msg
    call WriteString
    mov ax, num1
    call WriteHex
    call Crlf

    ; Display Number 2
    mov edx, OFFSET num2Msg
    call WriteString
    mov ax, num2
    call WriteHex
    call Crlf

    ret
DisplayNumbers ENDP

main ENDP
END main
