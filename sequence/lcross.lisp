(in-package :com.matthewkrauss.lazy-list/sequence)

(defun lcross (fn &rest lists)
  "Map over multiple lists, combining each element of each list."
  (when lists (lcross-impl fn (car lists) (cdr lists))))

(defgeneric lcross-impl (fn list lists))

(defmethod lcross-impl (fn (list null) lists)
  nil)

(defmethod lcross-impl (fn (list lcons) (lists null))
  (lmapcar fn list))

(defmethod lcross-impl (fn (list lcons) (lists cons))
  (lmappend (lambda (item)
              (apply #'lcross (lambda (&rest args)
                                (apply fn item args))
                     lists))
            list))
