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
;;  File:          common.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-14 12:08:23
;;  Descripton:    

(defun accumulate (op initial seque)
  (if (null seque)
    initial
    (funcall op (car seque) (accumulate op initial (cdr seque)))))

(defun accumulate-n (op init seqs)
  (if (null (car seqs))
    nil 
    (cons (accumulate op init (map 'list #'car seqs))
          (accumulate-n op init (map 'list #'cdr seqs)))))

(defun enumerate-interval (low high)
 (if (> low high)
  nil
  (cons low (enumerate-interval (+ low 1) high))))


(defun flatmap (proc seq)
 (accumulate #'append nil (map 'list proc seq)))


(defun primep (x)
  (let ((sqrt-x (sqrt x)))
    (do ((i 2 (1+ i)))
        ((> i sqrt-x) t)
      (when (eq (mod x i) 0)
    (return nil)))))

(defun filter (predicate seq) 
 (cond ((null seq) nil) 
  ((funcall predicate (car seq))
   (cons (car seq)
    (filter predicate (cdr seq))))
  (t (filter predicate (cdr seq)))))
