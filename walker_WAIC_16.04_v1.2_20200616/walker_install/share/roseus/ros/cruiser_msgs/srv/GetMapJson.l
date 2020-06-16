;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::GetMapJson)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'GetMapJson (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::GETMAPJSON")
  (make-package "CRUISER_MSGS::GETMAPJSON"))
(unless (find-package "CRUISER_MSGS::GETMAPJSONREQUEST")
  (make-package "CRUISER_MSGS::GETMAPJSONREQUEST"))
(unless (find-package "CRUISER_MSGS::GETMAPJSONRESPONSE")
  (make-package "CRUISER_MSGS::GETMAPJSONRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::GetMapJsonRequest
  :super ros::object
  :slots ())

(defmethod cruiser_msgs::GetMapJsonRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cruiser_msgs::GetMapJsonResponse
  :super ros::object
  :slots (_json ))

(defmethod cruiser_msgs::GetMapJsonResponse
  (:init
   (&key
    ((:json __json) (instance cruiser_msgs::MapJson :init))
    )
   (send-super :init)
   (setq _json __json)
   self)
  (:json
   (&rest __json)
   (if (keywordp (car __json))
       (send* _json __json)
     (progn
       (if __json (setq _json (car __json)))
       _json)))
  (:serialization-length
   ()
   (+
    ;; cruiser_msgs/MapJson _json
    (send _json :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cruiser_msgs/MapJson _json
       (send _json :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cruiser_msgs/MapJson _json
     (send _json :deserialize buf ptr-) (incf ptr- (send _json :serialization-length))
   ;;
   self)
  )

(defclass cruiser_msgs::GetMapJson
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::GetMapJson :md5sum-) "6825166e7da48608dd55394f68c70e3e")
(setf (get cruiser_msgs::GetMapJson :datatype-) "cruiser_msgs/GetMapJson")
(setf (get cruiser_msgs::GetMapJson :request) cruiser_msgs::GetMapJsonRequest)
(setf (get cruiser_msgs::GetMapJson :response) cruiser_msgs::GetMapJsonResponse)

(defmethod cruiser_msgs::GetMapJsonRequest
  (:response () (instance cruiser_msgs::GetMapJsonResponse :init)))

(setf (get cruiser_msgs::GetMapJsonRequest :md5sum-) "6825166e7da48608dd55394f68c70e3e")
(setf (get cruiser_msgs::GetMapJsonRequest :datatype-) "cruiser_msgs/GetMapJsonRequest")
(setf (get cruiser_msgs::GetMapJsonRequest :definition-)
      "
---
cruiser_msgs/MapJson json


================================================================================
MSG: cruiser_msgs/MapJson
uint8[] data

")

(setf (get cruiser_msgs::GetMapJsonResponse :md5sum-) "6825166e7da48608dd55394f68c70e3e")
(setf (get cruiser_msgs::GetMapJsonResponse :datatype-) "cruiser_msgs/GetMapJsonResponse")
(setf (get cruiser_msgs::GetMapJsonResponse :definition-)
      "
---
cruiser_msgs/MapJson json


================================================================================
MSG: cruiser_msgs/MapJson
uint8[] data

")



(provide :cruiser_msgs/GetMapJson "6825166e7da48608dd55394f68c70e3e")


