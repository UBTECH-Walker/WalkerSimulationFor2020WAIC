;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::GetVirtualPath)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'GetVirtualPath (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::GETVIRTUALPATH")
  (make-package "CRUISER_MSGS::GETVIRTUALPATH"))
(unless (find-package "CRUISER_MSGS::GETVIRTUALPATHREQUEST")
  (make-package "CRUISER_MSGS::GETVIRTUALPATHREQUEST"))
(unless (find-package "CRUISER_MSGS::GETVIRTUALPATHRESPONSE")
  (make-package "CRUISER_MSGS::GETVIRTUALPATHRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::GetVirtualPathRequest
  :super ros::object
  :slots ())

(defmethod cruiser_msgs::GetVirtualPathRequest
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

(defclass cruiser_msgs::GetVirtualPathResponse
  :super ros::object
  :slots (_path ))

(defmethod cruiser_msgs::GetVirtualPathResponse
  (:init
   (&key
    ((:path __path) (instance cruiser_msgs::VirtualPath :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; cruiser_msgs/VirtualPath _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cruiser_msgs/VirtualPath _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cruiser_msgs/VirtualPath _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass cruiser_msgs::GetVirtualPath
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::GetVirtualPath :md5sum-) "efa773451ece228573f2fb4e72387f99")
(setf (get cruiser_msgs::GetVirtualPath :datatype-) "cruiser_msgs/GetVirtualPath")
(setf (get cruiser_msgs::GetVirtualPath :request) cruiser_msgs::GetVirtualPathRequest)
(setf (get cruiser_msgs::GetVirtualPath :response) cruiser_msgs::GetVirtualPathResponse)

(defmethod cruiser_msgs::GetVirtualPathRequest
  (:response () (instance cruiser_msgs::GetVirtualPathResponse :init)))

(setf (get cruiser_msgs::GetVirtualPathRequest :md5sum-) "efa773451ece228573f2fb4e72387f99")
(setf (get cruiser_msgs::GetVirtualPathRequest :datatype-) "cruiser_msgs/GetVirtualPathRequest")
(setf (get cruiser_msgs::GetVirtualPathRequest :definition-)
      "
---
cruiser_msgs/VirtualPath path


================================================================================
MSG: cruiser_msgs/VirtualPath
nav_msgs/MapMetaData info
nav_msgs/Path[] paths

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose
")

(setf (get cruiser_msgs::GetVirtualPathResponse :md5sum-) "efa773451ece228573f2fb4e72387f99")
(setf (get cruiser_msgs::GetVirtualPathResponse :datatype-) "cruiser_msgs/GetVirtualPathResponse")
(setf (get cruiser_msgs::GetVirtualPathResponse :definition-)
      "
---
cruiser_msgs/VirtualPath path


================================================================================
MSG: cruiser_msgs/VirtualPath
nav_msgs/MapMetaData info
nav_msgs/Path[] paths

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose
")



(provide :cruiser_msgs/GetVirtualPath "efa773451ece228573f2fb4e72387f99")


