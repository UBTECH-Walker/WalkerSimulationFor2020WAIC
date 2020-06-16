; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude joint_abnor.msg.html

(cl:defclass <joint_abnor> (roslisp-msg-protocol:ros-message)
  ((jointName
    :reader jointName
    :initarg :jointName
    :type cl:string
    :initform "")
   (jointIndex
    :reader jointIndex
    :initarg :jointIndex
    :type cl:integer
    :initform 0)
   (abnorState
    :reader abnorState
    :initarg :abnorState
    :type cl:integer
    :initform 0))
)

(cl:defclass joint_abnor (<joint_abnor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joint_abnor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joint_abnor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<joint_abnor> is deprecated: use cruiser_msgs-msg:joint_abnor instead.")))

(cl:ensure-generic-function 'jointName-val :lambda-list '(m))
(cl:defmethod jointName-val ((m <joint_abnor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:jointName-val is deprecated.  Use cruiser_msgs-msg:jointName instead.")
  (jointName m))

(cl:ensure-generic-function 'jointIndex-val :lambda-list '(m))
(cl:defmethod jointIndex-val ((m <joint_abnor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:jointIndex-val is deprecated.  Use cruiser_msgs-msg:jointIndex instead.")
  (jointIndex m))

(cl:ensure-generic-function 'abnorState-val :lambda-list '(m))
(cl:defmethod abnorState-val ((m <joint_abnor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:abnorState-val is deprecated.  Use cruiser_msgs-msg:abnorState instead.")
  (abnorState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joint_abnor>) ostream)
  "Serializes a message object of type '<joint_abnor>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'jointName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'jointName))
  (cl:let* ((signed (cl:slot-value msg 'jointIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'abnorState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joint_abnor>) istream)
  "Deserializes a message object of type '<joint_abnor>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jointName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'jointName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jointIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'abnorState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joint_abnor>)))
  "Returns string type for a message object of type '<joint_abnor>"
  "cruiser_msgs/joint_abnor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joint_abnor)))
  "Returns string type for a message object of type 'joint_abnor"
  "cruiser_msgs/joint_abnor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joint_abnor>)))
  "Returns md5sum for a message object of type '<joint_abnor>"
  "d33fc6a742571f80a3793eed68aa9c0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joint_abnor)))
  "Returns md5sum for a message object of type 'joint_abnor"
  "d33fc6a742571f80a3793eed68aa9c0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joint_abnor>)))
  "Returns full string definition for message of type '<joint_abnor>"
  (cl:format cl:nil "string jointName~%~%# Joints index~%int32 jointIndex~%~%# abnorState~%# 1:low Temperature protection~%# 2:high Temperature protection~%# 3:low voltage portection~%# 4:high voltage portection~%# 5:current portection~%# 6:force portection~%# 7:fuse portection~%# 8:PWM portection~%int32 abnorState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joint_abnor)))
  "Returns full string definition for message of type 'joint_abnor"
  (cl:format cl:nil "string jointName~%~%# Joints index~%int32 jointIndex~%~%# abnorState~%# 1:low Temperature protection~%# 2:high Temperature protection~%# 3:low voltage portection~%# 4:high voltage portection~%# 5:current portection~%# 6:force portection~%# 7:fuse portection~%# 8:PWM portection~%int32 abnorState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joint_abnor>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'jointName))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joint_abnor>))
  "Converts a ROS message object to a list"
  (cl:list 'joint_abnor
    (cl:cons ':jointName (jointName msg))
    (cl:cons ':jointIndex (jointIndex msg))
    (cl:cons ':abnorState (abnorState msg))
))
