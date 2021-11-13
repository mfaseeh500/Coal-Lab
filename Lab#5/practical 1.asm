.model small
.stack 100h
.data

  v db "Muhammad",0ah,0dh,"$"
  v1 db ? 
  v2 db "Faseeh" ,0ah,0dh,"$"
  newline db ,0AH,0DH,"$"
 
.code ;code start
main proc
mov ax, @data
mov ds,ax  
;printing of v
mov dl,offset v   ;can be done with dx as well
mov ah,09
int 21h


;printing of v2
mov dl,offset v2   ;can be done with dx as well
mov ah,09
 int 21h   
 ;printing of newline
mov dx,offset newline
mov ah,09
int 21h  
 ;pinting of v1
mov v1,5 ;can be done with dx as well              
mov dl,v1
add dl,48
mov ah,02
int 21h   
         
         mov ah,4ch
         int 21h  
         main endp
end main