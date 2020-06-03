;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::GetUwbAnchor)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'GetUwbAnchor (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::GETUWBANCHOR")
  (make-package "CRUISER_MSGS::GETUWBANCHOR"))
(unless (find-package "CRUISER_MSGS::GETUWBANCHORREQUEST")
  (make-package "CRUISER_MSGS::GETUWBANCHORREQUEST"))
(unless (find-package "CRUISER_MSGS::GETUWBANCHORRESPONSE")
  (make-package "CRUISER_MSGS::GETUWBANCHORRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::GetUwbAnchorRequest
  :super ros::object
  :slots ())

(defmethod cruiser_msgs::GetUwbAnchorRequest
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

(defclass cruiser_msgs::GetUwbAnchorResponse
  :super ros::object
  :slots (_anchor ))

(defmethod cruiser_msgs::GetUwbAnchorResponse
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

(defclass cruiser_msgs::GetUwbAnchor
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::GetUwbAnchor :md5sum-) "5f4b95f067596a6c57f174e4ed94b6a5")
(setf (get cruiser_msgs::GetUwbAnchor :datatype-) "cruiser_msgs/GetUwbAnchor")
(setf (get cruiser_msgs::GetUwbAnchor :request) cruiser_msgs::GetUwbAnchorRequest)
(setf (get cruiser_msgs::GetUwbAnchor :response) cruiser_msgs::GetUwbAnchorResponse)

(defmethod cruiser_msgs::GetUwbAnchorRequest
  (:response () (instance cruiser_msgs::GetUwbAnchorResponse :init)))

(setf (get cruiser_msgs::GetUwbAnchorRequest :md5sum-) "5f4b95f067596a6c57f174e4ed94b6a5")
(setf (get cruiser_msgs::GetUwbAnchorRequest :datatype-) "cruiser_msgs/GetUwbAnchorRequest")
(setf (get cruiser_msgs::GetUwbAnchorRequest :definition-)
      "
---
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
")

(setf (get cruiser_msgs::GetUwbAnchorResponse :md5sum-) "5f4b95f067596a6c57f174e4ed94b6a5")
(setf (get cruiser_msgs::GetUwbAnchorResponse :datatype-) "cruiser_msgs/GetUwbAnchorResponse")
(setf (get cruiser_msgs::GetUwbAnchorResponse :definition-)
      "
---
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
")



(provide :cruiser_msgs/GetUwbAnchor "5f4b95f067596a6c57f174e4ed94b6a5")


