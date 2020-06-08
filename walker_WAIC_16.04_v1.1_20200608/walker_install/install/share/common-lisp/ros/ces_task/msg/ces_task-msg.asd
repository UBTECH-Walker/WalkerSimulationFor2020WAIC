
(cl:in-package :asdf)

(defsystem "ces_task-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TaskArmStatus" :depends-on ("_package_TaskArmStatus"))
    (:file "_package_TaskArmStatus" :depends-on ("_package"))
    (:file "TaskLegStatus" :depends-on ("_package_TaskLegStatus"))
    (:file "_package_TaskLegStatus" :depends-on ("_package"))
  ))