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
;;  File:          2.2_segment.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-03 20:17:24
;;  Descripton:    

(defun make-point (x y) 
 (cons x y))

(defun x-point (p)
 (car p))
(defun y-point (p)
 (cdr p))

(defun make-segment (x y)
  (cons x y))
(defun start-segment (x)
 (car x))
(defun end-segment (y)
 (cdr y))

(defun midpoint-segment (x)
 (make-point 
  (/ (+ (x-point (start-segment x)) (x-point (end-segment x))) 2)
  (/ (+ (y-point (start-segment x)) (y-point (end-segment x))) 2)))

(defun print-point (p)
  (format t "~A,~A~%" (x-point p) (y-point p)))

(print-point 
 (midpoint-segment 
  (make-segment 
   (make-point 1 1)
   (make-point 3 3))))
