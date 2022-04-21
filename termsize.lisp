(in-package #:cl-termsize)

(defcvar "errno" :int)

(defcfun "ioctl" :int
  (fildes :int)
  (request :unsigned-long)
  (winsize (:pointer (:struct winsize))))

(defun ioctl-termsize (&optional (file-descriptor TS-STDOUT-FILENO))
  "Query the terminal size via ioctl on some file-descriptor, STDOUT by default."
  (with-foreign-objects
    ((ws '(:struct winsize)))
    (let ((ret (ioctl file-descriptor TS-TIOCGWINSZ ws)))
      (if (= ret -1)
        (error "ioctl failed (~d)" *ERRNO*)
        (with-foreign-slots
          ((ws-row ws-col ws-xpixel ws-ypixel)
           ws (:struct winsize))
          (values ws-row ws-col ws-xpixel ws-ypixel))))))
