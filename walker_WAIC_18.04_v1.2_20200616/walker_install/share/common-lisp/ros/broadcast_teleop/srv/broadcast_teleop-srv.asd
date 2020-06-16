
(cl:in-package :asdf)

(defsystem "broadcast_teleop-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TaskCallScript" :depends-on ("_package_TaskCallScript"))
    (:file "_package_TaskCallScript" :depends-on ("_package"))
  ))