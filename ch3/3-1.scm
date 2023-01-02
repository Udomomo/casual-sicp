(use compat.sicp)

(define (make-accumulator init)
  (let ((sum init))
    (lambda (input) 
      (set! sum (+ sum input))
      sum)))

(define A1 (make-accumulator 50))
#?=(A1 40)

(define A2 (make-accumulator 10))
#?=(A2 40)
