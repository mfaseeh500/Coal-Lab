.model large
.stack 100h
.data

.code
main proc
    
     
     mov ah,1
     int 21h  
     mov dl,al    
     mov ah,02
     int 21h
     ;return statement
     mov ah,4ch
     int 21h
    
    
    
    
    main endp
end main
