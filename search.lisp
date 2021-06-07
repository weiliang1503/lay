(in-package lay)

(defun lay_search ( keyword )
  (sb-ext:run-program "/usr/bin/pacman" (list "-Ss" keyword) :input nil :output *standard-output*)
  (setf url (concatenate 'string "https://aur.archlinux.org/rpc/?v=5&type=search&arg=" keyword))
  (setf http_back (drakma:http-request url))
  ;;(princ (type-of http_back))
  (setf json_back '())
  (loop for i across http_back do
    (setf json_back (append json_back (list (code-char i))))
        )
  (setf my_json (coerce json_back 'string))
  (with-input-from-string (s my_json)
    (setf data_base (json:decode-json s))
    )
  ;;(princ data_base)
  (loop for pkg in (subseq (nth 3 data_base) 1) do
    (format t "~c[1;35maur/~c[0m" #\ESC #\ESC)
    (format t "~c[1;37m~D~c[0m" #\ESC (cdr (nth 1 pkg)) #\ESC)
    (format t " ~c[1;32m~D~c[0m" #\ESC (cdr (nth 4 pkg)) #\ESC)
    (terpri)
    (princ "    ")
    (princ (cdr (nth 5 pkg)))
    (terpri)
        )
  )
