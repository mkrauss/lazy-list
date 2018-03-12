(in-package :com.matthewkrauss.lazy-list/core)

(defmethod print-object ((cell cons) out)
  (print-unreadable-object (cell out :type t)
    (format out "~s" (materialize-to-depth 2 cell))))
