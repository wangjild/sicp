(defun accumulate (combiner null-value term a next b)
  (if (> a b) null-value
   (funcall combiner (funcall term a) (accumulate combiner null-value term (funcall next a) next b))
  ))

(defun sum (a b)
  (defun combiner (a b) (+ a b))
  (defun term (a) a)
  (defun next (a) (+ a 1))
  (accumulate #'combiner 0 #'term a #'next b))

(format t "~A~%" (sum 1 2)''ss)
(format t "~A~%" (sum 1 10)''ss)
(format t "~A~%" (sum 1 100)''ss)

(defun accumulate-iter (combiner null-value term a next b)
  (if (> a b) null-value
   (accumulate-iter combiner (funcall combiner (funcall term a) null-value) term (funcall next a) next b)
  ))


  (defun sum-iter (a b)
    (defun combiner (a b) (+ a b))
    (defun term (a) a)
    (defun next (a) (+ a 1))
    (accumulate-iter #'combiner 0 #'term a #'next b))

(format t "~A~%" (sum-iter 1 2)''ss)
(format t "~A~%" (sum-iter 1 10)''ss)
(format t "~A~%" (sum-iter 1 100)''ss)
