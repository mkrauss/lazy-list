(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric take-while (predicate sequence))

(defmethod take-while (predicate (sequence null)) nil)

(defmethod take-while (predicate (sequence lcons))
  (let ((value (lcar sequence)))
    (when (funcall predicate value)
      (lcons* value
              (lambda (x fn)
                (take-while predicate (lcdr sequence)))))))
