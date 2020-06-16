; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude JointCtrl.msg.html

(cl:defclass <JointCtrl> (roslisp-msg-protocol:ros-message)
  ((ctrlId
    :reader ctrlId
    :initarg :ctrlId
    :type cl:string
    :initform "")
   (ctrlStamp
    :reader ctrlStamp
    :initarg :ctrlStamp
    :type cl:real
    :initform 0)
   (ctrlName
    :reader ctrlName
    :initarg :ctrlName
    :type cl:string
    :initform "")
   (jointIdx
    :reader jointIdx
    :initarg :jointIdx
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass JointCtrl (<JointCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<JointCtrl> is deprecated: use cruiser_msgs-msg:JointCtrl instead.")))

(cl:ensure-generic-function 'ctrlId-val :lambda-list '(m))
(cl:defmethod ctrlId-val ((m <JointCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:ctrlId-val is deprecated.  Use cruiser_msgs-msg:ctrlId instead.")
  (ctrlId m))

(cl:ensure-generic-function 'ctrlStamp-val :lambda-list '(m))
(cl:defmethod ctrlStamp-val ((m <JointCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:ctrlStamp-val is deprecated.  Use cruiser_msgs-msg:ctrlStamp instead.")
  (ctrlStamp m))

(cl:ensure-generic-function 'ctrlName-val :lambda-list '(m))
(cl:defmethod ctrlName-val ((m <JointCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:ctrlName-val is deprecated.  Use cruiser_msgs-msg:ctrlName instead.")
  (ctrlName m))

(cl:ensure-generic-function 'jointIdx-val :lambda-list '(m))
(cl:defmethod jointIdx-val ((m <JointCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:jointIdx-val is deprecated.  Use cruiser_msgs-msg:jointIdx instead.")
  (jointIdx m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <JointCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:reserved-val is deprecated.  Use cruiser_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCtrl>) ostream)
  "Serializes a message object of type '<JointCtrl>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ctrlId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ctrlId))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'ctrlStamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'ctrlStamp) (cl:floor (cl:slot-value msg 'ctrlStamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ctrlName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ctrlName))
  (cl:let* ((signed (cl:slot-value msg 'jointIdx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCtrl>) istream)
  "Deserializes a message object of type '<JointCtrl>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrlId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ctrlId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrlStamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrlName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ctrlName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jointIdx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCtrl>)))
  "Returns string type for a message object of type '<JointCtrl>"
  "cruiser_msgs/JointCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCtrl)))
  "Returns string type for a message object of type 'JointCtrl"
  "cruiser_msgs/JointCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCtrl>)))
  "Returns md5sum for a message object of type '<JointCtrl>"
  "8223324199b2c8c391007fad926392ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCtrl)))
  "Returns md5sum for a message object of type 'JointCtrl"
  "8223324199b2c8c391007fad926392ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCtrl>)))
  "Returns full string definition for message of type '<JointCtrl>"
  (cl:format cl:nil "string ctrlId~%time ctrlStamp~%string ctrlName~%int32 jointIdx~%uint8[] reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCtrl)))
  "Returns full string definition for message of type 'JointCtrl"
  (cl:format cl:nil "string ctrlId~%time ctrlStamp~%string ctrlName~%int32 jointIdx~%uint8[] reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCtrl>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ctrlId))
     8
     4 (cl:length (cl:slot-value msg 'ctrlName))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCtrl
    (cl:cons ':ctrlId (ctrlId msg))
    (cl:cons ':ctrlStamp (ctrlStamp msg))
    (cl:cons ':ctrlName (ctrlName msg))
    (cl:cons ':jointIdx (jointIdx msg))
    (cl:cons ':reserved (reserved msg))
))
