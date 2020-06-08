; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude cruiserLedAction-request.msg.html

(cl:defclass <cruiserLedAction-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (data0
    :reader data0
    :initarg :data0
    :type cl:integer
    :initform 0)
   (data1
    :reader data1
    :initarg :data1
    :type cl:integer
    :initform 0)
   (data2
    :reader data2
    :initarg :data2
    :type cl:integer
    :initform 0)
   (max_times
    :reader max_times
    :initarg :max_times
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserLedAction-request (<cruiserLedAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserLedAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserLedAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserLedAction-request> is deprecated: use cruiser_msgs-srv:cruiserLedAction-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <cruiserLedAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:type-val is deprecated.  Use cruiser_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'data0-val :lambda-list '(m))
(cl:defmethod data0-val ((m <cruiserLedAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:data0-val is deprecated.  Use cruiser_msgs-srv:data0 instead.")
  (data0 m))

(cl:ensure-generic-function 'data1-val :lambda-list '(m))
(cl:defmethod data1-val ((m <cruiserLedAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:data1-val is deprecated.  Use cruiser_msgs-srv:data1 instead.")
  (data1 m))

(cl:ensure-generic-function 'data2-val :lambda-list '(m))
(cl:defmethod data2-val ((m <cruiserLedAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:data2-val is deprecated.  Use cruiser_msgs-srv:data2 instead.")
  (data2 m))

(cl:ensure-generic-function 'max_times-val :lambda-list '(m))
(cl:defmethod max_times-val ((m <cruiserLedAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:max_times-val is deprecated.  Use cruiser_msgs-srv:max_times instead.")
  (max_times m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserLedAction-request>) ostream)
  "Serializes a message object of type '<cruiserLedAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_times)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserLedAction-request>) istream)
  "Deserializes a message object of type '<cruiserLedAction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_times)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserLedAction-request>)))
  "Returns string type for a service object of type '<cruiserLedAction-request>"
  "cruiser_msgs/cruiserLedActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserLedAction-request)))
  "Returns string type for a service object of type 'cruiserLedAction-request"
  "cruiser_msgs/cruiserLedActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserLedAction-request>)))
  "Returns md5sum for a message object of type '<cruiserLedAction-request>"
  "8841f861ab1593cb1f054a475ae4347d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserLedAction-request)))
  "Returns md5sum for a message object of type 'cruiserLedAction-request"
  "8841f861ab1593cb1f054a475ae4347d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserLedAction-request>)))
  "Returns full string definition for message of type '<cruiserLedAction-request>"
  (cl:format cl:nil "uint32 type~%uint32 data0~%uint32 data1~%uint32 data2~%uint32 max_times~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserLedAction-request)))
  "Returns full string definition for message of type 'cruiserLedAction-request"
  (cl:format cl:nil "uint32 type~%uint32 data0~%uint32 data1~%uint32 data2~%uint32 max_times~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserLedAction-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserLedAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserLedAction-request
    (cl:cons ':type (type msg))
    (cl:cons ':data0 (data0 msg))
    (cl:cons ':data1 (data1 msg))
    (cl:cons ':data2 (data2 msg))
    (cl:cons ':max_times (max_times msg))
))
;//! \htmlinclude cruiserLedAction-response.msg.html

(cl:defclass <cruiserLedAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserLedAction-response (<cruiserLedAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserLedAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserLedAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserLedAction-response> is deprecated: use cruiser_msgs-srv:cruiserLedAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <cruiserLedAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:result-val is deprecated.  Use cruiser_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserLedAction-response>) ostream)
  "Serializes a message object of type '<cruiserLedAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserLedAction-response>) istream)
  "Deserializes a message object of type '<cruiserLedAction-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserLedAction-response>)))
  "Returns string type for a service object of type '<cruiserLedAction-response>"
  "cruiser_msgs/cruiserLedActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserLedAction-response)))
  "Returns string type for a service object of type 'cruiserLedAction-response"
  "cruiser_msgs/cruiserLedActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserLedAction-response>)))
  "Returns md5sum for a message object of type '<cruiserLedAction-response>"
  "8841f861ab1593cb1f054a475ae4347d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserLedAction-response)))
  "Returns md5sum for a message object of type 'cruiserLedAction-response"
  "8841f861ab1593cb1f054a475ae4347d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserLedAction-response>)))
  "Returns full string definition for message of type '<cruiserLedAction-response>"
  (cl:format cl:nil "uint32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserLedAction-response)))
  "Returns full string definition for message of type 'cruiserLedAction-response"
  (cl:format cl:nil "uint32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserLedAction-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserLedAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserLedAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cruiserLedAction)))
  'cruiserLedAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cruiserLedAction)))
  'cruiserLedAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserLedAction)))
  "Returns string type for a service object of type '<cruiserLedAction>"
  "cruiser_msgs/cruiserLedAction")