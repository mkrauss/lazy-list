(in-package :com.matthewkrauss.lazy-list/sequence)

(defun lmappend (fn &rest lists)
  "Map over a lazy list appending results."
  (if (some #'null lists) nil
      (let ((first-list-result (apply fn (mapcar #'lcar lists))))
        (lcons* (lcar first-list-result)
                (lambda (_value _self)
                  (funcall #'lappend
                           (lcdr first-list-result)
                           (apply #'lmappend fn (mapcar #'lcdr lists))))))))
