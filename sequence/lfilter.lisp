(in-package :com.matthewkrauss.lazy-list/sequence)

(defgeneric lfilter (predicate list))

(defmethod lfilter (predicate (list null)) nil)

(defmethod lfilter (predicate (list lcons))
  (let ((value (lcar list)))
    (if (funcall predicate value)
        (lcons* value (lambda (x fn)
                        (lfilter predicate (lcdr list))))
        (lfilter predicate (lcdr list)))))
