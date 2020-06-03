; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserChargeSource.msg.html

(cl:defclass <cruiserChargeSource> (roslisp-msg-protocol:ros-message)
  ((charge_source
    :reader charge_source
    :initarg :charge_source
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserChargeSource (<cruiserChargeSource>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserChargeSource>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserChargeSource)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserChargeSource> is deprecated: use cruiser_msgs-msg:cruiserChargeSource instead.")))

(cl:ensure-generic-function 'charge_source-val :lambda-list '(m))
(cl:defmethod charge_source-val ((m <cruiserChargeSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:charge_source-val is deprecated.  Use cruiser_msgs-msg:charge_source instead.")
  (charge_source m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserChargeSource>) ostream)
  "Serializes a message object of type '<cruiserChargeSource>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charge_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charge_source)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserChargeSource>) istream)
  "Deserializes a message object of type '<cruiserChargeSource>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charge_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charge_source)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserChargeSource>)))
  "Returns string type for a message object of type '<cruiserChargeSource>"
  "cruiser_msgs/cruiserChargeSource")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserChargeSource)))
  "Returns string type for a message object of type 'cruiserChargeSource"
  "cruiser_msgs/cruiserChargeSource")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserChargeSource>)))
  "Returns md5sum for a message object of type '<cruiserChargeSource>"
  "13f65a61a1eae98cfcb8a07995a5d081")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserChargeSource)))
  "Returns md5sum for a message object of type 'cruiserChargeSource"
  "13f65a61a1eae98cfcb8a07995a5d081")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserChargeSource>)))
  "Returns full string definition for message of type '<cruiserChargeSource>"
  (cl:format cl:nil "uint32 charge_source~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserChargeSource)))
  "Returns full string definition for message of type 'cruiserChargeSource"
  (cl:format cl:nil "uint32 charge_source~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserChargeSource>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserChargeSource>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserChargeSource
    (cl:cons ':charge_source (charge_source msg))
))
