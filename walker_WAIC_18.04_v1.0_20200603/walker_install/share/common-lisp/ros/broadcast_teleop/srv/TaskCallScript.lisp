; Auto-generated. Do not edit!


(cl:in-package broadcast_teleop-srv)


;//! \htmlinclude TaskCallScript-request.msg.html

(cl:defclass <TaskCallScript-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:string
    :initform "")
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass TaskCallScript-request (<TaskCallScript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskCallScript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskCallScript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name broadcast_teleop-srv:<TaskCallScript-request> is deprecated: use broadcast_teleop-srv:TaskCallScript-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskCallScript-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader broadcast_teleop-srv:task_id-val is deprecated.  Use broadcast_teleop-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <TaskCallScript-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader broadcast_teleop-srv:cmd-val is deprecated.  Use broadcast_teleop-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskCallScript-request>) ostream)
  "Serializes a message object of type '<TaskCallScript-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskCallScript-request>) istream)
  "Deserializes a message object of type '<TaskCallScript-request>"
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
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskCallScript-request>)))
  "Returns string type for a service object of type '<TaskCallScript-request>"
  "broadcast_teleop/TaskCallScriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskCallScript-request)))
  "Returns string type for a service object of type 'TaskCallScript-request"
  "broadcast_teleop/TaskCallScriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskCallScript-request>)))
  "Returns md5sum for a message object of type '<TaskCallScript-request>"
  "d091270bbc490f371f9855f018f74a07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskCallScript-request)))
  "Returns md5sum for a message object of type 'TaskCallScript-request"
  "d091270bbc490f371f9855f018f74a07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskCallScript-request>)))
  "Returns full string definition for message of type '<TaskCallScript-request>"
  (cl:format cl:nil "~%~%string task_id~%~%~%string cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskCallScript-request)))
  "Returns full string definition for message of type 'TaskCallScript-request"
  (cl:format cl:nil "~%~%string task_id~%~%~%string cmd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskCallScript-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_id))
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskCallScript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskCallScript-request
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude TaskCallScript-response.msg.html

(cl:defclass <TaskCallScript-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass TaskCallScript-response (<TaskCallScript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskCallScript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskCallScript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name broadcast_teleop-srv:<TaskCallScript-response> is deprecated: use broadcast_teleop-srv:TaskCallScript-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TaskCallScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader broadcast_teleop-srv:success-val is deprecated.  Use broadcast_teleop-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TaskCallScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader broadcast_teleop-srv:message-val is deprecated.  Use broadcast_teleop-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskCallScript-response>) ostream)
  "Serializes a message object of type '<TaskCallScript-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskCallScript-response>) istream)
  "Deserializes a message object of type '<TaskCallScript-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskCallScript-response>)))
  "Returns string type for a service object of type '<TaskCallScript-response>"
  "broadcast_teleop/TaskCallScriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskCallScript-response)))
  "Returns string type for a service object of type 'TaskCallScript-response"
  "broadcast_teleop/TaskCallScriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskCallScript-response>)))
  "Returns md5sum for a message object of type '<TaskCallScript-response>"
  "d091270bbc490f371f9855f018f74a07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskCallScript-response)))
  "Returns md5sum for a message object of type 'TaskCallScript-response"
  "d091270bbc490f371f9855f018f74a07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskCallScript-response>)))
  "Returns full string definition for message of type '<TaskCallScript-response>"
  (cl:format cl:nil "~%~%bool success~%~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskCallScript-response)))
  "Returns full string definition for message of type 'TaskCallScript-response"
  (cl:format cl:nil "~%~%bool success~%~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskCallScript-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskCallScript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskCallScript-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskCallScript)))
  'TaskCallScript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskCallScript)))
  'TaskCallScript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskCallScript)))
  "Returns string type for a service object of type '<TaskCallScript>"
  "broadcast_teleop/TaskCallScript")