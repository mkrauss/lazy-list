(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric take-while (predicate sequence))

(defmethod take-while (predicate (sequence null)) nil)

(defmethod take-while (predicate (sequence cons))
  (let ((value (car sequence)))
    (when (funcall predicate value)
      (cons value
            (sloth (lambda ()
                     (take-while predicate (cdr sequence))))))))
