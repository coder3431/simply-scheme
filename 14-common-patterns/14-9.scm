; Exercise 14-9 
; location 
; a word and a sentence 

(define (location wo sent)
    (define (location-helper wo sent n)
         (cond ((empty? sent) False)
               ((eq? wo (first sent)) n)
               (else (location-helper wo (bf sent) (+ n 1)))))
    (location-helper wo sent 1))

