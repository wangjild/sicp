(SETF CUSTOM:*TRACE-INDENT* " ")

(defun smallest-divisor (n)
  (find-divisor n 2))

(defun divides? (a n)
  (= (rem n a) 0)
)

(defun find-divisor (n test-divisor)
  (cond ((> (sqrt test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        ((find-divisor n (+ test-divisor 1)))))

(defun prime? (n)
  (= n (smallest-divisor n)))

(trace find-divisor)

(format t "~A~%" (prime? 19)''ss)
(format t "~A~%" (prime? 15)''ss)
