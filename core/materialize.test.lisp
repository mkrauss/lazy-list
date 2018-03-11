(in-package :com.matthewkrauss.lazy-list.test)

(define-test materialize
  :depends-on (sloth cons)

  (false (materialize nil))
  (is equal 'foo (materialize 'foo))
  (is equal 'foo (materialize (sloth (constantly 'foo))))

  (is equal '(1 2)
      (materialize (cons (sloth (constantly 1))
                         (cons
                          (sloth (constantly 2))
                          (sloth (constantly nil)))))))
