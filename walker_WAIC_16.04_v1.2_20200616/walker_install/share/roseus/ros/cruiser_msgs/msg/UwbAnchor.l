;; Auto-generated. Do not edit!


(when (boundp 'cruiser_msgs::UwbAnchor)
  (if (not (find-package "CRUISER_MSGS"))
    (make-package "CRUISER_MSGS"))
  (shadow 'UwbAnchor (find-package "CRUISER_MSGS")))
(unless (find-package "CRUISER_MSGS::UWBANCHOR")
  (make-package "CRUISER_MSGS::UWBANCHOR"))

(in-package "ROS")
;;//! \htmlinclude UwbAnchor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cruiser_msgs::UwbAnchor
  :super ros::object
  :slots (_anchors ))

(defmethod cruiser_msgs::UwbAnchor
  (:init
   (&key
    ((:anchors __anchors) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _anchors __anchors)
   self)
  (:anchors
   (&rest __anchors)
   (if (keywordp (car __anchors))
       (send* _anchors __anchors)
     (progn
       (if __anchors (setq _anchors (car __anchors)))
       _anchors)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _anchors
    (apply #'+ (send-all _anchors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _anchors
     (write-long (length _anchors) s)
     (dolist (elem _anchors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _anchors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _anchors (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _anchors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cruiser_msgs::UwbAnchor :md5sum-) "bb69d45428817d4189c9bb41446d70fb")
(setf (get cruiser_msgs::UwbAnchor :datatype-) "cruiser_msgs/UwbAnchor")
(setf (get cruiser_msgs::UwbAnchor :definition-)
      "geometry_msgs/PoseStamped[] anchors

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
# 0: no frame
# 1: global frame
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



(provide :cruiser_msgs/UwbAnchor "bb69d45428817d4189c9bb41446d70fb")


