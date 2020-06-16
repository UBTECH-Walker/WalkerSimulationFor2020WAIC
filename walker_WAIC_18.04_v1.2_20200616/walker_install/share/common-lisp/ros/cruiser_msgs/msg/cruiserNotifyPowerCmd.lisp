; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiserNotifyPowerCmd.msg.html

(cl:defclass <cruiserNotifyPowerCmd> (roslisp-msg-protocol:ros-message)
  ((power_notify_cmd
    :reader power_notify_cmd
    :initarg :power_notify_cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserNotifyPowerCmd (<cruiserNotifyPowerCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserNotifyPowerCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserNotifyPowerCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiserNotifyPowerCmd> is deprecated: use cruiser_msgs-msg:cruiserNotifyPowerCmd instead.")))

(cl:ensure-generic-function 'power_notify_cmd-val :lambda-list '(m))
(cl:defmethod power_notify_cmd-val ((m <cruiserNotifyPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:power_notify_cmd-val is deprecated.  Use cruiser_msgs-msg:power_notify_cmd instead.")
  (power_notify_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserNotifyPowerCmd>) ostream)
  "Serializes a message object of type '<cruiserNotifyPowerCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_notify_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power_notify_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power_notify_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power_notify_cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserNotifyPowerCmd>) istream)
  "Deserializes a message object of type '<cruiserNotifyPowerCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_notify_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power_notify_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power_notify_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power_notify_cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserNotifyPowerCmd>)))
  "Returns string type for a message object of type '<cruiserNotifyPowerCmd>"
  "cruiser_msgs/cruiserNotifyPowerCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserNotifyPowerCmd)))
  "Returns string type for a message object of type 'cruiserNotifyPowerCmd"
  "cruiser_msgs/cruiserNotifyPowerCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserNotifyPowerCmd>)))
  "Returns md5sum for a message object of type '<cruiserNotifyPowerCmd>"
  "92121c1a8961e00ed0dd1b8e75ec98a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserNotifyPowerCmd)))
  "Returns md5sum for a message object of type 'cruiserNotifyPowerCmd"
  "92121c1a8961e00ed0dd1b8e75ec98a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserNotifyPowerCmd>)))
  "Returns full string definition for message of type '<cruiserNotifyPowerCmd>"
  (cl:format cl:nil "uint32 power_notify_cmd~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserNotifyPowerCmd)))
  "Returns full string definition for message of type 'cruiserNotifyPowerCmd"
  (cl:format cl:nil "uint32 power_notify_cmd~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserNotifyPowerCmd>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserNotifyPowerCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserNotifyPowerCmd
    (cl:cons ':power_notify_cmd (power_notify_cmd msg))
))
