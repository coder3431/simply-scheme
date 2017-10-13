; repeated take a function and executes itself n times.
;
; arguments: f -> any function
;            n -> number of times
;
; output:    returns a function that takes any argument
; (f (f (f x)))

(define (repeated f n)
    (lambda(x)
        (define (loop n)
              (if (=  n 1)
                (f x)
                (f (loop (- n 1)))))

        (if (= n 0)
           x
          (loop n))))
