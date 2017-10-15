; Exercise 8-13 
;

(define (translate letter) 
    (let ((letter-mapping '((2 abc) (3 def) (4 ghi)
                      (5 jkl) (6 mno) (7 prqs)
                      (8 tuv) (9 wxyv))))
    (first (first (keep (lambda(entry)(member? letter (last entry))) letter-mapping)))))


(define (phone-unspell word2)
 (accumulate word  (every translate word2)))

