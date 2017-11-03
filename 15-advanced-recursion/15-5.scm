; Exercise 15-5 
; phone-spell
; argument - a number 

(define (letters n)
    (cond ((equal? n 2) (se 'a 'b 'c))
          ((equal? n 3) (se 'd 'e 'f))
          ((equal? n 4) (se 'g 'h 'i))
          ((equal? n 5) (se 'j 'k 'l))
          ((equal? n 6) (se 'm 'n 'o))
          ((equal? n 7) (se 'p 'q 'r 's))
          ((equal? n 8) (se 't 'u 'v))
          ((equal? n 9) (se 'w 'x 'y 'z))))


(define (prepend-every l sent)
    (if (empty? sent)
        '()
        (se (word l (first sent)) (prepend-every l (bf sent)))))

(define (prepend-each a b)
    (if (empty? a) 
        '()
        (se (prepend-every (first a) b) 
            (prepend-each (bf a) b))))

;  let a = (1 2)
;  let b = (3 4) 
;  for every single element of b, append a to it.

(define (prepend-each2 a b)
  (if (empty? a)
        '()      
      (se (every (lambda(b)(word (first a) b)) b)
          (prepend-each2 (bf a) b)
          
          )))


(define (phone-spell n)
    (if (empty? n) 
        (se "")
        (prepend-each (letters (first n))
                      (phone-spell (bf n)))))

