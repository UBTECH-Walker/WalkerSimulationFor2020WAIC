; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiser_navigation_motion.msg.html

(cl:defclass <cruiser_navigation_motion> (roslisp-msg-protocol:ros-message)
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

(cl:defclass cruiser_navigation_motion (<cruiser_navigation_motion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiser_navigation_motion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiser_navigation_motion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiser_navigation_motion> is deprecated: use cruiser_msgs-msg:cruiser_navigation_motion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <cruiser_navigation_motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:header-val is deprecated.  Use cruiser_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'datapacket-val :lambda-list '(m))
(cl:defmethod datapacket-val ((m <cruiser_navigation_motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:datapacket-val is deprecated.  Use cruiser_msgs-msg:datapacket instead.")
  (datapacket m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiser_navigation_motion>) ostream)
  "Serializes a message object of type '<cruiser_navigation_motion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'datapacket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'datapacket))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiser_navigation_motion>) istream)
  "Deserializes a message object of type '<cruiser_navigation_motion>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiser_navigation_motion>)))
  "Returns string type for a message object of type '<cruiser_navigation_motion>"
  "cruiser_msgs/cruiser_navigation_motion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiser_navigation_motion)))
  "Returns string type for a message object of type 'cruiser_navigation_motion"
  "cruiser_msgs/cruiser_navigation_motion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiser_navigation_motion>)))
  "Returns md5sum for a message object of type '<cruiser_navigation_motion>"
  "550613a4ae39cd5ce70b393463b493f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiser_navigation_motion)))
  "Returns md5sum for a message object of type 'cruiser_navigation_motion"
  "550613a4ae39cd5ce70b393463b493f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiser_navigation_motion>)))
  "Returns full string definition for message of type '<cruiser_navigation_motion>"
  (cl:format cl:nil "Header header~%string datapacket~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiser_navigation_motion)))
  "Returns full string definition for message of type 'cruiser_navigation_motion"
  (cl:format cl:nil "Header header~%string datapacket~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiser_navigation_motion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'datapacket))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiser_navigation_motion>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiser_navigation_motion
    (cl:cons ':header (header msg))
    (cl:cons ':datapacket (datapacket msg))
))
