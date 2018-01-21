(in-package :com.matthewkrauss.lazy-list/test)

(define-test sequence
  :serial nil

  (define-test series
    (is equal '(1 2 3) (materialize (take 3 (series 1 1))))
    (is equal '(3 7 11) (materialize (take 3 (series 3 4))))
    (is equal '(0 1 2) (materialize (series-to 3 0 1)))
    (is equal '(8 12 16) (materialize (series-to 20 8 4))))

  (define-test lmapcar
    (is equal '(2.7182817 7.389056 20.085537)
        (materialize (lmapcar #'exp (series-to 4 1 1))))
    (is equal '(7 5 13 8 19)
        (materialize (take 5 (lmapcar (lambda (x) (if (oddp x) x (/ x 2)))
                                      (series 7 3))))))
  (define-test lfilter
    (is equal '(2 4 6 8)
        (materialize (take 4 (lfilter #'evenp (series 1 1))))))

  (define-test lappend
    (is equal '(1 2 3 10 20 30 100 200 300)
        (materialize (lappend (series-to 4 1 1)
                              (series-to 40 10 10)
                              (series-to 400 100 100))))
    (is equal '(0 1 2)
        (materialize (lappend (series-to 3 0 1) nil)))
    (is equal '(0 1 2)
        (materialize (lappend '(0 1 2) nil)))
    (is equal '(0 1 2)
        (materialize (lappend nil (series-to 3 0 1))))
    (is equal '(0 1 2)
        (materialize (lappend nil '(0 1 2))))
    (is equal '(1 3 5 7 9 11)
        (materialize (take 6 (lappend (series 1 2)
                                      (series 2 2)))))))
