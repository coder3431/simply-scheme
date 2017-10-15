; Exercise 9-16
; In the language APL, most arithmetic functions can be applied to a number, 
; with th usual result or to a vector - the apl name for a sentence of numbers -; in which the case result is a new vector   sqrt 16   sqrt 16 49 

; aplize
; 1 argument procedure whose domain is numbers or words 
; returns a procedure that accepts sentences


(define (aplize f)
    (lambda(sentence)
        (if (number? sentence)
            (f sentence)
        (every f sentence))))
