; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude canudpSend-request.msg.html

(cl:defclass <canudpSend-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass canudpSend-request (<canudpSend-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <canudpSend-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'canudpSend-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<canudpSend-request> is deprecated: use cruiser_msgs-srv:canudpSend-request instead.")))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <canudpSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:priority-val is deprecated.  Use cruiser_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'packetdata-val :lambda-list '(m))
(cl:defmethod packetdata-val ((m <canudpSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:packetdata-val is deprecated.  Use cruiser_msgs-srv:packetdata instead.")
  (packetdata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <canudpSend-request>) ostream)
  "Serializes a message object of type '<canudpSend-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <canudpSend-request>) istream)
  "Deserializes a message object of type '<canudpSend-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<canudpSend-request>)))
  "Returns string type for a service object of type '<canudpSend-request>"
  "cruiser_msgs/canudpSendRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'canudpSend-request)))
  "Returns string type for a service object of type 'canudpSend-request"
  "cruiser_msgs/canudpSendRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<canudpSend-request>)))
  "Returns md5sum for a message object of type '<canudpSend-request>"
  "5b1b6b129155e5a4f811f32ad75d66ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'canudpSend-request)))
  "Returns md5sum for a message object of type 'canudpSend-request"
  "5b1b6b129155e5a4f811f32ad75d66ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<canudpSend-request>)))
  "Returns full string definition for message of type '<canudpSend-request>"
  (cl:format cl:nil "uint32 priority~%string packetdata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'canudpSend-request)))
  "Returns full string definition for message of type 'canudpSend-request"
  (cl:format cl:nil "uint32 priority~%string packetdata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <canudpSend-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'packetdata))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <canudpSend-request>))
  "Converts a ROS message object to a list"
  (cl:list 'canudpSend-request
    (cl:cons ':priority (priority msg))
    (cl:cons ':packetdata (packetdata msg))
))
;//! \htmlinclude canudpSend-response.msg.html

(cl:defclass <canudpSend-response> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0))
)

(cl:defclass canudpSend-response (<canudpSend-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <canudpSend-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'canudpSend-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<canudpSend-response> is deprecated: use cruiser_msgs-srv:canudpSend-response instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <canudpSend-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:time-val is deprecated.  Use cruiser_msgs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <canudpSend-response>) ostream)
  "Serializes a message object of type '<canudpSend-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <canudpSend-response>) istream)
  "Deserializes a message object of type '<canudpSend-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<canudpSend-response>)))
  "Returns string type for a service object of type '<canudpSend-response>"
  "cruiser_msgs/canudpSendResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'canudpSend-response)))
  "Returns string type for a service object of type 'canudpSend-response"
  "cruiser_msgs/canudpSendResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<canudpSend-response>)))
  "Returns md5sum for a message object of type '<canudpSend-response>"
  "5b1b6b129155e5a4f811f32ad75d66ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'canudpSend-response)))
  "Returns md5sum for a message object of type 'canudpSend-response"
  "5b1b6b129155e5a4f811f32ad75d66ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<canudpSend-response>)))
  "Returns full string definition for message of type '<canudpSend-response>"
  (cl:format cl:nil "# time in millisecond. 1000 stands for 1s~%uint32 time~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'canudpSend-response)))
  "Returns full string definition for message of type 'canudpSend-response"
  (cl:format cl:nil "# time in millisecond. 1000 stands for 1s~%uint32 time~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <canudpSend-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <canudpSend-response>))
  "Converts a ROS message object to a list"
  (cl:list 'canudpSend-response
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'canudpSend)))
  'canudpSend-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'canudpSend)))
  'canudpSend-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'canudpSend)))
  "Returns string type for a service object of type '<canudpSend>"
  "cruiser_msgs/canudpSend")