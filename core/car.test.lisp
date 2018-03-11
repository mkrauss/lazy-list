(in-package :com.matthewkrauss.lazy-list.test)

(define-test car
  :depends-on (sloth cons)
  (is = 42 (car (cons 42 nil)))
  (is = 42 (car (cons (sloth (constantly 42)) nil)))
  (isnt equal 42 (car (cons (constantly 42) nil))))
