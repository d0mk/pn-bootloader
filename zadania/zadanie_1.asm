[BITS 16]
[ORG 0x7c00]

; -- Zadanie 1 --
; Proszę uruchomić ten plik przy pomocy dostarczonego skryptu run.sh,
; przeanalizować pojawiający się błąd, a następnie uzupełnić poniższy
; kod w taki sposób, aby po uruchomieniu wyświetlał się napis
; "Hello, world".
; Proszę nie zmieniać istniejącego kodu, tylko dopisać brakującą część.

mov si, message
jmp main

message db 'Hello, world', 0

main:
    lodsb
    or al, al
    jz done
    mov ah, 0x0e
    mov bh, 0
    int 0x10
    jmp main

done:
    jmp done

times 510 - ($ - $$) db 0