; Auto-generated. Do not edit!


(cl:in-package serial_device-srv)


;//! \htmlinclude TaskService-request.msg.html

(cl:defclass <TaskService-request> (roslisp-msg-protocol:ros-message)
  ((taskName
    :reader taskName
    :initarg :taskName
    :type cl:string
    :initform "")
   (taskEnable
    :reader taskEnable
    :initarg :taskEnable
    :type cl:boolean
    :initform cl:nil)
   (useJointOTG
    :reader useJointOTG
    :initarg :useJointOTG
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (useCartOTG
    :reader useCartOTG
    :initarg :useCartOTG
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (securityDection
    :reader securityDection
    :initarg :securityDection
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (collisionDetection
    :reader collisionDetection
    :initarg :collisionDetection
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass TaskService-request (<TaskService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_device-srv:<TaskService-request> is deprecated: use serial_device-srv:TaskService-request instead.")))

(cl:ensure-generic-function 'taskName-val :lambda-list '(m))
(cl:defmethod taskName-val ((m <TaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:taskName-val is deprecated.  Use serial_device-srv:taskName instead.")
  (taskName m))

(cl:ensure-generic-function 'taskEnable-val :lambda-list '(m))
(cl:defmethod taskEnable-val ((m <TaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:taskEnable-val is deprecated.  Use serial_device-srv:taskEnable instead.")
  (taskEnable m))

(cl:ensure-generic-function 'useJointOTG-val :lambda-list '(m))
(cl:defmethod useJointOTG-val ((m <TaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:useJointOTG-val is deprecated.  Use serial_device-srv:useJointOTG instead.")
  (useJointOTG m))

(cl:ensure-generic-function 'useCartOTG-val :lambda-list '(m))
(cl:defmethod useCartOTG-val ((m <TaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:useCartOTG-val is deprecated.  Use serial_device-srv:useCartOTG instead.")
  (useCartOTG m))

(cl:ensure-generic-function 'securityDection-val :lambda-list '(m))
(cl:defmethod securityDection-val ((m <TaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:securityDection-val is deprecated.  Use serial_device-srv:securityDection instead.")
  (securityDection m))

(cl:ensure-generic-function 'collisionDetection-val :lambda-list '(m))
(cl:defmethod collisionDetection-val ((m <TaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:collisionDetection-val is deprecated.  Use serial_device-srv:collisionDetection instead.")
  (collisionDetection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskService-request>) ostream)
  "Serializes a message object of type '<TaskService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'taskName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'taskName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'taskEnable) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'useJointOTG))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'useJointOTG))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'useCartOTG))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'useCartOTG))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'securityDection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'securityDection))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collisionDetection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'collisionDetection))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskService-request>) istream)
  "Deserializes a message object of type '<TaskService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'taskName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'taskEnable) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'useJointOTG) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'useJointOTG)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'useCartOTG) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'useCartOTG)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'securityDection) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'securityDection)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collisionDetection) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collisionDetection)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskService-request>)))
  "Returns string type for a service object of type '<TaskService-request>"
  "serial_device/TaskServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskService-request)))
  "Returns string type for a service object of type 'TaskService-request"
  "serial_device/TaskServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskService-request>)))
  "Returns md5sum for a message object of type '<TaskService-request>"
  "4fad11411fd801536b613979f3a27f21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskService-request)))
  "Returns md5sum for a message object of type 'TaskService-request"
  "4fad11411fd801536b613979f3a27f21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskService-request>)))
  "Returns full string definition for message of type '<TaskService-request>"
  (cl:format cl:nil "string taskName~%bool taskEnable~%bool[] useJointOTG~%bool[] useCartOTG~%bool[] securityDection~%bool[] collisionDetection~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskService-request)))
  "Returns full string definition for message of type 'TaskService-request"
  (cl:format cl:nil "string taskName~%bool taskEnable~%bool[] useJointOTG~%bool[] useCartOTG~%bool[] securityDection~%bool[] collisionDetection~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'taskName))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'useJointOTG) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'useCartOTG) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'securityDection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collisionDetection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskService-request
    (cl:cons ':taskName (taskName msg))
    (cl:cons ':taskEnable (taskEnable msg))
    (cl:cons ':useJointOTG (useJointOTG msg))
    (cl:cons ':useCartOTG (useCartOTG msg))
    (cl:cons ':securityDection (securityDection msg))
    (cl:cons ':collisionDetection (collisionDetection msg))
))
;//! \htmlinclude TaskService-response.msg.html

(cl:defclass <TaskService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass TaskService-response (<TaskService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_device-srv:<TaskService-response> is deprecated: use serial_device-srv:TaskService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TaskService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:result-val is deprecated.  Use serial_device-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TaskService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_device-srv:message-val is deprecated.  Use serial_device-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskService-response>) ostream)
  "Serializes a message object of type '<TaskService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskService-response>) istream)
  "Deserializes a message object of type '<TaskService-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskService-response>)))
  "Returns string type for a service object of type '<TaskService-response>"
  "serial_device/TaskServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskService-response)))
  "Returns string type for a service object of type 'TaskService-response"
  "serial_device/TaskServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskService-response>)))
  "Returns md5sum for a message object of type '<TaskService-response>"
  "4fad11411fd801536b613979f3a27f21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskService-response)))
  "Returns md5sum for a message object of type 'TaskService-response"
  "4fad11411fd801536b613979f3a27f21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskService-response>)))
  "Returns full string definition for message of type '<TaskService-response>"
  (cl:format cl:nil "~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskService-response)))
  "Returns full string definition for message of type 'TaskService-response"
  (cl:format cl:nil "~%bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskService-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskService-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskService)))
  'TaskService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskService)))
  'TaskService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskService)))
  "Returns string type for a service object of type '<TaskService>"
  "serial_device/TaskService")