(use compat.sicp)

(define (iterative-fn n)
  (define (iter new old old2 count)
        (if (> count n) new
            (iter (+ new (* 2 old) (* 3 old2)) new old (+ 1 count))))
  (if (< n 3) n (iter 2 1 0 3)))

#?=(iterative-fn 2)
#?=(iterative-fn 3)
#?=(iterative-fn 10)
