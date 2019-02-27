(defun make-rat (n d)
  (if (< d 0) (cons (- n) (- d))
    (cons n d))
)

(print (make-rat -1 3))
(print (make-rat -1 -3))
(print (make-rat 1 -3))
