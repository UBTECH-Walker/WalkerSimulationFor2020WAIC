
(cl:in-package :asdf)

(defsystem "perm_checker-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PermCheck" :depends-on ("_package_PermCheck"))
    (:file "_package_PermCheck" :depends-on ("_package"))
  ))