(define tolerance 0.00001)
(define (fix-point f first-guess)
  (define (close-enough? y x)
    (< (abs (- y x )) 0.001))
  (define (try guess)
    (println guess)
    (let ((next (f guess)))
      (if (close-enough? next guess)
        next
        (try next))))
  (try first-guess))


(define (println value) 
    (display value) 
    (newline)) 

; practise 1.36
;(fix-point (lambda (x) (/ (log 1000) (log x))) 10)
;(fix-point (lambda (x) (average x (/ (log 1000) (log x))))
;         10)

; 1.37
; worng
(define (cont-frac n d k)
  (if (= 0 k) 
      (/ n d)
      (/ n (+ d (cont-frac n d (- k 1))))))
(define (cont-frac n d k)
  (define (cont-iter i res)
    (if (= i k) 
        (+ res (/ n d)
        ())))
  (cont-iter 1 0.0))


; (cont-frac 1.0 1.0 30)