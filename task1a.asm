INCLUDE Irvine32.inc

.data
    num DWORD ?         ; To store user input
    prompt BYTE "Enter a 32-bit integer: ", 0
    decMsg BYTE "Decimal: ", 0
    hexMsg BYTE "Hexadecimal: ", 0
    binMsg BYTE "Binary: ", 0

.code
main PROC
    ; Prompt user for input
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov num, eax          ; Store the user input in 'num'

    ; Display in Decimal
    mov edx, OFFSET decMsg
    call WriteString
    mov eax, num
    call WriteInt
    call Crlf

    ; Display in Hexadecimal
    mov edx, OFFSET hexMsg
    call WriteString
    mov eax, num
    call WriteHex
    call Crlf

    ; Display in Binary
    mov edx, OFFSET binMsg
    call WriteString
    mov eax, num
    call WriteBin
    call Crlf

    exit
main ENDP
END main
