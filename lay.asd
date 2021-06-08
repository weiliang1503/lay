;;;; myproject.asd

(asdf:defsystem #:lay
  :description "Describe myproject here"
  :author "zhaose weiliang1503@163.com"
  :license  "Specify license here"
  :version "0.1"
  :serial t
  :build-operation "program-op"  ;; leave as is
  :build-pathname "lay"
  :entry-point "lay:main"
  :depends-on (#:cl-json #:trivial-download)
  :components ((:file "package")
               (:file "install")
               (:file "search")
               (:file "help")
               (:file "lay")))
