(in-package :com.matthewkrauss.lazy-list/core)

(defgeneric take (number sequence))

(defmethod take (number (sequence null)) nil)

(defmethod take ((number (eql 0)) sequence) nil)

(defmethod take (number (sequence cl:cons))
  (cons (cl:car sequence)
        (sloth (lambda ()
                 (take (1- number) (cl:cdr sequence))))))

(defmethod take (number (sequence cons))
  (cons (car sequence)
        (sloth (lambda ()
                 (take (1- number) (cdr sequence))))))
