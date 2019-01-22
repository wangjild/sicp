;(SETF CUSTOM:*TRACE-INDENT* " ")

(defun smallest-divisor (n)
  (find-divisor n 2))

(defun divides? (a n)
  (= (rem n a) 0)
)

(defun square (n) (* n n))

(defun next (n)
  (if (= n 2) 3
    (+ n 2)))

(defun find-divisor (n test-divisor)
  (cond ((> (sqrt test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        ((find-divisor n (next test-divisor)))))
        ;((find-divisor n (+ 1 test-divisor)))))

(defun expmod (base exp m)
  (cond ((= exp 0) 1)
        ((evenp exp)
         (rem (square (expmod base (/ exp 2) m)) m))
        ((rem (* base (expmod base (- exp 1) m)) m))))

(defun fermat-test (n)
  (defun try-it (a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(defun fast-prime (n times)
  (cond ((= times 0) t)
        ((fermat-test n) (fast-prime n (- times 1)))
        (nil)))

(defun next-odd (n)
    (if (= (rem n 2) 1)
        (+ 2 n)
        (+ 1 n)))

(defun continue_primes (n count)
  (cond ((= count 0) (format t "are primes."))
        ((fast-prime n 3)
          (format t "~A~%" n)
          (continue_primes (next-odd n) (- count 1)))
        ((continue_primes (next-odd n) count))))


;(format t "~A~%" (time (find-min-prime 1000))''ss)
;(format t "~A~%" (time (find-min-prime 10000))''ss)
;(trace find-divisor)
;(trace continue_primes)
(time (continue_primes 10000 5000))
