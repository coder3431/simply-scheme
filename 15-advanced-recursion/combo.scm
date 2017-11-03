(define (combinations a b)
;    combinations '1 2 3
;                 '4 5 6
  
;        14 15 16 
;        24 25 26
;        34 35 36

    (if (empty? a)
       '() 
         (se (combinations (bf a) b)
             (combine (first a) b)))) 

(define (combine element sent)
    (if (empty? sent)
        '()
         (se (word element (first sent)) (combine element (bf sent)))))

(define (combine wo sent)
    (if (empty? sent) 
       '() 
        (se (word wo (first sent)) (combine wo (bf sent)))))


