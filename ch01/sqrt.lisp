(defun sqrt-iter (guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter  (improve guess x) x)))

(defun average (x y)
  (/ (+ x y) 2))

(defun improve (guess x)
  (average guess (/ x guess)))

(defun good-enough? (guess x)
  (< (abs (- (* guess guess) x)) 0.0001))

(defun sqrt-new (x)
  (sqrt-iter 1.0 x))
