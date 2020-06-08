; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserPowerCmd.msg.html

(cl:defclass <cruiserPowerCmd> (roslisp-msg-protocol:ros-message)
  ((power_cmd
    :reader power_cmd
    :initarg :power_cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserPowerCmd (<cruiserPowerCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserPowerCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserPowerCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserPowerCmd> is deprecated: use cruiser_msgs-msg:cruiserPowerCmd instead.")))

(cl:ensure-generic-function 'power_cmd-val :lambda-list '(m))
(cl:defmethod power_cmd-val ((m <cruiserPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:power_cmd-val is deprecated.  Use cruiser_msgs-msg:power_cmd instead.")
  (power_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserPowerCmd>) ostream)
  "Serializes a message object of type '<cruiserPowerCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power_cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserPowerCmd>) istream)
  "Deserializes a message object of type '<cruiserPowerCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power_cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserPowerCmd>)))
  "Returns string type for a message object of type '<cruiserPowerCmd>"
  "cruiser_msgs/cruiserPowerCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserPowerCmd)))
  "Returns string type for a message object of type 'cruiserPowerCmd"
  "cruiser_msgs/cruiserPowerCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserPowerCmd>)))
  "Returns md5sum for a message object of type '<cruiserPowerCmd>"
  "095e92debc6bcb5e7317d4b6d9d2054c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserPowerCmd)))
  "Returns md5sum for a message object of type 'cruiserPowerCmd"
  "095e92debc6bcb5e7317d4b6d9d2054c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserPowerCmd>)))
  "Returns full string definition for message of type '<cruiserPowerCmd>"
  (cl:format cl:nil "uint32 power_cmd~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserPowerCmd)))
  "Returns full string definition for message of type 'cruiserPowerCmd"
  (cl:format cl:nil "uint32 power_cmd~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserPowerCmd>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserPowerCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserPowerCmd
    (cl:cons ':power_cmd (power_cmd msg))
))
