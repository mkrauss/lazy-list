(in-package :com.matthewkrauss.lazy-list)

(defgeneric lcdr (lazy-cons)
  (:documentation "The cdr of a lazy cons cell."))

(defmethod lcdr ((cell lcons))
  (with-slots (value fn) cell
    (funcall fn value fn)))

(defmethod lcdr ((cell cons))
  (cdr cell))
