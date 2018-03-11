(in-package :com.matthewkrauss.lazy-list/core)

(defclass cons ()
  ((a :initarg :a)
   (d :initarg :d))
  (:documentation "Lazy evaluating cons cell."))

(defun cons (a d)
  "Convenient creation of lazy cons, takes two possibly lazy values A and D"
  (make-instance 'cons :a a :d d))
