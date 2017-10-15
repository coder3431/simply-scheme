; Exercise 9-17
;  (keep pred? sent

(define (keep pred? sent)
    ; in terms of  EVERY and ACCUMULATE 
    ;
    (accumulate se  (every (lambda(x)
              (if (pred? x)
                   x
                   '())) sent)))
