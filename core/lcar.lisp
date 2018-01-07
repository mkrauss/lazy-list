(in-package :com.matthewkrauss.lazy-list)

(defgeneric lcar (lazy-cons)
  (:documentation "The car of a lazy cons cell."))

(defmethod lcar ((cell lcons))
  (slot-value cell 'value))

(defmethod lcar ((cell cons))
  (car cell))
