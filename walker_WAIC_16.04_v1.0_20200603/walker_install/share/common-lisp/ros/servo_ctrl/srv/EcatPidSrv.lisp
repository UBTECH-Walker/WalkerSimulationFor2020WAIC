; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude EcatPidSrv-request.msg.html

(cl:defclass <EcatPidSrv-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform "")
   (servo
    :reader servo
    :initarg :servo
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (kp
    :reader kp
    :initarg :kp
    :type cl:fixnum
    :initform 0)
   (ki
    :reader ki
    :initarg :ki
    :type cl:fixnum
    :initform 0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EcatPidSrv-request (<EcatPidSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatPidSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatPidSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatPidSrv-request> is deprecated: use servo_ctrl-srv:EcatPidSrv-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <EcatPidSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:cmd-val is deprecated.  Use servo_ctrl-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <EcatPidSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:servo-val is deprecated.  Use servo_ctrl-srv:servo instead.")
  (servo m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <EcatPidSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:mode-val is deprecated.  Use servo_ctrl-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <EcatPidSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:kp-val is deprecated.  Use servo_ctrl-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <EcatPidSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:ki-val is deprecated.  Use servo_ctrl-srv:ki instead.")
  (ki m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <EcatPidSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:kd-val is deprecated.  Use servo_ctrl-srv:kd instead.")
  (kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatPidSrv-request>) ostream)
  "Serializes a message object of type '<EcatPidSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'servo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'servo))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let* ((signed (cl:slot-value msg 'kp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ki)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatPidSrv-request>) istream)
  "Deserializes a message object of type '<EcatPidSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'servo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ki) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kd) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatPidSrv-request>)))
  "Returns string type for a service object of type '<EcatPidSrv-request>"
  "servo_ctrl/EcatPidSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatPidSrv-request)))
  "Returns string type for a service object of type 'EcatPidSrv-request"
  "servo_ctrl/EcatPidSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatPidSrv-request>)))
  "Returns md5sum for a message object of type '<EcatPidSrv-request>"
  "7b9594603cb192f9d9c16b8685314164")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatPidSrv-request)))
  "Returns md5sum for a message object of type 'EcatPidSrv-request"
  "7b9594603cb192f9d9c16b8685314164")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatPidSrv-request>)))
  "Returns full string definition for message of type '<EcatPidSrv-request>"
  (cl:format cl:nil "~%string cmd~%~%~%string servo~%~%~%string mode~%~%~%int16 kp~%int16 ki~%int16 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatPidSrv-request)))
  "Returns full string definition for message of type 'EcatPidSrv-request"
  (cl:format cl:nil "~%string cmd~%~%~%string servo~%~%~%string mode~%~%~%int16 kp~%int16 ki~%int16 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatPidSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
     4 (cl:length (cl:slot-value msg 'servo))
     4 (cl:length (cl:slot-value msg 'mode))
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatPidSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatPidSrv-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':servo (servo msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':ki (ki msg))
    (cl:cons ':kd (kd msg))
))
;//! \htmlinclude EcatPidSrv-response.msg.html

(cl:defclass <EcatPidSrv-response> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type cl:fixnum
    :initform 0)
   (ki
    :reader ki
    :initarg :ki
    :type cl:fixnum
    :initform 0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EcatPidSrv-response (<EcatPidSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatPidSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatPidSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatPidSrv-response> is deprecated: use servo_ctrl-srv:EcatPidSrv-response instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <EcatPidSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:kp-val is deprecated.  Use servo_ctrl-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <EcatPidSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:ki-val is deprecated.  Use servo_ctrl-srv:ki instead.")
  (ki m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <EcatPidSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:kd-val is deprecated.  Use servo_ctrl-srv:kd instead.")
  (kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatPidSrv-response>) ostream)
  "Serializes a message object of type '<EcatPidSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'kp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ki)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatPidSrv-response>) istream)
  "Deserializes a message object of type '<EcatPidSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ki) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kd) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatPidSrv-response>)))
  "Returns string type for a service object of type '<EcatPidSrv-response>"
  "servo_ctrl/EcatPidSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatPidSrv-response)))
  "Returns string type for a service object of type 'EcatPidSrv-response"
  "servo_ctrl/EcatPidSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatPidSrv-response>)))
  "Returns md5sum for a message object of type '<EcatPidSrv-response>"
  "7b9594603cb192f9d9c16b8685314164")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatPidSrv-response)))
  "Returns md5sum for a message object of type 'EcatPidSrv-response"
  "7b9594603cb192f9d9c16b8685314164")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatPidSrv-response>)))
  "Returns full string definition for message of type '<EcatPidSrv-response>"
  (cl:format cl:nil "int16 kp~%int16 ki~%int16 kd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatPidSrv-response)))
  "Returns full string definition for message of type 'EcatPidSrv-response"
  (cl:format cl:nil "int16 kp~%int16 ki~%int16 kd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatPidSrv-response>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatPidSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatPidSrv-response
    (cl:cons ':kp (kp msg))
    (cl:cons ':ki (ki msg))
    (cl:cons ':kd (kd msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EcatPidSrv)))
  'EcatPidSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EcatPidSrv)))
  'EcatPidSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatPidSrv)))
  "Returns string type for a service object of type '<EcatPidSrv>"
  "servo_ctrl/EcatPidSrv")