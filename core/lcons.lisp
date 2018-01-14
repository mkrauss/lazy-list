(in-package :com.matthewkrauss.lazy-list/core)

(defclass lcons (sloth)
  ((value :initarg :value)
   (fn :initarg :fn))
  (:documentation "Lazy evaluating list-forming cons cell. LCAR
  returns a recorded value, while LCDR returns NIL or another LCONS
  where the recorded value is a function transformation of this
  one."))

(defun lcons* (value fn)
  "Advanced convenient creation of an lcons, takes a VALUE for LCAR
and a transforming FN. The FN should take the LCAR VALUE and a new
FN (usually itself), and is responsible for returning either a new
LCONS for the LCDR or NIL to end the list."
  (make-instance 'lcons :value value :fn fn))

(defun lcons (value transform-fn)
  "Convenient creation of an lcons, takes a VALUE and a transforming FN."
  (lcons* value
          (lambda (x fn)
           (lcons* (funcall transform-fn x) fn))))
