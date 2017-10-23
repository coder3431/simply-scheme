; Exercse 11-7 
; copies 


(define (copies n word)
    (if (equal? n 0) '()
        (se word (copies (- n 1) word))))
