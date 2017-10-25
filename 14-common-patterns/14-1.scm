; Exercise 14.1
; remove-once
; only remove word once time.

; this is a combination of keep and accumulate


(define (remove-once wo sent)
    (define (remove-once-helper wo sent found)
        (cond ((empty? sent) '())
              ((and (equal? wo (first sent)) (not found))
                 (se (first sent) (remove-once-helper wo (bf sent) True)))
              ((and (equal? wo (first sent)) found) 
                (se (remove-once-helper wo (bf sent) True)))
               (else (se (first sent) (remove-once-helper wo (bf sent) found))
    )))

    (remove-once-helper wo sent False)

) 
