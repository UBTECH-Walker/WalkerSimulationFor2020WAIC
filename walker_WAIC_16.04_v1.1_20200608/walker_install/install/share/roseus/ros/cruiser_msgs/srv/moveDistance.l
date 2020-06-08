;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::moveDistance)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'moveDistance (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::MOVEDISTANCE")
  (make-package "CRUISER_MSGS::MOVEDISTANCE"))
(unless (find-package "CRUISER_MSGS::MOVEDISTANCEREQUEST")
  (make-package "CRUISER_MSGS::MOVEDISTANCEREQUEST"))
(unless (find-package "CRUISER_MSGS::MOVEDISTANCERESPONSE")
  (make-package "CRUISER_MSGS::MOVEDISTANCERESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::moveDistanceRequest
  :super ros::object
  :slots (_reserved ))

(defmethod cruiser_msgs::moveDistanceRequest
  (:init
   (&key
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _reserved (round __reserved))
   self)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint32 _reserved
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _reserved
       (write-long _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::moveDistanceResponse
  :super ros::object
  :slots (_result _dis_x _dis_y _dis_z ))

(defmethod cruiser_msgs::moveDistanceResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:dis_x __dis_x) 0.0)
    ((:dis_y __dis_y) 0.0)
    ((:dis_z __dis_z) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _dis_x (float __dis_x))
   (setq _dis_y (float __dis_y))
   (setq _dis_z (float __dis_z))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:dis_x
   (&optional __dis_x)
   (if __dis_x (setq _dis_x __dis_x)) _dis_x)
  (:dis_y
   (&optional __dis_y)
   (if __dis_y (setq _dis_y __dis_y)) _dis_y)
  (:dis_z
   (&optional __dis_z)
   (if __dis_z (setq _dis_z __dis_z)) _dis_z)
  (:serialization-length
   ()
   (+
    ;; uint32 _result
    4
    ;; float32 _dis_x
    4
    ;; float32 _dis_y
    4
    ;; float32 _dis_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _result
       (write-long _result s)
     ;; float32 _dis_x
       (sys::poke _dis_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_y
       (sys::poke _dis_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_z
       (sys::poke _dis_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dis_x
     (setq _dis_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_y
     (setq _dis_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_z
     (setq _dis_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cruiser_msgs::moveDistance
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::moveDistance :md5sum-) "2138d7d6c1b896d7258bf22cf4d740bb")
(setf (get cruiser_msgs::moveDistance :datatype-) "cruiser_msgs/moveDistance")
(setf (get cruiser_msgs::moveDistance :request) cruiser_msgs::moveDistanceRequest)
(setf (get cruiser_msgs::moveDistance :response) cruiser_msgs::moveDistanceResponse)

(defmethod cruiser_msgs::moveDistanceRequest
  (:response () (instance cruiser_msgs::moveDistanceResponse :init)))

(setf (get cruiser_msgs::moveDistanceRequest :md5sum-) "2138d7d6c1b896d7258bf22cf4d740bb")
(setf (get cruiser_msgs::moveDistanceRequest :datatype-) "cruiser_msgs/moveDistanceRequest")
(setf (get cruiser_msgs::moveDistanceRequest :definition-)
      "uint32 reserved
---
uint32 result
float32 dis_x
float32 dis_y
float32 dis_z


")

(setf (get cruiser_msgs::moveDistanceResponse :md5sum-) "2138d7d6c1b896d7258bf22cf4d740bb")
(setf (get cruiser_msgs::moveDistanceResponse :datatype-) "cruiser_msgs/moveDistanceResponse")
(setf (get cruiser_msgs::moveDistanceResponse :definition-)
      "uint32 reserved
---
uint32 result
float32 dis_x
float32 dis_y
float32 dis_z


")



(provide :cruiser_msgs/moveDistance "2138d7d6c1b896d7258bf22cf4d740bb")


