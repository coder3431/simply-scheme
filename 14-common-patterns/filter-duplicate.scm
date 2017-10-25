(define (filter-dupe? word sent)
    (cond ((empty? sent) '())
          ((not (equal? word (first sent))) 
                    (se (first sent) (filter-dupe? word (bf sent))))
          ((not (member? word (bf sent))) (se (first sent) (filter-dupe? word (bf sent))))
            
          (else (filter-dupe? word (bf sent)))))  
          ; case - means it is equal?

(define (remdup sent)
    (if (empty? sent) 
        '()
        (se (filter-dupe? (first sent) sent) (remdup (bf sent)))))
