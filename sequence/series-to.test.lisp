(in-package :com.matthewkrauss.lazy-list.test)

(define-test series-to
  :depends-on (series)

  (is equal '(0 1 2)
      (materialize (series-to 3 0 1)))

  (is equal '(8 12 16)
      (materialize (series-to 20 8 4))))
