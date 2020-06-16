; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude EcatLimitSrv-request.msg.html

(cl:defclass <EcatLimitSrv-request> (roslisp-msg-protocol:ros-message)
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
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0))
)

(cl:defclass EcatLimitSrv-request (<EcatLimitSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatLimitSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatLimitSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatLimitSrv-request> is deprecated: use servo_ctrl-srv:EcatLimitSrv-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <EcatLimitSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:cmd-val is deprecated.  Use servo_ctrl-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <EcatLimitSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:servo-val is deprecated.  Use servo_ctrl-srv:servo instead.")
  (servo m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <EcatLimitSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:mode-val is deprecated.  Use servo_ctrl-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <EcatLimitSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:enable-val is deprecated.  Use servo_ctrl-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <EcatLimitSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:min-val is deprecated.  Use servo_ctrl-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <EcatLimitSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:max-val is deprecated.  Use servo_ctrl-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatLimitSrv-request>) ostream)
  "Serializes a message object of type '<EcatLimitSrv-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatLimitSrv-request>) istream)
  "Deserializes a message object of type '<EcatLimitSrv-request>"
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
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatLimitSrv-request>)))
  "Returns string type for a service object of type '<EcatLimitSrv-request>"
  "servo_ctrl/EcatLimitSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatLimitSrv-request)))
  "Returns string type for a service object of type 'EcatLimitSrv-request"
  "servo_ctrl/EcatLimitSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatLimitSrv-request>)))
  "Returns md5sum for a message object of type '<EcatLimitSrv-request>"
  "e3d452c6cafa43f5461e27d1edc8c915")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatLimitSrv-request)))
  "Returns md5sum for a message object of type 'EcatLimitSrv-request"
  "e3d452c6cafa43f5461e27d1edc8c915")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatLimitSrv-request>)))
  "Returns full string definition for message of type '<EcatLimitSrv-request>"
  (cl:format cl:nil "# cmd: \"get\", \"set\"~%string cmd~%~%# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll~%string servo~%~%# mode: pos, vel, trq~%string mode~%~%# enable/disable limitation~%bool enable~%~%# limitation value, the positive direction is detected automatically~%float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatLimitSrv-request)))
  "Returns full string definition for message of type 'EcatLimitSrv-request"
  (cl:format cl:nil "# cmd: \"get\", \"set\"~%string cmd~%~%# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll~%string servo~%~%# mode: pos, vel, trq~%string mode~%~%# enable/disable limitation~%bool enable~%~%# limitation value, the positive direction is detected automatically~%float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatLimitSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
     4 (cl:length (cl:slot-value msg 'servo))
     4 (cl:length (cl:slot-value msg 'mode))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatLimitSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatLimitSrv-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':servo (servo msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
;//! \htmlinclude EcatLimitSrv-response.msg.html

(cl:defclass <EcatLimitSrv-response> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0))
)

(cl:defclass EcatLimitSrv-response (<EcatLimitSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatLimitSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatLimitSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatLimitSrv-response> is deprecated: use servo_ctrl-srv:EcatLimitSrv-response instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <EcatLimitSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:enable-val is deprecated.  Use servo_ctrl-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <EcatLimitSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:min-val is deprecated.  Use servo_ctrl-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <EcatLimitSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:max-val is deprecated.  Use servo_ctrl-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatLimitSrv-response>) ostream)
  "Serializes a message object of type '<EcatLimitSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatLimitSrv-response>) istream)
  "Deserializes a message object of type '<EcatLimitSrv-response>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatLimitSrv-response>)))
  "Returns string type for a service object of type '<EcatLimitSrv-response>"
  "servo_ctrl/EcatLimitSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatLimitSrv-response)))
  "Returns string type for a service object of type 'EcatLimitSrv-response"
  "servo_ctrl/EcatLimitSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatLimitSrv-response>)))
  "Returns md5sum for a message object of type '<EcatLimitSrv-response>"
  "e3d452c6cafa43f5461e27d1edc8c915")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatLimitSrv-response)))
  "Returns md5sum for a message object of type 'EcatLimitSrv-response"
  "e3d452c6cafa43f5461e27d1edc8c915")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatLimitSrv-response>)))
  "Returns full string definition for message of type '<EcatLimitSrv-response>"
  (cl:format cl:nil "bool enable~%float32 min~%float32 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatLimitSrv-response)))
  "Returns full string definition for message of type 'EcatLimitSrv-response"
  (cl:format cl:nil "bool enable~%float32 min~%float32 max~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatLimitSrv-response>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatLimitSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatLimitSrv-response
    (cl:cons ':enable (enable msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EcatLimitSrv)))
  'EcatLimitSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EcatLimitSrv)))
  'EcatLimitSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatLimitSrv)))
  "Returns string type for a service object of type '<EcatLimitSrv>"
  "servo_ctrl/EcatLimitSrv")