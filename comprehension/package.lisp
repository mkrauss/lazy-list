(in-package :cl-user)

(defpackage :com.matthewkrauss.lazy-list-series
  (:nicknames :lazy-list-series :lazy-series)
  (:use :common-lisp :lazy-list)
  (:export series
           series-to
           lmapcar))
