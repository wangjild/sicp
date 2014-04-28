;; Copyright (C) 2014 Wang Jing

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; Author:      wangjild <wangjild@gmail.com>
;; Blog:        http://www.liloke.com/
;; Github:      https://github.com/wangjild/sicp
;; File:        test.lisp
;; Lauguage:    common lisp
;; Date:        14-04-28 14:24:05
;; Descripton:  

(load "../common.lisp")


(accumulate #'append 
 nil 
 (map 'list (lambda(i) 
             (map 'list (lambda(j) (list i j))
                        (enumerate-interval 1 (- i 1))))
             (enumerate-interval 1 5)))

(defun prime-sum? (pa)
 (primep (+ (car pa) (cadr pa))))

(defun make-pair-sum (pa)
 (list (car pa) (cadr pa) (+ (car pa) (cadr pa))))

(defun prime-sum-pairs (n)
 (map 'list #'make-pair-sum
  (filter #'prime-sum?
   (flatmap
    (lambda (i)
     (map 'list (lambda (j) (list i j))
      (enumerate-interval 1 (- i 1))))
    (enumerate-interval 1 n)))))

(trace prime-sum-pairs)

(prime-sum-pairs 10)
