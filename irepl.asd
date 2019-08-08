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
(defsystem O :components ((:file O))
	   :pathname "src" :depends-on (:linedit))
