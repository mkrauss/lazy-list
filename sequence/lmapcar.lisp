(in-package :com.matthewkrauss.lazy-list/sequence)

(defun lmapcar (fn &rest lists)
  "Map over a lazy list."
  (if (some #'null lists) nil
      (lcons* (apply fn (mapcar #'lcar lists))
              (lambda (_x _fn)
                (apply #'lmapcar fn (mapcar #'lcdr lists))))))
