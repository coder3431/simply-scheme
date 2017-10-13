; Exercise 8.7
; Write a procedure that takes a sentence as it's argument and returns the total; number of letters in sentence. 


(define (letter-count s)
    (accumulate + (every count s)))
