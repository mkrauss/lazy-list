(in-package :com.matthewkrauss.lazy-list/core)

(defclass sloth ()
  ((fn :initarg :fn))
  (:documentation "A lazy thing"))

(defun sloth (fn)
  "Create a sloth from the function FN"
  (make-instance 'sloth :fn fn))
