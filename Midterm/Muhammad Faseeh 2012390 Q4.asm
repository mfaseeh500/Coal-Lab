 Print macro p1
        mov dx,offset p1
        mov ah,09
        int 21h   
   endm  
    Printn macro p1
        mov dl, p1
        mov ah,02
        int 21h   
   endm  
 .model small
 .stack 100h
 .data 
 value db 10 dup("$")
 x db "Enter 5 Values$" 
 x1 db "result$"
 newline db 0ah,0dh,"$"
 .code
  main proc 
    mov ax,@data
    mov ds,ax               
    print x  
    print newline
    mov si,offset value
    mov cx,5
    l: 
    
    mov ah,01h
    int 21h 
    mov [si],al
    inc si
    loop l 
    mov si,offset value
    mov cx,5 
    print newline
    print x1
    print newline
    l1:
    mov dl,[si]
    mov ah,02
    int 21h
    inc si
    loop l1
    ;return
    mov ah,4ch
    int 21h
    main endp
  end main