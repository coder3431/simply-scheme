(define (exaggerate sent)
   (cond ((empty? sent) '())
         ((number? (first sent)) (se (* 2 (first sent)) (exaggerate (bf sent))))
         ((equal? (first sent) 'good ) (se 'great (exaggerate (bf sent ))))
         (else (se (first sent) (exaggerate (bf sent))))))
           
