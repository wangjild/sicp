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
;;  File:          1.10_Ackermann.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 08:43:46
;;  Descripton:    

(defun A (x y)
 (cond ((= y 0) 0)
       ((= x 0) (* 2 y))
       ((= y 1) 2)
       (t (A (- x 1) (A x (- y 1))))))

(format t "~A~%" (A 1 10)''ss)
(format t "~A~%" (A 2 4)''ss)
(format t "~A~%" (A 3 3)''ss)
