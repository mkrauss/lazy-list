(defpackage :lazy-list-test-system (:use :cl :asdf))
(in-package :lazy-list-test-system)

(defsystem "lazy-list-test"
  :description "Test suite for Lazy List"
  :version "0.0.1"
  :author "Matthew Krauss <m.d.krauss@gmail.com>"
  :license "Not for distribution"
  :depends-on ("parachute" "lazy-list")
  :serial t
  :components ((:module "test" :serial t
                        :components ((:file "package")
                                     (:file "core")))))
