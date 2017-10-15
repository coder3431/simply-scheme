; Exercise 9-9 
; common-words 
; sentence1 and sentence2 
; returns a sentence; containong those the appear in both in the first sentence;  in the ssentencei

; cat dog monkey gorilla 
; donkey zebra cat dog 
;
; Look at the first element 

(define (common-words s1 s2)
    (keep (lambda(w2)
        (member? w2 s1)) s2))
