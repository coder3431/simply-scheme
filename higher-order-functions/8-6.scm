; Exercise 8.6
; Write a procedure words that takes a word as its argument and ; returns a sentence of the letters in the word.

(define (words w)
  (define dict (list '(a apple)
                     '(b bravo)
                     '(c charlie)
                     '(d delta)
                     '(e edward)
                     '(f frank)
                     '(g george)))

  ; Use every to return a new list. Break up the word into letters and
  ; convert it.
  (define (process w)
      (every convert w))

  ; Test a letter against the first entry in the dictionary with
  ; keep. If it's successful a list is returned back. Get the cadr of it.
  (define (convert letter)
     (last (first (keep (lambda(entry)(member? letter (first entry))) dict))))

  ; Add up all of the words into a sentence.
  (accumulate se (process w)))
