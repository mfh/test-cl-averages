;;;; package.lisp

(defpackage #:test-cl-averages
  (:use #:cl)
  (:nicknames #:avg)
  (:export #:arithmetic-mean
           #:geometric-mean
           #:harmonic-mean))

