TITLE Fib, Version 2         (Fib.asm)

INCLUDE Irvine32.inc

.data

n1 dword 1         
n2 dword 1         
fib dword 0     
FibNum dword 100   

.code
main PROC

    mov eax,n1
    call dumpregs
    mov eax,n2
    call DumpRegs
    mov ecx,FibNum
    sub ecx,2
L1:
    ;fib=n1+n2
    mov eax,n1
    mov fib,eax
    mov eax,n2
    add fib,eax
    mov eax,fib        
    call DumpRegs    
    ;n1=n2
    mov eax,n2       
    mov n1,eax
    ;n2=fib
    mov eax,fib
    mov n2,eax
    loop L1
    exit
main ENDP
END main