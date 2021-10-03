func:
        push    rbp
        mov     rbp, rsp
        mov     eax, edi
        mov     BYTE PTR [rbp-4], al
        movsx   eax, BYTE PTR [rbp-4]
        imul    eax, eax, 69
        cdq
        shr     edx, 24
        add     eax, edx
        movzx   eax, al
        sub     eax, edx
        pop     rbp
        ret
.LC0:
        .string "Enter the flag:"
.LC1:
        .string "%61s"
.LC2:
        .string "Wrong Flag :("
.LC3:
        .string "Correct Flag : %s"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 336
        mov     DWORD PTR [rbp-336], 15
        mov     DWORD PTR [rbp-332], 253
        mov     DWORD PTR [rbp-328], 202
        mov     DWORD PTR [rbp-324], 153
        mov     DWORD PTR [rbp-320], 26
        mov     DWORD PTR [rbp-316], 104
        mov     DWORD PTR [rbp-312], 233
        mov     DWORD PTR [rbp-308], 202
        mov     DWORD PTR [rbp-304], 39
        mov     DWORD PTR [rbp-300], 84
        mov     DWORD PTR [rbp-296], 235
        mov     DWORD PTR [rbp-292], 155
        mov     DWORD PTR [rbp-288], 253
        mov     DWORD PTR [rbp-284], 235
        mov     DWORD PTR [rbp-280], 137
        mov     DWORD PTR [rbp-276], 155
        mov     DWORD PTR [rbp-272], 55
        mov     DWORD PTR [rbp-268], 166
        mov     DWORD PTR [rbp-264], 235
        mov     DWORD PTR [rbp-260], 19
        mov     DWORD PTR [rbp-256], 155
        mov     DWORD PTR [rbp-252], 157
        mov     DWORD PTR [rbp-248], 235
        mov     DWORD PTR [rbp-244], 137
        mov     DWORD PTR [rbp-240], 155
        mov     DWORD PTR [rbp-236], 175
        mov     DWORD PTR [rbp-232], 37
        mov     DWORD PTR [rbp-228], 166
        mov     DWORD PTR [rbp-224], 155
        mov     DWORD PTR [rbp-220], 137
        mov     DWORD PTR [rbp-216], 255
        mov     DWORD PTR [rbp-212], 57
        mov     DWORD PTR [rbp-208], 155
        mov     DWORD PTR [rbp-204], 97
        mov     DWORD PTR [rbp-200], 235
        mov     DWORD PTR [rbp-196], 244
        mov     DWORD PTR [rbp-192], 155
        mov     DWORD PTR [rbp-188], 77
        mov     DWORD PTR [rbp-184], 166
        mov     DWORD PTR [rbp-180], 206
        mov     DWORD PTR [rbp-176], 57
        mov     DWORD PTR [rbp-172], 186
        mov     DWORD PTR [rbp-168], 255
        mov     DWORD PTR [rbp-164], 57
        mov     DWORD PTR [rbp-160], 155
        mov     DWORD PTR [rbp-156], 68
        mov     DWORD PTR [rbp-152], 235
        mov     DWORD PTR [rbp-148], 155
        mov     DWORD PTR [rbp-144], 195
        mov     DWORD PTR [rbp-140], 57
        mov     DWORD PTR [rbp-136], 68
        mov     DWORD PTR [rbp-132], 155
        mov     DWORD PTR [rbp-128], 68
        mov     DWORD PTR [rbp-124], 8
        mov     DWORD PTR [rbp-120], 57
        mov     DWORD PTR [rbp-116], 155
        mov     DWORD PTR [rbp-112], 126
        mov     DWORD PTR [rbp-108], 28
        mov     DWORD PTR [rbp-104], 37
        mov     DWORD PTR [rbp-100], 195
        mov     DWORD PTR [rbp-96], 177
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        lea     rax, [rbp-80]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        mov     DWORD PTR [rbp-4], 0
        jmp     .L4
.L7:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movzx   eax, BYTE PTR [rbp-80+rax]
        movsx   eax, al
        mov     edi, eax
        call    func
        mov     DWORD PTR [rbp-8], eax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     eax, DWORD PTR [rbp-336+rax*4]
        cmp     DWORD PTR [rbp-8], eax
        je      .L5
        mov     edi, OFFSET FLAT:.LC2
        call    puts
        mov     eax, 0
        jmp     .L8
.L5:
        add     DWORD PTR [rbp-4], 1
.L4:
        cmp     DWORD PTR [rbp-4], 60
        jle     .L7
        lea     rax, [rbp-80]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 0
        call    printf
        mov     eax, 0
.L8:
        leave
        ret