(asdf:defsystem #:cl-termsize
  :description "try to ioctl up the terminal size"
  :author "Jeremy Mates <jmates@example.org>"
  :license "BSD"
  :version "0.42.0"
  :serial t
  :defsystem-depends-on ("cffi-grovel")
  :depends-on (#:cffi)
  :components ((:file "package")
               (:cffi-grovel-file "grov")
               (:file "termsize")))
