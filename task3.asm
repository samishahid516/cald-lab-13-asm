INCLUDE Irvine32.inc

.data
    prompt BYTE "Enter your name: ", 0
    outputMsg BYTE "Your name is: ", 0
    nameBuffer BYTE 50 DUP(0)   

.code
main PROC
    ; Prompt the user for their name
    mov edx, OFFSET prompt
    call WriteString           
    mov edx, OFFSET nameBuffer
    mov ecx, 50                
    call ReadString            

    ; Display the message and the user's name
    mov edx, OFFSET outputMsg
    call WriteString           
    mov edx, OFFSET nameBuffer
    call WriteString           
    call Crlf                  

    exit
main ENDP
END main
