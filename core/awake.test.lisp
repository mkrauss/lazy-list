(in-package :com.matthewkrauss.lazy-list.test)

(define-test awake
  :depends-on (sloth)
  (is = 42 (awake (sloth (constantly 42))))
  (is = 42 (awake 42))
  (isnt equal 42 (awake (constantly 42))))
