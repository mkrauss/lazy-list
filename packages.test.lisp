(in-package :cl-user)

(defpackage :com.matthewkrauss.lazy-list.test
  (:nicknames :lazy-list.test/core)
  (:use :cl :parachute :lazy-list)
  (:shadowing-import-from :lazy-list
                          :cons
                          :car
                          :cdr))
