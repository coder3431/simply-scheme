; Bridge  Project 

; get the card value for a single card
(define (card-val card)
    ; a - 4  k - 3 q 2 j 1 
    (let ((rank (bf card)))
        (cond ((eq? rank 'a) 4)
              ((eq? rank 'k) 3)
              ((eq? rank 'q) 2)
              ((eq? rank 'j) 1)
              (else 0))))

; total card values for a hand
(define (high-card-points hand)
    (accumulate + (every card-val hand)))

; count-suit, takes a suit and hand as arguments and returns number of cards
(define (count-suit suit hand)
    (count (keep (lambda(card)
                    (member? suit (first card))) hand)))

; suit-counts
; argument - hand 
; return: a sentence withnumber of spaces, hearts club and diamonds 
(define (suit-counts hand)
    (every (lambda(suit)
              (count-suit suit hand)) '(s h c d)))

; suit-dist-points
; number as argument 
(define (suit-dist-points n)
    (cond ((= n 0) 3)
          ((= n 1) 2)
          ((= n 2) 1)
          (else 0)))

; hand-dist-points
(define (hand-dist-points hand)
  (accumulate + (every suit-dist-points  (suit-counts hand))))

; bridge-val
(define (bridge-val hand)
    (+ (hand-dist-points hand) (high-card-points hand)))
