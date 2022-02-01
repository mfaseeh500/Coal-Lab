.model small
.stack 100h
.data
     Employeename9 db 10 dup (?)
     id db 10 dup (?)
     salary db 10 dup (?)
     Leaves db ?
     reasons db 50 dup (?)
     NOM dw ?
     
     msg1 db "Enter Name: $"
     msg2 db "Enter ID: $"
     msg3 db "Enter Salary: $"
     msg4 db "Enter Number of leaves in $"
     msg5 db "-2022: $"
     msg6 db "Enter the reason for leave: $"     
     msg7 db "Grade: $"
     
.code
     output macro p1
        mov dx,offset p1
        mov ah,09
        int 21h
     endm
     
     outputChar macro p1
        mov dl, p1
        mov ah,02
        int 21h
     endm

     inputString macro p1
        local inputString
        inputString:
        mov ah,01
        int 21h
        mov dl,al
        mov p1[si],al
        inc si
        cmp dl, 13
        jne inputString
     endm
     
     newline macro
        mov dl,0ah
        mov ah,2
        int 21h
        mov dl,0dh
        mov ah,2
        int 21h
        endm
     
     
     leavecheck macro p1
        cmp p1 ,6
        jg Done1
        cmp p1,4
        jg Done2
        cmp p1,2
        jle Done3
        cmp p1,4
        jle Done4
        Done1:
        outputChar 'D'
        output msg7
        jmp end
        Done2:
        outputChar 'C'
        output msg7
        jmp end
        Done3:
        outputChar 'A'
        output msg7
        jmp end
        Done4:
        outputChar 'B'
        output msg7
        jmp end
        end:
        endm
        
        
     
     main proc
        mov ax,@data
        mov ds,ax
        
        
        output msg1
        inputString employeename9
        newline
        
        output msg2
        inputString id
        newline
        
        output msg3
        inputString salary
        newline
        
        mov bx,1
        mov si,0
        formonthleave:
        newline
        output msg4
        mov dl,bh
        add dl,'0'
        mov ah,02
        int 21h
        mov dl,bl
        add dl,'0'
        mov ah,2
        int 21h
        inc bl
        mov al,bl
        mov ah,0
        AAA
        add bh,ah
        mov bl,al
        output msg5
        mov ah,01
        int 21h
        sub al,'0'
        mov ch,al
        add Leaves,al
        leavecheck al
        mov cl,0
        Reason1:
        newline
        output msg6
        inputString
        inc cl
        cmp cl,ch
        jne reason1
        inc NOM
        cmp NOM,12
        jl formonthleave
        
        cmp leaves,24
        
        increment:
        mov al,salary[0]
        mov cl,salary[1]
        mov bl,10
        mul bl
        add al,cl
        sub leaves,24
        add leaves,al
        mov dl,leaves
        add dl,'0'
        mov ah,2
        int 21h
        end
        increment
        
        end:
        mov ah,4ch
        int 21h
        
        main endp
end main