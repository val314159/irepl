(defsystem            #.(pathname-name (or *compile-file-pathname* *load-pathname*))
  :components ((:file #.(pathname-name (or *compile-file-pathname* *load-pathname*))))
  :depends-on (:linedit))
