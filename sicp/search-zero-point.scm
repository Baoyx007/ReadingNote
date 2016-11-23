(define (search-zero f neg pos)
  (let ((mid (average neg pos)))
        (if (close-enough? neg pos) 
            mid
            (let ((mid-val (f mid)))
                (cond ((positive? mid-val) (search-zero f neg mid))
                      ((negative? mid-val) (search-zero f mid pos))
                      (else mid))))))

(define (average a b)
  (/ (+ a b) 2))

(define (close-enough? y x)
  (< (abs (- y x )) 0.001)
)

(define (positive? val)
  (> val 0))

(define (negative? val)
  (< val 0))