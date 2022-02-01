;Print Function  
print macro p1
mov dl,p1   
mov ah,02
int 21h  
endm     
;Output Function  
Output macro p1
mov dx,offset p1   
mov ah,09
int 21h  
endm 

.model small
.stack 100h
.data 
 
 counter dw ?
 str db 100 dup("$")  
 reverse db 100 dup("$") 
 x db "Enter Your Text==> $" 
 x2 db "Enter Counter==> $" 
 x3 db "Reversing==> $"
 num db 0          
 newline db 0AH,0DH,"$"
.code  

main proc

mov ax , @data
mov ds, ax


output x  

;offset address of first element in array          
mov si, offset str  

        
; taking input String   
takingInputString:
mov ah,1
int 21h
;checking if user pressed enter
cmp al,13  
;if input is equal to enter pressed then end program
je InputStringEnd 
;else save input at index 
mov [si],al 
push [si]
inc si     
inc counter
;get next character again / jump to label takeInput
jmp takingInputString   
  
    
    
    
InputStringEnd: 
 
output newline

;reversing
output x3 

mov cx,counter 

l:
pop dx
mov ah,02
int 21h
loop l

;return statement  
mov ah,4ch
int 21h     

output newline

main endp
end main