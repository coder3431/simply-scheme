; Exercise 11.5 
; Write a procedure initials thats a sentence as its argument and 
; returns a sentence of the ltters in each of the sentence's words. 

(define (initials sent)
    (if (empty? sent)
        '()
         (se (first (first sent)) (initials (bf sent)))))
