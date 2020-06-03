;; Auto-generated. Do not edit!


(when (boundp 'webots_api::SceneSelection)
  (if (not (find-package "WEBOTS_API"))
    (make-package "WEBOTS_API"))
  (shadow 'SceneSelection (find-package "WEBOTS_API")))
(unless (find-package "WEBOTS_API::SCENESELECTION")
  (make-package "WEBOTS_API::SCENESELECTION"))
(unless (find-package "WEBOTS_API::SCENESELECTIONREQUEST")
  (make-package "WEBOTS_API::SCENESELECTIONREQUEST"))
(unless (find-package "WEBOTS_API::SCENESELECTIONRESPONSE")
  (make-package "WEBOTS_API::SCENESELECTIONRESPONSE"))

(in-package "ROS")





(defclass webots_api::SceneSelectionRequest
  :super ros::object
  :slots (_scene_name _nav _vision ))

(defmethod webots_api::SceneSelectionRequest
  (:init
   (&key
    ((:scene_name __scene_name) "")
    ((:nav __nav) nil)
    ((:vision __vision) nil)
    )
   (send-super :init)
   (setq _scene_name (string __scene_name))
   (setq _nav __nav)
   (setq _vision __vision)
   self)
  (:scene_name
   (&optional __scene_name)
   (if __scene_name (setq _scene_name __scene_name)) _scene_name)
  (:nav
   (&optional __nav)
   (if __nav (setq _nav __nav)) _nav)
  (:vision
   (&optional __vision)
   (if __vision (setq _vision __vision)) _vision)
  (:serialization-length
   ()
   (+
    ;; string _scene_name
    4 (length _scene_name)
    ;; bool _nav
    1
    ;; bool _vision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _scene_name
       (write-long (length _scene_name) s) (princ _scene_name s)
     ;; bool _nav
       (if _nav (write-byte -1 s) (write-byte 0 s))
     ;; bool _vision
       (if _vision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _scene_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scene_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _nav
     (setq _nav (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vision
     (setq _vision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_api::SceneSelectionResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_api::SceneSelectionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_api::SceneSelection
  :super ros::object
  :slots ())

(setf (get webots_api::SceneSelection :md5sum-) "fbbd39fb2bc6dedf8b0d42f934f56fab")
(setf (get webots_api::SceneSelection :datatype-) "webots_api/SceneSelection")
(setf (get webots_api::SceneSelection :request) webots_api::SceneSelectionRequest)
(setf (get webots_api::SceneSelection :response) webots_api::SceneSelectionResponse)

(defmethod webots_api::SceneSelectionRequest
  (:response () (instance webots_api::SceneSelectionResponse :init)))

(setf (get webots_api::SceneSelectionRequest :md5sum-) "fbbd39fb2bc6dedf8b0d42f934f56fab")
(setf (get webots_api::SceneSelectionRequest :datatype-) "webots_api/SceneSelectionRequest")
(setf (get webots_api::SceneSelectionRequest :definition-)
      "string scene_name
bool nav
bool vision
---
bool success


")

(setf (get webots_api::SceneSelectionResponse :md5sum-) "fbbd39fb2bc6dedf8b0d42f934f56fab")
(setf (get webots_api::SceneSelectionResponse :datatype-) "webots_api/SceneSelectionResponse")
(setf (get webots_api::SceneSelectionResponse :definition-)
      "string scene_name
bool nav
bool vision
---
bool success


")



(provide :webots_api/SceneSelection "fbbd39fb2bc6dedf8b0d42f934f56fab")


