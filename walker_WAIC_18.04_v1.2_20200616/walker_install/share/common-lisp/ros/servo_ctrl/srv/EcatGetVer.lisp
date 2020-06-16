; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude EcatGetVer-request.msg.html

(cl:defclass <EcatGetVer-request> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type cl:string
    :initform ""))
)

(cl:defclass EcatGetVer-request (<EcatGetVer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatGetVer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatGetVer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatGetVer-request> is deprecated: use servo_ctrl-srv:EcatGetVer-request instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <EcatGetVer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:servo-val is deprecated.  Use servo_ctrl-srv:servo instead.")
  (servo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatGetVer-request>) ostream)
  "Serializes a message object of type '<EcatGetVer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'servo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'servo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatGetVer-request>) istream)
  "Deserializes a message object of type '<EcatGetVer-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatGetVer-request>)))
  "Returns string type for a service object of type '<EcatGetVer-request>"
  "servo_ctrl/EcatGetVerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatGetVer-request)))
  "Returns string type for a service object of type 'EcatGetVer-request"
  "servo_ctrl/EcatGetVerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatGetVer-request>)))
  "Returns md5sum for a message object of type '<EcatGetVer-request>"
  "3f1b5b791580e357125da8eb47534614")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatGetVer-request)))
  "Returns md5sum for a message object of type 'EcatGetVer-request"
  "3f1b5b791580e357125da8eb47534614")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatGetVer-request>)))
  "Returns full string definition for message of type '<EcatGetVer-request>"
  (cl:format cl:nil "# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll~%string servo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatGetVer-request)))
  "Returns full string definition for message of type 'EcatGetVer-request"
  (cl:format cl:nil "# servo(case insensitive): LHipYaw,LHipRoll,LHipPitch,LKneePitch,LAnklePitch,LAnkleRoll,RHipYaw,RHipRoll,RHipPitch,RKneePitch,RAnklePitch,RAnkleRoll~%string servo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatGetVer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'servo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatGetVer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatGetVer-request
    (cl:cons ':servo (servo msg))
))
;//! \htmlinclude EcatGetVer-response.msg.html

(cl:defclass <EcatGetVer-response> (roslisp-msg-protocol:ros-message)
  ((mod
    :reader mod
    :initarg :mod
    :type cl:integer
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:integer
    :initform 0))
)

(cl:defclass EcatGetVer-response (<EcatGetVer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatGetVer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatGetVer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatGetVer-response> is deprecated: use servo_ctrl-srv:EcatGetVer-response instead.")))

(cl:ensure-generic-function 'mod-val :lambda-list '(m))
(cl:defmethod mod-val ((m <EcatGetVer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:mod-val is deprecated.  Use servo_ctrl-srv:mod instead.")
  (mod m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <EcatGetVer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:version-val is deprecated.  Use servo_ctrl-srv:version instead.")
  (version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatGetVer-response>) ostream)
  "Serializes a message object of type '<EcatGetVer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'version)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatGetVer-response>) istream)
  "Deserializes a message object of type '<EcatGetVer-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'version)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatGetVer-response>)))
  "Returns string type for a service object of type '<EcatGetVer-response>"
  "servo_ctrl/EcatGetVerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatGetVer-response)))
  "Returns string type for a service object of type 'EcatGetVer-response"
  "servo_ctrl/EcatGetVerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatGetVer-response>)))
  "Returns md5sum for a message object of type '<EcatGetVer-response>"
  "3f1b5b791580e357125da8eb47534614")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatGetVer-response)))
  "Returns md5sum for a message object of type 'EcatGetVer-response"
  "3f1b5b791580e357125da8eb47534614")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatGetVer-response>)))
  "Returns full string definition for message of type '<EcatGetVer-response>"
  (cl:format cl:nil "uint32 mod~%uint32 version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatGetVer-response)))
  "Returns full string definition for message of type 'EcatGetVer-response"
  (cl:format cl:nil "uint32 mod~%uint32 version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatGetVer-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatGetVer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatGetVer-response
    (cl:cons ':mod (mod msg))
    (cl:cons ':version (version msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EcatGetVer)))
  'EcatGetVer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EcatGetVer)))
  'EcatGetVer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatGetVer)))
  "Returns string type for a service object of type '<EcatGetVer>"
  "servo_ctrl/EcatGetVer")