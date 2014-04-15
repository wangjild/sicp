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
;;  File:          2.37_vector.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-15 03:36:28
;;  Descripton:    

(load "../common.lisp")

(defun matrix-*-vector (m v)
 (map 'list (lambda (mi) (accumulate #'+ 0 (map 'list #'* mi v))) m))

(trace matrix-*-vector)
(matrix-*-vector (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)) (list 1 2 3 4))

(defun transpose (mat)
  (accumulate-n 
   (lambda (x y) (cons x y)) 
   nil mat))

(trace transpose)
(transpose (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))

(defun matrix-*-matrix (m n)
 (let ((cols (transpose n)))
  (map 'list (lambda(v) (matrix-*-vector cols v)) m)))

(trace matrix-*-matrix)
(let ((m (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9))))
 (matrix-*-matrix m (transpose m)))

