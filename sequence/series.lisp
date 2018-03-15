(in-package :com.matthewkrauss.lazy-list/sequence)

(defgeneric series (from by)
  (:documentation
   "Return a lazy series from INITIAL, adding INCREMENT, indefinitely."))

(defmethod series ((from number) (by number))
  (cons from
        (sloth (lambda () (series (+ from by) by)))))

(defmethod series ((from number) (by (eql 0)))
  (cons from (sloth (lambda () (series from 0)))))
