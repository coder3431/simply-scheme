; Exercise 8.5
; transform-beatles
; Write a procedure transform-beatles that takes a procedure as an argument
; applies it to each of the Beatles and returns the results in a sentence

(define (amazify name)
  (word 'the-amazing- name))

(define (transform-beatles f)
  (define beatles '(John Paul George Ringo))

  (accumulate se (every f beatles))
)
