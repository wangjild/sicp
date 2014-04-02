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
;;  File:          1.11_f.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 09:27:45
;;  Descripton:    

(defun f (n) 
 ( if (< n 3)
    n
    (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(format t "~A~%" (f 3)''ss)
(format t "~A~%" (f 5)''ss)

(defun f-i (n)
 (f-iter 2 1 0 n))

(defun f-iter (n-1 n-2 n-3 n)
 (if (= n 0) n-3
  (f-iter (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (- n 1))))
(format t "~A~%" (f-i 3)''ss)
(format t "~A~%" (f-i 5)''ss)
  
