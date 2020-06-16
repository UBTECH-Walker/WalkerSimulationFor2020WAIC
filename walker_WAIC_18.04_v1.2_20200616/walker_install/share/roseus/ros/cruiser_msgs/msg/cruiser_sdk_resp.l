;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::cruiser_sdk_resp)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'cruiser_sdk_resp (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::CRUISER_SDK_RESP")
  (make-package "CRUISER_MSGS::CRUISER_SDK_RESP"))

(in-package "ROS")
;;//! \htmlinclude cruiser_sdk_resp.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cruiser_msgs::cruiser_sdk_resp
  :super ros::object
  :slots (_header _datapacket _cmdType _cmdResult _clientFd ))

(defmethod cruiser_msgs::cruiser_sdk_resp
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:datapacket __datapacket) "")
    ((:cmdType __cmdType) 0)
    ((:cmdResult __cmdResult) 0)
    ((:clientFd __clientFd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _datapacket (string __datapacket))
   (setq _cmdType (round __cmdType))
   (setq _cmdResult (round __cmdResult))
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
  (:cmdType
   (&optional __cmdType)
   (if __cmdType (setq _cmdType __cmdType)) _cmdType)
  (:cmdResult
   (&optional __cmdResult)
   (if __cmdResult (setq _cmdResult __cmdResult)) _cmdResult)
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
    ;; uint32 _cmdType
    4
    ;; uint32 _cmdResult
    4
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
     ;; uint32 _cmdType
       (write-long _cmdType s)
     ;; uint32 _cmdResult
       (write-long _cmdResult s)
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
   ;; uint32 _cmdType
     (setq _cmdType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cmdResult
     (setq _cmdResult (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _clientFd
     (setq _clientFd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cruiser_msgs::cruiser_sdk_resp :md5sum-) "67265208b8ec2a3368581dba5ddc5c17")
(setf (get cruiser_msgs::cruiser_sdk_resp :datatype-) "cruiser_msgs/cruiser_sdk_resp")
(setf (get cruiser_msgs::cruiser_sdk_resp :definition-)
      "Header header
string datapacket

#command type
uint32 cmdType

#command result state
uint32 cmdResult

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



(provide :cruiser_msgs/cruiser_sdk_resp "67265208b8ec2a3368581dba5ddc5c17")


