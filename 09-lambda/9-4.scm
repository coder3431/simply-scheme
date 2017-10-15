; 9.4 
; The following does not work. Why? 

(define (who sent)
    (every describe '(pete roger john keith)))

(define (describe person)
    (se person sent)) ; unbound variable sent!


; correct below
; args - sent is a list of a phrase. 'sell out
(define (who sent) 
    (every (lambda(person)
               (se person sent))
            '(pete roger john keith)))
