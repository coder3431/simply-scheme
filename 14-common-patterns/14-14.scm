; Exercise 14-4 
; same-shape? 

(define (same-shape? s1 s2)
   (cond 
         ((and (empty? s1) (empty? s2)) True)
         ((not (equal? (count s1) (count s2))) False)
         ((not (equal? (count (first s1)) (count (first s2)))) False)
         (else (same-shape? (bf s1) (bf s2)))))
