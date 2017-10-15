; Exercise 8.6
; Write a procedure words that takes a word as its argument and ; returns a sentence of the letters in the word.

(define (words word)
  (define dict (list '(a apple)
                     '(b bravo)
                     '(c charlie)
                     '(d delta)
                     '(e edward)
                     '(f frank)
                     '(g george)))

  ; Use every to return a new list. Break up the word into letters and
  ; convert it.
  (define (process word)
      (every convert word))

  ; Test a letter against the first entry in the dictionary with
  ; keep. If it's successful a list is returned back. Get the cadr of it.
  (define (convert letter)
    (let ((entry (keep (lambda(entry)(member? letter (first entry))) dict)))
      (last (first entry))))

  ; Add up all of the words into a sentence.
  (accumulate se (process word)))
