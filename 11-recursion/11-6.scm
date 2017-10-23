; Exercise 11-6 
; countdown 

(define (countdown n)
    (if (equal? n 0)
        'Blastoff! 
        (se n (countdown (- n 1)))))
