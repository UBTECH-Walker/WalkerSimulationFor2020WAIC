;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::ChassisMotor)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'ChassisMotor (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CHASSISMOTOR")
  (make-package "CRUISER_MSGS::CHASSISMOTOR"))

(in-package "ROS")
;;//! \htmlinclude ChassisMotor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cruiser_msgs::ChassisMotor
  :super ros::object
  :slots (_header _M1 _M2 _M3 ))

(defmethod cruiser_msgs::ChassisMotor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:M1 __M1) 0.0)
    ((:M2 __M2) 0.0)
    ((:M3 __M3) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _M1 (float __M1))
   (setq _M2 (float __M2))
   (setq _M3 (float __M3))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:M1
   (&optional __M1)
   (if __M1 (setq _M1 __M1)) _M1)
  (:M2
   (&optional __M2)
   (if __M2 (setq _M2 __M2)) _M2)
  (:M3
   (&optional __M3)
   (if __M3 (setq _M3 __M3)) _M3)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _M1
    8
    ;; float64 _M2
    8
    ;; float64 _M3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _M1
       (sys::poke _M1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _M2
       (sys::poke _M2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _M3
       (sys::poke _M3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _M1
     (setq _M1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _M2
     (setq _M2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _M3
     (setq _M3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cruiser_msgs::ChassisMotor :md5sum-) "e0989c5ad1d0ba9f193ad5ca3b435331")
(setf (get cruiser_msgs::ChassisMotor :datatype-) "cruiser_msgs/ChassisMotor")
(setf (get cruiser_msgs::ChassisMotor :definition-)
      "# cruiser chassis motor speed info
# for request speed,topic name \"chassis_reqVel\"
# for response speed,topic name \"chassis_respVel\"
Header header
float64 M1
float64 M2
float64 M3


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :cruiser_msgs/ChassisMotor "e0989c5ad1d0ba9f193ad5ca3b435331")


