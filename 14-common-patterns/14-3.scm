; Exercise 14.3 
; remdup 
; remove duplicates 
; (remdup '(ab bc bc de de)) -> (ab bc de) 

; NEED A NEW WAY TO THINK ABOUT THIS..
; should i sort it?  how do i traverse it a duplicate... 
; wow... i took way too long to do this problem. lol. was trying to figure
; out how to make a recusive call iterate through every possible combination.
; missed the obvious solution.

(define (remdup sent)
    (cond ((empty? sent) '())

          ; Check to see if there any more occurrences of the word. 
          ; If there are no more, go ahead and take it. 
          ((not (member? (first sent) (bf sent)))
            (se (first sent) (remdup (bf sent))))

          ; There's a couple more occurenes, so we can skip the first word.
          (else (se (remdup (bf sent))))))
