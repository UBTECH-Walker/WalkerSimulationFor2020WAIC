; Auto-generated. Do not edit!


(cl:in-package walker_srvs-srv)


;//! \htmlinclude leg_motion_MetaFuncCtrl-request.msg.html

(cl:defclass <leg_motion_MetaFuncCtrl-request> (roslisp-msg-protocol:ros-message)
  ((func_name
    :reader func_name
    :initarg :func_name
    :type cl:string
    :initform "")
   (param_json
    :reader param_json
    :initarg :param_json
    :type cl:string
    :initform "")
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass leg_motion_MetaFuncCtrl-request (<leg_motion_MetaFuncCtrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leg_motion_MetaFuncCtrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leg_motion_MetaFuncCtrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name walker_srvs-srv:<leg_motion_MetaFuncCtrl-request> is deprecated: use walker_srvs-srv:leg_motion_MetaFuncCtrl-request instead.")))

(cl:ensure-generic-function 'func_name-val :lambda-list '(m))
(cl:defmethod func_name-val ((m <leg_motion_MetaFuncCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_srvs-srv:func_name-val is deprecated.  Use walker_srvs-srv:func_name instead.")
  (func_name m))

(cl:ensure-generic-function 'param_json-val :lambda-list '(m))
(cl:defmethod param_json-val ((m <leg_motion_MetaFuncCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_srvs-srv:param_json-val is deprecated.  Use walker_srvs-srv:param_json instead.")
  (param_json m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <leg_motion_MetaFuncCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_srvs-srv:cmd-val is deprecated.  Use walker_srvs-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<leg_motion_MetaFuncCtrl-request>)))
    "Constants for message type '<leg_motion_MetaFuncCtrl-request>"
  '((:FUNC_DYNAMIC . dynamic)
    (:FUNC_BALANCE . balance)
    (:FUNC_COMPLIANCE . compliance)
    (:FUNC_TAICHI . taichi)
    (:FUNC_YOGA . yoga)
    (:FUNC_JUMP . jump)
    (:CMD_START . start)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'leg_motion_MetaFuncCtrl-request)))
    "Constants for message type 'leg_motion_MetaFuncCtrl-request"
  '((:FUNC_DYNAMIC . dynamic)
    (:FUNC_BALANCE . balance)
    (:FUNC_COMPLIANCE . compliance)
    (:FUNC_TAICHI . taichi)
    (:FUNC_YOGA . yoga)
    (:FUNC_JUMP . jump)
    (:CMD_START . start)
    (:CMD_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leg_motion_MetaFuncCtrl-request>) ostream)
  "Serializes a message object of type '<leg_motion_MetaFuncCtrl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'func_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'func_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_json))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leg_motion_MetaFuncCtrl-request>) istream)
  "Deserializes a message object of type '<leg_motion_MetaFuncCtrl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'func_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'func_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leg_motion_MetaFuncCtrl-request>)))
  "Returns string type for a service object of type '<leg_motion_MetaFuncCtrl-request>"
  "walker_srvs/leg_motion_MetaFuncCtrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leg_motion_MetaFuncCtrl-request)))
  "Returns string type for a service object of type 'leg_motion_MetaFuncCtrl-request"
  "walker_srvs/leg_motion_MetaFuncCtrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leg_motion_MetaFuncCtrl-request>)))
  "Returns md5sum for a message object of type '<leg_motion_MetaFuncCtrl-request>"
  "192892ca52f2915109ae2e297dfadb46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leg_motion_MetaFuncCtrl-request)))
  "Returns md5sum for a message object of type 'leg_motion_MetaFuncCtrl-request"
  "192892ca52f2915109ae2e297dfadb46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leg_motion_MetaFuncCtrl-request>)))
  "Returns full string definition for message of type '<leg_motion_MetaFuncCtrl-request>"
  (cl:format cl:nil "# functions~%string FUNC_DYNAMIC=dynamic~%string FUNC_BALANCE=balance~%string FUNC_COMPLIANCE=compliance~%string FUNC_TAICHI=taichi~%string FUNC_YOGA=yoga~%string FUNC_JUMP=jump~%~%# command~%string CMD_START=start~%string CMD_STOP=stop~%~%# members~%string func_name~%string param_json # json format parameters~%string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leg_motion_MetaFuncCtrl-request)))
  "Returns full string definition for message of type 'leg_motion_MetaFuncCtrl-request"
  (cl:format cl:nil "# functions~%string FUNC_DYNAMIC=dynamic~%string FUNC_BALANCE=balance~%string FUNC_COMPLIANCE=compliance~%string FUNC_TAICHI=taichi~%string FUNC_YOGA=yoga~%string FUNC_JUMP=jump~%~%# command~%string CMD_START=start~%string CMD_STOP=stop~%~%# members~%string func_name~%string param_json # json format parameters~%string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leg_motion_MetaFuncCtrl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'func_name))
     4 (cl:length (cl:slot-value msg 'param_json))
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leg_motion_MetaFuncCtrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'leg_motion_MetaFuncCtrl-request
    (cl:cons ':func_name (func_name msg))
    (cl:cons ':param_json (param_json msg))
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude leg_motion_MetaFuncCtrl-response.msg.html

(cl:defclass <leg_motion_MetaFuncCtrl-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass leg_motion_MetaFuncCtrl-response (<leg_motion_MetaFuncCtrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leg_motion_MetaFuncCtrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leg_motion_MetaFuncCtrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name walker_srvs-srv:<leg_motion_MetaFuncCtrl-response> is deprecated: use walker_srvs-srv:leg_motion_MetaFuncCtrl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <leg_motion_MetaFuncCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_srvs-srv:success-val is deprecated.  Use walker_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <leg_motion_MetaFuncCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader walker_srvs-srv:message-val is deprecated.  Use walker_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leg_motion_MetaFuncCtrl-response>) ostream)
  "Serializes a message object of type '<leg_motion_MetaFuncCtrl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leg_motion_MetaFuncCtrl-response>) istream)
  "Deserializes a message object of type '<leg_motion_MetaFuncCtrl-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leg_motion_MetaFuncCtrl-response>)))
  "Returns string type for a service object of type '<leg_motion_MetaFuncCtrl-response>"
  "walker_srvs/leg_motion_MetaFuncCtrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leg_motion_MetaFuncCtrl-response)))
  "Returns string type for a service object of type 'leg_motion_MetaFuncCtrl-response"
  "walker_srvs/leg_motion_MetaFuncCtrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leg_motion_MetaFuncCtrl-response>)))
  "Returns md5sum for a message object of type '<leg_motion_MetaFuncCtrl-response>"
  "192892ca52f2915109ae2e297dfadb46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leg_motion_MetaFuncCtrl-response)))
  "Returns md5sum for a message object of type 'leg_motion_MetaFuncCtrl-response"
  "192892ca52f2915109ae2e297dfadb46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leg_motion_MetaFuncCtrl-response>)))
  "Returns full string definition for message of type '<leg_motion_MetaFuncCtrl-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leg_motion_MetaFuncCtrl-response)))
  "Returns full string definition for message of type 'leg_motion_MetaFuncCtrl-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leg_motion_MetaFuncCtrl-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leg_motion_MetaFuncCtrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'leg_motion_MetaFuncCtrl-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'leg_motion_MetaFuncCtrl)))
  'leg_motion_MetaFuncCtrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'leg_motion_MetaFuncCtrl)))
  'leg_motion_MetaFuncCtrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leg_motion_MetaFuncCtrl)))
  "Returns string type for a service object of type '<leg_motion_MetaFuncCtrl>"
  "walker_srvs/leg_motion_MetaFuncCtrl")