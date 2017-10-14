; Exercise 9.8
; Hangman tester

; helper defined already
(define (hang-letter letter guesses)
    (if (member? letter guesses) 
        letter 
        '_))

(define (hang phrase guesses)
  (accumulate  word  (every (lambda(l)
        (hang-letter l guesses))
        phrase)))

