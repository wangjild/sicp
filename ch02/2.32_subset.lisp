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
;;  File:          2.32_subset.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-04 12:31:50
;;  Descripton:    

(defun subsets (s)
 (if (null s)
  (list nil)
  (let ((res (subsets (cdr s))))
   (append res (map 'list (lambda (x) (cons (car s) x)) res)))))

(trace subsets)
(subsets (list 1 2 3))
