; Write prepend-every  

; (prepend-every 's '(he aid he aid)) 
; she said she he aid 

(define (prepend-every prefix phrase)
    (every (lambda(term) (word prefix term)) phrase))

