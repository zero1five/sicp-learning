(load "utils.ss")

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

#| improve ----------------- |#
(define (good-enough? guess impr)
  (< (abs (/ (- guess impr) guess))
      0.001))

(display (sqrt 9))
