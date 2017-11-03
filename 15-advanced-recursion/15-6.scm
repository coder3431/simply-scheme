; Exercise 15-6
; unscramble
; Taken from buntines solution. Much more elegant than mine.  

(define (last-n wd n)
  ((repeated bf (- (count wd) n)) wd))

; Extracts the characters from the sentence.
(define (characters sent)
  (if (<= (count sent) 1)
    '()
    (se
      (if (equal? (first sent) 'the)
        (first (bf sent))
        '())
      (characters (bf sent)))))

; Extracts the nouns from the sentence.
(define (nouns sent)
  (last-n sent (- (count (characters sent)) 1)))

; Reassembles the characters and nouns into a new sentence.
(define (assemble characters nouns)
  (if (empty? nouns)
    (se 'the (first characters))
    (se 'the (first characters) 'that (first nouns)
        (assemble (bf characters) (bf nouns)))))

(define (unscramble sent)
  (se 'this 'is
      (assemble (reverse (characters sent)) (nouns sent))))
