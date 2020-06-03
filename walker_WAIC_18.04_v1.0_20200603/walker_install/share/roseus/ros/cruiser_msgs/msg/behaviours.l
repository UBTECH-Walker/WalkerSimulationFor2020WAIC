;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::behaviours)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'behaviours (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::BEHAVIOURS")
  (make-package "CRUISER_MSGS::BEHAVIOURS"))

(in-package "ROS")
;;//! \htmlinclude behaviours.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cruiser_msgs::behaviours
  :super ros::object
  :slots (_header _datapacket _clientFd ))

(defmethod cruiser_msgs::behaviours
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:datapacket __datapacket) "")
    ((:clientFd __clientFd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _datapacket (string __datapacket))
   (setq _clientFd (round __clientFd))
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
  (:clientFd
   (&optional __clientFd)
   (if __clientFd (setq _clientFd __clientFd)) _clientFd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _datapacket
    4 (length _datapacket)
    ;; uint32 _clientFd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _datapacket
       (write-long (length _datapacket) s) (princ _datapacket s)
     ;; uint32 _clientFd
       (write-long _clientFd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _datapacket
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _datapacket (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _clientFd
     (setq _clientFd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::behaviours :md5sum-) "1fa06883f2e6627b210d8fd6b7397ec6")
(setf (get cruiser_msgs::behaviours :datatype-) "cruiser_msgs/behaviours")
(setf (get cruiser_msgs::behaviours :definition-)
      "Header header

#command packet
string datapacket

#communication client
uint32 clientFd

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



(provide :cruiser_msgs/behaviours "1fa06883f2e6627b210d8fd6b7397ec6")


