; Auto-generated. Do not edit!


(cl:in-package webots_api-srv)


;//! \htmlinclude SceneSelection-request.msg.html

(cl:defclass <SceneSelection-request> (roslisp-msg-protocol:ros-message)
  ((scene_name
    :reader scene_name
    :initarg :scene_name
    :type cl:string
    :initform "")
   (nav
    :reader nav
    :initarg :nav
    :type cl:boolean
    :initform cl:nil)
   (vision
    :reader vision
    :initarg :vision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SceneSelection-request (<SceneSelection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneSelection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneSelection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_api-srv:<SceneSelection-request> is deprecated: use webots_api-srv:SceneSelection-request instead.")))

(cl:ensure-generic-function 'scene_name-val :lambda-list '(m))
(cl:defmethod scene_name-val ((m <SceneSelection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_api-srv:scene_name-val is deprecated.  Use webots_api-srv:scene_name instead.")
  (scene_name m))

(cl:ensure-generic-function 'nav-val :lambda-list '(m))
(cl:defmethod nav-val ((m <SceneSelection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_api-srv:nav-val is deprecated.  Use webots_api-srv:nav instead.")
  (nav m))

(cl:ensure-generic-function 'vision-val :lambda-list '(m))
(cl:defmethod vision-val ((m <SceneSelection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_api-srv:vision-val is deprecated.  Use webots_api-srv:vision instead.")
  (vision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneSelection-request>) ostream)
  "Serializes a message object of type '<SceneSelection-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scene_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scene_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nav) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneSelection-request>) istream)
  "Deserializes a message object of type '<SceneSelection-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scene_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scene_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'nav) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneSelection-request>)))
  "Returns string type for a service object of type '<SceneSelection-request>"
  "webots_api/SceneSelectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneSelection-request)))
  "Returns string type for a service object of type 'SceneSelection-request"
  "webots_api/SceneSelectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneSelection-request>)))
  "Returns md5sum for a message object of type '<SceneSelection-request>"
  "fbbd39fb2bc6dedf8b0d42f934f56fab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneSelection-request)))
  "Returns md5sum for a message object of type 'SceneSelection-request"
  "fbbd39fb2bc6dedf8b0d42f934f56fab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneSelection-request>)))
  "Returns full string definition for message of type '<SceneSelection-request>"
  (cl:format cl:nil "string scene_name~%bool nav~%bool vision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneSelection-request)))
  "Returns full string definition for message of type 'SceneSelection-request"
  (cl:format cl:nil "string scene_name~%bool nav~%bool vision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneSelection-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'scene_name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneSelection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneSelection-request
    (cl:cons ':scene_name (scene_name msg))
    (cl:cons ':nav (nav msg))
    (cl:cons ':vision (vision msg))
))
;//! \htmlinclude SceneSelection-response.msg.html

(cl:defclass <SceneSelection-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SceneSelection-response (<SceneSelection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneSelection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneSelection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_api-srv:<SceneSelection-response> is deprecated: use webots_api-srv:SceneSelection-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SceneSelection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_api-srv:success-val is deprecated.  Use webots_api-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneSelection-response>) ostream)
  "Serializes a message object of type '<SceneSelection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneSelection-response>) istream)
  "Deserializes a message object of type '<SceneSelection-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneSelection-response>)))
  "Returns string type for a service object of type '<SceneSelection-response>"
  "webots_api/SceneSelectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneSelection-response)))
  "Returns string type for a service object of type 'SceneSelection-response"
  "webots_api/SceneSelectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneSelection-response>)))
  "Returns md5sum for a message object of type '<SceneSelection-response>"
  "fbbd39fb2bc6dedf8b0d42f934f56fab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneSelection-response)))
  "Returns md5sum for a message object of type 'SceneSelection-response"
  "fbbd39fb2bc6dedf8b0d42f934f56fab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneSelection-response>)))
  "Returns full string definition for message of type '<SceneSelection-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneSelection-response)))
  "Returns full string definition for message of type 'SceneSelection-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneSelection-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneSelection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneSelection-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SceneSelection)))
  'SceneSelection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SceneSelection)))
  'SceneSelection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneSelection)))
  "Returns string type for a service object of type '<SceneSelection>"
  "webots_api/SceneSelection")