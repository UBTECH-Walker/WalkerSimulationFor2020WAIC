;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::GetVirtualWall)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'GetVirtualWall (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::GETVIRTUALWALL")
  (make-package "CRUISER_MSGS::GETVIRTUALWALL"))
(unless (find-package "CRUISER_MSGS::GETVIRTUALWALLREQUEST")
  (make-package "CRUISER_MSGS::GETVIRTUALWALLREQUEST"))
(unless (find-package "CRUISER_MSGS::GETVIRTUALWALLRESPONSE")
  (make-package "CRUISER_MSGS::GETVIRTUALWALLRESPONSE"))

(in-package "ROS")





(defclass cruiser_msgs::GetVirtualWallRequest
  :super ros::object
  :slots ())

(defmethod cruiser_msgs::GetVirtualWallRequest
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

(defclass cruiser_msgs::GetVirtualWallResponse
  :super ros::object
  :slots (_wall ))

(defmethod cruiser_msgs::GetVirtualWallResponse
  (:init
   (&key
    ((:wall __wall) (instance cruiser_msgs::VirtualWall :init))
    )
   (send-super :init)
   (setq _wall __wall)
   self)
  (:wall
   (&rest __wall)
   (if (keywordp (car __wall))
       (send* _wall __wall)
     (progn
       (if __wall (setq _wall (car __wall)))
       _wall)))
  (:serialization-length
   ()
   (+
    ;; cruiser_msgs/VirtualWall _wall
    (send _wall :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cruiser_msgs/VirtualWall _wall
       (send _wall :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cruiser_msgs/VirtualWall _wall
     (send _wall :deserialize buf ptr-) (incf ptr- (send _wall :serialization-length))
   ;;
   self)
  )

(defclass cruiser_msgs::GetVirtualWall
  :super ros::object
  :slots ())

(setf (get cruiser_msgs::GetVirtualWall :md5sum-) "bf9b4c73a9da4988a548c8f4357827ec")
(setf (get cruiser_msgs::GetVirtualWall :datatype-) "cruiser_msgs/GetVirtualWall")
(setf (get cruiser_msgs::GetVirtualWall :request) cruiser_msgs::GetVirtualWallRequest)
(setf (get cruiser_msgs::GetVirtualWall :response) cruiser_msgs::GetVirtualWallResponse)

(defmethod cruiser_msgs::GetVirtualWallRequest
  (:response () (instance cruiser_msgs::GetVirtualWallResponse :init)))

(setf (get cruiser_msgs::GetVirtualWallRequest :md5sum-) "bf9b4c73a9da4988a548c8f4357827ec")
(setf (get cruiser_msgs::GetVirtualWallRequest :datatype-) "cruiser_msgs/GetVirtualWallRequest")
(setf (get cruiser_msgs::GetVirtualWallRequest :definition-)
      "
---
cruiser_msgs/VirtualWall wall


================================================================================
MSG: cruiser_msgs/VirtualWall
nav_msgs/MapMetaData info
nav_msgs/Path[] walls

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

(setf (get cruiser_msgs::GetVirtualWallResponse :md5sum-) "bf9b4c73a9da4988a548c8f4357827ec")
(setf (get cruiser_msgs::GetVirtualWallResponse :datatype-) "cruiser_msgs/GetVirtualWallResponse")
(setf (get cruiser_msgs::GetVirtualWallResponse :definition-)
      "
---
cruiser_msgs/VirtualWall wall


================================================================================
MSG: cruiser_msgs/VirtualWall
nav_msgs/MapMetaData info
nav_msgs/Path[] walls

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



(provide :cruiser_msgs/GetVirtualWall "bf9b4c73a9da4988a548c8f4357827ec")


