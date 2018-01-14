(in-package :cl-user)

(defpackage :com.matthewkrauss.lazy-list
  (:nicknames :lazy-list)
  (:use :common-lisp))

(in-package :com.matthewkrauss.lazy-list)

(dolist (package '(:lazy-list/core
                   :lazy-list/sequence))
  (do-external-symbols (symbol package)
    (import symbol)
    (export symbol)))
