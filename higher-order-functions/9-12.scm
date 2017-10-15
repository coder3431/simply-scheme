; Exercise 9-12 
; first-last 
; argument -sentence
; returns a sentencing contain those words who first and last are thesame. 


(define (first-last phrase)
    (keep (lambda(word)(eq? (first word) (last word))) phrase))
