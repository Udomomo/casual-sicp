(use compat.sicp)

(define (recursive-fn n) 
  (if (< n 3) n 
    (+ (recursive-fn (- n 1)) (* (recursive-fn (- n 2)) 2) (* (recursive-fn (- n 3)) 3))))

#?=(recursive-fn 2)
#?=(recursive-fn 3)
#?=(recursive-fn 10)
