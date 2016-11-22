(define (sqrt-iter guess x)
  (if (good-enough2? guess x)
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

(define (good-enough2? guess x)
  (< (abs (- (imporve guess x) guess))
    (* guess 0.001))
)

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (good-enough2? guess x)
      guess
      (cube-root-iter  (imporve-cube guess x) x )
    ))

(define (imporve-cube guess x)
        (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
  )

(define (cube-root x)
  (cube-root-iter 1.0 x))