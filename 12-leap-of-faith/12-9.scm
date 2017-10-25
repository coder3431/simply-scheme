; Exercise 12-9 
; real-words
; args: sentence 


(define (real-word? wd) 
    (not (member? wd '(a the an in of and for to with))))

(define (real-words sent) 
    (cond ((empty? sent) '())
          ((real-word? (first sent)) (se (first sent) (real-words (bf sent))))
          (else (se (real-words (bf sent))))))

