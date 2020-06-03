;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::VirtualWall)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'VirtualWall (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::VIRTUALWALL")
  (make-package "CRUISER_MSGS::VIRTUALWALL"))

(in-package "ROS")
;;//! \htmlinclude VirtualWall.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass cruiser_msgs::VirtualWall
  :super ros::object
  :slots (_info _walls ))

(defmethod cruiser_msgs::VirtualWall
  (:init
   (&key
    ((:info __info) (instance nav_msgs::MapMetaData :init))
    ((:walls __walls) (let (r) (dotimes (i 0) (push (instance nav_msgs::Path :init) r)) r))
    )
   (send-super :init)
   (setq _info __info)
   (setq _walls __walls)
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:walls
   (&rest __walls)
   (if (keywordp (car __walls))
       (send* _walls __walls)
     (progn
       (if __walls (setq _walls (car __walls)))
       _walls)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/MapMetaData _info
    (send _info :serialization-length)
    ;; nav_msgs/Path[] _walls
    (apply #'+ (send-all _walls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/MapMetaData _info
       (send _info :serialize s)
     ;; nav_msgs/Path[] _walls
     (write-long (length _walls) s)
     (dolist (elem _walls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/MapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; nav_msgs/Path[] _walls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _walls (let (r) (dotimes (i n) (push (instance nav_msgs::Path :init) r)) r))
     (dolist (elem- _walls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cruiser_msgs::VirtualWall :md5sum-) "f2a170bcae45cdc4c5d5fe2965ae941e")
(setf (get cruiser_msgs::VirtualWall :datatype-) "cruiser_msgs/VirtualWall")
(setf (get cruiser_msgs::VirtualWall :definition-)
      "nav_msgs/MapMetaData info
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



(provide :cruiser_msgs/VirtualWall "f2a170bcae45cdc4c5d5fe2965ae941e")


