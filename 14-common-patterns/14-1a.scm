; Exercise 14-1 Alternate, more elegant design. 

(define (remove-once wo sent)
    (cond ((empty? sent) sent)
          ((equal? wo (first sent)) (se (bf sent)))
          (else (se (first sent) (remove-once wo (bf sent))))))
