.model small
.stack 100h
.data
arr db 1,2,3,4,5,6,7 
newline db 0ah,0dh, "$"
.code
main proc
         mov ax,@data
         mov ds,ax
       
         mov cx,7 
         mov si,0
             
            ;printing 1st value
         mov dl,arr[si]
         add dl,48   
         mov ah,02
        int 21h 
        ;newline
        mov dl,offset newline
        mov ah,09
        int 21h  
                   ;printing last value
         mov dl,arr[si+6]
         add dl,48   
         mov ah,02
        int 21h
         
                 
    
    mov ah,4ch
    int 21h
    main endp
end main



