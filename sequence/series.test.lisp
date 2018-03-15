(in-package :com.matthewkrauss.lazy-list.test)

(define-test series
  (is equal '(1 2 3)
      (materialize-to-depth 3 (series 1 1)))

  (is equal '(3 7 11)
      (materialize-to-depth 3 (series 3 4)))

  (is equal '(5 5 5)
      (materialize-to-depth 3 (series 5 0)))

  (fail (series 'hello 1))
  (fail (series 1 'world)))
