; Exercise 15-3 
; substrings 
; argument - word
; return a setnence containing all of the substrings 
; substring - a subset who letters come consecutively 

(define (decrement wd)
    (if (empty? wd)
        '()
        (se wd (decrement (bl wd))
)))

(define (substrings wd)
    (if (empty? wd)
        (se "") 
        (se (decrement wd)  (substrings (bf wd)))
))
