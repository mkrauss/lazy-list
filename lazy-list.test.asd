(defpackage :lazy-list.test-system (:use :cl :asdf))
(in-package :lazy-list.test-system)

(defsystem "lazy-list.test"
  :description "Test suite for Lazy List"
  :version "0.0.1"
  :author "Matthew Krauss <m.d.krauss@gmail.com>"
  :license "Not for distribution"
  :depends-on ("parachute" "lazy-list")
  :serial t
  :components ((:file "packages.test")
               (:module "core" :serial t
                        :components ((:file "sloth.test")
                                     (:file "awake.test")
                                     (:file "cons.test")
                                     (:file "car.test")
                                     (:file "cdr.test")
                                     (:file "materialize.test")
                                     (:file "materialize-to-depth.test")
                                     (:file "take.test")
                                     (:file "take-while.test")))))
