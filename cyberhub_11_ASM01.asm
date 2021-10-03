Weirdo:
        push    rbp
        mov     rbp, rsp
        mov     eax, edi
        mov     DWORD PTR [rbp-8], esi
        mov     BYTE PTR [rbp-4], al
        movzx   edx, BYTE PTR [rbp-4]
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, eax
        sal     edx, cl
        mov     eax, edx
        mov     esi, eax
        movzx   edx, BYTE PTR [rbp-4]
        mov     eax, 8
        sub     eax, DWORD PTR [rbp-8]
        mov     ecx, eax
        sar     edx, cl
        mov     eax, edx
        or      eax, esi
        pop     rbp
        ret
.LC0:
        .string "Enter The Flag:"
.LC1:
        .string "%s"
.LC2:
        .string "Go Away Not The Right Flag :("
.LC3:
        .string "Correct Flag :)"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 160
        mov     QWORD PTR [rbp-112], 0
        mov     QWORD PTR [rbp-104], 0
        mov     QWORD PTR [rbp-96], 0
        mov     QWORD PTR [rbp-88], 0
        mov     QWORD PTR [rbp-80], 0
        mov     QWORD PTR [rbp-72], 0
        mov     QWORD PTR [rbp-64], 0
        mov     QWORD PTR [rbp-56], 0
        mov     QWORD PTR [rbp-48], 0
        mov     QWORD PTR [rbp-40], 0
        mov     QWORD PTR [rbp-32], 0
        mov     QWORD PTR [rbp-24], 0
        mov     DWORD PTR [rbp-16], 0
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        lea     rax, [rbp-112]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        movabs  rax, 1344960634262047258
        movabs  rdx, -429255233862151461
        mov     QWORD PTR [rbp-160], rax
        mov     QWORD PTR [rbp-152], rdx
        movabs  rax, -7783861299549877349
        movabs  rdx, 3126617631651242875
        mov     QWORD PTR [rbp-144], rax
        mov     QWORD PTR [rbp-136], rdx
        mov     WORD PTR [rbp-128], -23757
        mov     BYTE PTR [rbp-126], -21
        mov     DWORD PTR [rbp-4], 0
        jmp     .L4
.L6:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movzx   eax, BYTE PTR [rbp-112+rax]
        movzx   eax, al
        mov     esi, 3
        mov     edi, eax
        call    Weirdo
        mov     edx, DWORD PTR [rbp-4]
        movsx   rdx, edx
        movzx   edx, BYTE PTR [rbp-160+rdx]
        cmp     al, dl
        je      .L5
        mov     edi, OFFSET FLAT:.LC2
        call    puts
        mov     edi, 0
        call    exit
.L5:
        add     DWORD PTR [rbp-4], 1
.L4:
        cmp     DWORD PTR [rbp-4], 34
        jle     .L6
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 0
        call    printf
        mov     eax, 1
        leave
        ret