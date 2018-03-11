(in-package :com.matthewkrauss.lazy-list.test)

(let ((sequence (labels ((incrementer (from by)
                           (lambda ()
                             (cons from
                                   (sloth (incrementer (+ from by) by))))))
                  (funcall (incrementer 3 2)))))

  (define-test take-while
    :depends-on (sloth cons)

    (false (take-while (constantly nil) sequence))
    (false (take-while (constantly t) nil))
    (is equal '(3 5 7)
        (materialize (take-while (lambda (x) (< x 9)) sequence)))))
