(in-package :com.matthewkrauss.lazy-list-test)

(define-test comprehension
  :serial nil

  (define-test series
    (is equal '(1 2 3) (materialize (take 3 (series 1 1))))
    (is equal '(3 7 11) (materialize (take 3 (series 3 4))))
    (is equal '(0 1 2) (materialize (series-to 3 0 1)))
    (is equal '(8 12 16) (materialize (series-to 20 8 4)))))

