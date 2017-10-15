; Exercise 9-13
; compose
; takes two functions f and g 
; return a new function  f(gx) 

(define (compose f g) 
    (lambda(x)
        (f ( g x))))
