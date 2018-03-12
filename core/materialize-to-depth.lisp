(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric materialize-to-depth (max-depth lazy-item)
  (:documentation "Return a fully materialized representation of a
  lazy item. For instance, if LAZY-ITEM is a lazy list, fully evaluate
  it and return an actual list."))

(defmethod materialize-to-depth ((any-depth number) item)
  item)

(defmethod materialize-to-depth ((any-depth number) (nothing null))
  nil)

(defmethod materialize-to-depth ((any-depth number) (sleeper sloth))
  (awake sleeper))

(defmethod materialize-to-depth ((depth (eql 0)) (cell cons))
  nil)

(defmethod materialize-to-depth ((depth number) (cell cons))
  (let ((new-depth (1- depth)))
    (cl:cons
     (materialize-to-depth new-depth (car cell))
     (materialize-to-depth new-depth (cdr cell)))))
