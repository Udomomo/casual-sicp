(use compat.sicp)

(define (last-pair items)
  (list-ref items (- (length items) 1)))

(define (list-ref items n) (if (= n 0)
  (car items)
  (list-ref (cdr items) (- n 1))))

#?=(last-pair (list 23 72 149 34))
