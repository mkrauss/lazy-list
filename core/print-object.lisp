(in-package :com.matthewkrauss.lazy-list)

(defmethod print-object ((cell lcons) out)
  (print-unreadable-object (cell out :type t)
    (format out "~s" (materialize cell))))
