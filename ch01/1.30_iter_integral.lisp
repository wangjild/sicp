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
;;  File:          expl_definite_simpson.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 11:27:45
;;  Descripton:


(defun sum (term a next b)
 (defun iter (a result) (
   (if (a > b) result
       (iter (next a) (+ result (term a)))
   ))
 （iter a 0)
 )

(defun simpson (func a b n)
 (defun h () (/ (- b a) n))
 (defun y (k) (funcall func (+ a (* k (h)))))
 (defun factor (k)
  (cond
   ((or (= k 0) (= k n)) 1)
   ((oddp k) 4)
   (t 2)))
 (defun term (k)
  (* (factor k) (y k)))
 (defun next (k) (+ k 1))

 (* (sum #'term 0 #'next n)
  (/ (h) 3)))

(defun cube (x) (* x x x))

(format t "~A~%" (simpson #'cube 0 1 10)''ss)
(format t "~A~%" (simpson #'cube 0 1 100)''ss)
(format t "~A~%" (simpson #'cube 0 1 1000)''ss)
(format t "~A~%" (simpson #'cube 0 1 2000)''ss)
