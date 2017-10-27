; Exercise 14-16
; syllables 
; argument - word 
; return number of syllables in the word 
; Rule - number of vowels,  a group of consecutive vowels counts as one 

(define (vowel? l)
    (member? l 'aeiou))

(define (syllables wd)
    (cond ((empty? wd) 0)
          ((and (= (count wd) 1) (vowel? (first wd))) 1)
          ((not (vowel? (first wd)))(+ (syllables (bf wd))))
          ((and (vowel? (first wd)) (vowel? (first (bf wd)))) (+ 1 (syllables (bf (bf wd)))))
          (else (+ 1 (syllables (bf wd))))))


 
