; Exercise 9-15
; Many functions are applicable only to arguments in a certain domain and result; in error messages if given arguments outside that domain.  For example sqrt 
; may require a nonnegative argument in a version of scheme that doesn't include; complex numbers. SQRT must be a number. Once a program gets error, it fails. 

; Write a procedure..
; type-check
; 1 argument procedure F  and a 1-argument predicate pred. 
; Should a return a one argument procedure that first applies pred to its arg.
; If true, the proc should return value computed by applying f to the arg. if
; false, return #f 

(define (type-check f pred?) 
    (lambda(arg)
        (if (pred? arg) 
            (f arg)
            #f)))

