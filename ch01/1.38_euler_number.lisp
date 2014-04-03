;;  Copyright (C) 2014  Wang Jing

;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  any later version.

;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;;  GNU General Public License for more details.

;;  You should have received a copy of the GNU General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;  Author:        wangjild <wangjild@gmail.com>
;;  Blog:          http://www.liloke.com/
;;  Github:        https://github.com/wangjild/sicp
;;  File:          1.37_infinite_continued_fraction.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 17:37:34
;;  Descripton:    

(defun cont-frac (n d k)
  (defun con-frac-impl(n d i k)
    (if (> i k)
      0
      (/ (funcall n i) (+ (funcall d i) (con-frac-impl n d (+ i 1) k)))))
  (con-frac-impl n d 1 k))


(defun cont-frac-iter (n d k)
  (defun iter (i result)
    (if (= i 0)
      result
      (iter (- i 1)
            (/ (funcall n i)
               (+ (funcall d i) result)))))
  (iter (- k 1) (/ (funcall n k) (funcall d k))))



(defun euler (k) 
  (+ 2 
   (cont-frac-iter 
    (lambda (x) 1.0) 
    (lambda (x)
      (let ((n (+ x 1)))
        (if (= (mod n 3) 0)
          (expt 2 (/ n 3))
          1
          ))) 
    k)))

(format t "~,10F~%" (euler 100))

