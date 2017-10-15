; Write a procedure choose-beatles that takes predicate function as it's argument
; and returns a sentence of just those beatles (John, Paul, George, and Ring) that
; statsify the predicate.

; formal parameter - predicate expression
; use higher order procedures -  keep, every or accumulate

(define (vowel? char) (member? char 'aeiou))

(define (ends-vowel? wd) (vowel? (last wd)))

(define (even-count? wd) (even? (count wd)))

(define (choose-beatles beatle-test?)

  (define beatles '(John Paul George Ringo))
  (keep beatle-test? beatles)
)
