(in-package :cl-user)

(defpackage :com.matthewkrauss.lazy-list/core
  (:nicknames :lazy-list/core)
  (:use :common-lisp)
  (:export lcons
           lcons*
           lcar
           lcdr
           take
           take-while
           materialize))
