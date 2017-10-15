; Exercise 8.8 
; Write a procedure which exaggerates sentences: 

; keep, every and accumulate 

(define (transform word) 
    (cond ((number? word)(* 2 word))
          ((equal? word 'good) 'great)
          ((equal? word 'bad) 'terrible)
          ((equal? word 'hot) 'spicy)
          (else word))) 

(define (exaggerate phrase)
    (every transform phrase))
