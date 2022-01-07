abc macro 
    mov ah,01
    int 21h
    
    xor ch,ch
    push ax

    mov ah,01
    int 21h
    
    xor ch,ch 
    mov bx,ax
    push bx
    
    pop ax
    pop bx
    
    mov dx,ax
    mov ah,2
    int 21h
    
    mov dx,bx
    mov ah,2
    int 21h

endm
.model small
.stack 100h
.data

.code

main proc
    abc
       
    mov ah,4ch
    int 21h
    
    main endp
end main
 
