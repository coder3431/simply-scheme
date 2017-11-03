; Exercise 15-6
; unscramble
; Comments - this program is an unholy mess!  Need to refactor it.


; ********** Helper Functions **********

; Remove the first instance of a word.
(define (remove-once wo sent)
    (cond ((empty? sent) sent)
          ((equal? wo (first sent)) (se (bf sent)))
          (else (se (first sent) (remove-once wo (bf sent))))))


; Remove the last instance of a word.
(define (remove-once-back wo sent)
  (reverse (remove-once wo (reverse sent))))


; Get the position of the last occurence of a word.
(define (position wd sent)
  (define (helper wd sent count)
    (cond
        ((empty? sent) 0)
        ((equal? (last sent) wd) count)
        (else (helper wd (bl sent) (- count 1)))))

    (helper wd sent (count sent)))


; Get the sentence immediately following after the LAST occurence of a word.
(define (everything-after wd sent)
   (define pt (position wd sent))

   (define (helper wd sent count)
     (if (= count pt)
        sent
        (helper wd (bf sent) (+ count 1))))

  (helper wd sent 0))


(define (last-noun sent)
  (first (everything-after 'the sent)))


(define (first-verb sent)
    (first (everything-after (last-noun sent) sent)))


; The idea is scrambled checks for the beginning expression.
; 'the noun the noun'
(define (unscramble sent)
  (cond ((empty? sent) '())
        ((scrambled? sent) (unscramble (make-new sent)))
        (else (se (first sent) (unscramble (bf sent))))))

; Check the structure of sent by:  'the noun the noun (rest of expression)'
; Ex. - the dog the cat chased bit
(define (scrambled? sent)
  (and (>= (count sent) 4) (equal? (first sent) (first (bf (bf sent)))))
)

; Make a new sentence to feed back to unscramble.
; 1. Extract the last noun.
; 2. Extract the last verb.
; 3. Add the first noun.
; 4. Attach the rest of the sentence by removing last noun and first verb.
(define (make-new sent)
  (if (> (count sent) 4)
    (se 'the
        (last-noun sent)
        'that
        (first-verb sent)
        'the
        (first (bf sent))
        (bf (bf (remove-once-back 'the (remove-once (last-noun sent)
            (remove-once (first-verb sent) sent))))))
    sent))
