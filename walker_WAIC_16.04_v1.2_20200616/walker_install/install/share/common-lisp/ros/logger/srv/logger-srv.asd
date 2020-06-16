
(cl:in-package :asdf)

(defsystem "logger-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "configure" :depends-on ("_package_configure"))
    (:file "_package_configure" :depends-on ("_package"))
  ))