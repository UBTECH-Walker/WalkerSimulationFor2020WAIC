; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude EcatSetZero-request.msg.html

(cl:defclass <EcatSetZero-request> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type cl:string
    :initform ""))
)

(cl:defclass EcatSetZero-request (<EcatSetZero-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatSetZero-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatSetZero-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatSetZero-request> is deprecated: use servo_ctrl-srv:EcatSetZero-request instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <EcatSetZero-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:servo-val is deprecated.  Use servo_ctrl-srv:servo instead.")
  (servo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatSetZero-request>) ostream)
  "Serializes a message object of type '<EcatSetZero-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'servo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'servo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatSetZero-request>) istream)
  "Deserializes a message object of type '<EcatSetZero-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatSetZero-request>)))
  "Returns string type for a service object of type '<EcatSetZero-request>"
  "servo_ctrl/EcatSetZeroRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatSetZero-request)))
  "Returns string type for a service object of type 'EcatSetZero-request"
  "servo_ctrl/EcatSetZeroRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatSetZero-request>)))
  "Returns md5sum for a message object of type '<EcatSetZero-request>"
  "d3a64b889fd5801c30f651acd61f9dd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatSetZero-request)))
  "Returns md5sum for a message object of type 'EcatSetZero-request"
  "d3a64b889fd5801c30f651acd61f9dd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatSetZero-request>)))
  "Returns full string definition for message of type '<EcatSetZero-request>"
  (cl:format cl:nil "~%string servo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatSetZero-request)))
  "Returns full string definition for message of type 'EcatSetZero-request"
  (cl:format cl:nil "~%string servo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatSetZero-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'servo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatSetZero-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatSetZero-request
    (cl:cons ':servo (servo msg))
))
;//! \htmlinclude EcatSetZero-response.msg.html

(cl:defclass <EcatSetZero-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EcatSetZero-response (<EcatSetZero-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EcatSetZero-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EcatSetZero-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<EcatSetZero-response> is deprecated: use servo_ctrl-srv:EcatSetZero-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EcatSetZero-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:result-val is deprecated.  Use servo_ctrl-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EcatSetZero-response>) ostream)
  "Serializes a message object of type '<EcatSetZero-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EcatSetZero-response>) istream)
  "Deserializes a message object of type '<EcatSetZero-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EcatSetZero-response>)))
  "Returns string type for a service object of type '<EcatSetZero-response>"
  "servo_ctrl/EcatSetZeroResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatSetZero-response)))
  "Returns string type for a service object of type 'EcatSetZero-response"
  "servo_ctrl/EcatSetZeroResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EcatSetZero-response>)))
  "Returns md5sum for a message object of type '<EcatSetZero-response>"
  "d3a64b889fd5801c30f651acd61f9dd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EcatSetZero-response)))
  "Returns md5sum for a message object of type 'EcatSetZero-response"
  "d3a64b889fd5801c30f651acd61f9dd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EcatSetZero-response>)))
  "Returns full string definition for message of type '<EcatSetZero-response>"
  (cl:format cl:nil "uint16 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EcatSetZero-response)))
  "Returns full string definition for message of type 'EcatSetZero-response"
  (cl:format cl:nil "uint16 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EcatSetZero-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EcatSetZero-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EcatSetZero-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EcatSetZero)))
  'EcatSetZero-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EcatSetZero)))
  'EcatSetZero-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EcatSetZero)))
  "Returns string type for a service object of type '<EcatSetZero>"
  "servo_ctrl/EcatSetZero")