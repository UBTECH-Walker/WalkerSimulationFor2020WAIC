; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude SetFtOffset-request.msg.html

(cl:defclass <SetFtOffset-request> (roslisp-msg-protocol:ros-message)
  ((ftId
    :reader ftId
    :initarg :ftId
    :type cl:string
    :initform "")
   (fx
    :reader fx
    :initarg :fx
    :type cl:integer
    :initform 0)
   (fy
    :reader fy
    :initarg :fy
    :type cl:integer
    :initform 0)
   (fz
    :reader fz
    :initarg :fz
    :type cl:integer
    :initform 0)
   (mx
    :reader mx
    :initarg :mx
    :type cl:integer
    :initform 0)
   (my
    :reader my
    :initarg :my
    :type cl:integer
    :initform 0)
   (mz
    :reader mz
    :initarg :mz
    :type cl:integer
    :initform 0))
)

(cl:defclass SetFtOffset-request (<SetFtOffset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFtOffset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFtOffset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SetFtOffset-request> is deprecated: use servo_ctrl-srv:SetFtOffset-request instead.")))

(cl:ensure-generic-function 'ftId-val :lambda-list '(m))
(cl:defmethod ftId-val ((m <SetFtOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:ftId-val is deprecated.  Use servo_ctrl-srv:ftId instead.")
  (ftId m))

(cl:ensure-generic-function 'fx-val :lambda-list '(m))
(cl:defmethod fx-val ((m <SetFtOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:fx-val is deprecated.  Use servo_ctrl-srv:fx instead.")
  (fx m))

(cl:ensure-generic-function 'fy-val :lambda-list '(m))
(cl:defmethod fy-val ((m <SetFtOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:fy-val is deprecated.  Use servo_ctrl-srv:fy instead.")
  (fy m))

(cl:ensure-generic-function 'fz-val :lambda-list '(m))
(cl:defmethod fz-val ((m <SetFtOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:fz-val is deprecated.  Use servo_ctrl-srv:fz instead.")
  (fz m))

(cl:ensure-generic-function 'mx-val :lambda-list '(m))
(cl:defmethod mx-val ((m <SetFtOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:mx-val is deprecated.  Use servo_ctrl-srv:mx instead.")
  (mx m))

(cl:ensure-generic-function 'my-val :lambda-list '(m))
(cl:defmethod my-val ((m <SetFtOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:my-val is deprecated.  Use servo_ctrl-srv:my instead.")
  (my m))

(cl:ensure-generic-function 'mz-val :lambda-list '(m))
(cl:defmethod mz-val ((m <SetFtOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:mz-val is deprecated.  Use servo_ctrl-srv:mz instead.")
  (mz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFtOffset-request>) ostream)
  "Serializes a message object of type '<SetFtOffset-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ftId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ftId))
  (cl:let* ((signed (cl:slot-value msg 'fx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'my)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFtOffset-request>) istream)
  "Deserializes a message object of type '<SetFtOffset-request>"
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
      (cl:setf (cl:slot-value msg 'fx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fz) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mz) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFtOffset-request>)))
  "Returns string type for a service object of type '<SetFtOffset-request>"
  "servo_ctrl/SetFtOffsetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFtOffset-request)))
  "Returns string type for a service object of type 'SetFtOffset-request"
  "servo_ctrl/SetFtOffsetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFtOffset-request>)))
  "Returns md5sum for a message object of type '<SetFtOffset-request>"
  "f9c88f3e422e4316a11e6c00bab5b2f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFtOffset-request)))
  "Returns md5sum for a message object of type 'SetFtOffset-request"
  "f9c88f3e422e4316a11e6c00bab5b2f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFtOffset-request>)))
  "Returns full string definition for message of type '<SetFtOffset-request>"
  (cl:format cl:nil "~%string ftId~%int32  fx~%int32  fy~%int32  fz~%int32  mx~%int32  my~%int32  mz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFtOffset-request)))
  "Returns full string definition for message of type 'SetFtOffset-request"
  (cl:format cl:nil "~%string ftId~%int32  fx~%int32  fy~%int32  fz~%int32  mx~%int32  my~%int32  mz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFtOffset-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ftId))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFtOffset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFtOffset-request
    (cl:cons ':ftId (ftId msg))
    (cl:cons ':fx (fx msg))
    (cl:cons ':fy (fy msg))
    (cl:cons ':fz (fz msg))
    (cl:cons ':mx (mx msg))
    (cl:cons ':my (my msg))
    (cl:cons ':mz (mz msg))
))
;//! \htmlinclude SetFtOffset-response.msg.html

(cl:defclass <SetFtOffset-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass SetFtOffset-response (<SetFtOffset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFtOffset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFtOffset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SetFtOffset-response> is deprecated: use servo_ctrl-srv:SetFtOffset-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetFtOffset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:result-val is deprecated.  Use servo_ctrl-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFtOffset-response>) ostream)
  "Serializes a message object of type '<SetFtOffset-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFtOffset-response>) istream)
  "Deserializes a message object of type '<SetFtOffset-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFtOffset-response>)))
  "Returns string type for a service object of type '<SetFtOffset-response>"
  "servo_ctrl/SetFtOffsetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFtOffset-response)))
  "Returns string type for a service object of type 'SetFtOffset-response"
  "servo_ctrl/SetFtOffsetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFtOffset-response>)))
  "Returns md5sum for a message object of type '<SetFtOffset-response>"
  "f9c88f3e422e4316a11e6c00bab5b2f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFtOffset-response)))
  "Returns md5sum for a message object of type 'SetFtOffset-response"
  "f9c88f3e422e4316a11e6c00bab5b2f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFtOffset-response>)))
  "Returns full string definition for message of type '<SetFtOffset-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFtOffset-response)))
  "Returns full string definition for message of type 'SetFtOffset-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFtOffset-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFtOffset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFtOffset-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFtOffset)))
  'SetFtOffset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFtOffset)))
  'SetFtOffset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFtOffset)))
  "Returns string type for a service object of type '<SetFtOffset>"
  "servo_ctrl/SetFtOffset")