
(cl:in-package :asdf)

(defsystem "walker_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ces_task_Status" :depends-on ("_package_ces_task_Status"))
    (:file "_package_ces_task_Status" :depends-on ("_package"))
    (:file "leg_motion_Status" :depends-on ("_package_leg_motion_Status"))
    (:file "_package_leg_motion_Status" :depends-on ("_package"))
  ))