; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude SendFtAtCmd-request.msg.html

(cl:defclass <SendFtAtCmd-request> (roslisp-msg-protocol:ros-message)
  ((ft_id
    :reader ft_id
    :initarg :ft_id
    :type cl:string
    :initform "")
   (at_cmd
    :reader at_cmd
    :initarg :at_cmd
    :type cl:string
    :initform ""))
)

(cl:defclass SendFtAtCmd-request (<SendFtAtCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendFtAtCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendFtAtCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SendFtAtCmd-request> is deprecated: use servo_ctrl-srv:SendFtAtCmd-request instead.")))

(cl:ensure-generic-function 'ft_id-val :lambda-list '(m))
(cl:defmethod ft_id-val ((m <SendFtAtCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:ft_id-val is deprecated.  Use servo_ctrl-srv:ft_id instead.")
  (ft_id m))

(cl:ensure-generic-function 'at_cmd-val :lambda-list '(m))
(cl:defmethod at_cmd-val ((m <SendFtAtCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:at_cmd-val is deprecated.  Use servo_ctrl-srv:at_cmd instead.")
  (at_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendFtAtCmd-request>) ostream)
  "Serializes a message object of type '<SendFtAtCmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ft_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ft_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'at_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'at_cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendFtAtCmd-request>) istream)
  "Deserializes a message object of type '<SendFtAtCmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ft_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ft_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'at_cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'at_cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendFtAtCmd-request>)))
  "Returns string type for a service object of type '<SendFtAtCmd-request>"
  "servo_ctrl/SendFtAtCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendFtAtCmd-request)))
  "Returns string type for a service object of type 'SendFtAtCmd-request"
  "servo_ctrl/SendFtAtCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendFtAtCmd-request>)))
  "Returns md5sum for a message object of type '<SendFtAtCmd-request>"
  "6047a75169370a000cccb1c1e8fefc47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendFtAtCmd-request)))
  "Returns md5sum for a message object of type 'SendFtAtCmd-request"
  "6047a75169370a000cccb1c1e8fefc47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendFtAtCmd-request>)))
  "Returns full string definition for message of type '<SendFtAtCmd-request>"
  (cl:format cl:nil "~%string ft_id~%string at_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendFtAtCmd-request)))
  "Returns full string definition for message of type 'SendFtAtCmd-request"
  (cl:format cl:nil "~%string ft_id~%string at_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendFtAtCmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ft_id))
     4 (cl:length (cl:slot-value msg 'at_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendFtAtCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendFtAtCmd-request
    (cl:cons ':ft_id (ft_id msg))
    (cl:cons ':at_cmd (at_cmd msg))
))
;//! \htmlinclude SendFtAtCmd-response.msg.html

(cl:defclass <SendFtAtCmd-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (at_res
    :reader at_res
    :initarg :at_res
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SendFtAtCmd-response (<SendFtAtCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendFtAtCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendFtAtCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SendFtAtCmd-response> is deprecated: use servo_ctrl-srv:SendFtAtCmd-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SendFtAtCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:success-val is deprecated.  Use servo_ctrl-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'at_res-val :lambda-list '(m))
(cl:defmethod at_res-val ((m <SendFtAtCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:at_res-val is deprecated.  Use servo_ctrl-srv:at_res instead.")
  (at_res m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SendFtAtCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:message-val is deprecated.  Use servo_ctrl-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendFtAtCmd-response>) ostream)
  "Serializes a message object of type '<SendFtAtCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'at_res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'at_res))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendFtAtCmd-response>) istream)
  "Deserializes a message object of type '<SendFtAtCmd-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'at_res) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'at_res) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendFtAtCmd-response>)))
  "Returns string type for a service object of type '<SendFtAtCmd-response>"
  "servo_ctrl/SendFtAtCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendFtAtCmd-response)))
  "Returns string type for a service object of type 'SendFtAtCmd-response"
  "servo_ctrl/SendFtAtCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendFtAtCmd-response>)))
  "Returns md5sum for a message object of type '<SendFtAtCmd-response>"
  "6047a75169370a000cccb1c1e8fefc47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendFtAtCmd-response)))
  "Returns md5sum for a message object of type 'SendFtAtCmd-response"
  "6047a75169370a000cccb1c1e8fefc47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendFtAtCmd-response>)))
  "Returns full string definition for message of type '<SendFtAtCmd-response>"
  (cl:format cl:nil "bool success~%string at_res~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendFtAtCmd-response)))
  "Returns full string definition for message of type 'SendFtAtCmd-response"
  (cl:format cl:nil "bool success~%string at_res~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendFtAtCmd-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'at_res))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendFtAtCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendFtAtCmd-response
    (cl:cons ':success (success msg))
    (cl:cons ':at_res (at_res msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendFtAtCmd)))
  'SendFtAtCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendFtAtCmd)))
  'SendFtAtCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendFtAtCmd)))
  "Returns string type for a service object of type '<SendFtAtCmd>"
  "servo_ctrl/SendFtAtCmd")