; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude uwbCoordinateMap-request.msg.html

(cl:defclass <uwbCoordinateMap-request> (roslisp-msg-protocol:ros-message)
  ((intput_x
    :reader intput_x
    :initarg :intput_x
    :type cl:float
    :initform 0.0)
   (intput_y
    :reader intput_y
    :initarg :intput_y
    :type cl:float
    :initform 0.0)
   (intput_theta
    :reader intput_theta
    :initarg :intput_theta
    :type cl:float
    :initform 0.0)
   (theta_valid_flag
    :reader theta_valid_flag
    :initarg :theta_valid_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass uwbCoordinateMap-request (<uwbCoordinateMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbCoordinateMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbCoordinateMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<uwbCoordinateMap-request> is deprecated: use cruiser_msgs-srv:uwbCoordinateMap-request instead.")))

(cl:ensure-generic-function 'intput_x-val :lambda-list '(m))
(cl:defmethod intput_x-val ((m <uwbCoordinateMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:intput_x-val is deprecated.  Use cruiser_msgs-srv:intput_x instead.")
  (intput_x m))

(cl:ensure-generic-function 'intput_y-val :lambda-list '(m))
(cl:defmethod intput_y-val ((m <uwbCoordinateMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:intput_y-val is deprecated.  Use cruiser_msgs-srv:intput_y instead.")
  (intput_y m))

(cl:ensure-generic-function 'intput_theta-val :lambda-list '(m))
(cl:defmethod intput_theta-val ((m <uwbCoordinateMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:intput_theta-val is deprecated.  Use cruiser_msgs-srv:intput_theta instead.")
  (intput_theta m))

(cl:ensure-generic-function 'theta_valid_flag-val :lambda-list '(m))
(cl:defmethod theta_valid_flag-val ((m <uwbCoordinateMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:theta_valid_flag-val is deprecated.  Use cruiser_msgs-srv:theta_valid_flag instead.")
  (theta_valid_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbCoordinateMap-request>) ostream)
  "Serializes a message object of type '<uwbCoordinateMap-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intput_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intput_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intput_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'theta_valid_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbCoordinateMap-request>) istream)
  "Deserializes a message object of type '<uwbCoordinateMap-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intput_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intput_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intput_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'theta_valid_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbCoordinateMap-request>)))
  "Returns string type for a service object of type '<uwbCoordinateMap-request>"
  "cruiser_msgs/uwbCoordinateMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbCoordinateMap-request)))
  "Returns string type for a service object of type 'uwbCoordinateMap-request"
  "cruiser_msgs/uwbCoordinateMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbCoordinateMap-request>)))
  "Returns md5sum for a message object of type '<uwbCoordinateMap-request>"
  "795d5cb78f54a9363452cba320578b0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbCoordinateMap-request)))
  "Returns md5sum for a message object of type 'uwbCoordinateMap-request"
  "795d5cb78f54a9363452cba320578b0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbCoordinateMap-request>)))
  "Returns full string definition for message of type '<uwbCoordinateMap-request>"
  (cl:format cl:nil "float32 intput_x~%float32 intput_y~%float32 intput_theta~%bool theta_valid_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbCoordinateMap-request)))
  "Returns full string definition for message of type 'uwbCoordinateMap-request"
  (cl:format cl:nil "float32 intput_x~%float32 intput_y~%float32 intput_theta~%bool theta_valid_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbCoordinateMap-request>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbCoordinateMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbCoordinateMap-request
    (cl:cons ':intput_x (intput_x msg))
    (cl:cons ':intput_y (intput_y msg))
    (cl:cons ':intput_theta (intput_theta msg))
    (cl:cons ':theta_valid_flag (theta_valid_flag msg))
))
;//! \htmlinclude uwbCoordinateMap-response.msg.html

(cl:defclass <uwbCoordinateMap-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (output_x
    :reader output_x
    :initarg :output_x
    :type cl:float
    :initform 0.0)
   (output_y
    :reader output_y
    :initarg :output_y
    :type cl:float
    :initform 0.0)
   (output_theta
    :reader output_theta
    :initarg :output_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass uwbCoordinateMap-response (<uwbCoordinateMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uwbCoordinateMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uwbCoordinateMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<uwbCoordinateMap-response> is deprecated: use cruiser_msgs-srv:uwbCoordinateMap-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <uwbCoordinateMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:result-val is deprecated.  Use cruiser_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'output_x-val :lambda-list '(m))
(cl:defmethod output_x-val ((m <uwbCoordinateMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:output_x-val is deprecated.  Use cruiser_msgs-srv:output_x instead.")
  (output_x m))

(cl:ensure-generic-function 'output_y-val :lambda-list '(m))
(cl:defmethod output_y-val ((m <uwbCoordinateMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:output_y-val is deprecated.  Use cruiser_msgs-srv:output_y instead.")
  (output_y m))

(cl:ensure-generic-function 'output_theta-val :lambda-list '(m))
(cl:defmethod output_theta-val ((m <uwbCoordinateMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:output_theta-val is deprecated.  Use cruiser_msgs-srv:output_theta instead.")
  (output_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uwbCoordinateMap-response>) ostream)
  "Serializes a message object of type '<uwbCoordinateMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uwbCoordinateMap-response>) istream)
  "Deserializes a message object of type '<uwbCoordinateMap-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uwbCoordinateMap-response>)))
  "Returns string type for a service object of type '<uwbCoordinateMap-response>"
  "cruiser_msgs/uwbCoordinateMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbCoordinateMap-response)))
  "Returns string type for a service object of type 'uwbCoordinateMap-response"
  "cruiser_msgs/uwbCoordinateMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uwbCoordinateMap-response>)))
  "Returns md5sum for a message object of type '<uwbCoordinateMap-response>"
  "795d5cb78f54a9363452cba320578b0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uwbCoordinateMap-response)))
  "Returns md5sum for a message object of type 'uwbCoordinateMap-response"
  "795d5cb78f54a9363452cba320578b0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uwbCoordinateMap-response>)))
  "Returns full string definition for message of type '<uwbCoordinateMap-response>"
  (cl:format cl:nil "uint32 result~%float32 output_x~%float32 output_y~%float32 output_theta~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uwbCoordinateMap-response)))
  "Returns full string definition for message of type 'uwbCoordinateMap-response"
  (cl:format cl:nil "uint32 result~%float32 output_x~%float32 output_y~%float32 output_theta~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uwbCoordinateMap-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uwbCoordinateMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'uwbCoordinateMap-response
    (cl:cons ':result (result msg))
    (cl:cons ':output_x (output_x msg))
    (cl:cons ':output_y (output_y msg))
    (cl:cons ':output_theta (output_theta msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'uwbCoordinateMap)))
  'uwbCoordinateMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'uwbCoordinateMap)))
  'uwbCoordinateMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uwbCoordinateMap)))
  "Returns string type for a service object of type '<uwbCoordinateMap>"
  "cruiser_msgs/uwbCoordinateMap")