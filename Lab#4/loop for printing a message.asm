.model large
.stack 100h
.data 
msg db "SZABIST $"
.code
main proc
mov ax,@data
mov ds,ax
mov cx,10 ;counter giving
l:            ;loop name 
;lea dx,msg
mov ah,09h ;printing string
int 21h
; statements for new line  
;mov dl,10  
;mov ah,02
;int 21h
;mov dl,13 
;mov ah,02
;int 21h
loop l
;return statement
mov ah,4ch
int 21h
main endp
end main
