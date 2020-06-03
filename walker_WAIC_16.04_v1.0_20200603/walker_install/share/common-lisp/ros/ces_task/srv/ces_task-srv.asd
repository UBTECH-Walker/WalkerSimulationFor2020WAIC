
(cl:in-package :asdf)

(defsystem "ces_task-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TaskArmCtrl" :depends-on ("_package_TaskArmCtrl"))
    (:file "_package_TaskArmCtrl" :depends-on ("_package"))
    (:file "TaskHmiCtrl" :depends-on ("_package_TaskHmiCtrl"))
    (:file "_package_TaskHmiCtrl" :depends-on ("_package"))
    (:file "TaskLegCtrl" :depends-on ("_package_TaskLegCtrl"))
    (:file "_package_TaskLegCtrl" :depends-on ("_package"))
  ))