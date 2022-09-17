(use compat.sicp)

(define (square-list-iter items) 
  (if (null? items) nil (cons (expt (car items) 2) (square-list-iter (cdr items)))))

(define (square-list-map items)
  (map (lambda (x) (expt x 2)) items))

#?=(square-list-iter (list 1 2 3 4))
#?=(square-list-map (list 1 2 3 4))
