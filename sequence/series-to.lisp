(in-package :com.matthewkrauss.lazy-list/sequence)

(defun series-to (limit initial increment)
  (take-while (lambda (x) (< x limit))
              (series initial increment)))

