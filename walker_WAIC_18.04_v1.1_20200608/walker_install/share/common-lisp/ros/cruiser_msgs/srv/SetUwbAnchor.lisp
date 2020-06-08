; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude SetUwbAnchor-request.msg.html

(cl:defclass <SetUwbAnchor-request> (roslisp-msg-protocol:ros-message)
  ((anchor
    :reader anchor
    :initarg :anchor
    :type cruiser_msgs-msg:UwbAnchor
    :initform (cl:make-instance 'cruiser_msgs-msg:UwbAnchor)))
)

(cl:defclass SetUwbAnchor-request (<SetUwbAnchor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUwbAnchor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUwbAnchor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<SetUwbAnchor-request> is deprecated: use cruiser_msgs-srv:SetUwbAnchor-request instead.")))

(cl:ensure-generic-function 'anchor-val :lambda-list '(m))
(cl:defmethod anchor-val ((m <SetUwbAnchor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:anchor-val is deprecated.  Use cruiser_msgs-srv:anchor instead.")
  (anchor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUwbAnchor-request>) ostream)
  "Serializes a message object of type '<SetUwbAnchor-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUwbAnchor-request>) istream)
  "Deserializes a message object of type '<SetUwbAnchor-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUwbAnchor-request>)))
  "Returns string type for a service object of type '<SetUwbAnchor-request>"
  "cruiser_msgs/SetUwbAnchorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUwbAnchor-request)))
  "Returns string type for a service object of type 'SetUwbAnchor-request"
  "cruiser_msgs/SetUwbAnchorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUwbAnchor-request>)))
  "Returns md5sum for a message object of type '<SetUwbAnchor-request>"
  "99557491fedf4df60949814ebddfa650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUwbAnchor-request)))
  "Returns md5sum for a message object of type 'SetUwbAnchor-request"
  "99557491fedf4df60949814ebddfa650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUwbAnchor-request>)))
  "Returns full string definition for message of type '<SetUwbAnchor-request>"
  (cl:format cl:nil "~%cruiser_msgs/UwbAnchor anchor~%~%================================================================================~%MSG: cruiser_msgs/UwbAnchor~%geometry_msgs/PoseStamped[] anchors~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUwbAnchor-request)))
  "Returns full string definition for message of type 'SetUwbAnchor-request"
  (cl:format cl:nil "~%cruiser_msgs/UwbAnchor anchor~%~%================================================================================~%MSG: cruiser_msgs/UwbAnchor~%geometry_msgs/PoseStamped[] anchors~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUwbAnchor-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUwbAnchor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUwbAnchor-request
    (cl:cons ':anchor (anchor msg))
))
;//! \htmlinclude SetUwbAnchor-response.msg.html

(cl:defclass <SetUwbAnchor-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetUwbAnchor-response (<SetUwbAnchor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUwbAnchor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUwbAnchor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<SetUwbAnchor-response> is deprecated: use cruiser_msgs-srv:SetUwbAnchor-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetUwbAnchor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:success-val is deprecated.  Use cruiser_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUwbAnchor-response>) ostream)
  "Serializes a message object of type '<SetUwbAnchor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUwbAnchor-response>) istream)
  "Deserializes a message object of type '<SetUwbAnchor-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUwbAnchor-response>)))
  "Returns string type for a service object of type '<SetUwbAnchor-response>"
  "cruiser_msgs/SetUwbAnchorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUwbAnchor-response)))
  "Returns string type for a service object of type 'SetUwbAnchor-response"
  "cruiser_msgs/SetUwbAnchorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUwbAnchor-response>)))
  "Returns md5sum for a message object of type '<SetUwbAnchor-response>"
  "99557491fedf4df60949814ebddfa650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUwbAnchor-response)))
  "Returns md5sum for a message object of type 'SetUwbAnchor-response"
  "99557491fedf4df60949814ebddfa650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUwbAnchor-response>)))
  "Returns full string definition for message of type '<SetUwbAnchor-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUwbAnchor-response)))
  "Returns full string definition for message of type 'SetUwbAnchor-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUwbAnchor-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUwbAnchor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUwbAnchor-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUwbAnchor)))
  'SetUwbAnchor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUwbAnchor)))
  'SetUwbAnchor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUwbAnchor)))
  "Returns string type for a service object of type '<SetUwbAnchor>"
  "cruiser_msgs/SetUwbAnchor")