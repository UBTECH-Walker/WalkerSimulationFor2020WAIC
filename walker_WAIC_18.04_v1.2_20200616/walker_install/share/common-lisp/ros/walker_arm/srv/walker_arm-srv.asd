
(cl:in-package :asdf)

(defsystem "walker_arm-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TaskService" :depends-on ("_package_TaskService"))
    (:file "_package_TaskService" :depends-on ("_package"))
  ))