(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric materialize (lazy-item)
  (:documentation "Return a fully materialized representation of a
  lazy item. For instance, if LAZY-ITEM is a lazy list, fully evaluate
  it and return an actual list. If LAZY-ITEM is not finite, this will
  cheerfully exhaust the stack, so be cautious."))

(defmethod materialize (item)
  item)

(defmethod materialize ((nothing null))
  nil)

(defmethod materialize ((sleeper sloth))
  (awake sleeper))

(defmethod materialize ((cell cons))
  (cl:cons
   (materialize (car cell))
   (materialize (cdr cell))))

