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
;;  File:          1.41_double.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 21:00:05
;;  Descripton:    

(defun double (f)
 (lambda (x) (funcall f (funcall f x))))

(defun incr (x)
 (+ x 1))

;(format t "~A~%" (funcall (double #'incr) 1))
;(format t "~A~%" (funcall (double ((lambda (x) (double x)) #'double)) #'incr) 5)

(format t "~A~%" (funcall (funcall (double ((lambda (x) (double x)) #'double)) #'incr) 5))
