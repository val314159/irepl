(defun this-file()
  (pathname-name (or *compile-file-pathname*
		     *load-pathname*)))
(defun this-file-up() (string-upcase (this-file)))
(set-macro-character #\@
 #'(lambda(stream char)
     (declare (ignore char) (ignore stream))
     (this-file-up)))
(set-macro-character #\O
 #'(lambda(stream char)
     (declare (ignore char) (ignore stream))
     (this-file)))

(defun $$$() @)

(defvar $$ @)

(defsystem O :components ((:file "main"))
	   :pathname "src" :depends-on (:linedit))
