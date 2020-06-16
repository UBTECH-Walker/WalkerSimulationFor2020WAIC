;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiserPowerAction)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiserPowerAction (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISERPOWERACTION")
  (make-package "CRUISER_MSGS::CRUISERPOWERACTION"))
(unless (find-package "CRUISER_MSGS::CRUISERPOWERACTIONREQUEST")
  (make-package "CRUISER_MSGS::CRUISERPOWERACTIONREQUEST"))
(unless (find-package "CRUISER_MSGS::CRUISERPOWERACTIONRESPONSE")
  (make-package "CRUISER_MSGS::CRUISERPOWERACTIONRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::cruiserPowerActionRequest
  :super ros::object
  :slots (_dev_name _on_off ))

(defmethod cruiser_msgs::cruiserPowerActionRequest
  (:init
   (&key
    ((:dev_name __dev_name) 0)
    ((:on_off __on_off) 0)
    )
   (send-super :init)
   (setq _dev_name (round __dev_name))
   (setq _on_off (round __on_off))
   self)
  (:dev_name
   (&optional __dev_name)
   (if __dev_name (setq _dev_name __dev_name)) _dev_name)
  (:on_off
   (&optional __on_off)
   (if __on_off (setq _on_off __on_off)) _on_off)
  (:serialization-length
   ()
   (+
    ;; uint32 _dev_name
    4
    ;; uint32 _on_off
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _dev_name
       (write-long _dev_name s)
     ;; uint32 _on_off
       (write-long _on_off s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _dev_name
     (setq _dev_name (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _on_off
     (setq _on_off (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::cruiserPowerActionResponse
  :super ros::object
  :slots (_result ))

(defmethod cruiser_msgs::cruiserPowerActionResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::cruiserPowerAction
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::cruiserPowerAction :md5sum-) "e9b14d2fb77896c676ca42362f1376f2")
(setf (get cruiser_msgs::cruiserPowerAction :datatype-) "cruiser_msgs/cruiserPowerAction")
(setf (get cruiser_msgs::cruiserPowerAction :request) cruiser_msgs::cruiserPowerActionRequest)
(setf (get cruiser_msgs::cruiserPowerAction :response) cruiser_msgs::cruiserPowerActionResponse)

(defmethod cruiser_msgs::cruiserPowerActionRequest
  (:response () (instance cruiser_msgs::cruiserPowerActionResponse :init)))

(setf (get cruiser_msgs::cruiserPowerActionRequest :md5sum-) "e9b14d2fb77896c676ca42362f1376f2")
(setf (get cruiser_msgs::cruiserPowerActionRequest :datatype-) "cruiser_msgs/cruiserPowerActionRequest")
(setf (get cruiser_msgs::cruiserPowerActionRequest :definition-)
      "uint32 dev_name
uint32 on_off
---
uint32 result


")

(setf (get cruiser_msgs::cruiserPowerActionResponse :md5sum-) "e9b14d2fb77896c676ca42362f1376f2")
(setf (get cruiser_msgs::cruiserPowerActionResponse :datatype-) "cruiser_msgs/cruiserPowerActionResponse")
(setf (get cruiser_msgs::cruiserPowerActionResponse :definition-)
      "uint32 dev_name
uint32 on_off
---
uint32 result


")



(provide :cruiser_msgs/cruiserPowerAction "e9b14d2fb77896c676ca42362f1376f2")


