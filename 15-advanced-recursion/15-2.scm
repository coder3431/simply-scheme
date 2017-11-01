; Exercise 15-2
; Palindrome? 
; takes a sentence
; return t or false

(define (palindrome? sent)
  (let ((wo (accumulate word sent)))
      (cond ((empty? wo) True)
            ((eq? (count sent) 1) True)
            ((not (equal? (first wo) (last wo))) False)   
            (else (palindrome? (bf (bl wo)))))))
