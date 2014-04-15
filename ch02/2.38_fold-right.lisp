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
;;  File:          2.38_fold-right.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-15 05:19:11
;;  Descripton:    

(load "../common.lisp")

(defun fold-left (op initial seque)
 (defun iter (result res)
  (if (null res)
   result
   (iter (funcall op result (car res))
    (cdr res))))
 (iter initial seque))

(trace accumulate)
(accumulate #'/ 1 '(1 2 3))

(trace fold-left)
(fold-left #'/ 1 '(1 2 3))

(accumulate #'list nil (list 1 2 3))
(fold-left #'list nil (list 1 2 3))
