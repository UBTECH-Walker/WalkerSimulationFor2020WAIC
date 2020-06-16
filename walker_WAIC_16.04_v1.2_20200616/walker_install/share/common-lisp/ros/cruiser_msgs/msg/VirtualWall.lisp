; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude VirtualWall.msg.html

(cl:defclass <VirtualWall> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type nav_msgs-msg:MapMetaData
    :initform (cl:make-instance 'nav_msgs-msg:MapMetaData))
   (walls
    :reader walls
    :initarg :walls
    :type (cl:vector nav_msgs-msg:Path)
   :initform (cl:make-array 0 :element-type 'nav_msgs-msg:Path :initial-element (cl:make-instance 'nav_msgs-msg:Path))))
)

(cl:defclass VirtualWall (<VirtualWall>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualWall>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualWall)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<VirtualWall> is deprecated: use cruiser_msgs-msg:VirtualWall instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <VirtualWall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:info-val is deprecated.  Use cruiser_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'walls-val :lambda-list '(m))
(cl:defmethod walls-val ((m <VirtualWall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:walls-val is deprecated.  Use cruiser_msgs-msg:walls instead.")
  (walls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualWall>) ostream)
  "Serializes a message object of type '<VirtualWall>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'walls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'walls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualWall>) istream)
  "Deserializes a message object of type '<VirtualWall>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'walls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'walls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_msgs-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualWall>)))
  "Returns string type for a message object of type '<VirtualWall>"
  "cruiser_msgs/VirtualWall")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualWall)))
  "Returns string type for a message object of type 'VirtualWall"
  "cruiser_msgs/VirtualWall")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualWall>)))
  "Returns md5sum for a message object of type '<VirtualWall>"
  "f2a170bcae45cdc4c5d5fe2965ae941e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualWall)))
  "Returns md5sum for a message object of type 'VirtualWall"
  "f2a170bcae45cdc4c5d5fe2965ae941e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualWall>)))
  "Returns full string definition for message of type '<VirtualWall>"
  (cl:format cl:nil "nav_msgs/MapMetaData info~%nav_msgs/Path[] walls~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualWall)))
  "Returns full string definition for message of type 'VirtualWall"
  (cl:format cl:nil "nav_msgs/MapMetaData info~%nav_msgs/Path[] walls~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualWall>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'walls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualWall>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualWall
    (cl:cons ':info (info msg))
    (cl:cons ':walls (walls msg))
))
