; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude cruiserJointAction-request.msg.html

(cl:defclass <cruiserJointAction-request> (roslisp-msg-protocol:ros-message)
  ((action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform "")
   (action_time
    :reader action_time
    :initarg :action_time
    :type cl:fixnum
    :initform 0))
)

(cl:defclass cruiserJointAction-request (<cruiserJointAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserJointAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserJointAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserJointAction-request> is deprecated: use cruiser_msgs-srv:cruiserJointAction-request instead.")))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <cruiserJointAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:action_name-val is deprecated.  Use cruiser_msgs-srv:action_name instead.")
  (action_name m))

(cl:ensure-generic-function 'action_time-val :lambda-list '(m))
(cl:defmethod action_time-val ((m <cruiserJointAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:action_time-val is deprecated.  Use cruiser_msgs-srv:action_time instead.")
  (action_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserJointAction-request>) ostream)
  "Serializes a message object of type '<cruiserJointAction-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
  (cl:let* ((signed (cl:slot-value msg 'action_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserJointAction-request>) istream)
  "Deserializes a message object of type '<cruiserJointAction-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_time) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserJointAction-request>)))
  "Returns string type for a service object of type '<cruiserJointAction-request>"
  "cruiser_msgs/cruiserJointActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserJointAction-request)))
  "Returns string type for a service object of type 'cruiserJointAction-request"
  "cruiser_msgs/cruiserJointActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserJointAction-request>)))
  "Returns md5sum for a message object of type '<cruiserJointAction-request>"
  "385edf431acc9bbbd7c1e0ee768e259d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserJointAction-request)))
  "Returns md5sum for a message object of type 'cruiserJointAction-request"
  "385edf431acc9bbbd7c1e0ee768e259d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserJointAction-request>)))
  "Returns full string definition for message of type '<cruiserJointAction-request>"
  (cl:format cl:nil "# This file defines a command inferring to a action to play~%~%# Action name in ASCII~%string action_name~%~%# Times action will be played~%# 0 means infinite loop~%int16 action_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserJointAction-request)))
  "Returns full string definition for message of type 'cruiserJointAction-request"
  (cl:format cl:nil "# This file defines a command inferring to a action to play~%~%# Action name in ASCII~%string action_name~%~%# Times action will be played~%# 0 means infinite loop~%int16 action_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserJointAction-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserJointAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserJointAction-request
    (cl:cons ':action_name (action_name msg))
    (cl:cons ':action_time (action_time msg))
))
;//! \htmlinclude cruiserJointAction-response.msg.html

(cl:defclass <cruiserJointAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass cruiserJointAction-response (<cruiserJointAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserJointAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserJointAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserJointAction-response> is deprecated: use cruiser_msgs-srv:cruiserJointAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <cruiserJointAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:result-val is deprecated.  Use cruiser_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserJointAction-response>) ostream)
  "Serializes a message object of type '<cruiserJointAction-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserJointAction-response>) istream)
  "Deserializes a message object of type '<cruiserJointAction-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserJointAction-response>)))
  "Returns string type for a service object of type '<cruiserJointAction-response>"
  "cruiser_msgs/cruiserJointActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserJointAction-response)))
  "Returns string type for a service object of type 'cruiserJointAction-response"
  "cruiser_msgs/cruiserJointActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserJointAction-response>)))
  "Returns md5sum for a message object of type '<cruiserJointAction-response>"
  "385edf431acc9bbbd7c1e0ee768e259d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserJointAction-response)))
  "Returns md5sum for a message object of type 'cruiserJointAction-response"
  "385edf431acc9bbbd7c1e0ee768e259d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserJointAction-response>)))
  "Returns full string definition for message of type '<cruiserJointAction-response>"
  (cl:format cl:nil "# Return \"Success\" or \"Fail\"~%string result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserJointAction-response)))
  "Returns full string definition for message of type 'cruiserJointAction-response"
  (cl:format cl:nil "# Return \"Success\" or \"Fail\"~%string result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserJointAction-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserJointAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserJointAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cruiserJointAction)))
  'cruiserJointAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cruiserJointAction)))
  'cruiserJointAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserJointAction)))
  "Returns string type for a service object of type '<cruiserJointAction>"
  "cruiser_msgs/cruiserJointAction")