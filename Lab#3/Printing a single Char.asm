.model large
.stack 100h
.data

.code
main proc
    
     
   
       
     mov dl,'a'    
     mov ah,02
     int 21h
     ;return statement
     mov ah,4ch
     int 21h
    
    
    
    
    main endp
end main
