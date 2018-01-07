(in-package :com.matthewkrauss.lazy-list)

(defgeneric take (number sequence))

(defmethod take (number (sequence null)) nil)

(defmethod take ((number (eql 0)) sequence) nil)

(defmethod take (number (sequence lcons))
  (lcons* (lcar sequence)
          (lambda (x fn)
            (take (1- number) (lcdr sequence)))))
