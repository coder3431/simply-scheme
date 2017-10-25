; Exercise 12-10
; remove
; arg - word and sentence 
; returns a sentence with that word removed


(define (delete wo sent)
    (cond ((empty? sent) '())
          ((equal? wo (first sent)) (se (delete wo (bf sent))))
         (else (se (first sent) (delete wo (bf sent))))))
