; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude ObstacleStatus.msg.html

(cl:defclass <ObstacleStatus> (roslisp-msg-protocol:ros-message)
  ((lethal_dis
    :reader lethal_dis
    :initarg :lethal_dis
    :type cl:float
    :initform 0.0)
   (inflated_dis
    :reader inflated_dis
    :initarg :inflated_dis
    :type cl:float
    :initform 0.0)
   (lethal_pose
    :reader lethal_pose
    :initarg :lethal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (inflated_pose
    :reader inflated_pose
    :initarg :inflated_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass ObstacleStatus (<ObstacleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<ObstacleStatus> is deprecated: use cruiser_msgs-msg:ObstacleStatus instead.")))

(cl:ensure-generic-function 'lethal_dis-val :lambda-list '(m))
(cl:defmethod lethal_dis-val ((m <ObstacleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:lethal_dis-val is deprecated.  Use cruiser_msgs-msg:lethal_dis instead.")
  (lethal_dis m))

(cl:ensure-generic-function 'inflated_dis-val :lambda-list '(m))
(cl:defmethod inflated_dis-val ((m <ObstacleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:inflated_dis-val is deprecated.  Use cruiser_msgs-msg:inflated_dis instead.")
  (inflated_dis m))

(cl:ensure-generic-function 'lethal_pose-val :lambda-list '(m))
(cl:defmethod lethal_pose-val ((m <ObstacleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:lethal_pose-val is deprecated.  Use cruiser_msgs-msg:lethal_pose instead.")
  (lethal_pose m))

(cl:ensure-generic-function 'inflated_pose-val :lambda-list '(m))
(cl:defmethod inflated_pose-val ((m <ObstacleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:inflated_pose-val is deprecated.  Use cruiser_msgs-msg:inflated_pose instead.")
  (inflated_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleStatus>) ostream)
  "Serializes a message object of type '<ObstacleStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lethal_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inflated_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lethal_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inflated_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleStatus>) istream)
  "Deserializes a message object of type '<ObstacleStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lethal_dis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inflated_dis) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lethal_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inflated_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleStatus>)))
  "Returns string type for a message object of type '<ObstacleStatus>"
  "cruiser_msgs/ObstacleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleStatus)))
  "Returns string type for a message object of type 'ObstacleStatus"
  "cruiser_msgs/ObstacleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleStatus>)))
  "Returns md5sum for a message object of type '<ObstacleStatus>"
  "7e84b2031a914018d70a2626de80e5ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleStatus)))
  "Returns md5sum for a message object of type 'ObstacleStatus"
  "7e84b2031a914018d70a2626de80e5ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleStatus>)))
  "Returns full string definition for message of type '<ObstacleStatus>"
  (cl:format cl:nil "float32 lethal_dis~%float32 inflated_dis~%geometry_msgs/PoseStamped lethal_pose~%geometry_msgs/PoseStamped inflated_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleStatus)))
  "Returns full string definition for message of type 'ObstacleStatus"
  (cl:format cl:nil "float32 lethal_dis~%float32 inflated_dis~%geometry_msgs/PoseStamped lethal_pose~%geometry_msgs/PoseStamped inflated_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleStatus>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lethal_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inflated_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleStatus
    (cl:cons ':lethal_dis (lethal_dis msg))
    (cl:cons ':inflated_dis (inflated_dis msg))
    (cl:cons ':lethal_pose (lethal_pose msg))
    (cl:cons ':inflated_pose (inflated_pose msg))
))
