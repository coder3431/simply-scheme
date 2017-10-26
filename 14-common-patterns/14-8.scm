; Exercise 14-8 
; expand
; argument - sentence 
; if number appears then do something... 

(define (second sent)
    (first (bf sent)))

(define (expand sent)
    (define (expand-helper n wo)
      (if (equal? n 0) 
            '()
            (se wo (expand-helper (- n 1) wo))))

    (cond ((empty? sent) '())
          ((equal? (count sent) 1) (se sent))
          ((number? (first sent))
           (se (expand-helper (first sent) (second sent)) (expand (bf (bf sent)) )))
          
          (else (se (first sent) (expand (bf sent))))))
