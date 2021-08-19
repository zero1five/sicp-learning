(load "utils.ss")

(show (+ 5 3 4) 12)
(show (- 9 1) 8)
(show (+ (* 2 4) (- 4 6)) 6)
(define a 3)
(define b (+ a 1))
(show (+ a b (* a b)) 19)

(= a b) #| #f |#

(show(if (and (> b a) (< b (* a b)))
    b
    a) b)

(show (cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) 16)

(show(+ 2 (if (> b a) b a)) 6)

(show
    (* (cond ((> a b) a)
         ((< a b) b)
         (else 1))
    (+ a 1))
    16)

