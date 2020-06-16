; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude GetVirtualWall-request.msg.html

(cl:defclass <GetVirtualWall-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVirtualWall-request (<GetVirtualWall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVirtualWall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVirtualWall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetVirtualWall-request> is deprecated: use cruiser_msgs-srv:GetVirtualWall-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVirtualWall-request>) ostream)
  "Serializes a message object of type '<GetVirtualWall-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVirtualWall-request>) istream)
  "Deserializes a message object of type '<GetVirtualWall-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVirtualWall-request>)))
  "Returns string type for a service object of type '<GetVirtualWall-request>"
  "cruiser_msgs/GetVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualWall-request)))
  "Returns string type for a service object of type 'GetVirtualWall-request"
  "cruiser_msgs/GetVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVirtualWall-request>)))
  "Returns md5sum for a message object of type '<GetVirtualWall-request>"
  "bf9b4c73a9da4988a548c8f4357827ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVirtualWall-request)))
  "Returns md5sum for a message object of type 'GetVirtualWall-request"
  "bf9b4c73a9da4988a548c8f4357827ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVirtualWall-request>)))
  "Returns full string definition for message of type '<GetVirtualWall-request>"
  (cl:format cl:nil "# Get the virtual wall as a cruiser_msgs/VirtualWall~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVirtualWall-request)))
  "Returns full string definition for message of type 'GetVirtualWall-request"
  (cl:format cl:nil "# Get the virtual wall as a cruiser_msgs/VirtualWall~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVirtualWall-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVirtualWall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVirtualWall-request
))
;//! \htmlinclude GetVirtualWall-response.msg.html

(cl:defclass <GetVirtualWall-response> (roslisp-msg-protocol:ros-message)
  ((wall
    :reader wall
    :initarg :wall
    :type cruiser_msgs-msg:VirtualWall
    :initform (cl:make-instance 'cruiser_msgs-msg:VirtualWall)))
)

(cl:defclass GetVirtualWall-response (<GetVirtualWall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVirtualWall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVirtualWall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetVirtualWall-response> is deprecated: use cruiser_msgs-srv:GetVirtualWall-response instead.")))

(cl:ensure-generic-function 'wall-val :lambda-list '(m))
(cl:defmethod wall-val ((m <GetVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:wall-val is deprecated.  Use cruiser_msgs-srv:wall instead.")
  (wall m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVirtualWall-response>) ostream)
  "Serializes a message object of type '<GetVirtualWall-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wall) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVirtualWall-response>) istream)
  "Deserializes a message object of type '<GetVirtualWall-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wall) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVirtualWall-response>)))
  "Returns string type for a service object of type '<GetVirtualWall-response>"
  "cruiser_msgs/GetVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualWall-response)))
  "Returns string type for a service object of type 'GetVirtualWall-response"
  "cruiser_msgs/GetVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVirtualWall-response>)))
  "Returns md5sum for a message object of type '<GetVirtualWall-response>"
  "bf9b4c73a9da4988a548c8f4357827ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVirtualWall-response)))
  "Returns md5sum for a message object of type 'GetVirtualWall-response"
  "bf9b4c73a9da4988a548c8f4357827ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVirtualWall-response>)))
  "Returns full string definition for message of type '<GetVirtualWall-response>"
  (cl:format cl:nil "cruiser_msgs/VirtualWall wall~%~%~%================================================================================~%MSG: cruiser_msgs/VirtualWall~%nav_msgs/MapMetaData info~%nav_msgs/Path[] walls~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVirtualWall-response)))
  "Returns full string definition for message of type 'GetVirtualWall-response"
  (cl:format cl:nil "cruiser_msgs/VirtualWall wall~%~%~%================================================================================~%MSG: cruiser_msgs/VirtualWall~%nav_msgs/MapMetaData info~%nav_msgs/Path[] walls~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVirtualWall-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wall))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVirtualWall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVirtualWall-response
    (cl:cons ':wall (wall msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVirtualWall)))
  'GetVirtualWall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVirtualWall)))
  'GetVirtualWall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualWall)))
  "Returns string type for a service object of type '<GetVirtualWall>"
  "cruiser_msgs/GetVirtualWall")