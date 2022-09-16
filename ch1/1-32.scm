(use compat.sicp)

(define (inc a) (+ a 1))

(define (accumurate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a) (accumurate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumurate + 0 term a next b))

(define (sum-integers n)
  (define (sum-term a) a)
  (sum sum-term 0 inc n))

#?=(sum-integers 4)

(define (product term a next b)
  (accumurate * 1 term a inc b))

(define (factorial n)
  (define (factorial-term a) a)  
  (product factorial-term 1 inc n))

#?=(factorial 4)

(define (accumurate-iter combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a) (accumurate combiner null-value term (next a) next b))))
