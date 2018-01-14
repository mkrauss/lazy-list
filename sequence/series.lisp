(in-package :com.matthewkrauss.lazy-list/sequence)

(defun series (initial increment)
  "Return a lazy series from INITIAL, adding INCREMENT, indefinitely."
  (lcons initial (lambda (x) (+ x increment))))

(defun series-to (limit initial increment)
  (take-while (lambda (x) (< x limit))
              (series initial increment)))
