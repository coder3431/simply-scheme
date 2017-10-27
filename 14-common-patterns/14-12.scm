; Exercise 14.12 
; progressive-squares? 

(define (square x)(* x x))

(define (progressive-squares? sent)
    (cond ((empty? sent) True)
          ((equal? (count sent) 1) True)
          ((not (equal? (square (first sent)) (first (bf sent))))
            False)
          (else (progressive-squares? (bf sent)))))
  
