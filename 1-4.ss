(load "utils.ss")

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

#| 根据b是否大于0，决定是a+b还是a-b |#
#| (> b 0) + -) 会优先解释自身 |#

(show (a-plus-abs-b 1 5) 6)
