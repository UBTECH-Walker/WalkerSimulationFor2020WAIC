; Auto-generated. Do not edit!


(cl:in-package ces_task-srv)


;//! \htmlinclude TaskHmiCtrl-request.msg.html

(cl:defclass <TaskHmiCtrl-request> (roslisp-msg-protocol:ros-message)
  ((adb_cmd
    :reader adb_cmd
    :initarg :adb_cmd
    :type cl:string
    :initform ""))
)

(cl:defclass TaskHmiCtrl-request (<TaskHmiCtrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskHmiCtrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskHmiCtrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ces_task-srv:<TaskHmiCtrl-request> is deprecated: use ces_task-srv:TaskHmiCtrl-request instead.")))

(cl:ensure-generic-function 'adb_cmd-val :lambda-list '(m))
(cl:defmethod adb_cmd-val ((m <TaskHmiCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:adb_cmd-val is deprecated.  Use ces_task-srv:adb_cmd instead.")
  (adb_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskHmiCtrl-request>) ostream)
  "Serializes a message object of type '<TaskHmiCtrl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'adb_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'adb_cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskHmiCtrl-request>) istream)
  "Deserializes a message object of type '<TaskHmiCtrl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'adb_cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'adb_cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskHmiCtrl-request>)))
  "Returns string type for a service object of type '<TaskHmiCtrl-request>"
  "ces_task/TaskHmiCtrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskHmiCtrl-request)))
  "Returns string type for a service object of type 'TaskHmiCtrl-request"
  "ces_task/TaskHmiCtrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskHmiCtrl-request>)))
  "Returns md5sum for a message object of type '<TaskHmiCtrl-request>"
  "d451323ce918ea804b0b0df774879b87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskHmiCtrl-request)))
  "Returns md5sum for a message object of type 'TaskHmiCtrl-request"
  "d451323ce918ea804b0b0df774879b87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskHmiCtrl-request>)))
  "Returns full string definition for message of type '<TaskHmiCtrl-request>"
  (cl:format cl:nil "~%string adb_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskHmiCtrl-request)))
  "Returns full string definition for message of type 'TaskHmiCtrl-request"
  (cl:format cl:nil "~%string adb_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskHmiCtrl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'adb_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskHmiCtrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskHmiCtrl-request
    (cl:cons ':adb_cmd (adb_cmd msg))
))
;//! \htmlinclude TaskHmiCtrl-response.msg.html

(cl:defclass <TaskHmiCtrl-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TaskHmiCtrl-response (<TaskHmiCtrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskHmiCtrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskHmiCtrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ces_task-srv:<TaskHmiCtrl-response> is deprecated: use ces_task-srv:TaskHmiCtrl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TaskHmiCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:success-val is deprecated.  Use ces_task-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TaskHmiCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ces_task-srv:message-val is deprecated.  Use ces_task-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskHmiCtrl-response>) ostream)
  "Serializes a message object of type '<TaskHmiCtrl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskHmiCtrl-response>) istream)
  "Deserializes a message object of type '<TaskHmiCtrl-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskHmiCtrl-response>)))
  "Returns string type for a service object of type '<TaskHmiCtrl-response>"
  "ces_task/TaskHmiCtrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskHmiCtrl-response)))
  "Returns string type for a service object of type 'TaskHmiCtrl-response"
  "ces_task/TaskHmiCtrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskHmiCtrl-response>)))
  "Returns md5sum for a message object of type '<TaskHmiCtrl-response>"
  "d451323ce918ea804b0b0df774879b87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskHmiCtrl-response)))
  "Returns md5sum for a message object of type 'TaskHmiCtrl-response"
  "d451323ce918ea804b0b0df774879b87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskHmiCtrl-response>)))
  "Returns full string definition for message of type '<TaskHmiCtrl-response>"
  (cl:format cl:nil "~%bool success~%~%~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskHmiCtrl-response)))
  "Returns full string definition for message of type 'TaskHmiCtrl-response"
  (cl:format cl:nil "~%bool success~%~%~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskHmiCtrl-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskHmiCtrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskHmiCtrl-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskHmiCtrl)))
  'TaskHmiCtrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskHmiCtrl)))
  'TaskHmiCtrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskHmiCtrl)))
  "Returns string type for a service object of type '<TaskHmiCtrl>"
  "ces_task/TaskHmiCtrl")