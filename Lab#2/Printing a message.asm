.model small; .model small means program cosumes less memory
.stack 100h
.data

       msg db "SZABIST UNIVERSITY $"  ; msg is a variable here db is called databyte that can be different according to the size
.code ;code start
main proc ;proc means procedure similar like function
mov ax,@data  ;data segment initialization and then moved to accumalator
mov ds,ax    ; data from ax is moved to ds (data register) 
mov ah ,09h    ;string display  || accumalator high || 09h to print
mov dx,offset msg
int 21h
mov ah,4ch       ;DOS exit function
int 21h   
main endp
end

 ;difference between stack 100h and org 100h



