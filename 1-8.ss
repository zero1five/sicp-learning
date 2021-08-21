(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cube-iter (improve guess x) x)))

(define (square x) (* x x))

(define (improve guess x)
  (/
    (+ (/ x (square guess)) (* 2 guess))
    3))

(define (good-enough? guess new-guess)
  (< (abs (/ (- guess new-guess) guess))
     0.001))

(define (cube x)
  (cube-iter 1.0 x))

(display (cube 100))
(display "\n")
(display (cube 128))

