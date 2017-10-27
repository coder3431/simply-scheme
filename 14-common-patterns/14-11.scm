; Exercise 14-11
; remove-adjacent-duplicates
; arg- sentence 
; returns same sentence but with any word's that immediately follwed by the same; removed. 

(define (second sent)
    (first (bf sent)))

(define (remove-adjacent-duplicates sent)
    (cond ((empty? sent) '())
           ((equal? (count sent) 1) sent)
           ((not (equal? (first sent) (second sent))) (se (first sent) (remove-adjacent-duplicates (bf sent))))
           (else (se (remove-adjacent-duplicates (bf sent))))))
  
