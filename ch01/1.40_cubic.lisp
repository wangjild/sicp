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
;;  File:          1.40_cubic.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 20:20:40
;;  Descripton:    
(load "./fixed_point.lisp")

(defun deriv (g)
  (let ((dx 0.0001))
    (lambda (x) 
      (/ 
        (- (funcall g (+ x dx)) (funcall g x))
        dx))))

(defun newton-transform (g)
 (lambda (x) (- x (/ (funcall g x) (funcall (deriv g) x)))))

(defun newtons-method (g guess)
 (fixed-point (newton-transform g) guess))

(defun sqrt-x (x)
 (newtons-method (lambda (y) (- (* y y) x))
  1.0))

(format t "~,10F~%" (sqrt-x 5))

(defun cubic-f (a b c)
 (lambda (x) (+ (* x x x) (* x x a) (* x b) c)))

(format t "~,10F~%" (newtons-method (cubic-f 1 1 1) 1))
