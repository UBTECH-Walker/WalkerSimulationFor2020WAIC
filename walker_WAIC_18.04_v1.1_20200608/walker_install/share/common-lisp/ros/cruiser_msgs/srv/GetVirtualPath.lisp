; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude GetVirtualPath-request.msg.html

(cl:defclass <GetVirtualPath-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVirtualPath-request (<GetVirtualPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVirtualPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVirtualPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetVirtualPath-request> is deprecated: use cruiser_msgs-srv:GetVirtualPath-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVirtualPath-request>) ostream)
  "Serializes a message object of type '<GetVirtualPath-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVirtualPath-request>) istream)
  "Deserializes a message object of type '<GetVirtualPath-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVirtualPath-request>)))
  "Returns string type for a service object of type '<GetVirtualPath-request>"
  "cruiser_msgs/GetVirtualPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualPath-request)))
  "Returns string type for a service object of type 'GetVirtualPath-request"
  "cruiser_msgs/GetVirtualPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVirtualPath-request>)))
  "Returns md5sum for a message object of type '<GetVirtualPath-request>"
  "efa773451ece228573f2fb4e72387f99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVirtualPath-request)))
  "Returns md5sum for a message object of type 'GetVirtualPath-request"
  "efa773451ece228573f2fb4e72387f99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVirtualPath-request>)))
  "Returns full string definition for message of type '<GetVirtualPath-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVirtualPath-request)))
  "Returns full string definition for message of type 'GetVirtualPath-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVirtualPath-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVirtualPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVirtualPath-request
))
;//! \htmlinclude GetVirtualPath-response.msg.html

(cl:defclass <GetVirtualPath-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cruiser_msgs-msg:VirtualPath
    :initform (cl:make-instance 'cruiser_msgs-msg:VirtualPath)))
)

(cl:defclass GetVirtualPath-response (<GetVirtualPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVirtualPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVirtualPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetVirtualPath-response> is deprecated: use cruiser_msgs-srv:GetVirtualPath-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GetVirtualPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:path-val is deprecated.  Use cruiser_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVirtualPath-response>) ostream)
  "Serializes a message object of type '<GetVirtualPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVirtualPath-response>) istream)
  "Deserializes a message object of type '<GetVirtualPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVirtualPath-response>)))
  "Returns string type for a service object of type '<GetVirtualPath-response>"
  "cruiser_msgs/GetVirtualPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualPath-response)))
  "Returns string type for a service object of type 'GetVirtualPath-response"
  "cruiser_msgs/GetVirtualPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVirtualPath-response>)))
  "Returns md5sum for a message object of type '<GetVirtualPath-response>"
  "efa773451ece228573f2fb4e72387f99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVirtualPath-response)))
  "Returns md5sum for a message object of type 'GetVirtualPath-response"
  "efa773451ece228573f2fb4e72387f99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVirtualPath-response>)))
  "Returns full string definition for message of type '<GetVirtualPath-response>"
  (cl:format cl:nil "cruiser_msgs/VirtualPath path~%~%~%================================================================================~%MSG: cruiser_msgs/VirtualPath~%nav_msgs/MapMetaData info~%nav_msgs/Path[] paths~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVirtualPath-response)))
  "Returns full string definition for message of type 'GetVirtualPath-response"
  (cl:format cl:nil "cruiser_msgs/VirtualPath path~%~%~%================================================================================~%MSG: cruiser_msgs/VirtualPath~%nav_msgs/MapMetaData info~%nav_msgs/Path[] paths~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVirtualPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVirtualPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVirtualPath-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVirtualPath)))
  'GetVirtualPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVirtualPath)))
  'GetVirtualPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualPath)))
  "Returns string type for a service object of type '<GetVirtualPath>"
  "cruiser_msgs/GetVirtualPath")