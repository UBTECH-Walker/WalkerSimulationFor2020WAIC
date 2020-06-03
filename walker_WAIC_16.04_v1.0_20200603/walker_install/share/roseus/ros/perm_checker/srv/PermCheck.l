;; Auto-generated. Do not edit!


(when (boundp 'perm_checker::PermCheck)
  (if (not (find-package "PERM_CHECKER"))
    (make-package "PERM_CHECKER"))
  (shadow 'PermCheck (find-package "PERM_CHECKER")))
(unless (find-package "PERM_CHECKER::PERMCHECK")
  (make-package "PERM_CHECKER::PERMCHECK"))
(unless (find-package "PERM_CHECKER::PERMCHECKREQUEST")
  (make-package "PERM_CHECKER::PERMCHECKREQUEST"))
(unless (find-package "PERM_CHECKER::PERMCHECKRESPONSE")
  (make-package "PERM_CHECKER::PERMCHECKRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perm_checker::PermCheckRequest
  :super ros::object
  :slots (_header _content ))

(defmethod perm_checker::PermCheckRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:content __content) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _content (string __content))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass perm_checker::PermCheckResponse
  :super ros::object
  :slots (_header _content ))

(defmethod perm_checker::PermCheckResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:content __content) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _content (string __content))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass perm_checker::PermCheck
  :super ros::object
  :slots ())

(setf (get perm_checker::PermCheck :md5sum-) "567625a38a97c54a8feb8f3c8d08ffa6")
(setf (get perm_checker::PermCheck :datatype-) "perm_checker/PermCheck")
(setf (get perm_checker::PermCheck :request) perm_checker::PermCheckRequest)
(setf (get perm_checker::PermCheck :response) perm_checker::PermCheckResponse)

(defmethod perm_checker::PermCheckRequest
  (:response () (instance perm_checker::PermCheckResponse :init)))

(setf (get perm_checker::PermCheckRequest :md5sum-) "567625a38a97c54a8feb8f3c8d08ffa6")
(setf (get perm_checker::PermCheckRequest :datatype-) "perm_checker/PermCheckRequest")
(setf (get perm_checker::PermCheckRequest :definition-)
      "Header header
string content

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
---
Header header
string content

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

(setf (get perm_checker::PermCheckResponse :md5sum-) "567625a38a97c54a8feb8f3c8d08ffa6")
(setf (get perm_checker::PermCheckResponse :datatype-) "perm_checker/PermCheckResponse")
(setf (get perm_checker::PermCheckResponse :definition-)
      "Header header
string content

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
---
Header header
string content

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



(provide :perm_checker/PermCheck "567625a38a97c54a8feb8f3c8d08ffa6")


