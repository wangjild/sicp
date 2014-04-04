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
;;  File:          2.28_finger.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-04 08:59:00
;;  Descripton:    

(defun finger (x)
 (cond
  ((null x) nil)
  ((not (listp x)) (list x))
  (t (append (finger (car x)) (finger (cdr x))))))

(trace finger)
;(finger (list (list 1 2) (list 3 4)))
;(finger (list 1 (list 2 (list 3 4))))
(finger (list (list (list 2 1) 3) 4))
