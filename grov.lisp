(in-package #:cl-termsize)

(include "sys/ttycom.h")
(include "errno.h")
(include "unistd.h")

(constant (TS-STDOUT-FILENO "STDOUT_FILENO"))
(constant (TS-TIOCGWINSZ "TIOCGWINSZ"))

(cstruct winsize "struct winsize"
  (ws-row "ws_row" :type :unsigned-short)
  (ws-col "ws_col" :type :unsigned-short)
  (ws-xpixel "ws_xpixel" :type :unsigned-short)
  (ws-ypixel "ws_ypixel" :type :unsigned-short))
