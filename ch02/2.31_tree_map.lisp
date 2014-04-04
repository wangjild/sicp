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
;;  File:          2.30_square_tree.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-04 11:59:41
;;  Descripton:    

(defun square (x) (* x x))

(defun tree-map (func tree)
 (cond 
  ((null tree) nil)
  ((not (consp tree)) (funcall func tree))
  (t (cons (tree-map func (car tree)) (tree-map func (cdr tree))))))
(defun square-tree (tree) (tree-map #'square tree))
(trace square-tree)
(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
