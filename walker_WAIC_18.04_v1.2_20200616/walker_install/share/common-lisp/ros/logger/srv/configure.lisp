; Auto-generated. Do not edit!


(cl:in-package logger-srv)


;//! \htmlinclude configure-request.msg.html

(cl:defclass <configure-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (capacity
    :reader capacity
    :initarg :capacity
    :type cl:integer
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass configure-request (<configure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name logger-srv:<configure-request> is deprecated: use logger-srv:configure-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <configure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader logger-srv:node-val is deprecated.  Use logger-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <configure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader logger-srv:mode-val is deprecated.  Use logger-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <configure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader logger-srv:capacity-val is deprecated.  Use logger-srv:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <configure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader logger-srv:path-val is deprecated.  Use logger-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<configure-request>)))
    "Constants for message type '<configure-request>"
  '((:MODE_QUERY . query)
    (:MODE_SET_CAPACITY . set_capacity)
    (:MODE_SET_PATH . set_path))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'configure-request)))
    "Constants for message type 'configure-request"
  '((:MODE_QUERY . query)
    (:MODE_SET_CAPACITY . set_capacity)
    (:MODE_SET_PATH . set_path))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configure-request>) ostream)
  "Serializes a message object of type '<configure-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let* ((signed (cl:slot-value msg 'capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configure-request>) istream)
  "Deserializes a message object of type '<configure-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capacity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configure-request>)))
  "Returns string type for a service object of type '<configure-request>"
  "logger/configureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configure-request)))
  "Returns string type for a service object of type 'configure-request"
  "logger/configureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configure-request>)))
  "Returns md5sum for a message object of type '<configure-request>"
  "f542eb6b685060352c4ca123dd2b40da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configure-request)))
  "Returns md5sum for a message object of type 'configure-request"
  "f542eb6b685060352c4ca123dd2b40da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configure-request>)))
  "Returns full string definition for message of type '<configure-request>"
  (cl:format cl:nil "#mode对应的常量~%string MODE_QUERY=query~%string MODE_SET_CAPACITY=set_capacity~%string MODE_SET_PATH=set_path~%~%string node~%#set or query,设置或查询~%string mode~%#容量，以条数为单位~%int32 capacity~%#数据存放路径~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configure-request)))
  "Returns full string definition for message of type 'configure-request"
  (cl:format cl:nil "#mode对应的常量~%string MODE_QUERY=query~%string MODE_SET_CAPACITY=set_capacity~%string MODE_SET_PATH=set_path~%~%string node~%#set or query,设置或查询~%string mode~%#容量，以条数为单位~%int32 capacity~%#数据存放路径~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configure-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node))
     4 (cl:length (cl:slot-value msg 'mode))
     4
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'configure-request
    (cl:cons ':node (node msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':capacity (capacity msg))
    (cl:cons ':path (path msg))
))
;//! \htmlinclude configure-response.msg.html

(cl:defclass <configure-response> (roslisp-msg-protocol:ros-message)
  ((capacity
    :reader capacity
    :initarg :capacity
    :type cl:integer
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass configure-response (<configure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name logger-srv:<configure-response> is deprecated: use logger-srv:configure-response instead.")))

(cl:ensure-generic-function 'capacity-val :lambda-list '(m))
(cl:defmethod capacity-val ((m <configure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader logger-srv:capacity-val is deprecated.  Use logger-srv:capacity instead.")
  (capacity m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <configure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader logger-srv:path-val is deprecated.  Use logger-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <configure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader logger-srv:result-val is deprecated.  Use logger-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configure-response>) ostream)
  "Serializes a message object of type '<configure-response>"
  (cl:let* ((signed (cl:slot-value msg 'capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configure-response>) istream)
  "Deserializes a message object of type '<configure-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capacity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configure-response>)))
  "Returns string type for a service object of type '<configure-response>"
  "logger/configureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configure-response)))
  "Returns string type for a service object of type 'configure-response"
  "logger/configureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configure-response>)))
  "Returns md5sum for a message object of type '<configure-response>"
  "f542eb6b685060352c4ca123dd2b40da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configure-response)))
  "Returns md5sum for a message object of type 'configure-response"
  "f542eb6b685060352c4ca123dd2b40da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configure-response>)))
  "Returns full string definition for message of type '<configure-response>"
  (cl:format cl:nil "#查询容量，以条数为单位~%int32 capacity~%#查询数据存放路径~%string path~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configure-response)))
  "Returns full string definition for message of type 'configure-response"
  (cl:format cl:nil "#查询容量，以条数为单位~%int32 capacity~%#查询数据存放路径~%string path~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configure-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'configure-response
    (cl:cons ':capacity (capacity msg))
    (cl:cons ':path (path msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'configure)))
  'configure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'configure)))
  'configure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configure)))
  "Returns string type for a service object of type '<configure>"
  "logger/configure")