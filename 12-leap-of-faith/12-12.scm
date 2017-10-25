; Exercise 12-2


(define (roman-value letter)
    (cond ((equal? letter 'i) 1)
          ((equal? letter 'v) 5)
          ((equal? letter 'x) 10)
          ((equal? letter 'l) 50)
          ((equal? letter 'c) 100)
          ((equal? letter 'd) 500)
          ((equal? letter 'm) 1000)
          (else 'huh)))

; if list empty return 0 
; if there's only 1 item left, just return that item 
; if the 2nd value is greater than the first value, make the first value negative
; else add up all the roman values.

(define (arabic wo)
    (cond ((empty? wo) 0)
          ((empty? (bf wo)) (roman-value (first wo)))
          ((> (roman-value (first (bf wo))) (roman-value (first wo))) 
            (+ (- (roman-value (first wo))) (arabic (bf wo))))
          (else (+ (roman-value (first wo)) (arabic (bf wo))))))
