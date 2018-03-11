(defpackage :lazy-list-system (:use :cl :asdf))
(in-package :lazy-list-system)

(defsystem "lazy-list"
  :description "Lazy List: A modest experiment in bringing limited laziness to LISt Processing"
  :version "0.0.1"
  :author "Matthew Krauss <m.d.krauss@gmail.com>"
  :license "Not for distribution"
  :depends-on ()
  :serial t
  :components ((:file "packages")
               (:module "core" :serial t
                        :components ((:file "sloth")
                                     (:file "awake")
                                     (:file "cons")
                                     (:file "car")
                                     (:file "cdr")
                                     (:file "materialize")))))
