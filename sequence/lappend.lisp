(in-package :com.matthewkrauss.lazy-list/sequence)

(defun lappend (&rest lists)
  "Appending multiple lazy lists."
  (when lists (apply #'lappend-impl lists)))

(defgeneric lappend-impl (list &rest lists))

(defmethod lappend-impl ((list null) &rest lists)
  (apply #'lappend lists))

(defmethod lappend-impl ((list cons) &rest lists)
  (lcons* (car list)
          (lambda (_value _self)
            (apply #'lappend-impl (cdr list) lists))))

(defmethod lappend-impl ((list lcons) &rest lists)
  (lcons* (lcar list)
          (lambda (_value _self)
            (apply #'lappend-impl (lcdr list) lists))))
