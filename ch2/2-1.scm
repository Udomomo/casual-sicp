(use compat.sicp)

(define (make-rat n d)
  (define sign 
    (if (< (/ n d) 0) - +))
  (define absn (abs n))
  (define absd (abs d))
  (let ((g (gcd absn absd)))
    (cons (sign (/ absn g)) (/ absd g))))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (gcd a b)
  (if (= b 0) a (gcd b (remainder a b))))

(define (abs x)
  (cond ((< x 0) (- x)) (else x)))  

(print-rat (make-rat 8 12))
(print-rat (make-rat -8 12))
(print-rat (make-rat 8 -12))
(print-rat (make-rat -8 -12))
