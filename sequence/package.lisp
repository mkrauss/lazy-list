(in-package :cl-user)

(defpackage :com.matthewkrauss.lazy-list/sequence
  (:nicknames :lazy-list/sequence)
  (:use :common-lisp :lazy-list/core)
  (:export series
           series-to
           series-through
           lmapcar
           lfilter
           lappend
           lmappend
           lcross))
