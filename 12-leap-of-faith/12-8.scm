; Exercise 12-8 
; numbers
; arg - sentence
; returns - sentence with just numbers only 


(define (numbers sent)
    (cond ((empty? sent) '())
          ((number? (first sent)) (se (first sent) (numbers (bf sent))))
          (else (numbers (bf sent)))))
