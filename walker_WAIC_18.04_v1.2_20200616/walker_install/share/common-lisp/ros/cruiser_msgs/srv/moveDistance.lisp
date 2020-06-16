; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude moveDistance-request.msg.html

(cl:defclass <moveDistance-request> (roslisp-msg-protocol:ros-message)
  ((reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0))
)

(cl:defclass moveDistance-request (<moveDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<moveDistance-request> is deprecated: use cruiser_msgs-srv:moveDistance-request instead.")))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <moveDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:reserved-val is deprecated.  Use cruiser_msgs-srv:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveDistance-request>) ostream)
  "Serializes a message object of type '<moveDistance-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveDistance-request>) istream)
  "Deserializes a message object of type '<moveDistance-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveDistance-request>)))
  "Returns string type for a service object of type '<moveDistance-request>"
  "cruiser_msgs/moveDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveDistance-request)))
  "Returns string type for a service object of type 'moveDistance-request"
  "cruiser_msgs/moveDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveDistance-request>)))
  "Returns md5sum for a message object of type '<moveDistance-request>"
  "2138d7d6c1b896d7258bf22cf4d740bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveDistance-request)))
  "Returns md5sum for a message object of type 'moveDistance-request"
  "2138d7d6c1b896d7258bf22cf4d740bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveDistance-request>)))
  "Returns full string definition for message of type '<moveDistance-request>"
  (cl:format cl:nil "uint32 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveDistance-request)))
  "Returns full string definition for message of type 'moveDistance-request"
  (cl:format cl:nil "uint32 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveDistance-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'moveDistance-request
    (cl:cons ':reserved (reserved msg))
))
;//! \htmlinclude moveDistance-response.msg.html

(cl:defclass <moveDistance-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (dis_x
    :reader dis_x
    :initarg :dis_x
    :type cl:float
    :initform 0.0)
   (dis_y
    :reader dis_y
    :initarg :dis_y
    :type cl:float
    :initform 0.0)
   (dis_z
    :reader dis_z
    :initarg :dis_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass moveDistance-response (<moveDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<moveDistance-response> is deprecated: use cruiser_msgs-srv:moveDistance-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <moveDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:result-val is deprecated.  Use cruiser_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'dis_x-val :lambda-list '(m))
(cl:defmethod dis_x-val ((m <moveDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:dis_x-val is deprecated.  Use cruiser_msgs-srv:dis_x instead.")
  (dis_x m))

(cl:ensure-generic-function 'dis_y-val :lambda-list '(m))
(cl:defmethod dis_y-val ((m <moveDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:dis_y-val is deprecated.  Use cruiser_msgs-srv:dis_y instead.")
  (dis_y m))

(cl:ensure-generic-function 'dis_z-val :lambda-list '(m))
(cl:defmethod dis_z-val ((m <moveDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:dis_z-val is deprecated.  Use cruiser_msgs-srv:dis_z instead.")
  (dis_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveDistance-response>) ostream)
  "Serializes a message object of type '<moveDistance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveDistance-response>) istream)
  "Deserializes a message object of type '<moveDistance-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveDistance-response>)))
  "Returns string type for a service object of type '<moveDistance-response>"
  "cruiser_msgs/moveDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveDistance-response)))
  "Returns string type for a service object of type 'moveDistance-response"
  "cruiser_msgs/moveDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveDistance-response>)))
  "Returns md5sum for a message object of type '<moveDistance-response>"
  "2138d7d6c1b896d7258bf22cf4d740bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveDistance-response)))
  "Returns md5sum for a message object of type 'moveDistance-response"
  "2138d7d6c1b896d7258bf22cf4d740bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveDistance-response>)))
  "Returns full string definition for message of type '<moveDistance-response>"
  (cl:format cl:nil "uint32 result~%float32 dis_x~%float32 dis_y~%float32 dis_z~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveDistance-response)))
  "Returns full string definition for message of type 'moveDistance-response"
  (cl:format cl:nil "uint32 result~%float32 dis_x~%float32 dis_y~%float32 dis_z~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveDistance-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'moveDistance-response
    (cl:cons ':result (result msg))
    (cl:cons ':dis_x (dis_x msg))
    (cl:cons ':dis_y (dis_y msg))
    (cl:cons ':dis_z (dis_z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'moveDistance)))
  'moveDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'moveDistance)))
  'moveDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveDistance)))
  "Returns string type for a service object of type '<moveDistance>"
  "cruiser_msgs/moveDistance")