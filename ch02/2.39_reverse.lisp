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
;;  File:          2.39_reverse.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-15 05:26:07
;;  Descripton:    

(load "2.38_fold-right.lisp")

(defun reverse-r (seq)
 (accumulate (lambda (x y) (append y (list x))) nil seq))

(reverse-r '(1 2 3 4))

(defun reverse-l (seq)
 (fold-left (lambda (x y) (cons y x)) nil seq))
(reverse-l '(1 2 3 4))
