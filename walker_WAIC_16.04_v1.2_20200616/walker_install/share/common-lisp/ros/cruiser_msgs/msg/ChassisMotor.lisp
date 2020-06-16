; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude ChassisMotor.msg.html

(cl:defclass <ChassisMotor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (M1
    :reader M1
    :initarg :M1
    :type cl:float
    :initform 0.0)
   (M2
    :reader M2
    :initarg :M2
    :type cl:float
    :initform 0.0)
   (M3
    :reader M3
    :initarg :M3
    :type cl:float
    :initform 0.0))
)

(cl:defclass ChassisMotor (<ChassisMotor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisMotor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisMotor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<ChassisMotor> is deprecated: use cruiser_msgs-msg:ChassisMotor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:header-val is deprecated.  Use cruiser_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'M1-val :lambda-list '(m))
(cl:defmethod M1-val ((m <ChassisMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:M1-val is deprecated.  Use cruiser_msgs-msg:M1 instead.")
  (M1 m))

(cl:ensure-generic-function 'M2-val :lambda-list '(m))
(cl:defmethod M2-val ((m <ChassisMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:M2-val is deprecated.  Use cruiser_msgs-msg:M2 instead.")
  (M2 m))

(cl:ensure-generic-function 'M3-val :lambda-list '(m))
(cl:defmethod M3-val ((m <ChassisMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:M3-val is deprecated.  Use cruiser_msgs-msg:M3 instead.")
  (M3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisMotor>) ostream)
  "Serializes a message object of type '<ChassisMotor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'M1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'M2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'M3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisMotor>) istream)
  "Deserializes a message object of type '<ChassisMotor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisMotor>)))
  "Returns string type for a message object of type '<ChassisMotor>"
  "cruiser_msgs/ChassisMotor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisMotor)))
  "Returns string type for a message object of type 'ChassisMotor"
  "cruiser_msgs/ChassisMotor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisMotor>)))
  "Returns md5sum for a message object of type '<ChassisMotor>"
  "e0989c5ad1d0ba9f193ad5ca3b435331")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisMotor)))
  "Returns md5sum for a message object of type 'ChassisMotor"
  "e0989c5ad1d0ba9f193ad5ca3b435331")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisMotor>)))
  "Returns full string definition for message of type '<ChassisMotor>"
  (cl:format cl:nil "# cruiser chassis motor speed info~%# for request speed,topic name \"chassis_reqVel\"~%# for response speed,topic name \"chassis_respVel\"~%Header header~%float64 M1~%float64 M2~%float64 M3~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisMotor)))
  "Returns full string definition for message of type 'ChassisMotor"
  (cl:format cl:nil "# cruiser chassis motor speed info~%# for request speed,topic name \"chassis_reqVel\"~%# for response speed,topic name \"chassis_respVel\"~%Header header~%float64 M1~%float64 M2~%float64 M3~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisMotor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisMotor>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisMotor
    (cl:cons ':header (header msg))
    (cl:cons ':M1 (M1 msg))
    (cl:cons ':M2 (M2 msg))
    (cl:cons ':M3 (M3 msg))
))
