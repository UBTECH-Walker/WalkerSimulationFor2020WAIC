; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude EcatGetPVT-request.msg.html

(cl:defclass <EcatGetPVT-request> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type cl:string
    :initform ""))
)

(cl:defclass EcatGetPVT-request (<EcatGetPVT-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatGetPVT-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatGetPVT-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatGetPVT-request> is deprecated: use servo_ctrl-srv:EcatGetPVT-request instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <EcatGetPVT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:servo-val is deprecated.  Use servo_ctrl-srv:servo instead.")
  (servo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatGetPVT-request>) ostream)
  "Serializes a message object of type '<EcatGetPVT-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'servo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'servo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatGetPVT-request>) istream)
  "Deserializes a message object of type '<EcatGetPVT-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'servo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatGetPVT-request>)))
  "Returns string type for a service object of type '<EcatGetPVT-request>"
  "servo_ctrl/EcatGetPVTRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatGetPVT-request)))
  "Returns string type for a service object of type 'EcatGetPVT-request"
  "servo_ctrl/EcatGetPVTRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatGetPVT-request>)))
  "Returns md5sum for a message object of type '<EcatGetPVT-request>"
  "c489f93ef6aafee9eaeb152fcdcb6ab1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatGetPVT-request)))
  "Returns md5sum for a message object of type 'EcatGetPVT-request"
  "c489f93ef6aafee9eaeb152fcdcb6ab1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatGetPVT-request>)))
  "Returns full string definition for message of type '<EcatGetPVT-request>"
  (cl:format cl:nil "~%string servo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatGetPVT-request)))
  "Returns full string definition for message of type 'EcatGetPVT-request"
  (cl:format cl:nil "~%string servo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatGetPVT-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'servo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatGetPVT-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatGetPVT-request
    (cl:cons ':servo (servo msg))
))
;//! \htmlinclude EcatGetPVT-response.msg.html

(cl:defclass <EcatGetPVT-response> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:float
    :initform 0.0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (trq
    :reader trq
    :initarg :trq
    :type cl:float
    :initform 0.0)
   (errcode
    :reader errcode
    :initarg :errcode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EcatGetPVT-response (<EcatGetPVT-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatGetPVT-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatGetPVT-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatGetPVT-response> is deprecated: use servo_ctrl-srv:EcatGetPVT-response instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <EcatGetPVT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:pos-val is deprecated.  Use servo_ctrl-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <EcatGetPVT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:vel-val is deprecated.  Use servo_ctrl-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'trq-val :lambda-list '(m))
(cl:defmethod trq-val ((m <EcatGetPVT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:trq-val is deprecated.  Use servo_ctrl-srv:trq instead.")
  (trq m))

(cl:ensure-generic-function 'errcode-val :lambda-list '(m))
(cl:defmethod errcode-val ((m <EcatGetPVT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:errcode-val is deprecated.  Use servo_ctrl-srv:errcode instead.")
  (errcode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatGetPVT-response>) ostream)
  "Serializes a message object of type '<EcatGetPVT-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errcode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errcode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatGetPVT-response>) istream)
  "Deserializes a message object of type '<EcatGetPVT-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errcode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errcode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatGetPVT-response>)))
  "Returns string type for a service object of type '<EcatGetPVT-response>"
  "servo_ctrl/EcatGetPVTResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatGetPVT-response)))
  "Returns string type for a service object of type 'EcatGetPVT-response"
  "servo_ctrl/EcatGetPVTResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatGetPVT-response>)))
  "Returns md5sum for a message object of type '<EcatGetPVT-response>"
  "c489f93ef6aafee9eaeb152fcdcb6ab1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatGetPVT-response)))
  "Returns md5sum for a message object of type 'EcatGetPVT-response"
  "c489f93ef6aafee9eaeb152fcdcb6ab1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatGetPVT-response>)))
  "Returns full string definition for message of type '<EcatGetPVT-response>"
  (cl:format cl:nil "float32 pos~%float32 vel~%float32 trq~%uint16 errcode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatGetPVT-response)))
  "Returns full string definition for message of type 'EcatGetPVT-response"
  (cl:format cl:nil "float32 pos~%float32 vel~%float32 trq~%uint16 errcode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatGetPVT-response>))
  (cl:+ 0
     4
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatGetPVT-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatGetPVT-response
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':trq (trq msg))
    (cl:cons ':errcode (errcode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EcatGetPVT)))
  'EcatGetPVT-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EcatGetPVT)))
  'EcatGetPVT-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatGetPVT)))
  "Returns string type for a service object of type '<EcatGetPVT>"
  "servo_ctrl/EcatGetPVT")