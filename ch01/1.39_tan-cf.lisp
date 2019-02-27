(defun cont-frac-iter (n d k)
 (defun iter (i result)
  (if (= i 0)
   result
   (iter (- i 1)
    (/ (funcall n i)
     (+ (funcall d i) result)))))
 (iter (- k 1) (/ (funcall n k) (funcall d k))))
