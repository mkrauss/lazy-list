(in-package :com.matthewkrauss.lazy-list.test)

(define-test series-through
  :depends-on (series)

  (is equal '(1 2 3)
      (materialize (series-through 3 1 1))))
