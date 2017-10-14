; Exercise 8-11

(define (gpa sent)

    (define (grade-modifier g)
      (cond ((eq? (bf g) '+) .33)
            ((eq? (bf g) '-) (- .33)) 
             (else 0)))
 
    (define (map-grade g) 
        (cond ((eq? (first g) 'A) 4)
              ((eq? (first g) 'B) 3)
              ((eq? (first g) 'C) 2) 
              ((eq? (first g) 'D) 1)
              ((eq? (first g) 'F) 0))) 

    (define (grade g)
        (+ (grade-modifier g) (map-grade g)))

    (let ((total (accumulate + (every grade sent))))
        (/ total (count sent))))


