Print macro p1
mov dx,offset p1
mov ah,09
int 21h
endm

.model small
.stack 100h
.data
msg1 db "Both Numbers are Equal$"
msg2 db "Both Numbers are not Equal$"
x db "Enter First Number$"
x2 db "Enter Second Number$" 
Newline db 0ah,0dh,"$"
.code
main proc
    mov ax,@data
    mov ds,ax
    print x
    print Newline
    mov ah,01h ;entering first value
    int 21h
    mov bl,al
    print Newline
    print x2 
    print newline
    mov ah,01h
    int 21h
    mov dl,al
    cmp bl,dl ;if both are equal 
    je Equal 
    print newline
    print msg2
    jmp End
Equal:
print newline
Print msg1  
jmp End
    End:
    mov ah,4ch
       int 21h
       
                          