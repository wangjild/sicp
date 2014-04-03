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
;;  File:          1.35_golden_section.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 16:46:47
;;  Descripton:    

(defun fixed-point (f first-guess)
 (let ((tolerance 0.0001))
  (defun close-enough? (v1 v2)
   (< (abs (- v1 v2)) tolerance))
  (defun try (guess steps)
   (let ((next (funcall f guess)))
    (if (close-enough? guess next)
     next
     (progn (format t "step ~A: ~,10F~%" steps (funcall f guess))
     (try next (+ steps 1))))))
  (try first-guess 1)))

(format t "no average:~%")
(defun sqrt-x (x) 
 (fixed-point (lambda (y) (/ (log 1000) (log y))) 2))
(sqrt-x 1000)
(format t "average:~%")
(defun sqrt-x-aver (x)
 (fixed-point (lambda (y) 
  (/ (+ (/ (log 1000) (log y)) y) 2)) 2))
(sqrt-x-aver 1000)
