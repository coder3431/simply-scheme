; Exercise 14-10 
; count-adjacent-duplicates
; argument - sentence 
; returns a number..


(define (count-adjacent-duplicates sent)
    (cond ((empty? sent) 0) 
          ((equal? (count sent) 1) 0)
          ((equal? (first sent) (first (bf sent))) (+ 1 (count-adjacent-duplicates (bf sent))))
          (else (+ (count-adjacent-duplicates (bf sent))))
  ))
