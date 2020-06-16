; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude cruiser_string-request.msg.html

(cl:defclass <cruiser_string-request> (roslisp-msg-protocol:ros-message)
  ((priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass cruiser_string-request (<cruiser_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiser_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiser_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiser_string-request> is deprecated: use cruiser_msgs-srv:cruiser_string-request instead.")))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <cruiser_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:priority-val is deprecated.  Use cruiser_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <cruiser_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:str-val is deprecated.  Use cruiser_msgs-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiser_string-request>) ostream)
  "Serializes a message object of type '<cruiser_string-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'priority)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiser_string-request>) istream)
  "Deserializes a message object of type '<cruiser_string-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiser_string-request>)))
  "Returns string type for a service object of type '<cruiser_string-request>"
  "cruiser_msgs/cruiser_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiser_string-request)))
  "Returns string type for a service object of type 'cruiser_string-request"
  "cruiser_msgs/cruiser_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiser_string-request>)))
  "Returns md5sum for a message object of type '<cruiser_string-request>"
  "be3d0e35ecd74786b92f4acafccf0d4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiser_string-request)))
  "Returns md5sum for a message object of type 'cruiser_string-request"
  "be3d0e35ecd74786b92f4acafccf0d4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiser_string-request>)))
  "Returns full string definition for message of type '<cruiser_string-request>"
  (cl:format cl:nil "uint32 priority~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiser_string-request)))
  "Returns full string definition for message of type 'cruiser_string-request"
  (cl:format cl:nil "uint32 priority~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiser_string-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiser_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiser_string-request
    (cl:cons ':priority (priority msg))
    (cl:cons ':str (str msg))
))
;//! \htmlinclude cruiser_string-response.msg.html

(cl:defclass <cruiser_string-response> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass cruiser_string-response (<cruiser_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiser_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiser_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiser_string-response> is deprecated: use cruiser_msgs-srv:cruiser_string-response instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <cruiser_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:str-val is deprecated.  Use cruiser_msgs-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiser_string-response>) ostream)
  "Serializes a message object of type '<cruiser_string-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiser_string-response>) istream)
  "Deserializes a message object of type '<cruiser_string-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiser_string-response>)))
  "Returns string type for a service object of type '<cruiser_string-response>"
  "cruiser_msgs/cruiser_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiser_string-response)))
  "Returns string type for a service object of type 'cruiser_string-response"
  "cruiser_msgs/cruiser_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiser_string-response>)))
  "Returns md5sum for a message object of type '<cruiser_string-response>"
  "be3d0e35ecd74786b92f4acafccf0d4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiser_string-response)))
  "Returns md5sum for a message object of type 'cruiser_string-response"
  "be3d0e35ecd74786b92f4acafccf0d4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiser_string-response>)))
  "Returns full string definition for message of type '<cruiser_string-response>"
  (cl:format cl:nil "# time in millisecond. 1000 stands for 1s~%string str~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiser_string-response)))
  "Returns full string definition for message of type 'cruiser_string-response"
  (cl:format cl:nil "# time in millisecond. 1000 stands for 1s~%string str~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiser_string-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiser_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiser_string-response
    (cl:cons ':str (str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cruiser_string)))
  'cruiser_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cruiser_string)))
  'cruiser_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiser_string)))
  "Returns string type for a service object of type '<cruiser_string>"
  "cruiser_msgs/cruiser_string")