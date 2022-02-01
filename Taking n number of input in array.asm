                                              include 'emu8086.inc'
.model small
.stack 100h
.data

myArr db 100 dup('$')  

sc dw ?
         
.code

main proc 
   
   mov ax,@data
   mov ds,ax
   
   
   print "Enter n numbers of input:"
   
   mov ah,01
   int 21h  
   
   sub al,48
   
   xor ah,ah
    
   mov sc,ax
  
   
   mov si,offset myArr
   
   mov cx, sc
   
   printn ""
   
   print "Enter Elements:"   
   mov si,offset myArr 
    
 
   linput:
   mov ah,01
   int 21h 
   
   mov [si],al
   
   inc si
   loop linput      
   
   mov si, offset myArr
   mov cx,sc
          
   printn ""
   print "You Entered:"
   
   
          
   lout:
   mov dl,[si] 
   mov ah,02
   int 21h
   
   inc si
   
   loop lout
   
   
   mov ah,4ch
   int 21h 
   
   
    main endp
end main