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
;;  File:          2.35_count-leaves.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-14 12:04:39
;;  Descripton:    

(load "../common.lisp")

(defun count-leaves (x)
 (cond ((null x) 0)
  ((not (consp x)) 1)
  (t (+ (count-leaves (car x))
      (count-leaves (cdr x))))))

(defun count-l (tree)
 (accumulate + 0 (map 'list (lambda (sub-tree)
                             (if (consp sub-tree)
                              (count-l sub-tree)
                              1)) 
                  tree)))

(trace count-l)
(count-l (list (list 1 (list 2 3)) (list (list 4 5) (list 6 7))))
