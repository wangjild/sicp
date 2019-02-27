#lang racket

(require "./7.scm")

(define (sub-interval x y)
  (make-interval
   (- (lower-bound x) (upper-bound y))
   (- (upper-bound x) (lower-bound y))))

(sub-interval (make-interval 5 8) (make-interval 3 9))