; Auto-generated. Do not edit!


(cl:in-package servo_ctrl-srv)


;//! \htmlinclude SetBasePower-request.msg.html

(cl:defclass <SetBasePower-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SetBasePower-request (<SetBasePower-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBasePower-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBasePower-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SetBasePower-request> is deprecated: use servo_ctrl-srv:SetBasePower-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <SetBasePower-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:cmd-val is deprecated.  Use servo_ctrl-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBasePower-request>) ostream)
  "Serializes a message object of type '<SetBasePower-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBasePower-request>) istream)
  "Deserializes a message object of type '<SetBasePower-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cmd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cmd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBasePower-request>)))
  "Returns string type for a service object of type '<SetBasePower-request>"
  "servo_ctrl/SetBasePowerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBasePower-request)))
  "Returns string type for a service object of type 'SetBasePower-request"
  "servo_ctrl/SetBasePowerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBasePower-request>)))
  "Returns md5sum for a message object of type '<SetBasePower-request>"
  "b0bc70d7e1fded55183cc6d4deee36a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBasePower-request)))
  "Returns md5sum for a message object of type 'SetBasePower-request"
  "b0bc70d7e1fded55183cc6d4deee36a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBasePower-request>)))
  "Returns full string definition for message of type '<SetBasePower-request>"
  (cl:format cl:nil "uint8[] cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBasePower-request)))
  "Returns full string definition for message of type 'SetBasePower-request"
  (cl:format cl:nil "uint8[] cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBasePower-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBasePower-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBasePower-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude SetBasePower-response.msg.html

(cl:defclass <SetBasePower-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SetBasePower-response (<SetBasePower-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBasePower-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBasePower-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_ctrl-srv:<SetBasePower-response> is deprecated: use servo_ctrl-srv:SetBasePower-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetBasePower-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_ctrl-srv:result-val is deprecated.  Use servo_ctrl-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBasePower-response>) ostream)
  "Serializes a message object of type '<SetBasePower-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBasePower-response>) istream)
  "Deserializes a message object of type '<SetBasePower-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBasePower-response>)))
  "Returns string type for a service object of type '<SetBasePower-response>"
  "servo_ctrl/SetBasePowerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBasePower-response)))
  "Returns string type for a service object of type 'SetBasePower-response"
  "servo_ctrl/SetBasePowerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBasePower-response>)))
  "Returns md5sum for a message object of type '<SetBasePower-response>"
  "b0bc70d7e1fded55183cc6d4deee36a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBasePower-response)))
  "Returns md5sum for a message object of type 'SetBasePower-response"
  "b0bc70d7e1fded55183cc6d4deee36a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBasePower-response>)))
  "Returns full string definition for message of type '<SetBasePower-response>"
  (cl:format cl:nil "uint8[] result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBasePower-response)))
  "Returns full string definition for message of type 'SetBasePower-response"
  (cl:format cl:nil "uint8[] result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBasePower-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBasePower-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBasePower-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBasePower)))
  'SetBasePower-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBasePower)))
  'SetBasePower-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBasePower)))
  "Returns string type for a service object of type '<SetBasePower>"
  "servo_ctrl/SetBasePower")