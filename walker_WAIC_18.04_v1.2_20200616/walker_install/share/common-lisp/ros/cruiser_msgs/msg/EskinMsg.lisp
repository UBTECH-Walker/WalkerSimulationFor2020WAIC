; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude EskinMsg.msg.html

(cl:defclass <EskinMsg> (roslisp-msg-protocol:ros-message)
  ((Name
    :reader Name
    :initarg :Name
    :type cl:string
    :initform "")
   (E_skin
    :reader E_skin
    :initarg :E_skin
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass EskinMsg (<EskinMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EskinMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EskinMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<EskinMsg> is deprecated: use cruiser_msgs-msg:EskinMsg instead.")))

(cl:ensure-generic-function 'Name-val :lambda-list '(m))
(cl:defmethod Name-val ((m <EskinMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:Name-val is deprecated.  Use cruiser_msgs-msg:Name instead.")
  (Name m))

(cl:ensure-generic-function 'E_skin-val :lambda-list '(m))
(cl:defmethod E_skin-val ((m <EskinMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:E_skin-val is deprecated.  Use cruiser_msgs-msg:E_skin instead.")
  (E_skin m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EskinMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:message-val is deprecated.  Use cruiser_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EskinMsg>) ostream)
  "Serializes a message object of type '<EskinMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'E_skin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'E_skin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'E_skin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'E_skin)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EskinMsg>) istream)
  "Deserializes a message object of type '<EskinMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'E_skin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'E_skin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'E_skin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'E_skin)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EskinMsg>)))
  "Returns string type for a message object of type '<EskinMsg>"
  "cruiser_msgs/EskinMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EskinMsg)))
  "Returns string type for a message object of type 'EskinMsg"
  "cruiser_msgs/EskinMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EskinMsg>)))
  "Returns md5sum for a message object of type '<EskinMsg>"
  "77d3caef613d1fc8fbecb5c35a4b92d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EskinMsg)))
  "Returns md5sum for a message object of type 'EskinMsg"
  "77d3caef613d1fc8fbecb5c35a4b92d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EskinMsg>)))
  "Returns full string definition for message of type '<EskinMsg>"
  (cl:format cl:nil "string Name~%uint32 E_skin~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EskinMsg)))
  "Returns full string definition for message of type 'EskinMsg"
  (cl:format cl:nil "string Name~%uint32 E_skin~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EskinMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Name))
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EskinMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'EskinMsg
    (cl:cons ':Name (Name msg))
    (cl:cons ':E_skin (E_skin msg))
    (cl:cons ':message (message msg))
))
