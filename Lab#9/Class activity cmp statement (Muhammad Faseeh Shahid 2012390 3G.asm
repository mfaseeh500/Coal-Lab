Print macro p1         ;print function
    mov dx,offset p1 
    mov ah,09
    int 21h 
    endm
  
.model small
.stack 100h
.data
var db "PRESS 1 IF YOUR AGE IS GREATER THAN 50=>$" 
var1 db "PRESS 2 IF YOUR AGE IS GREATER THAN 20=>$" 
var2 db "PRESS 3 IF YOUR AGE IS GREATER THAN 10=>$" 
var3 db "PRESS 4 IF YOUR AGE IS LESS THAN 10=>$"
x db "SENT TO SECTION A$"
x1 db "SENT TO SECTION B$" 
x2 db "SENT TO SECTION C$"
x3 db "YOU CAN LIVE WITH PARENTS$"
f db "INVALID INPUT$"
newline db 0ah,0dh,"$"
.code
main proc 
     mov ax,@data
    mov ds,ax
     print var       ;printing all the conditions
     print newline
     print var1
     print newline
     print var2
     print newline
     print var3                  
     print newline
        
        
    
      mov ah,01 ;taking userinput
       int 21h 
       mov dl,al
       sub dl,48
       cmp dl,1  ;checking all the conditions by using compare statements
       je A  
        cmp dl,2
       je B
        cmp dl,3
       je C
        cmp dl,4
       je D 
       print newline ;if user enters something else instead of the desired inputs 
       print f
       call Exit
      
       A:     ;if input is 1
      
        print x 
        call Exit
        ret 
        
        B:       ;if input is 2
        print x1 
        call exit 
        ret   
         C:    ;if input is 3
        print x2 
        call exit 
        ret
         D:        ;if input is 4
        print x3
        call exit 
        ret
    Exit:
    mov ah,4ch
    int 21h
    
    
    


