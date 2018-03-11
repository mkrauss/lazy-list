(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric car (cell)
  (:documentation "The car of a cons or lazy cons"))

(defmethod car ((cell cl:cons))
  (cl:car cell))

(defmethod car ((cell cons))
  (awake (slot-value cell 'a)))
