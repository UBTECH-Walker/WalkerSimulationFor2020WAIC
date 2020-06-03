; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude cruiser_sdk_resp.msg.html

(cl:defclass <cruiser_sdk_resp> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (datapacket
    :reader datapacket
    :initarg :datapacket
    :type cl:string
    :initform "")
   (cmdType
    :reader cmdType
    :initarg :cmdType
    :type cl:integer
    :initform 0)
   (cmdResult
    :reader cmdResult
    :initarg :cmdResult
    :type cl:integer
    :initform 0)
   (clientFd
    :reader clientFd
    :initarg :clientFd
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiser_sdk_resp (<cruiser_sdk_resp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiser_sdk_resp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiser_sdk_resp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<cruiser_sdk_resp> is deprecated: use cruiser_msgs-msg:cruiser_sdk_resp instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <cruiser_sdk_resp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:header-val is deprecated.  Use cruiser_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'datapacket-val :lambda-list '(m))
(cl:defmethod datapacket-val ((m <cruiser_sdk_resp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:datapacket-val is deprecated.  Use cruiser_msgs-msg:datapacket instead.")
  (datapacket m))

(cl:ensure-generic-function 'cmdType-val :lambda-list '(m))
(cl:defmethod cmdType-val ((m <cruiser_sdk_resp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cmdType-val is deprecated.  Use cruiser_msgs-msg:cmdType instead.")
  (cmdType m))

(cl:ensure-generic-function 'cmdResult-val :lambda-list '(m))
(cl:defmethod cmdResult-val ((m <cruiser_sdk_resp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cmdResult-val is deprecated.  Use cruiser_msgs-msg:cmdResult instead.")
  (cmdResult m))

(cl:ensure-generic-function 'clientFd-val :lambda-list '(m))
(cl:defmethod clientFd-val ((m <cruiser_sdk_resp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:clientFd-val is deprecated.  Use cruiser_msgs-msg:clientFd instead.")
  (clientFd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiser_sdk_resp>) ostream)
  "Serializes a message object of type '<cruiser_sdk_resp>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'datapacket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'datapacket))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmdType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmdType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cmdType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cmdType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmdResult)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmdResult)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cmdResult)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cmdResult)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clientFd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clientFd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clientFd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clientFd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiser_sdk_resp>) istream)
  "Deserializes a message object of type '<cruiser_sdk_resp>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'datapacket) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'datapacket) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmdType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmdType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cmdType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cmdType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmdResult)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmdResult)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cmdResult)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cmdResult)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clientFd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clientFd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'clientFd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'clientFd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiser_sdk_resp>)))
  "Returns string type for a message object of type '<cruiser_sdk_resp>"
  "cruiser_msgs/cruiser_sdk_resp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiser_sdk_resp)))
  "Returns string type for a message object of type 'cruiser_sdk_resp"
  "cruiser_msgs/cruiser_sdk_resp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiser_sdk_resp>)))
  "Returns md5sum for a message object of type '<cruiser_sdk_resp>"
  "67265208b8ec2a3368581dba5ddc5c17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiser_sdk_resp)))
  "Returns md5sum for a message object of type 'cruiser_sdk_resp"
  "67265208b8ec2a3368581dba5ddc5c17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiser_sdk_resp>)))
  "Returns full string definition for message of type '<cruiser_sdk_resp>"
  (cl:format cl:nil "Header header~%string datapacket~%~%#command type~%uint32 cmdType~%~%#command result state~%uint32 cmdResult~%~%#communication client~%uint32 clientFd~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiser_sdk_resp)))
  "Returns full string definition for message of type 'cruiser_sdk_resp"
  (cl:format cl:nil "Header header~%string datapacket~%~%#command type~%uint32 cmdType~%~%#command result state~%uint32 cmdResult~%~%#communication client~%uint32 clientFd~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiser_sdk_resp>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'datapacket))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiser_sdk_resp>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiser_sdk_resp
    (cl:cons ':header (header msg))
    (cl:cons ':datapacket (datapacket msg))
    (cl:cons ':cmdType (cmdType msg))
    (cl:cons ':cmdResult (cmdResult msg))
    (cl:cons ':clientFd (clientFd msg))
))
