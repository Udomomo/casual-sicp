(use compat.sicp)

(define (square-list-iter items) 
  (if (null? items) nil (cons (square (car items)) (square-list-iter (cdr items)))))

(define (square-list-map items)
  (map (lambda (x) (square x)) items))

#?=(square-list-iter (list 1 2 3 4))
#?=(square-list-map (list 1 2 3 4))
