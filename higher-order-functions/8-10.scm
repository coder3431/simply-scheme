; Exericse 8-10 
; Write a predicate true-for-all? thats 2 arguments, a predicate procedure and a; sentnece, it return #t if the predicate arguments true for every word...

(define (true-for-all? test? sent)

  ; Did our predicate fail? If our predicate expression was true and
  ; returned the value true, that means it did not fail. So we have to use NOT.   ; (even? 2) It is even. So it is true. It did not fail. So we return False. 
    (define (failed? x)
        (not (test? x)))    

    ; Keep track of all the failed values. If the list is empty, nothing has
    ; failed.
    (empty? (keep failed? sent))
