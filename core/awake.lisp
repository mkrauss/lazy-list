(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric awake (value)
  (:documentation "Return value or evaluate and return the value if it is lazy"))

(defmethod awake ((value sloth))
  (funcall (slot-value value 'fn)))

(defmethod awake (value)
  value)
