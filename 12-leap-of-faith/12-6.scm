(define (base-grade grade) 
  ; A, A+ 
  (let ((grade (first grade)))
    (cond ((equal? grade 'A) 4)
          ((equal? grade 'B) 3)
          ((equal? grade 'C) 2)
          ((equal? grade 'D) 1)
          (else 0))))

(define (grade-modifier grade)
  (let ((mod (bf grade)))
    (cond ((equal? mod '+) .33)
          ((equal? mod '-) (- .33))
          (else 0))))

(define (gpa grades)
    (define n (count grades))

    (define (total grades)
        (if (empty? grades)
            0
            (+ (base-grade (first grades))
               (grade-modifier (first grades))
               (total (bf grades)))))

    (/ (total grades) n))

