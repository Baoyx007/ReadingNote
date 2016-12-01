(define (f n)
  (define (iter a b c count)
    (if (= count 0) 
        a
        (iter b c (+ a (* 2 b) (* c 3)) (- count 1)) ))
  (iter 0 1 2 n)
)

(define (pascal row col)
  (cond ((> col row) 0)
        ((< col 1) 0)
        ((= col 1) 1)
        (+ (pascal (- row 1) (- col 1))
            (pascal (- row 1) col)
        )
  )
)