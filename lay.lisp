(load "~/quicklisp/setup.lisp")
(ql:quickload :drakma)
(ql:quickload :cl-json)
(ql:quickload :trivial-download)
(load "./help.lisp")
(load "./search.lisp")
(load "./install.lisp")

(defvar *lay_version* "v0.1")

(defun main_function ( )
  (when (= (length *posix-argv*) 1)
    (help:lay_help)
    (return-from main_function 0))
  (setf my_arg (nth 1 *posix-argv*))
  (cond ((string= my_arg "-h") (help:lay_help))
        ((string= my_arg "-Ss") (search:lay_search (nth 2 *posix-argv*)))
        ((string= my_arg "-S") (install:lay_install (nth 2 *posix-argv*)))
        ((string= my_arg "-V") (format t "lay: An AUR Helper Written In Common Lisp~%~D~%" *lay_version*))
          )
   (return-from main_function 0)
  )


