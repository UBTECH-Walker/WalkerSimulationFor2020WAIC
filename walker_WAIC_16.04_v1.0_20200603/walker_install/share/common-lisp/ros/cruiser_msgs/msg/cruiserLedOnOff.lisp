; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserLedOnOff.msg.html

(cl:defclass <cruiserLedOnOff> (roslisp-msg-protocol:ros-message)
  ((onOff
    :reader onOff
    :initarg :onOff
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserLedOnOff (<cruiserLedOnOff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserLedOnOff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserLedOnOff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserLedOnOff> is deprecated: use cruiser_msgs-msg:cruiserLedOnOff instead.")))

(cl:ensure-generic-function 'onOff-val :lambda-list '(m))
(cl:defmethod onOff-val ((m <cruiserLedOnOff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:onOff-val is deprecated.  Use cruiser_msgs-msg:onOff instead.")
  (onOff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserLedOnOff>) ostream)
  "Serializes a message object of type '<cruiserLedOnOff>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'onOff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'onOff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'onOff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'onOff)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserLedOnOff>) istream)
  "Deserializes a message object of type '<cruiserLedOnOff>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'onOff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'onOff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'onOff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'onOff)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserLedOnOff>)))
  "Returns string type for a message object of type '<cruiserLedOnOff>"
  "cruiser_msgs/cruiserLedOnOff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserLedOnOff)))
  "Returns string type for a message object of type 'cruiserLedOnOff"
  "cruiser_msgs/cruiserLedOnOff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserLedOnOff>)))
  "Returns md5sum for a message object of type '<cruiserLedOnOff>"
  "5542655f2c2b872f0777fe5564fc094c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserLedOnOff)))
  "Returns md5sum for a message object of type 'cruiserLedOnOff"
  "5542655f2c2b872f0777fe5564fc094c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserLedOnOff>)))
  "Returns full string definition for message of type '<cruiserLedOnOff>"
  (cl:format cl:nil "uint32 onOff~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserLedOnOff)))
  "Returns full string definition for message of type 'cruiserLedOnOff"
  (cl:format cl:nil "uint32 onOff~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserLedOnOff>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserLedOnOff>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserLedOnOff
    (cl:cons ':onOff (onOff msg))
))
