(in-package :com.matthewkrauss.lazy-list.test)

(let ((sequence (labels ((incrementer (from by)
                           (lambda ()
                             (cons from
                                   (sloth (incrementer (+ from by) by))))))
                  (funcall (incrementer 3 2)))))

  (define-test take
    :depends-on (sloth cons)

    (false (take 0 (list 'a 'b 'c)))
    (false (take 14 nil))
    (false (take 0 (cons 'a (cons 'b (cons 'c nil)))))
    (is equal '(3 5)
        (materialize (take 2 sequence)))))
