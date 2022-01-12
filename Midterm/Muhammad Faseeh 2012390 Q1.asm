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
 var1 db ?
 value db 10 dup("$") 
 x db "Input 5 values$" 
 x1 db "Subtraction$" 
 x2 db "Addition$"
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
    ;Subtarction  
    print newline
    print x1
    printn "="
                mov dl,[si]
                sub dl,[si+1]
                add dl,48
                mov var,dl
                mov ah,02
                int 21h  
                ;Addition
                         print newline
    print x2
    printn "="
        
    mov dl,[si+2]
    
    add dl,[si+3]
    sub dl,48
    mov var1,dl
    mov ah,02
    int 21h   
    ;fifth value sub 
    print newline
    print x1
    printn "="
    mov dl,var
    add dl,var1
    sub  dl,[si+4] 
     mov ah,02
    int 21h   
              ;return   
        mov ah,4ch
        int 21h
        main endp
  end main
    
    
    