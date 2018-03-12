(in-package :cl-user)

;;; Core functions

(defpackage :com.matthewkrauss.lazy-list/core
  (:nicknames :lazy-list/core)
  (:use :common-lisp)
  (:shadow cons
           car
           cdr)
  (:export sloth
           awake
           cons
           car
           cdr
           materialize
           materialize-to-depth
           take
           take-while))

;;; Meta-package lazy-list

(defpackage :com.matthewkrauss.lazy-list
  (:nicknames :lazy-list)
  (:use :common-lisp))

(dolist (package '(:lazy-list/core))
  (do-external-symbols (symbol package)
    (shadowing-import symbol :lazy-list)
    (export symbol :lazy-list)))
