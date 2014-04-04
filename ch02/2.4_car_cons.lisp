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
;;  File:          test.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-03 21:05:53
;;  Descripton:    

(defun cons-d (x y)
 (lambda (m) (funcall m x y)))
(defun car-d (z)
 (funcall z (lambda (p q) p)))
(defun cdr-d (z)
 (funcall z (lambda (p q) q)))

(format t "~A~%" (car-d (cons-d 1 2)))
(format t "~A~%" (cdr-d (cons-d 1 2)))
