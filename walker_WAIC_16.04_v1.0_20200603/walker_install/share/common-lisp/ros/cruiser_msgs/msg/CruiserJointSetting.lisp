; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude CruiserJointSetting.msg.html

(cl:defclass <CruiserJointSetting> (roslisp-msg-protocol:ros-message)
  ((joint_num
    :reader joint_num
    :initarg :joint_num
    :type cl:fixnum
    :initform 0)
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform "")
   (jointIndex
    :reader jointIndex
    :initarg :jointIndex
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (parameter
    :reader parameter
    :initarg :parameter
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CruiserJointSetting (<CruiserJointSetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CruiserJointSetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CruiserJointSetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<CruiserJointSetting> is deprecated: use cruiser_msgs-msg:CruiserJointSetting instead.")))

(cl:ensure-generic-function 'joint_num-val :lambda-list '(m))
(cl:defmethod joint_num-val ((m <CruiserJointSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:joint_num-val is deprecated.  Use cruiser_msgs-msg:joint_num instead.")
  (joint_num m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <CruiserJointSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:cmd-val is deprecated.  Use cruiser_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'jointIndex-val :lambda-list '(m))
(cl:defmethod jointIndex-val ((m <CruiserJointSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:jointIndex-val is deprecated.  Use cruiser_msgs-msg:jointIndex instead.")
  (jointIndex m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <CruiserJointSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:parameter-val is deprecated.  Use cruiser_msgs-msg:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CruiserJointSetting>) ostream)
  "Serializes a message object of type '<CruiserJointSetting>"
  (cl:let* ((signed (cl:slot-value msg 'joint_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'jointIndex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'jointIndex))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'parameter))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CruiserJointSetting>) istream)
  "Deserializes a message object of type '<CruiserJointSetting>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'jointIndex) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'jointIndex)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameter) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameter)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CruiserJointSetting>)))
  "Returns string type for a message object of type '<CruiserJointSetting>"
  "cruiser_msgs/CruiserJointSetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CruiserJointSetting)))
  "Returns string type for a message object of type 'CruiserJointSetting"
  "cruiser_msgs/CruiserJointSetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CruiserJointSetting>)))
  "Returns md5sum for a message object of type '<CruiserJointSetting>"
  "2cb5800afbbffbf910bd3074e8d992fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CruiserJointSetting)))
  "Returns md5sum for a message object of type 'CruiserJointSetting"
  "2cb5800afbbffbf910bd3074e8d992fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CruiserJointSetting>)))
  "Returns full string definition for message of type '<CruiserJointSetting>"
  (cl:format cl:nil "int16 joint_num~%~%# Joints name to control in array~%# example - [\"stop\", \"set Kp\", \"read zero\"]~%string cmd~%~%# Joints index to control in array~%uint32[] jointIndex~%~%# Corresponding joints postion~%# unit - radian;~%# example - [0.54, 1.22, 1.39]~%float64[] parameter~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CruiserJointSetting)))
  "Returns full string definition for message of type 'CruiserJointSetting"
  (cl:format cl:nil "int16 joint_num~%~%# Joints name to control in array~%# example - [\"stop\", \"set Kp\", \"read zero\"]~%string cmd~%~%# Joints index to control in array~%uint32[] jointIndex~%~%# Corresponding joints postion~%# unit - radian;~%# example - [0.54, 1.22, 1.39]~%float64[] parameter~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CruiserJointSetting>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'cmd))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'jointIndex) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CruiserJointSetting>))
  "Converts a ROS message object to a list"
  (cl:list 'CruiserJointSetting
    (cl:cons ':joint_num (joint_num msg))
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':jointIndex (jointIndex msg))
    (cl:cons ':parameter (parameter msg))
))
