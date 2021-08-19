(load "utils.ss")

(define (compare l r)
  (if (> l r)
      l
      r))

(define (sum a b c)
  (compare
    (compare (- (+ a b c) a) (- (+ a b c) b))
    (- (+ a b c) c)
  )
)

(show (sum 1 2 3) 5)

(show (sum 3 2 5) 8)

(show (sum 1 2 1) 3)

(show (sum 0 0 1) 1)

(show (sum 3 3 3) 6)
