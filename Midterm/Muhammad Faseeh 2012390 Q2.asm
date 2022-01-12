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
 x db ? 
 x1 db ?
 x2 db "Enter 1st value$" 
 x3 db "Enter 2nd value$"
 newline db 0ah,0dh,"$"
 .code
  main proc 
    mov ax,@data
    mov ds,ax  
    ;entering 1st value 
    print x2
    print newline
    mov ah,01h
    int 21h
    mov dl,al
    mov x,dl           
    ;entering 2nd value  
    print newline
    print x3
    print newline
    mov ah,01h
    int 21h
    mov dl,al
    mov x1,dl  
    ;loop
    mov ah,x
    mov cl,x 
    l:
    inc al
    mov ah,02
    int 21h
    loop l 
    ;return
    mov ah,4ch
    int 21h
    main endp
  end main
    


