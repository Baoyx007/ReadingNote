(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (imporve guess x) x )
    ))

(define (imporve guess x)
  (average guess (/ x guess)))

(define (average a b)
  (/ (+ a b) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x )) 0.001)
)

(define (sqrt x)
  (sqrt-iter 1.0 x))