; Auto-generated. Do not edit!


(cl:in-package cruiser_msgs-msg)


;//! \htmlinclude diagnosticReportData.msg.html

(cl:defclass <diagnosticReportData> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass diagnosticReportData (<diagnosticReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <diagnosticReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'diagnosticReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cruiser_msgs-msg:<diagnosticReportData> is deprecated: use cruiser_msgs-msg:diagnosticReportData instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <diagnosticReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:key-val is deprecated.  Use cruiser_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <diagnosticReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cruiser_msgs-msg:data-val is deprecated.  Use cruiser_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <diagnosticReportData>) ostream)
  "Serializes a message object of type '<diagnosticReportData>"
  (cl:let* ((signed (cl:slot-value msg 'key)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <diagnosticReportData>) istream)
  "Deserializes a message object of type '<diagnosticReportData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<diagnosticReportData>)))
  "Returns string type for a message object of type '<diagnosticReportData>"
  "cruiser_msgs/diagnosticReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'diagnosticReportData)))
  "Returns string type for a message object of type 'diagnosticReportData"
  "cruiser_msgs/diagnosticReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<diagnosticReportData>)))
  "Returns md5sum for a message object of type '<diagnosticReportData>"
  "95276667cdb3126b4b795b4f8eee5706")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'diagnosticReportData)))
  "Returns md5sum for a message object of type 'diagnosticReportData"
  "95276667cdb3126b4b795b4f8eee5706")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<diagnosticReportData>)))
  "Returns full string definition for message of type '<diagnosticReportData>"
  (cl:format cl:nil "#topic \"/cruiser/diag_report\"~%int16 key~%string data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'diagnosticReportData)))
  "Returns full string definition for message of type 'diagnosticReportData"
  (cl:format cl:nil "#topic \"/cruiser/diag_report\"~%int16 key~%string data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <diagnosticReportData>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <diagnosticReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'diagnosticReportData
    (cl:cons ':key (key msg))
    (cl:cons ':data (data msg))
))
