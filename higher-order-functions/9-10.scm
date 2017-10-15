; Exercise 9-10
; Implement appearances 
;

(define (appearances l word)
    (count (keep (lambda(term)
                    (member? term l))
                  word)))



