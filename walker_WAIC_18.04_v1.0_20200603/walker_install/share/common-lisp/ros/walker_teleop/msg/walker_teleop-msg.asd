
(cl:in-package :asdf)

(defsystem "walker_teleop-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Flysky" :depends-on ("_package_Flysky"))
    (:file "_package_Flysky" :depends-on ("_package"))
  ))