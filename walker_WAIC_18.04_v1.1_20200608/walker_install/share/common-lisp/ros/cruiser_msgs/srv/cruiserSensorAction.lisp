; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude cruiserSensorAction-request.msg.html

(cl:defclass <cruiserSensorAction-request> (roslisp-msg-protocol:ros-message)
  ((ultrasound_freq
    :reader ultrasound_freq
    :initarg :ultrasound_freq
    :type cl:integer
    :initform 0)
   (wall_ir_freq
    :reader wall_ir_freq
    :initarg :wall_ir_freq
    :type cl:integer
    :initform 0)
   (charge_ir_freq
    :reader charge_ir_freq
    :initarg :charge_ir_freq
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserSensorAction-request (<cruiserSensorAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserSensorAction-request> is deprecated: use cruiser_msgs-srv:cruiserSensorAction-request instead.")))

(cl:ensure-generic-function 'ultrasound_freq-val :lambda-list '(m))
(cl:defmethod ultrasound_freq-val ((m <cruiserSensorAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:ultrasound_freq-val is deprecated.  Use cruiser_msgs-srv:ultrasound_freq instead.")
  (ultrasound_freq m))

(cl:ensure-generic-function 'wall_ir_freq-val :lambda-list '(m))
(cl:defmethod wall_ir_freq-val ((m <cruiserSensorAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:wall_ir_freq-val is deprecated.  Use cruiser_msgs-srv:wall_ir_freq instead.")
  (wall_ir_freq m))

(cl:ensure-generic-function 'charge_ir_freq-val :lambda-list '(m))
(cl:defmethod charge_ir_freq-val ((m <cruiserSensorAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:charge_ir_freq-val is deprecated.  Use cruiser_msgs-srv:charge_ir_freq instead.")
  (charge_ir_freq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorAction-request>) ostream)
  "Serializes a message object of type '<cruiserSensorAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultrasound_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ultrasound_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ultrasound_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ultrasound_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_ir_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wall_ir_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wall_ir_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wall_ir_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_ir_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge_ir_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charge_ir_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charge_ir_freq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorAction-request>) istream)
  "Deserializes a message object of type '<cruiserSensorAction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ultrasound_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ultrasound_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ultrasound_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ultrasound_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_ir_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wall_ir_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wall_ir_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wall_ir_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_ir_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charge_ir_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charge_ir_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charge_ir_freq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorAction-request>)))
  "Returns string type for a service object of type '<cruiserSensorAction-request>"
  "cruiser_msgs/cruiserSensorActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorAction-request)))
  "Returns string type for a service object of type 'cruiserSensorAction-request"
  "cruiser_msgs/cruiserSensorActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorAction-request>)))
  "Returns md5sum for a message object of type '<cruiserSensorAction-request>"
  "dfcebdc80a8b049e6a92382d5d1f31d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorAction-request)))
  "Returns md5sum for a message object of type 'cruiserSensorAction-request"
  "dfcebdc80a8b049e6a92382d5d1f31d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorAction-request>)))
  "Returns full string definition for message of type '<cruiserSensorAction-request>"
  (cl:format cl:nil "uint32 ultrasound_freq~%uint32 wall_ir_freq~%uint32 charge_ir_freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorAction-request)))
  "Returns full string definition for message of type 'cruiserSensorAction-request"
  (cl:format cl:nil "uint32 ultrasound_freq~%uint32 wall_ir_freq~%uint32 charge_ir_freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorAction-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorAction-request
    (cl:cons ':ultrasound_freq (ultrasound_freq msg))
    (cl:cons ':wall_ir_freq (wall_ir_freq msg))
    (cl:cons ':charge_ir_freq (charge_ir_freq msg))
))
;//! \htmlinclude cruiserSensorAction-response.msg.html

(cl:defclass <cruiserSensorAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass cruiserSensorAction-response (<cruiserSensorAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cruiserSensorAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cruiserSensorAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<cruiserSensorAction-response> is deprecated: use cruiser_msgs-srv:cruiserSensorAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <cruiserSensorAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:result-val is deprecated.  Use cruiser_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cruiserSensorAction-response>) ostream)
  "Serializes a message object of type '<cruiserSensorAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cruiserSensorAction-response>) istream)
  "Deserializes a message object of type '<cruiserSensorAction-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cruiserSensorAction-response>)))
  "Returns string type for a service object of type '<cruiserSensorAction-response>"
  "cruiser_msgs/cruiserSensorActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorAction-response)))
  "Returns string type for a service object of type 'cruiserSensorAction-response"
  "cruiser_msgs/cruiserSensorActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cruiserSensorAction-response>)))
  "Returns md5sum for a message object of type '<cruiserSensorAction-response>"
  "dfcebdc80a8b049e6a92382d5d1f31d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cruiserSensorAction-response)))
  "Returns md5sum for a message object of type 'cruiserSensorAction-response"
  "dfcebdc80a8b049e6a92382d5d1f31d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cruiserSensorAction-response>)))
  "Returns full string definition for message of type '<cruiserSensorAction-response>"
  (cl:format cl:nil "uint32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cruiserSensorAction-response)))
  "Returns full string definition for message of type 'cruiserSensorAction-response"
  (cl:format cl:nil "uint32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cruiserSensorAction-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cruiserSensorAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cruiserSensorAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cruiserSensorAction)))
  'cruiserSensorAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cruiserSensorAction)))
  'cruiserSensorAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cruiserSensorAction)))
  "Returns string type for a service object of type '<cruiserSensorAction>"
  "cruiser_msgs/cruiserSensorAction")