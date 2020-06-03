; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude rgbdApproach.msg.html

(cl:defclass <rgbdApproach> (roslisp-msg-protocol:ros-message)
  ((approachStatus
    :reader approachStatus
    :initarg :approachStatus
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass rgbdApproach (<rgbdApproach>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rgbdApproach>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rgbdApproach)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<rgbdApproach> is deprecated: use cruiser_msgs-msg:rgbdApproach instead.")))

(cl:ensure-generic-function 'approachStatus-val :lambda-list '(m))
(cl:defmethod approachStatus-val ((m <rgbdApproach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:approachStatus-val is deprecated.  Use cruiser_msgs-msg:approachStatus instead.")
  (approachStatus m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <rgbdApproach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:distance-val is deprecated.  Use cruiser_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rgbdApproach>) ostream)
  "Serializes a message object of type '<rgbdApproach>"
  (cl:let* ((signed (cl:slot-value msg 'approachStatus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rgbdApproach>) istream)
  "Deserializes a message object of type '<rgbdApproach>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'approachStatus) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rgbdApproach>)))
  "Returns string type for a message object of type '<rgbdApproach>"
  "cruiser_msgs/rgbdApproach")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rgbdApproach)))
  "Returns string type for a message object of type 'rgbdApproach"
  "cruiser_msgs/rgbdApproach")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rgbdApproach>)))
  "Returns md5sum for a message object of type '<rgbdApproach>"
  "69a51e326617d1f179799e297efe015b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rgbdApproach)))
  "Returns md5sum for a message object of type 'rgbdApproach"
  "69a51e326617d1f179799e297efe015b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rgbdApproach>)))
  "Returns full string definition for message of type '<rgbdApproach>"
  (cl:format cl:nil "#topic approachDetect~%# approach status,1=approach 2=leave~%int32 approachStatus~%~%# approach distance cm~%int32 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rgbdApproach)))
  "Returns full string definition for message of type 'rgbdApproach"
  (cl:format cl:nil "#topic approachDetect~%# approach status,1=approach 2=leave~%int32 approachStatus~%~%# approach distance cm~%int32 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rgbdApproach>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rgbdApproach>))
  "Converts a ROS message object to a list"
  (cl:list 'rgbdApproach
    (cl:cons ':approachStatus (approachStatus msg))
    (cl:cons ':distance (distance msg))
))
