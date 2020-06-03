; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude humiture-request.msg.html

(cl:defclass <humiture-request> (roslisp-msg-protocol:ros-message)
  ((priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (packetdata
    :reader packetdata
    :initarg :packetdata
    :type cl:string
    :initform ""))
)

(cl:defclass humiture-request (<humiture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <humiture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'humiture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<humiture-request> is deprecated: use cruiser_msgs-srv:humiture-request instead.")))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <humiture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:priority-val is deprecated.  Use cruiser_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'packetdata-val :lambda-list '(m))
(cl:defmethod packetdata-val ((m <humiture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:packetdata-val is deprecated.  Use cruiser_msgs-srv:packetdata instead.")
  (packetdata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <humiture-request>) ostream)
  "Serializes a message object of type '<humiture-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'priority)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'packetdata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'packetdata))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <humiture-request>) istream)
  "Deserializes a message object of type '<humiture-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'packetdata) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'packetdata) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<humiture-request>)))
  "Returns string type for a service object of type '<humiture-request>"
  "cruiser_msgs/humitureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'humiture-request)))
  "Returns string type for a service object of type 'humiture-request"
  "cruiser_msgs/humitureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<humiture-request>)))
  "Returns md5sum for a message object of type '<humiture-request>"
  "f4a4dcb285b63a8cabca03177b46fc2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'humiture-request)))
  "Returns md5sum for a message object of type 'humiture-request"
  "f4a4dcb285b63a8cabca03177b46fc2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<humiture-request>)))
  "Returns full string definition for message of type '<humiture-request>"
  (cl:format cl:nil "uint32 priority~%string packetdata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'humiture-request)))
  "Returns full string definition for message of type 'humiture-request"
  (cl:format cl:nil "uint32 priority~%string packetdata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <humiture-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'packetdata))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <humiture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'humiture-request
    (cl:cons ':priority (priority msg))
    (cl:cons ':packetdata (packetdata msg))
))
;//! \htmlinclude humiture-response.msg.html

(cl:defclass <humiture-response> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass humiture-response (<humiture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <humiture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'humiture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<humiture-response> is deprecated: use cruiser_msgs-srv:humiture-response instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <humiture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:temperature-val is deprecated.  Use cruiser_msgs-srv:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <humiture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:humidity-val is deprecated.  Use cruiser_msgs-srv:humidity instead.")
  (humidity m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <humiture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:message-val is deprecated.  Use cruiser_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <humiture-response>) ostream)
  "Serializes a message object of type '<humiture-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <humiture-response>) istream)
  "Deserializes a message object of type '<humiture-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humidity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<humiture-response>)))
  "Returns string type for a service object of type '<humiture-response>"
  "cruiser_msgs/humitureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'humiture-response)))
  "Returns string type for a service object of type 'humiture-response"
  "cruiser_msgs/humitureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<humiture-response>)))
  "Returns md5sum for a message object of type '<humiture-response>"
  "f4a4dcb285b63a8cabca03177b46fc2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'humiture-response)))
  "Returns md5sum for a message object of type 'humiture-response"
  "f4a4dcb285b63a8cabca03177b46fc2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<humiture-response>)))
  "Returns full string definition for message of type '<humiture-response>"
  (cl:format cl:nil "~%float64 temperature~%float64 humidity~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'humiture-response)))
  "Returns full string definition for message of type 'humiture-response"
  (cl:format cl:nil "~%float64 temperature~%float64 humidity~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <humiture-response>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <humiture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'humiture-response
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'humiture)))
  'humiture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'humiture)))
  'humiture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'humiture)))
  "Returns string type for a service object of type '<humiture>"
  "cruiser_msgs/humiture")