;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::SetUwbAnchor)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'SetUwbAnchor (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::SETUWBANCHOR")
  (make-package "CRUISER_MSGS::SETUWBANCHOR"))
(unless (find-package "CRUISER_MSGS::SETUWBANCHORREQUEST")
  (make-package "CRUISER_MSGS::SETUWBANCHORREQUEST"))
(unless (find-package "CRUISER_MSGS::SETUWBANCHORRESPONSE")
  (make-package "CRUISER_MSGS::SETUWBANCHORRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::SetUwbAnchorRequest
  :super ros::object
  :slots (_anchor ))

(defmethod cruiser_msgs::SetUwbAnchorRequest
  (:init
   (&key
    ((:anchor __anchor) (instance cruiser_msgs::UwbAnchor :init))
    )
   (send-super :init)
   (setq _anchor __anchor)
   self)
  (:anchor
   (&rest __anchor)
   (if (keywordp (car __anchor))
       (send* _anchor __anchor)
     (progn
       (if __anchor (setq _anchor (car __anchor)))
       _anchor)))
  (:serialization-length
   ()
   (+
    ;; cruiser_msgs/UwbAnchor _anchor
    (send _anchor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cruiser_msgs/UwbAnchor _anchor
       (send _anchor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cruiser_msgs/UwbAnchor _anchor
     (send _anchor :deserialize buf ptr-) (incf ptr- (send _anchor :serialization-length))
   ;;
   self)
  )

(defclass cruiser_msgs::SetUwbAnchorResponse
  :super ros::object
  :slots (_success ))

(defmethod cruiser_msgs::SetUwbAnchorResponse
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

(defclass cruiser_msgs::SetUwbAnchor
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::SetUwbAnchor :md5sum-) "99557491fedf4df60949814ebddfa650")
(setf (get cruiser_msgs::SetUwbAnchor :datatype-) "cruiser_msgs/SetUwbAnchor")
(setf (get cruiser_msgs::SetUwbAnchor :request) cruiser_msgs::SetUwbAnchorRequest)
(setf (get cruiser_msgs::SetUwbAnchor :response) cruiser_msgs::SetUwbAnchorResponse)

(defmethod cruiser_msgs::SetUwbAnchorRequest
  (:response () (instance cruiser_msgs::SetUwbAnchorResponse :init)))

(setf (get cruiser_msgs::SetUwbAnchorRequest :md5sum-) "99557491fedf4df60949814ebddfa650")
(setf (get cruiser_msgs::SetUwbAnchorRequest :datatype-) "cruiser_msgs/SetUwbAnchorRequest")
(setf (get cruiser_msgs::SetUwbAnchorRequest :definition-)
      "
cruiser_msgs/UwbAnchor anchor

================================================================================
MSG: cruiser_msgs/UwbAnchor
geometry_msgs/PoseStamped[] anchors

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success


")

(setf (get cruiser_msgs::SetUwbAnchorResponse :md5sum-) "99557491fedf4df60949814ebddfa650")
(setf (get cruiser_msgs::SetUwbAnchorResponse :datatype-) "cruiser_msgs/SetUwbAnchorResponse")
(setf (get cruiser_msgs::SetUwbAnchorResponse :definition-)
      "
cruiser_msgs/UwbAnchor anchor

================================================================================
MSG: cruiser_msgs/UwbAnchor
geometry_msgs/PoseStamped[] anchors

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success


")



(provide :cruiser_msgs/SetUwbAnchor "99557491fedf4df60949814ebddfa650")


