(in-package :com.matthewkrauss.lazy-list.test)

(define-test cdr
  :depends-on (sloth cons)
  (is = 42 (cdr (cons nil 42)))
  (is = 42 (cdr (cons nil (sloth (constantly 42)))))
  (isnt equal 42 (cdr (cons nil (constantly 42)))))
