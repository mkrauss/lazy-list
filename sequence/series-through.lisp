(in-package :com.matthewkrauss.lazy-list/sequence)

(defun series-through (last initial increment)
  (take-while (lambda (x) (<= x last))
              (series initial increment)))
