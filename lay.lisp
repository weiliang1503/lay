(defvar *lay_version* "v0.1")

(in-package lay)

(defun main ( )
  (defvar *posix-argv* CL-USER::*posix-argv*)
  (when (= (length *posix-argv*) 1)
    (lay_help)
    (return-from main 0))
  (setf my_arg (nth 1 *posix-argv*))
  (cond ((string= my_arg "-h") (lay_help))
        ((string= my_arg "-Ss") (lay_search (nth 2 *posix-argv*)))
        ((string= my_arg "-S") (lay_install (nth 2 *posix-argv*)))
        ((string= my_arg "-V") (format t "lay: An AUR Helper Written In Common Lisp~%~D~%" *lay_version*))
          )
   (return-from main 0)
  )


