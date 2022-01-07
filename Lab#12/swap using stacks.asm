.model small
.stack 100h
.data

.code

main proc
     call swap  
       
    mov ah,4ch
    int 21h
    
    main endp 

swap proc
    mov ax,'8'
    mov bx,'5'
    
    push ax
    push bx
    
    pop ax
    pop bx
    
    mov dx,ax
    mov ah,2
    int 21h
    
    mov dx,bx
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
 swap endp
      end main
 
