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
;;  File:          1.16_expt.lisp
;;  Lauguage:      common lisp
;;  Date:          14-04-02 10:27:18
;;  Descripton:

(defun double (n)
    (+ n n))

(defun halve (n)
    (/ n 2))

(defun multi (a b)
    (cond ((= b 0)
            0)
          ((evenp b)
            (double (multi a (halve b))))
          ((oddp b)
            (+ a (multi a (- b 1))))))

(format t "~A~%" (multi 3 3)''ss)
