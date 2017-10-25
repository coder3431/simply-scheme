(define (describe-time s)
    ; 60 seconds = 1 minute
    ; 3600 seconds = 1 hour
    ; 86,400 seconds = 1 day 
    ; 604,800 secods = 1 week  
    ; 220,752,000 = 1 year 

    (define min 60)
    (define hour (* min 60))
    (define day (* hour 24))
    (define week (* day 7))
    (define year (* week 52))
    (define century (* year 100))

    (define (convert sec unit)
        (quotient sec unit))   

    (define (leftover sec unit)
        (remainder sec unit))

    ; too lazy to add a pluralize function, could write a parser after the fact or insert a new function below...
    (cond 
        ((= s 0) '())
        ((< s min) (se s 'seconds))
        ((< s hour) (se (convert s min) 'minutes (describe-time (leftover s min ))))
        ((< s day) (se (convert s hour) 'hours (describe-time (leftover s hour))))
        ((< s week) (se (convert s day) 'days (describe-time (leftover s day))))
        ((< s year) (se (convert s week) 'weeks (describe-time (leftover s week))))
        ((< s century) (se (convert s year) 'years (describe-time (leftover s year))))
        (else (se (convert s century) 'centuries (describe-time (leftover s century))))))
