; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiser_common_status.msg.html

(cl:defclass <cruiser_common_status> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiser_common_status (<cruiser_common_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiser_common_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiser_common_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiser_common_status> is deprecated: use cruiser_msgs-msg:cruiser_common_status instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <cruiser_common_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:status-val is deprecated.  Use cruiser_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <cruiser_common_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:value-val is deprecated.  Use cruiser_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <cruiser_common_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data-val is deprecated.  Use cruiser_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiser_common_status>) ostream)
  "Serializes a message object of type '<cruiser_common_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiser_common_status>) istream)
  "Deserializes a message object of type '<cruiser_common_status>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiser_common_status>)))
  "Returns string type for a message object of type '<cruiser_common_status>"
  "cruiser_msgs/cruiser_common_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiser_common_status)))
  "Returns string type for a message object of type 'cruiser_common_status"
  "cruiser_msgs/cruiser_common_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiser_common_status>)))
  "Returns md5sum for a message object of type '<cruiser_common_status>"
  "f972a7a5f08896dc553e3bc6f867370f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiser_common_status)))
  "Returns md5sum for a message object of type 'cruiser_common_status"
  "f972a7a5f08896dc553e3bc6f867370f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiser_common_status>)))
  "Returns full string definition for message of type '<cruiser_common_status>"
  (cl:format cl:nil "#topic obstacleDetect~%byte status~%int32 value~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiser_common_status)))
  "Returns full string definition for message of type 'cruiser_common_status"
  (cl:format cl:nil "#topic obstacleDetect~%byte status~%int32 value~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiser_common_status>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiser_common_status>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiser_common_status
    (cl:cons ':status (status msg))
    (cl:cons ':value (value msg))
    (cl:cons ':data (data msg))
))
