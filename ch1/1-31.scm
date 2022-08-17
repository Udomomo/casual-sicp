(use compat.sicp)

(define (inc a) (+ a 1))

(define (product term a next b)
	(if (> a b)
		1
		(* (term a)
			(product term (next a) next b))))

(define (factorial n)
  (define (factorial-term a) a)
  
  (product factorial-term 1 inc n))

#?=(factorial 4)

(define (pi-product n)
  (define (term n)
    (* (/ (* 2 n)
          (- (* 2 n) 1))
       (/ (* 2 n)
          (+ (* 2 n) 1))))
  (* 2 (product term 1.0 inc n)))

#?=(pi-product 1000000)

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* a result))))
  (iter a 1))
