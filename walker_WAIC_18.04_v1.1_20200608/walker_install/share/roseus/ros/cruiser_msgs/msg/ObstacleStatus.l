;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::ObstacleStatus)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'ObstacleStatus (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::OBSTACLESTATUS")
  (make-package "CRUISER_MSGS::OBSTACLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ObstacleStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cruiser_msgs::ObstacleStatus
  :super ros::object
  :slots (_lethal_dis _inflated_dis _lethal_pose _inflated_pose ))

(defmethod cruiser_msgs::ObstacleStatus
  (:init
   (&key
    ((:lethal_dis __lethal_dis) 0.0)
    ((:inflated_dis __inflated_dis) 0.0)
    ((:lethal_pose __lethal_pose) (instance geometry_msgs::PoseStamped :init))
    ((:inflated_pose __inflated_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _lethal_dis (float __lethal_dis))
   (setq _inflated_dis (float __inflated_dis))
   (setq _lethal_pose __lethal_pose)
   (setq _inflated_pose __inflated_pose)
   self)
  (:lethal_dis
   (&optional __lethal_dis)
   (if __lethal_dis (setq _lethal_dis __lethal_dis)) _lethal_dis)
  (:inflated_dis
   (&optional __inflated_dis)
   (if __inflated_dis (setq _inflated_dis __inflated_dis)) _inflated_dis)
  (:lethal_pose
   (&rest __lethal_pose)
   (if (keywordp (car __lethal_pose))
       (send* _lethal_pose __lethal_pose)
     (progn
       (if __lethal_pose (setq _lethal_pose (car __lethal_pose)))
       _lethal_pose)))
  (:inflated_pose
   (&rest __inflated_pose)
   (if (keywordp (car __inflated_pose))
       (send* _inflated_pose __inflated_pose)
     (progn
       (if __inflated_pose (setq _inflated_pose (car __inflated_pose)))
       _inflated_pose)))
  (:serialization-length
   ()
   (+
    ;; float32 _lethal_dis
    4
    ;; float32 _inflated_dis
    4
    ;; geometry_msgs/PoseStamped _lethal_pose
    (send _lethal_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _inflated_pose
    (send _inflated_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lethal_dis
       (sys::poke _lethal_dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inflated_dis
       (sys::poke _inflated_dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseStamped _lethal_pose
       (send _lethal_pose :serialize s)
     ;; geometry_msgs/PoseStamped _inflated_pose
       (send _inflated_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lethal_dis
     (setq _lethal_dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inflated_dis
     (setq _inflated_dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _lethal_pose
     (send _lethal_pose :deserialize buf ptr-) (incf ptr- (send _lethal_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _inflated_pose
     (send _inflated_pose :deserialize buf ptr-) (incf ptr- (send _inflated_pose :serialization-length))
   ;;
   self)
  )

(setf (get cruiser_msgs::ObstacleStatus :md5sum-) "7e84b2031a914018d70a2626de80e5ca")
(setf (get cruiser_msgs::ObstacleStatus :datatype-) "cruiser_msgs/ObstacleStatus")
(setf (get cruiser_msgs::ObstacleStatus :definition-)
      "float32 lethal_dis
float32 inflated_dis
geometry_msgs/PoseStamped lethal_pose
geometry_msgs/PoseStamped inflated_pose

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



(provide :cruiser_msgs/ObstacleStatus "7e84b2031a914018d70a2626de80e5ca")


