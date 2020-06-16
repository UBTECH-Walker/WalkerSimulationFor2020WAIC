
(cl:in-package :asdf)

(defsystem "walker_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "leg_motion_MetaFuncCtrl" :depends-on ("_package_leg_motion_MetaFuncCtrl"))
    (:file "_package_leg_motion_MetaFuncCtrl" :depends-on ("_package"))
  ))