; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude SetFtPeriod-request.msg.html

(cl:defclass <SetFtPeriod-request> (roslisp-msg-protocol:ros-message)
  ((ftId
    :reader ftId
    :initarg :ftId
    :type cl:string
    :initform "")
   (period_ms
    :reader period_ms
    :initarg :period_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass SetFtPeriod-request (<SetFtPeriod-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFtPeriod-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFtPeriod-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SetFtPeriod-request> is deprecated: use servo_ctrl-srv:SetFtPeriod-request instead.")))

(cl:ensure-generic-function 'ftId-val :lambda-list '(m))
(cl:defmethod ftId-val ((m <SetFtPeriod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:ftId-val is deprecated.  Use servo_ctrl-srv:ftId instead.")
  (ftId m))

(cl:ensure-generic-function 'period_ms-val :lambda-list '(m))
(cl:defmethod period_ms-val ((m <SetFtPeriod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:period_ms-val is deprecated.  Use servo_ctrl-srv:period_ms instead.")
  (period_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFtPeriod-request>) ostream)
  "Serializes a message object of type '<SetFtPeriod-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ftId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ftId))
  (cl:let* ((signed (cl:slot-value msg 'period_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFtPeriod-request>) istream)
  "Deserializes a message object of type '<SetFtPeriod-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ftId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ftId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period_ms) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFtPeriod-request>)))
  "Returns string type for a service object of type '<SetFtPeriod-request>"
  "servo_ctrl/SetFtPeriodRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFtPeriod-request)))
  "Returns string type for a service object of type 'SetFtPeriod-request"
  "servo_ctrl/SetFtPeriodRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFtPeriod-request>)))
  "Returns md5sum for a message object of type '<SetFtPeriod-request>"
  "da5f21de43d7b8e0a73c301ba13f71ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFtPeriod-request)))
  "Returns md5sum for a message object of type 'SetFtPeriod-request"
  "da5f21de43d7b8e0a73c301ba13f71ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFtPeriod-request>)))
  "Returns full string definition for message of type '<SetFtPeriod-request>"
  (cl:format cl:nil "~%string ftId~%int32  period_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFtPeriod-request)))
  "Returns full string definition for message of type 'SetFtPeriod-request"
  (cl:format cl:nil "~%string ftId~%int32  period_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFtPeriod-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ftId))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFtPeriod-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFtPeriod-request
    (cl:cons ':ftId (ftId msg))
    (cl:cons ':period_ms (period_ms msg))
))
;//! \htmlinclude SetFtPeriod-response.msg.html

(cl:defclass <SetFtPeriod-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass SetFtPeriod-response (<SetFtPeriod-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFtPeriod-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFtPeriod-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SetFtPeriod-response> is deprecated: use servo_ctrl-srv:SetFtPeriod-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetFtPeriod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:result-val is deprecated.  Use servo_ctrl-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFtPeriod-response>) ostream)
  "Serializes a message object of type '<SetFtPeriod-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFtPeriod-response>) istream)
  "Deserializes a message object of type '<SetFtPeriod-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFtPeriod-response>)))
  "Returns string type for a service object of type '<SetFtPeriod-response>"
  "servo_ctrl/SetFtPeriodResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFtPeriod-response)))
  "Returns string type for a service object of type 'SetFtPeriod-response"
  "servo_ctrl/SetFtPeriodResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFtPeriod-response>)))
  "Returns md5sum for a message object of type '<SetFtPeriod-response>"
  "da5f21de43d7b8e0a73c301ba13f71ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFtPeriod-response)))
  "Returns md5sum for a message object of type 'SetFtPeriod-response"
  "da5f21de43d7b8e0a73c301ba13f71ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFtPeriod-response>)))
  "Returns full string definition for message of type '<SetFtPeriod-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFtPeriod-response)))
  "Returns full string definition for message of type 'SetFtPeriod-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFtPeriod-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFtPeriod-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFtPeriod-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFtPeriod)))
  'SetFtPeriod-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFtPeriod)))
  'SetFtPeriod-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFtPeriod)))
  "Returns string type for a service object of type '<SetFtPeriod>"
  "servo_ctrl/SetFtPeriod")