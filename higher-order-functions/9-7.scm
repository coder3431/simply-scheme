; Exercise 9-7

; Write a procedure called letterwords that takes as its argument a letter and a sentence.  It returns a sentence contain only those words from the argument sentence that contain the arugment letter. 

(define (letterwords letter phrase)
    (keep (lambda(term)(member? letter term)) phrase))
