(define (count word)
    (if (empty? word) 
        0
        (+ 1 (count (bf word)))))
