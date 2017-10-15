; Exercise 9-11

(define (unabbrev se1 se2)
    (every (lambda(word) 
        (if (number? word) 
            ( (lambda(n p)
              (item n p  )) word se2)
            word)) se1))
