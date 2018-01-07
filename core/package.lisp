(in-package :cl-user)

(defpackage :com.matthewkrauss.lazy-list
  (:nicknames :lazy-list :lazy)
  (:use :common-lisp)
  (:export sloth
           lcons*
           lcons
           lcar
           lcdr
           take
           take-while
           materialize))
