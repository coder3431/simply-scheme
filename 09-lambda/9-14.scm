; Exercise 9-14
; substitute
; 3 arguments - word word sentence 
; i returns a version of the with every instance of 2nd word replaced with first


(define (substitute w1 w2 s)
    (every (lambda(word)
                (if (equal? word w2) 
                    w1
                    word)) s))

