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
;;  File:          2.29_binary_struct.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-04 10:23:30
;;  Descripton:    

(defun make-mobile (left right)
 (list left right))

(defun make-branch (len struct)
 (list len struct))

(defun left-branch (mobile)
 (car mobile))
(defun right-branch (mobile)
 (cadr mobile))

(defun branch-length (branch)
 (car branch))

(defun branch-struct (branch)
 (cadr branch))

(defun total-weight (mobile)
 (+ (branch-weight (left-branch mobile))
  (branch-weight (right-branch mobile))))

(defun branch-weight (branch)
 (if (hans-mobile? branch)
  (total-weight (branch-struct branch))
  (branch-struct branch)))

(defun hans-mobile? (branch)
 (listp (branch-struct branch)))

(defun branch-torque (branch)
 (* (branch-length branch)
  (branch-weight branch)))

(defun mobile-balance? (mobile)
 (let ((left (left-branch mobile))
       (right (right-branch mobile)))
  (and
   (same-torque? left right)
   (branch-balance? left)
   (branch-balance? right))))
(defun same-torque? (left right)
 (= (branch-torque left)
  (branch-torque right)))
(defun branch-balance? (branch)
 (if (hans-mobile? branch)
  (mobile-balance? (branch-struct branch))
  t))

(trace mobile-balance?)
;(mobile-balance? (make-mobile (make-branch 10 10) (make-branch 10 10)))
;(mobile-balance? (make-mobile (make-branch 0 0) (make-branch 10 10)))
(let (
      (balance-mobile (make-mobile (make-branch 10 10) (make-branch 10 10))) 
      (unbalance-mobile (make-mobile (make-branch 0 0) (make-branch 10 10)))
      )
      (mobile-balance? (make-mobile (make-branch 20 balance-mobile) (make-branch 10 balance-mobile))))
