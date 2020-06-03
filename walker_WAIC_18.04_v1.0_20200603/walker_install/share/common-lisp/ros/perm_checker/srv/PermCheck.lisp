; Auto-generated. Do not edit!


(cl:in-package perm_checker-srv)


;//! \htmlinclude PermCheck-request.msg.html

(cl:defclass <PermCheck-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass PermCheck-request (<PermCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PermCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PermCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perm_checker-srv:<PermCheck-request> is deprecated: use perm_checker-srv:PermCheck-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PermCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perm_checker-srv:header-val is deprecated.  Use perm_checker-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <PermCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perm_checker-srv:content-val is deprecated.  Use perm_checker-srv:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PermCheck-request>) ostream)
  "Serializes a message object of type '<PermCheck-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PermCheck-request>) istream)
  "Deserializes a message object of type '<PermCheck-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PermCheck-request>)))
  "Returns string type for a service object of type '<PermCheck-request>"
  "perm_checker/PermCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PermCheck-request)))
  "Returns string type for a service object of type 'PermCheck-request"
  "perm_checker/PermCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PermCheck-request>)))
  "Returns md5sum for a message object of type '<PermCheck-request>"
  "567625a38a97c54a8feb8f3c8d08ffa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PermCheck-request)))
  "Returns md5sum for a message object of type 'PermCheck-request"
  "567625a38a97c54a8feb8f3c8d08ffa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PermCheck-request>)))
  "Returns full string definition for message of type '<PermCheck-request>"
  (cl:format cl:nil "Header header~%string content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PermCheck-request)))
  "Returns full string definition for message of type 'PermCheck-request"
  (cl:format cl:nil "Header header~%string content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PermCheck-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PermCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PermCheck-request
    (cl:cons ':header (header msg))
    (cl:cons ':content (content msg))
))
;//! \htmlinclude PermCheck-response.msg.html

(cl:defclass <PermCheck-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass PermCheck-response (<PermCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PermCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PermCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perm_checker-srv:<PermCheck-response> is deprecated: use perm_checker-srv:PermCheck-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PermCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perm_checker-srv:header-val is deprecated.  Use perm_checker-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <PermCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perm_checker-srv:content-val is deprecated.  Use perm_checker-srv:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PermCheck-response>) ostream)
  "Serializes a message object of type '<PermCheck-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PermCheck-response>) istream)
  "Deserializes a message object of type '<PermCheck-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PermCheck-response>)))
  "Returns string type for a service object of type '<PermCheck-response>"
  "perm_checker/PermCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PermCheck-response)))
  "Returns string type for a service object of type 'PermCheck-response"
  "perm_checker/PermCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PermCheck-response>)))
  "Returns md5sum for a message object of type '<PermCheck-response>"
  "567625a38a97c54a8feb8f3c8d08ffa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PermCheck-response)))
  "Returns md5sum for a message object of type 'PermCheck-response"
  "567625a38a97c54a8feb8f3c8d08ffa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PermCheck-response>)))
  "Returns full string definition for message of type '<PermCheck-response>"
  (cl:format cl:nil "Header header~%string content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PermCheck-response)))
  "Returns full string definition for message of type 'PermCheck-response"
  (cl:format cl:nil "Header header~%string content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PermCheck-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PermCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PermCheck-response
    (cl:cons ':header (header msg))
    (cl:cons ':content (content msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PermCheck)))
  'PermCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PermCheck)))
  'PermCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PermCheck)))
  "Returns string type for a service object of type '<PermCheck>"
  "perm_checker/PermCheck")