; Exercise 14-13
; pigl

; (pigl 'spahgetti) --> 
; frzzmlpt 
; since the vowel? is never, it will an infintie loop. 
; we need a way to check if gone past the entire length of the word
; or check to see if there are any vowels? if it doesn't contain any vowels


(define (vowel? wo)
    (member? wo 'aeiou))

(define (contain-vowels? sent)
  (cond ((empty? sent) False) 
        ((member? (first sent) 'aeiou) True) 
        (else (contain-vowels? (bf sent)))))

(define (pigl wo)
    
    (define (pigl-helper wo letter-count)
       (cond 
         ((= letter-count 0) (word wo 'ay))
         ((vowel? (first wo)) (word wo 'ay))
          (else  (pigl-helper (word (bf wo) (first wo)) (- letter-count 1)))))

    (pigl-helper wo (count wo)))
