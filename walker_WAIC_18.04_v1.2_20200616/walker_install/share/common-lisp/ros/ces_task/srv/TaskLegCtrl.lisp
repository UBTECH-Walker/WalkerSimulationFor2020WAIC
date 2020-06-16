; Auto-generated. Do not edit!


(cl:in-package ces_task-srv)


;//! \htmlinclude TaskLegCtrl-request.msg.html

(cl:defclass <TaskLegCtrl-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:string
    :initform "")
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

(cl:defclass TaskLegCtrl-request (<TaskLegCtrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskLegCtrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskLegCtrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ces_task-srv:<TaskLegCtrl-request> is deprecated: use ces_task-srv:TaskLegCtrl-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskLegCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:task_id-val is deprecated.  Use ces_task-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'demander-val :lambda-list '(m))
(cl:defmethod demander-val ((m <TaskLegCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:demander-val is deprecated.  Use ces_task-srv:demander instead.")
  (demander m))

(cl:ensure-generic-function 'executor-val :lambda-list '(m))
(cl:defmethod executor-val ((m <TaskLegCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:executor-val is deprecated.  Use ces_task-srv:executor instead.")
  (executor m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <TaskLegCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:cmd-val is deprecated.  Use ces_task-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskLegCtrl-request>)))
    "Constants for message type '<TaskLegCtrl-request>"
  '((:CMD_START . start)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskLegCtrl-request)))
    "Constants for message type 'TaskLegCtrl-request"
  '((:CMD_START . start)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskLegCtrl-request>) ostream)
  "Serializes a message object of type '<TaskLegCtrl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_id))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskLegCtrl-request>) istream)
  "Deserializes a message object of type '<TaskLegCtrl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskLegCtrl-request>)))
  "Returns string type for a service object of type '<TaskLegCtrl-request>"
  "ces_task/TaskLegCtrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskLegCtrl-request)))
  "Returns string type for a service object of type 'TaskLegCtrl-request"
  "ces_task/TaskLegCtrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskLegCtrl-request>)))
  "Returns md5sum for a message object of type '<TaskLegCtrl-request>"
  "5edc546c7fcff5cab9b3ccbc31c1ea7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskLegCtrl-request)))
  "Returns md5sum for a message object of type 'TaskLegCtrl-request"
  "5edc546c7fcff5cab9b3ccbc31c1ea7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskLegCtrl-request>)))
  "Returns full string definition for message of type '<TaskLegCtrl-request>"
  (cl:format cl:nil "# current task id, defined in 'TaskLegStatus.msg'~%string task_id~%~%# who send request~%string demander~%~%# who execute task~%string executor~%~%# command: start or stop~%string CMD_START=start~%string CMD_STOP=stop~%string cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskLegCtrl-request)))
  "Returns full string definition for message of type 'TaskLegCtrl-request"
  (cl:format cl:nil "# current task id, defined in 'TaskLegStatus.msg'~%string task_id~%~%# who send request~%string demander~%~%# who execute task~%string executor~%~%# command: start or stop~%string CMD_START=start~%string CMD_STOP=stop~%string cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskLegCtrl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_id))
     4 (cl:length (cl:slot-value msg 'demander))
     4 (cl:length (cl:slot-value msg 'executor))
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskLegCtrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskLegCtrl-request
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':demander (demander msg))
    (cl:cons ':executor (executor msg))
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude TaskLegCtrl-response.msg.html

(cl:defclass <TaskLegCtrl-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TaskLegCtrl-response (<TaskLegCtrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskLegCtrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskLegCtrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ces_task-srv:<TaskLegCtrl-response> is deprecated: use ces_task-srv:TaskLegCtrl-response instead.")))

(cl:ensure-generic-function 'owner-val :lambda-list '(m))
(cl:defmethod owner-val ((m <TaskLegCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:owner-val is deprecated.  Use ces_task-srv:owner instead.")
  (owner m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TaskLegCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:success-val is deprecated.  Use ces_task-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TaskLegCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:message-val is deprecated.  Use ces_task-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskLegCtrl-response>) ostream)
  "Serializes a message object of type '<TaskLegCtrl-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskLegCtrl-response>) istream)
  "Deserializes a message object of type '<TaskLegCtrl-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskLegCtrl-response>)))
  "Returns string type for a service object of type '<TaskLegCtrl-response>"
  "ces_task/TaskLegCtrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskLegCtrl-response)))
  "Returns string type for a service object of type 'TaskLegCtrl-response"
  "ces_task/TaskLegCtrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskLegCtrl-response>)))
  "Returns md5sum for a message object of type '<TaskLegCtrl-response>"
  "5edc546c7fcff5cab9b3ccbc31c1ea7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskLegCtrl-response)))
  "Returns md5sum for a message object of type 'TaskLegCtrl-response"
  "5edc546c7fcff5cab9b3ccbc31c1ea7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskLegCtrl-response>)))
  "Returns full string definition for message of type '<TaskLegCtrl-response>"
  (cl:format cl:nil "~%# who reply response~%string owner~%~%# indicate status~%bool success~%~%# informational, e.g. for error messages~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskLegCtrl-response)))
  "Returns full string definition for message of type 'TaskLegCtrl-response"
  (cl:format cl:nil "~%# who reply response~%string owner~%~%# indicate status~%bool success~%~%# informational, e.g. for error messages~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskLegCtrl-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'owner))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskLegCtrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskLegCtrl-response
    (cl:cons ':owner (owner msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskLegCtrl)))
  'TaskLegCtrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskLegCtrl)))
  'TaskLegCtrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskLegCtrl)))
  "Returns string type for a service object of type '<TaskLegCtrl>"
  "ces_task/TaskLegCtrl")