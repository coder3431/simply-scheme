; Exercise 14-6 
; member? 


(define (member? wo sent)
    (cond ((empty? sent) False)
          ((equal? wo (first sent)) True)
          (else (member? wo (bf sent)))
))
