(defpackage :lazy-list-system (:use :cl :asdf))
(in-package :lazy-list-system)

(defsystem "lazy-list"
  :description "Lazy List: A modest experiment in bringing limited laziness to LISt Processing"
  :version "0.0.1"
  :author "Matthew Krauss <m.d.krauss@gmail.com>"
  :license "Not for distribution"
  :depends-on ()
  :serial t
  :components ((:module "core" :serial t
                        :components ((:file "package")
                                     (:file "lcons")
                                     (:file "lcar")
                                     (:file "lcdr")
                                     (:file "materialize")
                                     (:file "print-object")
                                     (:file "take")
                                     (:file "take-while")))
               (:module "sequence" :serial t
                        :components ((:file "package")
                                     (:file "series")
                                     (:file "lmapcar")
                                     (:file "lfilter")))
               (:file "package")))
