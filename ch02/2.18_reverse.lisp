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
;;  File:          2.18_reverse.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-04 06:03:45
;;  Descripton:    

(defun reverse-iter (x result)
 (if (null x)
  result
  (reverse-iter (cdr x)
             (cons (car x) result))))
(defun reverse-i (x)
 (reverse-iter x '()))
(format t "~A~%" (reverse-i (list 1 2 3 4)))
(format t "~A~%" (reverse-i (list (list 1 2) (list 3 4))))
(format t "~A~%" (reverse-i (list (list 1 2) (list 3 4 (list 5 6 7)))))
