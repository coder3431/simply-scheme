; Exercise 9.6 
; sentence-version 
; argument F function 
; returns a function G 
; F should take single word as argument,  
; G should take a sentence as argument 

(define (sentence-version f)
    (lambda(s) 
        (every f s)))
