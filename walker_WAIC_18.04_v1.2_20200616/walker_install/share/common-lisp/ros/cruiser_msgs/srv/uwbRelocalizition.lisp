; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude uwbRelocalizition-request.msg.html

(cl:defclass <uwbRelocalizition-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass uwbRelocalizition-request (<uwbRelocalizition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbRelocalizition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbRelocalizition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<uwbRelocalizition-request> is deprecated: use cruiser_msgs-srv:uwbRelocalizition-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <uwbRelocalizition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:data-val is deprecated.  Use cruiser_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<uwbRelocalizition-request>)))
    "Constants for message type '<uwbRelocalizition-request>"
  '((:TRIGGER_RELOCALIZITION . 0)
    (:GET_STATUS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'uwbRelocalizition-request)))
    "Constants for message type 'uwbRelocalizition-request"
  '((:TRIGGER_RELOCALIZITION . 0)
    (:GET_STATUS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbRelocalizition-request>) ostream)
  "Serializes a message object of type '<uwbRelocalizition-request>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbRelocalizition-request>) istream)
  "Deserializes a message object of type '<uwbRelocalizition-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbRelocalizition-request>)))
  "Returns string type for a service object of type '<uwbRelocalizition-request>"
  "cruiser_msgs/uwbRelocalizitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbRelocalizition-request)))
  "Returns string type for a service object of type 'uwbRelocalizition-request"
  "cruiser_msgs/uwbRelocalizitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbRelocalizition-request>)))
  "Returns md5sum for a message object of type '<uwbRelocalizition-request>"
  "ce1b6b26da28ea681dfc3a90266c2fdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbRelocalizition-request)))
  "Returns md5sum for a message object of type 'uwbRelocalizition-request"
  "ce1b6b26da28ea681dfc3a90266c2fdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbRelocalizition-request>)))
  "Returns full string definition for message of type '<uwbRelocalizition-request>"
  (cl:format cl:nil "int32 TRIGGER_RELOCALIZITION =0~%int32 GET_STATUS =1~%int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbRelocalizition-request)))
  "Returns full string definition for message of type 'uwbRelocalizition-request"
  (cl:format cl:nil "int32 TRIGGER_RELOCALIZITION =0~%int32 GET_STATUS =1~%int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbRelocalizition-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbRelocalizition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbRelocalizition-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude uwbRelocalizition-response.msg.html

(cl:defclass <uwbRelocalizition-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass uwbRelocalizition-response (<uwbRelocalizition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbRelocalizition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbRelocalizition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<uwbRelocalizition-response> is deprecated: use cruiser_msgs-srv:uwbRelocalizition-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <uwbRelocalizition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:status-val is deprecated.  Use cruiser_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<uwbRelocalizition-response>)))
    "Constants for message type '<uwbRelocalizition-response>"
  '((:STATE_IDLE . 0)
    (:STATE_ESTMATING . 1)
    (:STATE_SUCCESS . 2)
    (:STATE_FAIL . 3)
    (:TRIGGER_SUCCESS . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'uwbRelocalizition-response)))
    "Constants for message type 'uwbRelocalizition-response"
  '((:STATE_IDLE . 0)
    (:STATE_ESTMATING . 1)
    (:STATE_SUCCESS . 2)
    (:STATE_FAIL . 3)
    (:TRIGGER_SUCCESS . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbRelocalizition-response>) ostream)
  "Serializes a message object of type '<uwbRelocalizition-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbRelocalizition-response>) istream)
  "Deserializes a message object of type '<uwbRelocalizition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbRelocalizition-response>)))
  "Returns string type for a service object of type '<uwbRelocalizition-response>"
  "cruiser_msgs/uwbRelocalizitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbRelocalizition-response)))
  "Returns string type for a service object of type 'uwbRelocalizition-response"
  "cruiser_msgs/uwbRelocalizitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbRelocalizition-response>)))
  "Returns md5sum for a message object of type '<uwbRelocalizition-response>"
  "ce1b6b26da28ea681dfc3a90266c2fdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbRelocalizition-response)))
  "Returns md5sum for a message object of type 'uwbRelocalizition-response"
  "ce1b6b26da28ea681dfc3a90266c2fdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbRelocalizition-response>)))
  "Returns full string definition for message of type '<uwbRelocalizition-response>"
  (cl:format cl:nil "int32 STATE_IDLE =0~%int32 STATE_ESTMATING =1~%int32 STATE_SUCCESS = 2~%int32 STATE_FAIL = 3~%int32 TRIGGER_SUCCESS = 4~%int32 status~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbRelocalizition-response)))
  "Returns full string definition for message of type 'uwbRelocalizition-response"
  (cl:format cl:nil "int32 STATE_IDLE =0~%int32 STATE_ESTMATING =1~%int32 STATE_SUCCESS = 2~%int32 STATE_FAIL = 3~%int32 TRIGGER_SUCCESS = 4~%int32 status~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbRelocalizition-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbRelocalizition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbRelocalizition-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'uwbRelocalizition)))
  'uwbRelocalizition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'uwbRelocalizition)))
  'uwbRelocalizition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbRelocalizition)))
  "Returns string type for a service object of type '<uwbRelocalizition>"
  "cruiser_msgs/uwbRelocalizition")