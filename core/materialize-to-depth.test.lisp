(in-package :com.matthewkrauss.lazy-list.test)

(define-test materialize-to-depth
  :depends-on (sloth cons)

  (is equal '(a b c)
      (materialize-to-depth 50 '(a b c)))
  (is equal '(a b c)
      (materialize-to-depth 0 '(a b c)))

  (is equal nil
      (materialize-to-depth 50 nil))

  (is equal 'foo
      (materialize-to-depth 50 (sloth (constantly 'foo))))
  (is equal 'foo
      (materialize-to-depth 0 (sloth (constantly 'foo))))

  (is equal nil
      (materialize-to-depth 0 (cons 1 2)))
  (is equal nil
      (materialize-to-depth 0 (cons (sloth (constantly 'foo))
                                    (sloth (constantly 'bar)))))

  (is equal '(foo bar)
      (materialize-to-depth 2 (cons 'foo
                                    (sloth
                                     (constantly
                                      (cons 'bar
                                            (sloth
                                             (constantly
                                              (cons 'baz
                                                    (sloth
                                                     (constantly nil))))))))))))
