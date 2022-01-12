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
var db ? 
 
x db "Enter a letter in Uppercase$"
x2 db "Letter in Lowercase$"
newline db 0ah,0dh,"$"
.code
main proc 
    mov ax,@data
    mov ds,ax
      
    Print x  
   print newline
    mov ah,01h
    int 21h  
    mov dl,al
    add dl,32
    mov var,dl 
    print newline 
         print x2
         print newline
         mov dl,var
    mov ah,02
    int 21h
   
    ;return
    mov ah,4ch
    int 21h 
    main endp
end main



