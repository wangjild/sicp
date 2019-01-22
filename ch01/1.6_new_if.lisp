(defun average (x y)
  (/ (+ x y) 2))

(defun improve (guess x)
  (average guess (/ x guess)))

(defun good-enough? (guess x)
  (< (abs (- (* guess guess) x)) 0.0001))

(defun new-if (predicate then-clause else-clause)
  (cond (predicate then-clause)
    (else-clause)))

(defun sqrt-iter (guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter  (improve guess x) x)))

(defun sqrt-new (x)
  (sqrt-iter 1.0 x))
