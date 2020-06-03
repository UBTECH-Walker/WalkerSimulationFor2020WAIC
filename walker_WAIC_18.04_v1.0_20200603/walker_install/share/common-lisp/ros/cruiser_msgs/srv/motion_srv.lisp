; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude motion_srv-request.msg.html

(cl:defclass <motion_srv-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (actionName
    :reader actionName
    :initarg :actionName
    :type cl:string
    :initform "")
   (writetime
    :reader writetime
    :initarg :writetime
    :type (cl:vector cl:integer)
   :initform (cl:make-array 1024 :element-type 'cl:integer :initial-element 0))
   (targetJointPosition
    :reader targetJointPosition
    :initarg :targetJointPosition
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass motion_srv-request (<motion_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motion_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motion_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<motion_srv-request> is deprecated: use cruiser_msgs-srv:motion_srv-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <motion_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:command-val is deprecated.  Use cruiser_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <motion_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:data-val is deprecated.  Use cruiser_msgs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'actionName-val :lambda-list '(m))
(cl:defmethod actionName-val ((m <motion_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:actionName-val is deprecated.  Use cruiser_msgs-srv:actionName instead.")
  (actionName m))

(cl:ensure-generic-function 'writetime-val :lambda-list '(m))
(cl:defmethod writetime-val ((m <motion_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:writetime-val is deprecated.  Use cruiser_msgs-srv:writetime instead.")
  (writetime m))

(cl:ensure-generic-function 'targetJointPosition-val :lambda-list '(m))
(cl:defmethod targetJointPosition-val ((m <motion_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:targetJointPosition-val is deprecated.  Use cruiser_msgs-srv:targetJointPosition instead.")
  (targetJointPosition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motion_srv-request>) ostream)
  "Serializes a message object of type '<motion_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actionName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actionName))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'writetime))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'targetJointPosition))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motion_srv-request>) istream)
  "Deserializes a message object of type '<motion_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actionName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actionName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'writetime) (cl:make-array 1024))
  (cl:let ((vals (cl:slot-value msg 'writetime)))
    (cl:dotimes (i 1024)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'targetJointPosition) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'targetJointPosition)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motion_srv-request>)))
  "Returns string type for a service object of type '<motion_srv-request>"
  "cruiser_msgs/motion_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motion_srv-request)))
  "Returns string type for a service object of type 'motion_srv-request"
  "cruiser_msgs/motion_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motion_srv-request>)))
  "Returns md5sum for a message object of type '<motion_srv-request>"
  "e17f72359ddf3560f0cea3ec62c3ae72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motion_srv-request)))
  "Returns md5sum for a message object of type 'motion_srv-request"
  "e17f72359ddf3560f0cea3ec62c3ae72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motion_srv-request>)))
  "Returns full string definition for message of type '<motion_srv-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%int32 command~%~%~%int32[3] data~%~%string actionName~%~%int32[1024] writetime~%~%float64[16] targetJointPosition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motion_srv-request)))
  "Returns full string definition for message of type 'motion_srv-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%int32 command~%~%~%int32[3] data~%~%string actionName~%~%int32[1024] writetime~%~%float64[16] targetJointPosition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motion_srv-request>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'actionName))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'writetime) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'targetJointPosition) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motion_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motion_srv-request
    (cl:cons ':command (command msg))
    (cl:cons ':data (data msg))
    (cl:cons ':actionName (actionName msg))
    (cl:cons ':writetime (writetime msg))
    (cl:cons ':targetJointPosition (targetJointPosition msg))
))
;//! \htmlinclude motion_srv-response.msg.html

(cl:defclass <motion_srv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (readtime
    :reader readtime
    :initarg :readtime
    :type (cl:vector cl:integer)
   :initform (cl:make-array 1024 :element-type 'cl:integer :initial-element 0))
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0)
   (currentJointPosition
    :reader currentJointPosition
    :initarg :currentJointPosition
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass motion_srv-response (<motion_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motion_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motion_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<motion_srv-response> is deprecated: use cruiser_msgs-srv:motion_srv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <motion_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:result-val is deprecated.  Use cruiser_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'readtime-val :lambda-list '(m))
(cl:defmethod readtime-val ((m <motion_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:readtime-val is deprecated.  Use cruiser_msgs-srv:readtime instead.")
  (readtime m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <motion_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:duration-val is deprecated.  Use cruiser_msgs-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'currentJointPosition-val :lambda-list '(m))
(cl:defmethod currentJointPosition-val ((m <motion_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:currentJointPosition-val is deprecated.  Use cruiser_msgs-srv:currentJointPosition instead.")
  (currentJointPosition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motion_srv-response>) ostream)
  "Serializes a message object of type '<motion_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'readtime))
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'currentJointPosition))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motion_srv-response>) istream)
  "Deserializes a message object of type '<motion_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'readtime) (cl:make-array 1024))
  (cl:let ((vals (cl:slot-value msg 'readtime)))
    (cl:dotimes (i 1024)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'currentJointPosition) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'currentJointPosition)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motion_srv-response>)))
  "Returns string type for a service object of type '<motion_srv-response>"
  "cruiser_msgs/motion_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motion_srv-response)))
  "Returns string type for a service object of type 'motion_srv-response"
  "cruiser_msgs/motion_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motion_srv-response>)))
  "Returns md5sum for a message object of type '<motion_srv-response>"
  "e17f72359ddf3560f0cea3ec62c3ae72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motion_srv-response)))
  "Returns md5sum for a message object of type 'motion_srv-response"
  "e17f72359ddf3560f0cea3ec62c3ae72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motion_srv-response>)))
  "Returns full string definition for message of type '<motion_srv-response>"
  (cl:format cl:nil "~%int32 result~%int32[1024] readtime~%~%int32 duration~%float64[16] currentJointPosition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motion_srv-response)))
  "Returns full string definition for message of type 'motion_srv-response"
  (cl:format cl:nil "~%int32 result~%int32[1024] readtime~%~%int32 duration~%float64[16] currentJointPosition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motion_srv-response>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'readtime) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'currentJointPosition) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motion_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motion_srv-response
    (cl:cons ':result (result msg))
    (cl:cons ':readtime (readtime msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':currentJointPosition (currentJointPosition msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motion_srv)))
  'motion_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motion_srv)))
  'motion_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motion_srv)))
  "Returns string type for a service object of type '<motion_srv>"
  "cruiser_msgs/motion_srv")