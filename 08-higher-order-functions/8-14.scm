; Exercise 8-14 
; Write a procedure subword that takes 3 arguments: a word, a start 
; and end position. 

; Hint: use the higher order function repeated. 


(define (subword w start end)
   ( (repeated bf start)   ((repeated bl (- (count w) end)) w)) 
)
