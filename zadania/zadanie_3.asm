[BITS 16]
[ORG 0x7c00]

; -- Zadanie 3 --
; Proszę napisać program pobierający od użytkownika liczbę.
; Proces pobrania liczby powinien być poprzedzony wyświetleniem odpowiedniego
; komunikatu, jak np. "Wprowadz liczbe od 1 do 9: " lub podobnym.
; Jeśli użytkownik wprowadzi liczbę od 1 do 9, program ma narysować
; trójkąt o podanej wysokości.
; Program nie powinien reagować na inne wartości wprowadzane przez użytkownika,
; wzór rysuje tylko dla liczb z zakresu 1-9.
; Proszę wykorzystać przerwania BIOSu.
;
; Przykładowo, użytkownik wprowadza 4, program rysuje:
; *
; **
; ***
; ****

; -- proszę dopisać kod poniżej --