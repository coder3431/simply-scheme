; Exercise 14-15 
; merge 

; assume both sentences are sorted. 

(define (merge s1 s2)
    (cond ((empty? s1) s2)
          ((empty? s2) s1)
          ((< (first s1) (first s2)) (se (first s1) (merge (bf s1) s2)))
          ((< (first s2) (first s1)) (se (first s2) (merge s1 (bf s2))))
          (else (se (first s1) (first s2) (merge (bf s1) (bf s2))))))
