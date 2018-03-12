(in-package :com.matthewkrauss.lazy-list.test)

(define-test core
  :depends-on (sloth
               awake
               cons
               car
               cdr
               materialize
               materialize-to-depth
               take
               take-while))
