; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude ClearUwbAnchor-request.msg.html

(cl:defclass <ClearUwbAnchor-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearUwbAnchor-request (<ClearUwbAnchor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearUwbAnchor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearUwbAnchor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<ClearUwbAnchor-request> is deprecated: use cruiser_msgs-srv:ClearUwbAnchor-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearUwbAnchor-request>) ostream)
  "Serializes a message object of type '<ClearUwbAnchor-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearUwbAnchor-request>) istream)
  "Deserializes a message object of type '<ClearUwbAnchor-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearUwbAnchor-request>)))
  "Returns string type for a service object of type '<ClearUwbAnchor-request>"
  "cruiser_msgs/ClearUwbAnchorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearUwbAnchor-request)))
  "Returns string type for a service object of type 'ClearUwbAnchor-request"
  "cruiser_msgs/ClearUwbAnchorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearUwbAnchor-request>)))
  "Returns md5sum for a message object of type '<ClearUwbAnchor-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearUwbAnchor-request)))
  "Returns md5sum for a message object of type 'ClearUwbAnchor-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearUwbAnchor-request>)))
  "Returns full string definition for message of type '<ClearUwbAnchor-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearUwbAnchor-request)))
  "Returns full string definition for message of type 'ClearUwbAnchor-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearUwbAnchor-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearUwbAnchor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearUwbAnchor-request
))
;//! \htmlinclude ClearUwbAnchor-response.msg.html

(cl:defclass <ClearUwbAnchor-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearUwbAnchor-response (<ClearUwbAnchor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearUwbAnchor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearUwbAnchor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<ClearUwbAnchor-response> is deprecated: use cruiser_msgs-srv:ClearUwbAnchor-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ClearUwbAnchor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:success-val is deprecated.  Use cruiser_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearUwbAnchor-response>) ostream)
  "Serializes a message object of type '<ClearUwbAnchor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearUwbAnchor-response>) istream)
  "Deserializes a message object of type '<ClearUwbAnchor-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearUwbAnchor-response>)))
  "Returns string type for a service object of type '<ClearUwbAnchor-response>"
  "cruiser_msgs/ClearUwbAnchorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearUwbAnchor-response)))
  "Returns string type for a service object of type 'ClearUwbAnchor-response"
  "cruiser_msgs/ClearUwbAnchorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearUwbAnchor-response>)))
  "Returns md5sum for a message object of type '<ClearUwbAnchor-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearUwbAnchor-response)))
  "Returns md5sum for a message object of type 'ClearUwbAnchor-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearUwbAnchor-response>)))
  "Returns full string definition for message of type '<ClearUwbAnchor-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearUwbAnchor-response)))
  "Returns full string definition for message of type 'ClearUwbAnchor-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearUwbAnchor-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearUwbAnchor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearUwbAnchor-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearUwbAnchor)))
  'ClearUwbAnchor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearUwbAnchor)))
  'ClearUwbAnchor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearUwbAnchor)))
  "Returns string type for a service object of type '<ClearUwbAnchor>"
  "cruiser_msgs/ClearUwbAnchor")