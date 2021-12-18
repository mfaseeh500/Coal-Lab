 ;chk if the child is above ten or not
  Print macro p1
    mov dx,offset p1
    mov ah,09
    int 21h
        endm
.model small
.stack 100h
.data
x db "Enter Age$"
  newline db 0ah,0dh,"$"
  
x2 db "above five$ "
x3 db "below five$ "
.code
main proc
    mov ax,@data
    mov ds ,ax  
    print x
   
    PRINT NEWLINE
   mov ah,1
   int 21h
   sub al,48 
   cmp al, 5
   jge l
   call m 
   Call END
   l:
   print x2  
   call End
   m:
   print x3
    call End
   End:
   mov ah,4ch
   int 21h
   ret
