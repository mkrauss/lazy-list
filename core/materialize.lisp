(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric materialize (finite-lazy-item)
  (:documentation "Return a fully materialized representation of a
  lazy item. For instance, if FINITE-LAZY-ITEM is a lazy list, fully
  evaluate the and return an actual list. If FINITE-LAZY-ITEM is not
  materializable this will throw an error."))

(defmethod materialize (item) item)

;; (defmethod materialize ((cell cons))
;;   (cons (materialize (slot-value cell 'a))
;;         (materialize (slot-value cell 'b))))

(defmethod materialize ((nothing null)) nil)

(defmethod materialize ((cell lcons))
  (cons (materialize (lcar cell))
        (materialize (lcdr cell))))

