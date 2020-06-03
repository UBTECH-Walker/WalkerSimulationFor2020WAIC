; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude GetMapJson-request.msg.html

(cl:defclass <GetMapJson-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMapJson-request (<GetMapJson-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapJson-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapJson-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetMapJson-request> is deprecated: use cruiser_msgs-srv:GetMapJson-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapJson-request>) ostream)
  "Serializes a message object of type '<GetMapJson-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapJson-request>) istream)
  "Deserializes a message object of type '<GetMapJson-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapJson-request>)))
  "Returns string type for a service object of type '<GetMapJson-request>"
  "cruiser_msgs/GetMapJsonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapJson-request)))
  "Returns string type for a service object of type 'GetMapJson-request"
  "cruiser_msgs/GetMapJsonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapJson-request>)))
  "Returns md5sum for a message object of type '<GetMapJson-request>"
  "6825166e7da48608dd55394f68c70e3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapJson-request)))
  "Returns md5sum for a message object of type 'GetMapJson-request"
  "6825166e7da48608dd55394f68c70e3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapJson-request>)))
  "Returns full string definition for message of type '<GetMapJson-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapJson-request)))
  "Returns full string definition for message of type 'GetMapJson-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapJson-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapJson-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapJson-request
))
;//! \htmlinclude GetMapJson-response.msg.html

(cl:defclass <GetMapJson-response> (roslisp-msg-protocol:ros-message)
  ((json
    :reader json
    :initarg :json
    :type cruiser_msgs-msg:MapJson
    :initform (cl:make-instance 'cruiser_msgs-msg:MapJson)))
)

(cl:defclass GetMapJson-response (<GetMapJson-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapJson-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapJson-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<GetMapJson-response> is deprecated: use cruiser_msgs-srv:GetMapJson-response instead.")))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <GetMapJson-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:json-val is deprecated.  Use cruiser_msgs-srv:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapJson-response>) ostream)
  "Serializes a message object of type '<GetMapJson-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'json) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapJson-response>) istream)
  "Deserializes a message object of type '<GetMapJson-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'json) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapJson-response>)))
  "Returns string type for a service object of type '<GetMapJson-response>"
  "cruiser_msgs/GetMapJsonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapJson-response)))
  "Returns string type for a service object of type 'GetMapJson-response"
  "cruiser_msgs/GetMapJsonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapJson-response>)))
  "Returns md5sum for a message object of type '<GetMapJson-response>"
  "6825166e7da48608dd55394f68c70e3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapJson-response)))
  "Returns md5sum for a message object of type 'GetMapJson-response"
  "6825166e7da48608dd55394f68c70e3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapJson-response>)))
  "Returns full string definition for message of type '<GetMapJson-response>"
  (cl:format cl:nil "cruiser_msgs/MapJson json~%~%~%================================================================================~%MSG: cruiser_msgs/MapJson~%uint8[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapJson-response)))
  "Returns full string definition for message of type 'GetMapJson-response"
  (cl:format cl:nil "cruiser_msgs/MapJson json~%~%~%================================================================================~%MSG: cruiser_msgs/MapJson~%uint8[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapJson-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapJson-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapJson-response
    (cl:cons ':json (json msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapJson)))
  'GetMapJson-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapJson)))
  'GetMapJson-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapJson)))
  "Returns string type for a service object of type '<GetMapJson>"
  "cruiser_msgs/GetMapJson")