; Exercise 14-2 

(define (up word) 
    (if (empty? word) 
        '()
        (se (up (bl word)) word)
))

