(use compat.sicp)

(define (reverse items) 
  (if (null? (cdr items)) 
    items 
      (append (reverse (cdr items)) 
        (cons (car items) nil))))


#?=(reverse (list 1 4 9 16 25))