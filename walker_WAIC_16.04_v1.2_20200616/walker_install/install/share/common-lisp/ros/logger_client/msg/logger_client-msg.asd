
(cl:in-package :asdf)

(defsystem "logger_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "log" :depends-on ("_package_log"))
    (:file "_package_log" :depends-on ("_package"))
  ))