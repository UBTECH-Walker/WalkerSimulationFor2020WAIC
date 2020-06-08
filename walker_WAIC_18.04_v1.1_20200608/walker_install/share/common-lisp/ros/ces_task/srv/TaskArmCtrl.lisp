; Auto-generated. Do not edit!


(cl:in-package ces_task-srv)


;//! \htmlinclude TaskArmCtrl-request.msg.html

(cl:defclass <TaskArmCtrl-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:string
    :initform "")
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
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (demander
    :reader demander
    :initarg :demander
    :type cl:string
    :initform "")
   (executor
    :reader executor
    :initarg :executor
    :type cl:string
    :initform "")
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass TaskArmCtrl-request (<TaskArmCtrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskArmCtrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskArmCtrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ces_task-srv:<TaskArmCtrl-request> is deprecated: use ces_task-srv:TaskArmCtrl-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:task_id-val is deprecated.  Use ces_task-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'useJointOTG-val :lambda-list '(m))
(cl:defmethod useJointOTG-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:useJointOTG-val is deprecated.  Use ces_task-srv:useJointOTG instead.")
  (useJointOTG m))

(cl:ensure-generic-function 'useCartOTG-val :lambda-list '(m))
(cl:defmethod useCartOTG-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:useCartOTG-val is deprecated.  Use ces_task-srv:useCartOTG instead.")
  (useCartOTG m))

(cl:ensure-generic-function 'securityDection-val :lambda-list '(m))
(cl:defmethod securityDection-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:securityDection-val is deprecated.  Use ces_task-srv:securityDection instead.")
  (securityDection m))

(cl:ensure-generic-function 'collisionDetection-val :lambda-list '(m))
(cl:defmethod collisionDetection-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:collisionDetection-val is deprecated.  Use ces_task-srv:collisionDetection instead.")
  (collisionDetection m))

(cl:ensure-generic-function 'demander-val :lambda-list '(m))
(cl:defmethod demander-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:demander-val is deprecated.  Use ces_task-srv:demander instead.")
  (demander m))

(cl:ensure-generic-function 'executor-val :lambda-list '(m))
(cl:defmethod executor-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:executor-val is deprecated.  Use ces_task-srv:executor instead.")
  (executor m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <TaskArmCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:cmd-val is deprecated.  Use ces_task-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskArmCtrl-request>)))
    "Constants for message type '<TaskArmCtrl-request>"
  '((:CMD_START . start)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskArmCtrl-request)))
    "Constants for message type 'TaskArmCtrl-request"
  '((:CMD_START . start)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskArmCtrl-request>) ostream)
  "Serializes a message object of type '<TaskArmCtrl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_id))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'demander))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'demander))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'executor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'executor))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskArmCtrl-request>) istream)
  "Deserializes a message object of type '<TaskArmCtrl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'demander) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'demander) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'executor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'executor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskArmCtrl-request>)))
  "Returns string type for a service object of type '<TaskArmCtrl-request>"
  "ces_task/TaskArmCtrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskArmCtrl-request)))
  "Returns string type for a service object of type 'TaskArmCtrl-request"
  "ces_task/TaskArmCtrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskArmCtrl-request>)))
  "Returns md5sum for a message object of type '<TaskArmCtrl-request>"
  "6487bd4cf07aded076310cb84cded15c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskArmCtrl-request)))
  "Returns md5sum for a message object of type 'TaskArmCtrl-request"
  "6487bd4cf07aded076310cb84cded15c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskArmCtrl-request>)))
  "Returns full string definition for message of type '<TaskArmCtrl-request>"
  (cl:format cl:nil "~%string task_id~%~%~%bool[] useJointOTG~%bool[] useCartOTG~%bool[] securityDection~%bool[] collisionDetection~%~%~%~%string demander~%~%~%string executor~%~%~%string CMD_START=start~%string CMD_STOP=stop~%string cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskArmCtrl-request)))
  "Returns full string definition for message of type 'TaskArmCtrl-request"
  (cl:format cl:nil "~%string task_id~%~%~%bool[] useJointOTG~%bool[] useCartOTG~%bool[] securityDection~%bool[] collisionDetection~%~%~%~%string demander~%~%~%string executor~%~%~%string CMD_START=start~%string CMD_STOP=stop~%string cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskArmCtrl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'useJointOTG) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'useCartOTG) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'securityDection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collisionDetection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'demander))
     4 (cl:length (cl:slot-value msg 'executor))
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskArmCtrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskArmCtrl-request
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':useJointOTG (useJointOTG msg))
    (cl:cons ':useCartOTG (useCartOTG msg))
    (cl:cons ':securityDection (securityDection msg))
    (cl:cons ':collisionDetection (collisionDetection msg))
    (cl:cons ':demander (demander msg))
    (cl:cons ':executor (executor msg))
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude TaskArmCtrl-response.msg.html

(cl:defclass <TaskArmCtrl-response> (roslisp-msg-protocol:ros-message)
  ((owner
    :reader owner
    :initarg :owner
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass TaskArmCtrl-response (<TaskArmCtrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskArmCtrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskArmCtrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ces_task-srv:<TaskArmCtrl-response> is deprecated: use ces_task-srv:TaskArmCtrl-response instead.")))

(cl:ensure-generic-function 'owner-val :lambda-list '(m))
(cl:defmethod owner-val ((m <TaskArmCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:owner-val is deprecated.  Use ces_task-srv:owner instead.")
  (owner m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TaskArmCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:success-val is deprecated.  Use ces_task-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TaskArmCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:message-val is deprecated.  Use ces_task-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskArmCtrl-response>) ostream)
  "Serializes a message object of type '<TaskArmCtrl-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'owner))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'owner))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskArmCtrl-response>) istream)
  "Deserializes a message object of type '<TaskArmCtrl-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'owner) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'owner) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskArmCtrl-response>)))
  "Returns string type for a service object of type '<TaskArmCtrl-response>"
  "ces_task/TaskArmCtrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskArmCtrl-response)))
  "Returns string type for a service object of type 'TaskArmCtrl-response"
  "ces_task/TaskArmCtrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskArmCtrl-response>)))
  "Returns md5sum for a message object of type '<TaskArmCtrl-response>"
  "6487bd4cf07aded076310cb84cded15c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskArmCtrl-response)))
  "Returns md5sum for a message object of type 'TaskArmCtrl-response"
  "6487bd4cf07aded076310cb84cded15c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskArmCtrl-response>)))
  "Returns full string definition for message of type '<TaskArmCtrl-response>"
  (cl:format cl:nil "~%~%string owner~%~%~%bool success~%~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskArmCtrl-response)))
  "Returns full string definition for message of type 'TaskArmCtrl-response"
  (cl:format cl:nil "~%~%string owner~%~%~%bool success~%~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskArmCtrl-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'owner))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskArmCtrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskArmCtrl-response
    (cl:cons ':owner (owner msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskArmCtrl)))
  'TaskArmCtrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskArmCtrl)))
  'TaskArmCtrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskArmCtrl)))
  "Returns string type for a service object of type '<TaskArmCtrl>"
  "ces_task/TaskArmCtrl")