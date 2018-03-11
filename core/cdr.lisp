(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric cdr (cell)
  (:documentation "The cdr of a cons or lazy cons"))

(defmethod cdr ((cell cl:cons))
  (cl:cdr cell))

(defmethod cdr ((cell cons))
  (awake (slot-value cell 'd)))
