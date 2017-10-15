; Exercise 8.12
; When you teach a class, people will get distracted if you say "um", write a co; write a count-um that counts the number of time "um" appears in a sentence.

(define (count-ums phrase)

    (define (count-of word phrase)
          (count (keep (lambda(w)(equal? word w)) phrase)))

    (count-of 'um phrase))
    


