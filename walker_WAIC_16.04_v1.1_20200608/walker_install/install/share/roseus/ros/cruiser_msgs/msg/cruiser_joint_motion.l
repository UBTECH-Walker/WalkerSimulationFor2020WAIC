;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiser_joint_motion)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiser_joint_motion (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISER_JOINT_MOTION")
  (make-package "CRUISER_MSGS::CRUISER_JOINT_MOTION"))

(in-package "ROS")
;;//! \htmlinclude cruiser_joint_motion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cruiser_msgs::cruiser_joint_motion
  :super ros::object
  :slots (_header _datapacket ))

(defmethod cruiser_msgs::cruiser_joint_motion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:datapacket __datapacket) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _datapacket (string __datapacket))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:datapacket
   (&optional __datapacket)
   (if __datapacket (setq _datapacket __datapacket)) _datapacket)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _datapacket
    4 (length _datapacket)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _datapacket
       (write-long (length _datapacket) s) (princ _datapacket s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _datapacket
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _datapacket (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiser_joint_motion :md5sum-) "550613a4ae39cd5ce70b393463b493f5")
(setf (get cruiser_msgs::cruiser_joint_motion :datatype-) "cruiser_msgs/cruiser_joint_motion")
(setf (get cruiser_msgs::cruiser_joint_motion :definition-)
      "Header header
string datapacket

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :cruiser_msgs/cruiser_joint_motion "550613a4ae39cd5ce70b393463b493f5")


