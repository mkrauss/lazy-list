(in-package :com.matthewkrauss.lazy-list-test)

(let ((foo (lcons 1 #'1+)))
  (list :car (lcar foo)
        :cadr (lcar (lcdr foo))
        :five (materialize (take 5 foo))))
