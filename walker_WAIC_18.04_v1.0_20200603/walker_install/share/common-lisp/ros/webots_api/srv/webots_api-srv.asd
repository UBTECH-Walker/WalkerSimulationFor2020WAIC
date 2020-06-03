
(cl:in-package :asdf)

(defsystem "webots_api-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SceneSelection" :depends-on ("_package_SceneSelection"))
    (:file "_package_SceneSelection" :depends-on ("_package"))
  ))