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
;;  File:          expl_definite_pii.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 11:27:45
;;  Descripton:    


(defun product (term a next b)
 (if 
  (> a b) 1
  (* (funcall term a) (product term (funcall next a) next b))
  ))

(defun pii (n)
 (defun term (x) 
  (defun fn (i) (/ (* 2 i) (- (* 2 i) 1)))
 (* (fn x) (fn x)))
 (defun next (k) (+ k 1))
 (/ (* 8 (product #'term 2 #'next n)) ( + (* 2 n) 1)))

(format t "~,10F~%" (pii 10)''ss)
(format t "~,10F~%" (pii 100)''ss)
(format t "~,10F~%" (pii 1000)''ss)
(format t "~,10F~%" (pii 2000)''ss)

(defun product-iter (term a next b)
 (defun iter (a result)
  (if (> a b)
   result
   (iter (funcall next a) (* (term a) result))))
 (iter a 1))

(defun pii-iter (n)
 (defun term (x) 
  (defun fn (i) (/ (* 2 i) (- (* 2 i) 1)))
 (* (fn x) (fn x)))
 (defun next (k) (+ k 1))
 (/ (* 8 (product-iter #'term 2 #'next n)) ( + (* 2 n) 1)))

(format t "~,10F~%" (pii-iter 10)''ss)
(format t "~,10F~%" (pii-iter 100)''ss)
(format t "~,10F~%" (pii-iter 1000)''ss)
(format t "~,10F~%" (pii-iter 2000)''ss)
