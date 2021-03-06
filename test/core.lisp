(in-package :com.matthewkrauss.lazy-list/test)

(defun subject () (lcons 1 #'1+))

(define-test core :serial nil)
  
(define-test lcons
  :parent core :serial nil
  (of-type lcons (make-instance 'lcons :value 1 :fn #'1+))
  (of-type lcons (lcons 1 #'1+))
  (of-type lcons (lcons* 1 (lambda (x fn) (lcons* (1+ x) fn)))))

(define-test lcar-lcdr
  :parent core :serial nil
  (is = 1 (lcar (subject)))
  (is = 2 (lcar (lcdr (subject))))
  (is = 3 (lcar (lcdr (lcdr (subject))))))

(define-test take
  :parent core :serial nil
  (false (take 0 (subject)))
  (false (take 14 nil))
  (is equal '(1 2 3) (materialize (take 3 (subject)))))

(define-test take-while
  :parent core :serial nil
  (is = 300
      (car
       (last
        (materialize
         (take-while (lambda (x) (<= x 300))
                     (subject)))))))

(define-test materialize
  :parent core :serial nil
  (is equal '(1 2 3) (materialize (list 1 2 3))))

