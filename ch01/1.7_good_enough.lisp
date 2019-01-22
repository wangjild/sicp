(defun sqrt-iter (guess x)
  (if (good-enough? guess (improve guess x))
    (improve guess x)
    (sqrt-iter  (improve guess x) x)))

(defun average (x y)
  (/ (+ x y) 2))

(defun improve (guess x)
  (average guess (/ x guess)))

(defun good-enough? (old new)
  (> 0.01
    (/ (abs (- old new))
        old)))

(defun sqrt-new (x)
  (sqrt-iter 1.0 x))

(format t "~A~%" (sqrt-new 0.00000001)''ss)

(format t "~A~%" (sqrt-new 1000000000)''ss)
