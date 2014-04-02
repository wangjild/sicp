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

(defun fast-expt (b n)
 (expt-iter b n 1))

(defun expt-iter (b n a)
 (cond ((= n 0)
        a)
  ((evenp n) (expt-iter (* b b) (/ n 2) a))
  ((oddp n)  (expt-iter b (- n 1) (* b a)))))

(format t "~A~%" (fast-expt 3 3)''ss)
