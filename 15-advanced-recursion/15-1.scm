; Exercise 15.1
; to-binary
; argument - a regular number
; returns -  a binary number. 

; (to-binary 9) 
; 1001 

;  how doe it work 
; 9/2 = 4         1
; 4/2 = 2         0 
; 2/2=  1         0
; 1/2 = 0         1 

; (to-binary 23)
; 23/2 = 11       1
; 11/2 =  5       1
;  5/2  = 2       1 
;  2/2 =  1       0 
;  1/2 =  0       1 


(define (to-binary n)
    (if (<= n 0)
        (word "")
        (word (to-binary (floor (/ n 2)))
              (remainder n 2))))


