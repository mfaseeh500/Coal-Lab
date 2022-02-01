                                                           .model small
.stack 100h
.data
 Number dw "Enter Number to know if it is odd/even $"
 
 even dw "Number is Even $" 
 
 odd dw "Number is odd $"
.code         
main proc
    mov ax,@data
    mov ds,ax
    
  mov dx,Offset Number   ;; enter number
  mov ah,09h
  int 21h

  mov dx,10
  mov ah,02h
  int 21h
  mov dx,13
  mov ah,02h
  int 21h
  

  mov ah,1h              ;;takes user input
  int 21h

  xor ah,ah               ;; to make ah zero

  mov bl,2
  
  div bl
  
  cmp ah,0 ;;compare remainder =0
                   ;; If n is even remainder is 0
                   ;; will jump to show
                   ;; If n is odd remainder is 1       
                   ;;Program terminates 
                   ;; And displays odd

 je show  
 
  mov dx,Offset odd   ;;display odd
  mov ah,09h
  int 21h
  mov ah,4ch
  int 21h
 
 
 show:
 
      mov dx,Offset Even  ;; display even 
      mov ah,09h
      int 21h
       
  
  
  
  mov ah,4ch
  int 21h
main endp 
end main