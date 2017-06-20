;;;; test-cl-averages.lisp

(in-package #:test-cl-averages)

;;; Compute the sum of the numbers in LIST.
(defun sum (list)
  (reduce #'+ list :initial-value 0))

;;; Compute the product of the numbers in LIST.
(defun product (list)
  (reduce #'* list :initial-value 1))

;;; Check that LIST isn't empty.
(defun assert-non-null (list)
  (assert (not (null list)) (list) "LIST must be a non-null list."))

(defun arithmetic-mean (&rest numbers)
  "Compute the arithmetic mean of the numbers NUMBERS."
  (assert-non-null numbers)
  (/ (sum numbers)
     (length numbers)))

(defun geometric-mean (&rest numbers)
  "Compute the geometric mean of the numbers NUMBERS."
  (assert-non-null numbers)
  (expt (product numbers)
        (/ (length numbers))))

(defun harmonic-mean (&rest numbers)
  "Compute the harmonic mean of the numbers NUMBERs."
  (assert-non-null numbers)
  (/ (length numbers)
     (sum (mapcar #'/ numbers))))
