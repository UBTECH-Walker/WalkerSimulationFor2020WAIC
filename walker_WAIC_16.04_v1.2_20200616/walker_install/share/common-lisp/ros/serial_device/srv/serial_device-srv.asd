
(cl:in-package :asdf)

(defsystem "serial_device-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TaskCallSerial" :depends-on ("_package_TaskCallSerial"))
    (:file "_package_TaskCallSerial" :depends-on ("_package"))
    (:file "TaskService" :depends-on ("_package_TaskService"))
    (:file "_package_TaskService" :depends-on ("_package"))
  ))