.model small
.stack 100h
.data
.code
main proc
    l:
    mov dl,'a'
    mov ah,02
    int 21h
    jmp l
    main endp
end main
