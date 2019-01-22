;(SETF CUSTOM:*TRACE-INDENT* " ")

(defun smallest-divisor (n)
  (find-divisor n 2))

(defun divides? (a n)
  (= (rem n a) 0)
)

(defun next (n)
  (if (= n 2) 3
    (+ n 2)))

(defun find-divisor (n test-divisor)
  (cond ((> (sqrt test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        ((find-divisor n (next test-divisor)))))
        ;((find-divisor n (+ 1 test-divisor)))))


(defun prime? (n)
  (= n (smallest-divisor n)))

(defun next-odd (n)
    (if (= (rem n 2) 1)
        (+ 2 n)
        (+ 1 n)))

(defun continue_primes (n count)
  (cond ((= count 0) (format t "are primes."))
        ((prime? n)
          (format t "~A~%" n)
          (continue_primes (next-odd n) (- count 1)))
        ((continue_primes (next-odd n) count))))


;(format t "~A~%" (time (find-min-prime 1000))''ss)
;(format t "~A~%" (time (find-min-prime 10000))''ss)
;(trace find-divisor)
;(trace continue_primes)
(time (continue_primes 10000 3000))
