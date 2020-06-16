; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-srv)


;//! \htmlinclude SetUMap-request.msg.html

(cl:defclass <SetUMap-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass SetUMap-request (<SetUMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<SetUMap-request> is deprecated: use cruiser_msgs-srv:SetUMap-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetUMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:data-val is deprecated.  Use cruiser_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUMap-request>) ostream)
  "Serializes a message object of type '<SetUMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUMap-request>) istream)
  "Deserializes a message object of type '<SetUMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUMap-request>)))
  "Returns string type for a service object of type '<SetUMap-request>"
  "cruiser_msgs/SetUMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUMap-request)))
  "Returns string type for a service object of type 'SetUMap-request"
  "cruiser_msgs/SetUMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUMap-request>)))
  "Returns md5sum for a message object of type '<SetUMap-request>"
  "e7ac98ca304b04e45988c61adb6bc4ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUMap-request)))
  "Returns md5sum for a message object of type 'SetUMap-request"
  "e7ac98ca304b04e45988c61adb6bc4ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUMap-request>)))
  "Returns full string definition for message of type '<SetUMap-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUMap-request)))
  "Returns full string definition for message of type 'SetUMap-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUMap-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetUMap-response.msg.html

(cl:defclass <SetUMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetUMap-response (<SetUMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-srv:<SetUMap-response> is deprecated: use cruiser_msgs-srv:SetUMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetUMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-srv:success-val is deprecated.  Use cruiser_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUMap-response>) ostream)
  "Serializes a message object of type '<SetUMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUMap-response>) istream)
  "Deserializes a message object of type '<SetUMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUMap-response>)))
  "Returns string type for a service object of type '<SetUMap-response>"
  "cruiser_msgs/SetUMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUMap-response)))
  "Returns string type for a service object of type 'SetUMap-response"
  "cruiser_msgs/SetUMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUMap-response>)))
  "Returns md5sum for a message object of type '<SetUMap-response>"
  "e7ac98ca304b04e45988c61adb6bc4ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUMap-response)))
  "Returns md5sum for a message object of type 'SetUMap-response"
  "e7ac98ca304b04e45988c61adb6bc4ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUMap-response>)))
  "Returns full string definition for message of type '<SetUMap-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUMap-response)))
  "Returns full string definition for message of type 'SetUMap-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUMap)))
  'SetUMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUMap)))
  'SetUMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUMap)))
  "Returns string type for a service object of type '<SetUMap>"
  "cruiser_msgs/SetUMap")