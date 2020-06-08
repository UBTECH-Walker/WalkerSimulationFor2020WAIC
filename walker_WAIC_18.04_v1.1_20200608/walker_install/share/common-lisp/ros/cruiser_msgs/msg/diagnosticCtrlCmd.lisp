; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude diagnosticCtrlCmd.msg.html

(cl:defclass <diagnosticCtrlCmd> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:fixnum
    :initform 0)
   (ctrlflag
    :reader ctrlflag
    :initarg :ctrlflag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass diagnosticCtrlCmd (<diagnosticCtrlCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <diagnosticCtrlCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'diagnosticCtrlCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<diagnosticCtrlCmd> is deprecated: use cruiser_msgs-msg:diagnosticCtrlCmd instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <diagnosticCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:key-val is deprecated.  Use cruiser_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'ctrlflag-val :lambda-list '(m))
(cl:defmethod ctrlflag-val ((m <diagnosticCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:ctrlflag-val is deprecated.  Use cruiser_msgs-msg:ctrlflag instead.")
  (ctrlflag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <diagnosticCtrlCmd>) ostream)
  "Serializes a message object of type '<diagnosticCtrlCmd>"
  (cl:let* ((signed (cl:slot-value msg 'key)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ctrlflag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <diagnosticCtrlCmd>) istream)
  "Deserializes a message object of type '<diagnosticCtrlCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrlflag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<diagnosticCtrlCmd>)))
  "Returns string type for a message object of type '<diagnosticCtrlCmd>"
  "cruiser_msgs/diagnosticCtrlCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'diagnosticCtrlCmd)))
  "Returns string type for a message object of type 'diagnosticCtrlCmd"
  "cruiser_msgs/diagnosticCtrlCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<diagnosticCtrlCmd>)))
  "Returns md5sum for a message object of type '<diagnosticCtrlCmd>"
  "31951abf4e94f1645603ca9e8079c519")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'diagnosticCtrlCmd)))
  "Returns md5sum for a message object of type 'diagnosticCtrlCmd"
  "31951abf4e94f1645603ca9e8079c519")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<diagnosticCtrlCmd>)))
  "Returns full string definition for message of type '<diagnosticCtrlCmd>"
  (cl:format cl:nil "#topic \"/cruiser/diag_ctrl_cmd\"~%int16 key~%int16 ctrlflag~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'diagnosticCtrlCmd)))
  "Returns full string definition for message of type 'diagnosticCtrlCmd"
  (cl:format cl:nil "#topic \"/cruiser/diag_ctrl_cmd\"~%int16 key~%int16 ctrlflag~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <diagnosticCtrlCmd>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <diagnosticCtrlCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'diagnosticCtrlCmd
    (cl:cons ':key (key msg))
    (cl:cons ':ctrlflag (ctrlflag msg))
))
