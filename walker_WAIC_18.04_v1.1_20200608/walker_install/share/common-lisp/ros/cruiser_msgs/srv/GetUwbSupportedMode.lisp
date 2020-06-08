; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude GetUwbSupportedMode-request.msg.html

(cl:defclass <GetUwbSupportedMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass GetUwbSupportedMode-request (<GetUwbSupportedMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUwbSupportedMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUwbSupportedMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetUwbSupportedMode-request> is deprecated: use cruiser_msgs-srv:GetUwbSupportedMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GetUwbSupportedMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:mode-val is deprecated.  Use cruiser_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUwbSupportedMode-request>) ostream)
  "Serializes a message object of type '<GetUwbSupportedMode-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUwbSupportedMode-request>) istream)
  "Deserializes a message object of type '<GetUwbSupportedMode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUwbSupportedMode-request>)))
  "Returns string type for a service object of type '<GetUwbSupportedMode-request>"
  "cruiser_msgs/GetUwbSupportedModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUwbSupportedMode-request)))
  "Returns string type for a service object of type 'GetUwbSupportedMode-request"
  "cruiser_msgs/GetUwbSupportedModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUwbSupportedMode-request>)))
  "Returns md5sum for a message object of type '<GetUwbSupportedMode-request>"
  "3c35866e3d60aa551b5343ed0f3e9138")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUwbSupportedMode-request)))
  "Returns md5sum for a message object of type 'GetUwbSupportedMode-request"
  "3c35866e3d60aa551b5343ed0f3e9138")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUwbSupportedMode-request>)))
  "Returns full string definition for message of type '<GetUwbSupportedMode-request>"
  (cl:format cl:nil "~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUwbSupportedMode-request)))
  "Returns full string definition for message of type 'GetUwbSupportedMode-request"
  (cl:format cl:nil "~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUwbSupportedMode-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUwbSupportedMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUwbSupportedMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude GetUwbSupportedMode-response.msg.html

(cl:defclass <GetUwbSupportedMode-response> (roslisp-msg-protocol:ros-message)
  ((supported
    :reader supported
    :initarg :supported
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetUwbSupportedMode-response (<GetUwbSupportedMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUwbSupportedMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUwbSupportedMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetUwbSupportedMode-response> is deprecated: use cruiser_msgs-srv:GetUwbSupportedMode-response instead.")))

(cl:ensure-generic-function 'supported-val :lambda-list '(m))
(cl:defmethod supported-val ((m <GetUwbSupportedMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:supported-val is deprecated.  Use cruiser_msgs-srv:supported instead.")
  (supported m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUwbSupportedMode-response>) ostream)
  "Serializes a message object of type '<GetUwbSupportedMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'supported) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUwbSupportedMode-response>) istream)
  "Deserializes a message object of type '<GetUwbSupportedMode-response>"
    (cl:setf (cl:slot-value msg 'supported) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUwbSupportedMode-response>)))
  "Returns string type for a service object of type '<GetUwbSupportedMode-response>"
  "cruiser_msgs/GetUwbSupportedModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUwbSupportedMode-response)))
  "Returns string type for a service object of type 'GetUwbSupportedMode-response"
  "cruiser_msgs/GetUwbSupportedModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUwbSupportedMode-response>)))
  "Returns md5sum for a message object of type '<GetUwbSupportedMode-response>"
  "3c35866e3d60aa551b5343ed0f3e9138")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUwbSupportedMode-response)))
  "Returns md5sum for a message object of type 'GetUwbSupportedMode-response"
  "3c35866e3d60aa551b5343ed0f3e9138")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUwbSupportedMode-response>)))
  "Returns full string definition for message of type '<GetUwbSupportedMode-response>"
  (cl:format cl:nil "bool supported~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUwbSupportedMode-response)))
  "Returns full string definition for message of type 'GetUwbSupportedMode-response"
  (cl:format cl:nil "bool supported~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUwbSupportedMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUwbSupportedMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUwbSupportedMode-response
    (cl:cons ':supported (supported msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUwbSupportedMode)))
  'GetUwbSupportedMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUwbSupportedMode)))
  'GetUwbSupportedMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUwbSupportedMode)))
  "Returns string type for a service object of type '<GetUwbSupportedMode>"
  "cruiser_msgs/GetUwbSupportedMode")