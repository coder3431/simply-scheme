; Exercise 14-5 
; letter-count
; Arg - sentence
; Returns - total number of letters in sentence 

; count each word in a sentence 
; accumulate 

(define (letter-count sent)
    (if (empty? sent) 
        0 
        (+ (count (first sent)) (letter-count (bf sent)))))
