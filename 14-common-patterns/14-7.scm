; Exercise 14-7
; differences 
; argument - sentence of numbers 
; return difference of adjacent elements

(define (differences sent)
    (define second 
        (lambda(x) (first (bf x))))

    (cond ((empty? sent) '())
          ((equal? (count sent) 1) '())
          (else (se (- (second sent) (first sent)) (differences (bf sent))))))


