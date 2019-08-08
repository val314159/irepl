(defsystem            #.(pathname-name (or *compile-file-pathname* *load-pathname*))
  :components ((:file #.(pathname-name (or *compile-file-pathname* *load-pathname*))))
  :pathname "src" :depends-on (:linedit))
