.model large
.stack 100h
.data
.code
main proc   
    ;taking first value
    mov ah,1
    int 21h   
   mov dl,al 
   ;taking second value
    mov ah,1
    int 21h  
    add dl,al
    sub dl,48
    ;printing
    mov ah,02
    int 21h
    ;return statement
    mov ah,4ch
    int 21h
    main endp
end main
    



