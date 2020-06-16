; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude GetUwbAnchor-request.msg.html

(cl:defclass <GetUwbAnchor-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUwbAnchor-request (<GetUwbAnchor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUwbAnchor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUwbAnchor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetUwbAnchor-request> is deprecated: use cruiser_msgs-srv:GetUwbAnchor-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUwbAnchor-request>) ostream)
  "Serializes a message object of type '<GetUwbAnchor-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUwbAnchor-request>) istream)
  "Deserializes a message object of type '<GetUwbAnchor-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUwbAnchor-request>)))
  "Returns string type for a service object of type '<GetUwbAnchor-request>"
  "cruiser_msgs/GetUwbAnchorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUwbAnchor-request)))
  "Returns string type for a service object of type 'GetUwbAnchor-request"
  "cruiser_msgs/GetUwbAnchorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUwbAnchor-request>)))
  "Returns md5sum for a message object of type '<GetUwbAnchor-request>"
  "5f4b95f067596a6c57f174e4ed94b6a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUwbAnchor-request)))
  "Returns md5sum for a message object of type 'GetUwbAnchor-request"
  "5f4b95f067596a6c57f174e4ed94b6a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUwbAnchor-request>)))
  "Returns full string definition for message of type '<GetUwbAnchor-request>"
  (cl:format cl:nil "# Get the uwb stations as a cruiser_msgs/UwbAnchors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUwbAnchor-request)))
  "Returns full string definition for message of type 'GetUwbAnchor-request"
  (cl:format cl:nil "# Get the uwb stations as a cruiser_msgs/UwbAnchors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUwbAnchor-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUwbAnchor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUwbAnchor-request
))
;//! \htmlinclude GetUwbAnchor-response.msg.html

(cl:defclass <GetUwbAnchor-response> (roslisp-msg-protocol:ros-message)
  ((anchor
    :reader anchor
    :initarg :anchor
    :type cruiser_msgs-msg:UwbAnchor
    :initform (cl:make-instance 'cruiser_msgs-msg:UwbAnchor)))
)

(cl:defclass GetUwbAnchor-response (<GetUwbAnchor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUwbAnchor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUwbAnchor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetUwbAnchor-response> is deprecated: use cruiser_msgs-srv:GetUwbAnchor-response instead.")))

(cl:ensure-generic-function 'anchor-val :lambda-list '(m))
(cl:defmethod anchor-val ((m <GetUwbAnchor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:anchor-val is deprecated.  Use cruiser_msgs-srv:anchor instead.")
  (anchor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUwbAnchor-response>) ostream)
  "Serializes a message object of type '<GetUwbAnchor-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUwbAnchor-response>) istream)
  "Deserializes a message object of type '<GetUwbAnchor-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUwbAnchor-response>)))
  "Returns string type for a service object of type '<GetUwbAnchor-response>"
  "cruiser_msgs/GetUwbAnchorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUwbAnchor-response)))
  "Returns string type for a service object of type 'GetUwbAnchor-response"
  "cruiser_msgs/GetUwbAnchorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUwbAnchor-response>)))
  "Returns md5sum for a message object of type '<GetUwbAnchor-response>"
  "5f4b95f067596a6c57f174e4ed94b6a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUwbAnchor-response)))
  "Returns md5sum for a message object of type 'GetUwbAnchor-response"
  "5f4b95f067596a6c57f174e4ed94b6a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUwbAnchor-response>)))
  "Returns full string definition for message of type '<GetUwbAnchor-response>"
  (cl:format cl:nil "cruiser_msgs/UwbAnchor anchor~%~%~%================================================================================~%MSG: cruiser_msgs/UwbAnchor~%geometry_msgs/PoseStamped[] anchors~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUwbAnchor-response)))
  "Returns full string definition for message of type 'GetUwbAnchor-response"
  (cl:format cl:nil "cruiser_msgs/UwbAnchor anchor~%~%~%================================================================================~%MSG: cruiser_msgs/UwbAnchor~%geometry_msgs/PoseStamped[] anchors~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUwbAnchor-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUwbAnchor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUwbAnchor-response
    (cl:cons ':anchor (anchor msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUwbAnchor)))
  'GetUwbAnchor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUwbAnchor)))
  'GetUwbAnchor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUwbAnchor)))
  "Returns string type for a service object of type '<GetUwbAnchor>"
  "cruiser_msgs/GetUwbAnchor")