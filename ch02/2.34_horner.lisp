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
;;  File:          2.34_horner.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-04 13:55:13
;;  Descripton:    

(defun accumulate (op initial seque)
 (if (null seque)
  initial
  (funcall op (car seque) (accumulate op initial (cdr seque)))))

(defun horner-eval (x seque)
 (accumulate (lambda (this higher)
              (+ this (* x higher)))
  0 seque))

(trace accumulate)
(horner-eval 2 (list 1 3 0 5 0 1))
