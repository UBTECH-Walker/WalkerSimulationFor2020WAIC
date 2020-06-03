; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude msg_controler_chassis.msg.html

(cl:defclass <msg_controler_chassis> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (datapacket
    :reader datapacket
    :initarg :datapacket
    :type cl:string
    :initform ""))
)

(cl:defclass msg_controler_chassis (<msg_controler_chassis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_controler_chassis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_controler_chassis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<msg_controler_chassis> is deprecated: use cruiser_msgs-msg:msg_controler_chassis instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <msg_controler_chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:header-val is deprecated.  Use cruiser_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'datapacket-val :lambda-list '(m))
(cl:defmethod datapacket-val ((m <msg_controler_chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:datapacket-val is deprecated.  Use cruiser_msgs-msg:datapacket instead.")
  (datapacket m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_controler_chassis>) ostream)
  "Serializes a message object of type '<msg_controler_chassis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'datapacket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'datapacket))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_controler_chassis>) istream)
  "Deserializes a message object of type '<msg_controler_chassis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'datapacket) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'datapacket) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_controler_chassis>)))
  "Returns string type for a message object of type '<msg_controler_chassis>"
  "cruiser_msgs/msg_controler_chassis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_controler_chassis)))
  "Returns string type for a message object of type 'msg_controler_chassis"
  "cruiser_msgs/msg_controler_chassis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_controler_chassis>)))
  "Returns md5sum for a message object of type '<msg_controler_chassis>"
  "550613a4ae39cd5ce70b393463b493f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_controler_chassis)))
  "Returns md5sum for a message object of type 'msg_controler_chassis"
  "550613a4ae39cd5ce70b393463b493f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_controler_chassis>)))
  "Returns full string definition for message of type '<msg_controler_chassis>"
  (cl:format cl:nil "Header header~%string datapacket~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_controler_chassis)))
  "Returns full string definition for message of type 'msg_controler_chassis"
  (cl:format cl:nil "Header header~%string datapacket~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_controler_chassis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'datapacket))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_controler_chassis>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_controler_chassis
    (cl:cons ':header (header msg))
    (cl:cons ':datapacket (datapacket msg))
))
