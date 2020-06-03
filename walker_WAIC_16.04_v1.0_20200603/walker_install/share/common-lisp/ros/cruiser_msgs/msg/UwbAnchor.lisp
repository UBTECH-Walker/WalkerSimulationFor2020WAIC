; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude UwbAnchor.msg.html

(cl:defclass <UwbAnchor> (roslisp-msg-protocol:ros-message)
  ((anchors
    :reader anchors
    :initarg :anchors
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass UwbAnchor (<UwbAnchor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UwbAnchor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UwbAnchor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<UwbAnchor> is deprecated: use cruiser_msgs-msg:UwbAnchor instead.")))

(cl:ensure-generic-function 'anchors-val :lambda-list '(m))
(cl:defmethod anchors-val ((m <UwbAnchor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:anchors-val is deprecated.  Use cruiser_msgs-msg:anchors instead.")
  (anchors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UwbAnchor>) ostream)
  "Serializes a message object of type '<UwbAnchor>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'anchors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'anchors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UwbAnchor>) istream)
  "Deserializes a message object of type '<UwbAnchor>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'anchors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'anchors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UwbAnchor>)))
  "Returns string type for a message object of type '<UwbAnchor>"
  "cruiser_msgs/UwbAnchor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UwbAnchor)))
  "Returns string type for a message object of type 'UwbAnchor"
  "cruiser_msgs/UwbAnchor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UwbAnchor>)))
  "Returns md5sum for a message object of type '<UwbAnchor>"
  "bb69d45428817d4189c9bb41446d70fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UwbAnchor)))
  "Returns md5sum for a message object of type 'UwbAnchor"
  "bb69d45428817d4189c9bb41446d70fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UwbAnchor>)))
  "Returns full string definition for message of type '<UwbAnchor>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] anchors~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UwbAnchor)))
  "Returns full string definition for message of type 'UwbAnchor"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] anchors~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UwbAnchor>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'anchors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UwbAnchor>))
  "Converts a ROS message object to a list"
  (cl:list 'UwbAnchor
    (cl:cons ':anchors (anchors msg))
))
