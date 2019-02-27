(defun compose (f g)
  (lambda (x) (funcall f (funcall g x))))

(defun square (x) (* x x))
(defun inc (x) (+ x 1))

(format t "~A~%" (funcall (compose #'square #'inc) 6)''ss)
