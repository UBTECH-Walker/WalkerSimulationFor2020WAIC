; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude cruiserPowerAction-request.msg.html

(cl:defclass <cruiserPowerAction-request> (roslisp-msg-protocol:ros-message)
  ((dev_name
    :reader dev_name
    :initarg :dev_name
    :type cl:integer
    :initform 0)
   (on_off
    :reader on_off
    :initarg :on_off
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserPowerAction-request (<cruiserPowerAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserPowerAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserPowerAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserPowerAction-request> is deprecated: use cruiser_msgs-srv:cruiserPowerAction-request instead.")))

(cl:ensure-generic-function 'dev_name-val :lambda-list '(m))
(cl:defmethod dev_name-val ((m <cruiserPowerAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:dev_name-val is deprecated.  Use cruiser_msgs-srv:dev_name instead.")
  (dev_name m))

(cl:ensure-generic-function 'on_off-val :lambda-list '(m))
(cl:defmethod on_off-val ((m <cruiserPowerAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:on_off-val is deprecated.  Use cruiser_msgs-srv:on_off instead.")
  (on_off m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserPowerAction-request>) ostream)
  "Serializes a message object of type '<cruiserPowerAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dev_name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dev_name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dev_name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dev_name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_off)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'on_off)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'on_off)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'on_off)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserPowerAction-request>) istream)
  "Deserializes a message object of type '<cruiserPowerAction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dev_name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dev_name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dev_name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dev_name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_off)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'on_off)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'on_off)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'on_off)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserPowerAction-request>)))
  "Returns string type for a service object of type '<cruiserPowerAction-request>"
  "cruiser_msgs/cruiserPowerActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserPowerAction-request)))
  "Returns string type for a service object of type 'cruiserPowerAction-request"
  "cruiser_msgs/cruiserPowerActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserPowerAction-request>)))
  "Returns md5sum for a message object of type '<cruiserPowerAction-request>"
  "e9b14d2fb77896c676ca42362f1376f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserPowerAction-request)))
  "Returns md5sum for a message object of type 'cruiserPowerAction-request"
  "e9b14d2fb77896c676ca42362f1376f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserPowerAction-request>)))
  "Returns full string definition for message of type '<cruiserPowerAction-request>"
  (cl:format cl:nil "uint32 dev_name~%uint32 on_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserPowerAction-request)))
  "Returns full string definition for message of type 'cruiserPowerAction-request"
  (cl:format cl:nil "uint32 dev_name~%uint32 on_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserPowerAction-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserPowerAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserPowerAction-request
    (cl:cons ':dev_name (dev_name msg))
    (cl:cons ':on_off (on_off msg))
))
;//! \htmlinclude cruiserPowerAction-response.msg.html

(cl:defclass <cruiserPowerAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserPowerAction-response (<cruiserPowerAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserPowerAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserPowerAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserPowerAction-response> is deprecated: use cruiser_msgs-srv:cruiserPowerAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <cruiserPowerAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:result-val is deprecated.  Use cruiser_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserPowerAction-response>) ostream)
  "Serializes a message object of type '<cruiserPowerAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserPowerAction-response>) istream)
  "Deserializes a message object of type '<cruiserPowerAction-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserPowerAction-response>)))
  "Returns string type for a service object of type '<cruiserPowerAction-response>"
  "cruiser_msgs/cruiserPowerActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserPowerAction-response)))
  "Returns string type for a service object of type 'cruiserPowerAction-response"
  "cruiser_msgs/cruiserPowerActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserPowerAction-response>)))
  "Returns md5sum for a message object of type '<cruiserPowerAction-response>"
  "e9b14d2fb77896c676ca42362f1376f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserPowerAction-response)))
  "Returns md5sum for a message object of type 'cruiserPowerAction-response"
  "e9b14d2fb77896c676ca42362f1376f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserPowerAction-response>)))
  "Returns full string definition for message of type '<cruiserPowerAction-response>"
  (cl:format cl:nil "uint32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserPowerAction-response)))
  "Returns full string definition for message of type 'cruiserPowerAction-response"
  (cl:format cl:nil "uint32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserPowerAction-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserPowerAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserPowerAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cruiserPowerAction)))
  'cruiserPowerAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cruiserPowerAction)))
  'cruiserPowerAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserPowerAction)))
  "Returns string type for a service object of type '<cruiserPowerAction>"
  "cruiser_msgs/cruiserPowerAction")