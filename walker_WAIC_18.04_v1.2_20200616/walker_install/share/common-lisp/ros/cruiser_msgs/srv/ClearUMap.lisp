; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude ClearUMap-request.msg.html

(cl:defclass <ClearUMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearUMap-request (<ClearUMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearUMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearUMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<ClearUMap-request> is deprecated: use cruiser_msgs-srv:ClearUMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearUMap-request>) ostream)
  "Serializes a message object of type '<ClearUMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearUMap-request>) istream)
  "Deserializes a message object of type '<ClearUMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearUMap-request>)))
  "Returns string type for a service object of type '<ClearUMap-request>"
  "cruiser_msgs/ClearUMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearUMap-request)))
  "Returns string type for a service object of type 'ClearUMap-request"
  "cruiser_msgs/ClearUMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearUMap-request>)))
  "Returns md5sum for a message object of type '<ClearUMap-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearUMap-request)))
  "Returns md5sum for a message object of type 'ClearUMap-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearUMap-request>)))
  "Returns full string definition for message of type '<ClearUMap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearUMap-request)))
  "Returns full string definition for message of type 'ClearUMap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearUMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearUMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearUMap-request
))
;//! \htmlinclude ClearUMap-response.msg.html

(cl:defclass <ClearUMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearUMap-response (<ClearUMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearUMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearUMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<ClearUMap-response> is deprecated: use cruiser_msgs-srv:ClearUMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ClearUMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:success-val is deprecated.  Use cruiser_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearUMap-response>) ostream)
  "Serializes a message object of type '<ClearUMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearUMap-response>) istream)
  "Deserializes a message object of type '<ClearUMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearUMap-response>)))
  "Returns string type for a service object of type '<ClearUMap-response>"
  "cruiser_msgs/ClearUMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearUMap-response)))
  "Returns string type for a service object of type 'ClearUMap-response"
  "cruiser_msgs/ClearUMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearUMap-response>)))
  "Returns md5sum for a message object of type '<ClearUMap-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearUMap-response)))
  "Returns md5sum for a message object of type 'ClearUMap-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearUMap-response>)))
  "Returns full string definition for message of type '<ClearUMap-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearUMap-response)))
  "Returns full string definition for message of type 'ClearUMap-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearUMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearUMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearUMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearUMap)))
  'ClearUMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearUMap)))
  'ClearUMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearUMap)))
  "Returns string type for a service object of type '<ClearUMap>"
  "cruiser_msgs/ClearUMap")