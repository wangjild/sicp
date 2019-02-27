(defun f (g)
  (funcall g 2))

(format t "~A~%" (f (lambda (z) (* z ( + z 1))))''ss)
(format t "~A~%" (f f)''ss)
